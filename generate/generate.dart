// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:collection/collection.dart';

import 'fhir_generate_extension.dart';

const String fhirSchemaPath = './definitions.json/fhir.schema.json';
const String valueSetPath = './definitions.json/valuesets.json';

final Map<String, String> _nameMap = <String, String>{};
final Map<String, Map<String, dynamic>> _codesAndVS =
    <String, Map<String, dynamic>>{};
final Set<String> _valueSets = <String>{};

Future<void> main() async {
  await extract();
  _codesAndVS.addAll(await codesAndValueSets(valueSetPath));
  _nameMap.addAll(populateNameMap(fhirSchemaPath));
  await _classesFromStructureDefinitions();
  await exportFiles();
  await writeEnums(_valueSets, _codesAndVS, _nameMap);
  await _deleteDirectories();
}

Future<void> _deleteDirectories() async {
  final List<String> directories = <String>[
    '__MACOSX',
    'definitions.json',
    'examples-json',
    'examples-ndjson',
  ];
  for (final String dir in directories) {
    final Directory directory = Directory('./$dir');
    directory.deleteSync(recursive: true);
  }
}

Future<void> _classesFromStructureDefinitions() async {
  final List<String> structureDefinitionBundles = <String>[
    './definitions.json/profiles-resources.json',
    './definitions.json/profiles-types.json',
  ];

  for (final String file in structureDefinitionBundles) {
    await _generateFromBundle(file);
  }
}

Future<void> _generateFromBundle(String file) async {
  final String bundleString = File(file).readAsStringSync();
  final Map<String, dynamic> bundle =
      jsonDecode(bundleString) as Map<String, dynamic>;

  for (final dynamic entry in bundle['entry'] as List<dynamic>) {
    if (_isValidStructureDefinition(entry)) {
      await _generateFromSd(
          (entry as Map<String, dynamic>)['resource'] as Map<String, dynamic>);
    }
  }
}

Future<void> _generateFromSd(Map<String, dynamic> sd) async {
  final String className = sd['name'] as String;
  if (!className.shouldGenerate) {
    return;
  }
  final Map<String, WritableClass> classes =
      await _buildWritableClasses(sd, className);
  final StringBuffer buffer = _generateClassBuffer(classes);

  writeToFile(buffer, className, _nameMap);
}

Future<Map<String, WritableClass>> _buildWritableClasses(
    Map<String, dynamic> sd, String className) async {
  final Map<String, WritableClass> classes = <String, WritableClass>{};
  classes[className] = WritableClass(
    classPath: className,
    className: className,
    isResourceType: className.isResourceType,
    isDataType: className.isDataType,
    isQuantity: className.isQuantity,
    isBackboneType: className.isBackboneType,
  );

  final List<dynamic> elements =
      (sd['snapshot'] as Map<String, dynamic>)['element'] as List<dynamic>;

  for (final dynamic elementDefinition in elements) {
    final Map<String, dynamic> element =
        elementDefinition as Map<String, dynamic>;

    // Handle ValueSets if binding is present
    if (element['binding'] != null &&
        (element['binding'] as Map<String, dynamic>)['valueSet'] != null) {
      final String fullUrl =
          (element['binding'] as Map<String, dynamic>)['valueSet'] as String;
      final String valueSetUrl = fullUrl.splitOffVersion;
      if (_codesAndVS.keys.contains(valueSetUrl)) {
        _valueSets.add(valueSetUrl);
      } else {
        print('Error: $valueSetUrl');
      }
    }

    final String path = elementDefinition['path'] as String;
    final String classPath = path.findLongestMatch(classes.keys.toList());

    if (className.isResourceType &&
        elementDefinition['type'] is List<dynamic> &&
        (elementDefinition['type'] as List<dynamic>).length == 1 &&
        ((elementDefinition['type'] as List<dynamic>).first
                as Map<String, dynamic>)['code'] ==
            'BackboneElement') {
      // Generate a base class name
      final String baseClassName =
          path.split('.').first + path.split('.').last.capitalize;

      // Check for duplicate class names and add a number if necessary
      String newClassName = baseClassName;
      int classCount = 1;

      // Keep checking for existing class names, including those with numbers
      while (classes.values
          .any((WritableClass c) => c.className == newClassName)) {
        // Increment class name with a number to avoid duplication
        newClassName = baseClassName + classCount.toString();
        classCount++;
      }

      // Create the new class
      classes[path] = WritableClass(
        className: newClassName == 'EvidenceVariable'
            ? 'Evidencevariable'
            : newClassName,
        classPath: path,
        isBackboneElement: true,
      );
    } else if ((className.isDataType ||
            className.isBackboneType ||
            className.isQuantity) &&
        elementDefinition['type'] is List<dynamic> &&
        (elementDefinition['type'] as List<dynamic>).length == 1 &&
        ((elementDefinition['type'] as List<dynamic>).first
                as Map<String, dynamic>)['code'] ==
            'Element') {
      // Generate a base class name
      final String baseClassName =
          path.split('.').first + path.split('.').last.capitalize;

      // Check for duplicate class names and add a number if necessary
      String newClassName = baseClassName;
      int classCount = 1;

      // Keep checking for existing class names, including those with numbers
      while (classes.values
          .any((WritableClass c) => c.className == newClassName)) {
        // Increment class name with a number to avoid duplication
        newClassName = baseClassName + classCount.toString();
        classCount++;
      }

      // Create the new class for Element
      classes[path] = WritableClass(
        className: newClassName,
        classPath: path,
        isElement: true,
      );
    }

    final List<dynamic>? types = elementDefinition['type'] as List<dynamic>?;
    final String fieldName = path.split('.').last;
    final bool isRequired =
        (int.tryParse(elementDefinition['min']?.toString() ?? '') ?? 0) >= 1 ||
            elementDefinition['min'] == '+';
    final bool isList = elementDefinition['max'] == '*';

    if (types == null) {
      if (elementDefinition['path'] != className) {
        String? referenceFieldType;
        final String? contentReference =
            (elementDefinition['contentReference'] as String?)
                ?.replaceFirst('#', '');
        for (final WritableClass writableClass in classes.values) {
          referenceFieldType = writableClass.fields
              .firstWhereOrNull((Field field) => field.path == contentReference)
              ?.type;
          if (referenceFieldType != null) {
            break;
          }
        }

        if (referenceFieldType == null) {
          throw Exception(
              'No type found for $path ${elementDefinition['contentReference']}');
        }
        classes[classPath]!.addField(Field(
          name: fieldName,
          type: referenceFieldType,
          path: path,
          isRequired: isRequired,
          isList: isList,
        ));
      }
    } else if (types.length != 1) {
      for (final dynamic type in types) {
        final String actualType =
            (type as Map<String, dynamic>)['code'] as String;
        classes[classPath]!.addField(Field(
          name: fieldName.replaceAll('[x]', actualType.capitalize),
          type: actualType,
          path: path,
          isRequired: isRequired,
          isList: isList,
        ));
      }
    } else {
      String fieldType =
          (types.first as Map<String, dynamic>)['code'] as String;
      if (fieldType == 'BackboneElement') {
        fieldType = path.split('.').first + path.split('.').last.capitalize;
      }
      classes[classPath]!.addField(Field(
        name: fieldName,
        type: fieldType,
        path: path,
        isRequired: isRequired,
        isList: isList,
      ));
    }
  }

  return classes;
}

StringBuffer _generateClassBuffer(Map<String, WritableClass> classes) {
  final StringBuffer buffer = StringBuffer();

  buffer.writeln("import 'package:dataclass/dataclass.dart';");
  buffer.writeln("import 'package:json/json.dart';");
  buffer.writeln("\nimport '../../../fhir_r4.dart';\n");

  for (final WritableClass writableClass in classes.values) {
    _writeClassHeader(buffer, writableClass);
    _writeConstructor(buffer, writableClass);
    _writeFields(buffer, writableClass);
    _writeClassFooter(buffer, writableClass);
  }

  return buffer;
}

void _writeClassHeader(StringBuffer buffer, WritableClass writableClass) {
  buffer.writeln('@JsonCodable()');
  buffer.writeln('@Data()');
  final String writableName = writableClass.className;
  final String extendsClause = writableClass.extendsClause;
  if (extendsClause.isEmpty) {
    print('No extends clause for $writableName');
  }
  buffer.writeln('class ${writableName.fhirToDartTypes} $extendsClause {');
}

void _writeFields(StringBuffer buffer, WritableClass writableClass) {
  for (final Field field in writableClass.fields) {
    final String fieldDeclaration = field.isList
        ? 'List<${field.type.fhirToDartTypes}>${field.isRequired ? '' : '?'}'
        : '${field.type.fhirToDartTypes}${field.isRequired ? '' : '?'}';
    if (field.name != writableClass.classPath && !field.isSuper) {
      buffer.writeln(
          '  final $fieldDeclaration ${field.name.fhirFieldToDartName};');
      if (field.type.isPrimitiveType && field.name != 'id') {
        buffer.writeln(field.isList
            ? '  final List<Element>? ${field.name}Element;'
            : '  final Element? ${field.name}Element;');
      }
    }
  }
}

void _writeConstructor(StringBuffer buffer, WritableClass writableClass) {
  final String writableName = writableClass.className;

  buffer.writeln('\n  ${writableName.fhirToDartTypes}({');
  for (final Field field in writableClass.fields) {
    if (field.name != writableName) {
      buffer.writeln('    ${field.isRequired ? 'required ' : ''}'
          '${field.isSuper ? 'super' : 'this'}.${field.name.fhirFieldToDartName},');
      if (field.type.isPrimitiveType && field.name != 'id') {
        buffer.writeln(
            '${field.isSuper ? 'super' : 'this'}.${field.name}Element,');
      }
    }
  }
  if (writableName.isResourceType && writableClass.isResourceType) {
    buffer.writeln(
        '  }) : super(resourceType: R4ResourceType.${writableName.fhirToDartTypes});\n');
  } else {
    buffer.writeln('  });\n');
  }
}

void _writeClassFooter(StringBuffer buffer, WritableClass writableClass) {
  final String writableName = writableClass.className;
  buffer.writeln('@override');
  buffer.writeln(
      '${writableName.fhirToDartTypes} clone() => throw UnimplementedError();');
  buffer.writeln('}\n');
}

bool _isValidStructureDefinition(dynamic entry) {
  return entry is Map<String, dynamic> &&
      entry['resource'] != null &&
      entry['resource'] is Map<String, dynamic> &&
      (entry['resource'] as Map<String, dynamic>)['resourceType'] ==
          'StructureDefinition';
}

Future<void> exportFiles() async {
  final List<String> directories = <String>[
    'data_types',
    'resource_types',
    'enums'
  ];
  for (final String dir in directories) {
    final List<String> exportFile = <String>[];
    final Directory directory = Directory('../lib/src/fhir/$dir');
    final List<FileSystemEntity> files = directory.listSync();
    for (final FileSystemEntity file in files) {
      final String fileName = file.path.split('/').last;
      if (fileName.endsWith('.dart') && !fileName.endsWith('$dir.dart')) {
        exportFile.add("export '$fileName';");
      }
    }
    exportFile.sort();
    File('../lib/src/fhir/$dir/$dir.dart')
        .writeAsStringSync(exportFile.join('\n'));
  }
}

void writeToFile(
    StringBuffer buffer, String className, Map<String, String> nameMap) {
  String? writeFileName = className.fileNameFromClassName(nameMap);
  if (writeFileName == null) {
    print('Not writing: $className');
    return;
  }

  writeFileName = writeFileName.properFileName;
  final String filePath = '../lib/src/fhir/'
      '${className.isResourceType ? "resource_types" : "data_types"}/$writeFileName.dart';
  File(filePath).writeAsStringSync(buffer.toString());
}

Future<void> extract() async {
  await _extractFilesToDisk();
  await _moveJsonExamples();
  await _moveNdJsonExamples();
  await _moveSourceFiles();
}

Future<void> _moveSourceFiles() async {
  await extractFileToDisk(
      'definitions.json/fhir.schema.json.zip', './definitions.json');
}

Future<void> _moveNdJsonExamples() async {
  final Directory examplesJsonDirectory = Directory('examples-ndjson');
  final List<FileSystemEntity> examplesJson = examplesJsonDirectory.listSync();
  for (final FileSystemEntity file in examplesJson) {
    if (file is File) {
      final String titleString = file.path.split('/').last.split('.').first;
      final String fileString = file.readAsStringSync();
      final List<String> lines = fileString.split('\n');
      for (int i = 0; i < lines.length; i++) {
        final String line = lines[i];
        if (line.isNotEmpty) {
          final String partialPath = file.path
              .replaceAll('examples-ndjson', '../test/fhir/examples')
              .replaceAll('.ndjson', '.json')
              .replaceAll(titleString, '$titleString$i');
          final File newFile = File(partialPath);
          newFile.writeAsStringSync(line);
        }
      }
    }
  }
}

Future<void> _moveJsonExamples() async {
  final Directory examplesJsonDirectory = Directory('examples-json');
  final List<FileSystemEntity> examplesJson = examplesJsonDirectory.listSync();
  for (final FileSystemEntity file in examplesJson) {
    if (file is File) {
      await file
          .copy(file.path.replaceAll('examples-json', '../test/fhir/examples'));
    }
  }
}

Future<void> _extractFilesToDisk() async {
  await extractFileToDisk('definitions.json.zip', '.');
  await extractFileToDisk('examples-json.zip', '.');
  await extractFileToDisk('examples-ndjson.zip', '.');
}

Future<Map<String, Map<String, dynamic>>> codesAndValueSets(
    String valueSetPath) async {
  final Map<String, Map<String, dynamic>> codesAndVS =
      <String, Map<String, dynamic>>{};

  final String codesString = File(valueSetPath).readAsStringSync();
  final Map<String, dynamic> bundle =
      jsonDecode(codesString) as Map<String, dynamic>;

  for (final dynamic entry in (bundle['entry'] as List<dynamic>)) {
    if ((entry as Map<String, dynamic>)['resource'] != null &&
            entry['resource'] is Map<String, dynamic> &&
            (entry['resource'] as Map<String, dynamic>)['resourceType'] ==
                'ValueSet' ||
        (entry['resource'] as Map<String, dynamic>)['resourceType'] ==
            'CodeSystem') {
      codesAndVS[(entry['resource'] as Map<String, dynamic>)['url'] as String] =
          entry['resource'] as Map<String, dynamic>;
      codesAndVS[(entry['fullUrl'] as String).splitOffVersion] =
          entry['resource'] as Map<String, dynamic>;
    }
  }
  return codesAndVS;
}

Map<String, String> populateNameMap(String fhirSchemaPath) {
  final Map<String, String> nameMap = <String, String>{};
  final String fileString = File(fhirSchemaPath).readAsStringSync();
  final Map<String, dynamic> jsonSchema =
      jsonDecode(fileString) as Map<String, dynamic>;

  final Map<String, dynamic> definitions =
      jsonSchema['definitions'] as Map<String, dynamic>;
  definitions.forEach((String key, dynamic value) {
    nameMap[key.toLowerCase().replaceAll('_', '')] = key;
  });
  return nameMap;
}

Future<void> writeEnums(
    Set<String> valueSets,
    Map<String, Map<String, dynamic>> codesAndVS,
    Map<String, String> nameMap) async {
  for (final String valueSetUrl in valueSets) {
    if (!codesAndVS.containsKey(valueSetUrl)) {
      print('ValueSetUrl not Found: $valueSetUrl');
    } else {
      final Map<String, dynamic> valueSet = codesAndVS[valueSetUrl]!;
      final String enumName =
          _getEnumNameFromValueSet(valueSetUrl, valueSet, nameMap);

      final List<Map<String, String>> enumValuesWithComments =
          _extractEnumValuesWithComments(valueSet, codesAndVS);
      if (enumValuesWithComments.isEmpty) {
        print('No enum values found for ValueSet: $valueSetUrl');
      } else {
        final String enumString = _buildEnumStringWithComments(
            enumName, enumValuesWithComments, valueSet);
        await _writeEnumToFile(enumName, enumString);
      }
    }
  }
}

String _getEnumNameFromValueSet(String valueSetUrl,
    Map<String, dynamic> valueSet, Map<String, String> nameMap) {
  final String valueSetName = valueSet['name'] as String? ??
      valueSet['title'] as String? ??
      valueSetUrl.split('/').last.split('|').first;

  final String enumName = valueSetName.upperCamelCase;
  if (enumName.isResourceType ||
      nameMap.keys.contains(enumName.toLowerCase()) ||
      nameMap.values.contains(enumName.toLowerCase())) {
    return '${enumName}Enum';
  }
  if (enumName.toLowerCase().contains('spec')) {
    print(enumName);
  }
  return enumName;
}

// Extract enum values along with their display and definition as comments
List<Map<String, String>> _extractEnumValuesWithComments(
    Map<String, dynamic> resource,
    Map<String, Map<String, dynamic>> codesAndVS) {
  final List<Map<String, String>> enumValuesWithComments =
      <Map<String, String>>[];

  // Handle ValueSet first
  if (resource['resourceType'] == 'ValueSet') {
    if (resource.containsKey('expansion')) {
      final List<dynamic> contains = (resource['expansion']
          as Map<String, dynamic>)['contains'] as List<dynamic>;
      for (final dynamic concept in contains) {
        final Map<String, String> conceptDetails = <String, String>{
          'code': (concept as Map<String, dynamic>)['code'] as String,
          'display': concept['display'] as String? ?? '',
          'definition': concept['definition'] as String? ?? ''
        };
        enumValuesWithComments.add(conceptDetails);
      }
    } else if (resource.containsKey('compose')) {
      final List<dynamic> include = (resource['compose']
          as Map<String, dynamic>)['include'] as List<dynamic>;

      for (final dynamic inclusion in include) {
        final List<dynamic>? concepts =
            (inclusion as Map<String, dynamic>)['concept'] as List<dynamic>?;
        for (final dynamic concept in concepts ?? <dynamic>[]) {
          final Map<String, String> conceptDetails = <String, String>{
            'code': (concept as Map<String, dynamic>)['code'] as String,
            'display': concept['display'] as String? ?? '',
            'definition': concept['definition'] as String? ?? ''
          };
          enumValuesWithComments.add(conceptDetails);
        }

        if (concepts == null || concepts.isEmpty) {
          final String? systemUrl = inclusion['system'] as String?;
          if (systemUrl != null) {
            final Map<String, dynamic>? newCodings = codesAndVS[systemUrl];
            if (newCodings != null) {
              if (newCodings['resourceType'] == 'ValueSet') {
                final List<Map<String, String>> newEnumValues =
                    _extractEnumValuesWithComments(newCodings, codesAndVS);
                enumValuesWithComments.addAll(newEnumValues);
              } else if (newCodings['resourceType'] == 'CodeSystem') {
                final List<Map<String, String>> newEnumValues =
                    _extractEnumValuesFromCodeSystemWithComments(newCodings);
                enumValuesWithComments.addAll(newEnumValues);
              }
            }
          }
        }
      }
    }
  } else if (resource['resourceType'] == 'CodeSystem') {
    final List<Map<String, String>> newEnumValues =
        _extractEnumValuesFromCodeSystemWithComments(resource);
    enumValuesWithComments.addAll(newEnumValues);
  }

  return enumValuesWithComments;
}

// Extract enum values directly from CodeSystem with comments
List<Map<String, String>> _extractEnumValuesFromCodeSystemWithComments(
    Map<String, dynamic> codeSystem) {
  final List<Map<String, String>> enumValuesWithComments =
      <Map<String, String>>[];
  if (codeSystem.containsKey('concept')) {
    final List<dynamic> concepts = codeSystem['concept'] as List<dynamic>;
    for (final dynamic concept in concepts) {
      final Map<String, String> conceptDetails = <String, String>{
        'code': (concept as Map<String, dynamic>)['code'] as String,
        'display': concept['display'] as String? ?? '',
        'definition': concept['definition'] as String? ?? ''
      };
      enumValuesWithComments.add(conceptDetails);
    }
  }
  return enumValuesWithComments;
}

// Build the enum string with comments and handle newlines
String _buildEnumStringWithComments(
    String enumName,
    List<Map<String, String>> enumValuesWithComments,
    Map<String, dynamic> valueSet) {
  final StringBuffer buffer = StringBuffer();
  buffer.writeln("import 'package:json_annotation/json_annotation.dart';\n");

  // Add enum description at the top
  if (valueSet.containsKey('description')) {
    final String description = valueSet['description']
        .toString()
        .replaceAll('\n', ' ')
        .replaceAll('\r', ' '); // Handling newlines in comments
    buffer.writeln('/// $description');
  }

  buffer.writeln('enum $enumName {');

  final Map<String, String> enumValueMap = <String, String>{};

  for (final Map<String, String> value in enumValuesWithComments) {
    final String validEnumValue =
        _toValidEnumValue(value['code']!).fhirFieldToDartName;

    // Avoid duplicate enum values
    if (!enumValueMap.keys.contains(value['code'])) {
      if (value['display']!.isNotEmpty) {
        buffer.writeln('  /// Display: ${value['display']}');
      }
      if (value['definition']!.isNotEmpty) {
        final String definition = value['definition']!
            .replaceAll('\n', ' ')
            .replaceAll('\r', ' '); // Handling newlines in comments
        buffer.writeln('  /// Definition: $definition');
      }
      buffer.writeln("  @JsonValue('${value['code']}')");
      buffer.writeln('  $validEnumValue,');
      enumValueMap[value['code']!] = validEnumValue;
    }
  }

  buffer.writeln(';\n');

  buffer.writeln('@override');
  buffer.writeln('  String toString() {');
  buffer.writeln('      switch(this) {');
  for (final String key in enumValueMap.keys) {
    final String validEnumValue = enumValueMap[key]!;
    buffer.writeln("        case $validEnumValue: return '$key';");
  }
  buffer.writeln('      }');
  buffer.writeln('      }');

  buffer.writeln('String toJson() => toString();');

  buffer.writeln('  $enumName fromString(String str) {');
  buffer.writeln('    switch(str) {');
  for (final String key in enumValueMap.keys) {
    buffer.writeln("      case '$key': return $enumName.${enumValueMap[key]};");
  }
  buffer.writeln(
      r"    default: throw ArgumentError('Unknown enum value: $str');");
  buffer.writeln('    }');
  buffer.writeln('      }');

  buffer.writeln(' $enumName fromJson(dynamic jsonValue) {');
  buffer.writeln('    if (jsonValue is String) {');
  buffer.writeln('      return fromString(jsonValue);');
  buffer.writeln('    } else {');
  buffer.writeln(r" throw ArgumentError('Unknown enum value: $jsonValue');");
  buffer.writeln('}');
  buffer.writeln('}');

  buffer.writeln('}\n');

  return buffer.toString();
}

// Convert enum value to valid Dart enum value (lowerCamelCase)
String _toValidEnumValue(String value) {
  // Convert to camelCase and handle numeric starting cases by prefixing with "value"
  switch (value) {
    case '=':
      return 'equals';
    case '!=':
      return 'notEquals';
    case '>':
      return 'greaterThan';
    case '<':
      return 'lessThan';
    case '>=':
      return 'greaterThanOrEquals';
    case '<=':
      return 'lessThanOrEquals';
    case '+':
      return 'plus';
    case '-':
      return 'minus';
  }

  value = value.startsWith('http://')
      ? value.substring(7)
      : value.startsWith('https://')
          ? value.substring(8)
          : value;

  value = value
      .replaceAll('-', '_')
      .replaceAll(' ', '_')
      .replaceAll('/', '_')
      .replaceAll('.', '_')
      .replaceAll('+', '_')
      .replaceAll(':', '_');

  value = RegExp(r'^[0-9]').hasMatch(value) ? 'value$value' : value;
  return value.fhirFieldToDartName;
}

Future<void> _writeEnumToFile(String enumName, String enumString) async {
  final String enumFileName = '${enumName.snakeCase}.dart';
  final String filePath = '../lib/src/fhir/enums/$enumFileName';

  final File enumFile = File(filePath);
  if (!enumFile.existsSync()) {
    enumFile.createSync(recursive: true);
  }

  await enumFile.writeAsString(enumString);
}

class WritableClass {
  WritableClass({
    required this.className,
    required this.classPath,
    this.isResourceType = false,
    this.isDataType = false,
    this.isQuantity = false,
    this.isBackboneType = false,
    this.isBackboneElement = false,
    this.isElement = false,
  });

  final String className;
  final String classPath;
  bool isResourceType;
  bool isDataType;
  bool isQuantity;
  bool isBackboneType;
  bool isBackboneElement;
  bool isElement;
  final List<Field> fields = <Field>[];

  void addField(Field field) {
    field.setSuperField(this);
    fields.add(field);
  }

  String get extendsClause => isDataType
      ? 'extends DataType'
      : isQuantity
          ? 'extends Quantity'
          : isBackboneType
              ? 'extends BackboneType'
              : isBackboneElement
                  ? 'extends BackboneElement'
                  : isResourceType
                      ? 'extends DomainResource'
                      : isElement
                          ? 'extends Element'
                          : '';
}

class Field {
  Field({
    required this.name,
    required this.type,
    required this.path,
    required this.isList,
    required this.isRequired,
  });

  final String name;
  final String type;
  final String path;
  final bool isList;
  final bool isRequired;
  bool isSuper = false;

  void setSuperField(WritableClass writableClass) {
    isSuper = isSuperField(writableClass);
  }

  bool isSuperField(WritableClass writableClass) {
    if (writableClass.isResourceType) {
      // Super fields for DomainResource
      return <String>[
        'id',
        'meta',
        'implicitrules',
        'implicitruleselement',
        'language',
        'languageelement',
        'text',
        'contained',
        'extension',
        'modifierextension',
      ].contains(name.toLowerCase());
    } else if (writableClass.isBackboneType ||
        writableClass.isBackboneElement) {
      // Super fields for BackboneType && BackboneElement
      return <String>[
        'id',
        'extension',
        'modifierextension',
      ].contains(name.toLowerCase());
    } else if (writableClass.isDataType || writableClass.isElement) {
      // Super fields for DataType
      return <String>[
        'id',
        'extension',
      ].contains(name.toLowerCase());
    } else if (writableClass.isQuantity) {
      // Super fields for Quantity
      return <String>[
        'id',
        'extension',
        'value',
        'valueelement',
        'comparator',
        'comparatorelement',
        'unit',
        'unitelement',
        'system',
        'systemelement',
        'code',
        'codeelement',
      ].contains(name.toLowerCase());
    }
    return false;
  }
}
