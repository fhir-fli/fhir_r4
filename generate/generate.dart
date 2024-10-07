// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'extract.dart';
import 'fhir_generate_extension.dart';
import 'write_enums.dart';

final Map<String, String> _nameMap = <String, String>{};
final Map<String, Map<String, dynamic>> _codesAndVS =
    <String, Map<String, dynamic>>{};
final Set<String> _valueSets = <String>{};

Future<void> main() async {
  await extract();
  await _codesAndValueSets();
  await _classesFromStructureDefinitions();
  await _exportFiles();
  await writeEnums(_valueSets, _codesAndVS);
}

Future<void> _codesAndValueSets() async {
  final String codesString =
      File('./definitions.json/valuesets.json').readAsStringSync();
  final Map<String, dynamic> bundle =
      jsonDecode(codesString) as Map<String, dynamic>;

  for (final dynamic entry in (bundle['entry'] as List<dynamic>)) {
    if ((entry as Map<String, dynamic>)['resource'] != null &&
            entry['resource'] is Map<String, dynamic> &&
            (entry['resource'] as Map<String, dynamic>)['resourceType'] ==
                'ValueSet' ||
        (entry['resource'] as Map<String, dynamic>)['resourceType'] ==
            'CodeSystem') {
      _codesAndVS[(entry['resource'] as Map<String, dynamic>)['url']
          as String] = entry['resource'] as Map<String, dynamic>;
      _codesAndVS[(entry['fullUrl'] as String).splitOffVersion] =
          entry['resource'] as Map<String, dynamic>;
    }
  }
}

Future<void> _classesFromStructureDefinitions() async {
  final List<String> structureDefinitionBundles = <String>[
    './definitions.json/profiles-resources.json',
    './definitions.json/profiles-types.json',
  ];

  _populateNameMap();

  for (final String file in structureDefinitionBundles) {
    await _generateFromBundle(file);
  }
}

void _populateNameMap() {
  final String fileString =
      File('./definitions.json/fhir.schema.json').readAsStringSync();
  final Map<String, dynamic> jsonSchema =
      jsonDecode(fileString) as Map<String, dynamic>;

  final Map<String, dynamic> definitions =
      jsonSchema['definitions'] as Map<String, dynamic>;
  definitions.forEach((String key, dynamic value) {
    _nameMap[key.toLowerCase().replaceAll('_', '')] = key;
  });
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

bool _isValidStructureDefinition(dynamic entry) {
  return entry is Map<String, dynamic> &&
      entry['resource'] != null &&
      entry['resource'] is Map<String, dynamic> &&
      (entry['resource'] as Map<String, dynamic>)['resourceType'] ==
          'StructureDefinition';
}

Future<void> _generateFromSd(Map<String, dynamic> sd) async {
  final String className = sd['name'] as String;
  if (!className.shouldGenerate) {
    return;
  }
  final Map<String, WritableClass> classes =
      await _buildWritableClasses(sd, className);
  final StringBuffer buffer = _generateClassBuffer(classes);

  _writeToFile(buffer, className);
}

Future<Map<String, WritableClass>> _buildWritableClasses(
    Map<String, dynamic> sd, String className) async {
  final Map<String, WritableClass> classes = <String, WritableClass>{};
  classes[className] = WritableClass()..className = className;

  final List<dynamic> elements =
      (sd['snapshot'] as Map<String, dynamic>)['element'] as List<dynamic>;

  for (final dynamic elementDefinition in elements) {
    final Map<String, dynamic> element =
        elementDefinition as Map<String, dynamic>;
    if (element['binding'] != null &&
        (element['binding'] as Map<String, dynamic>)['valueSet'] != null) {
      final String fullUrl =
          (element['binding'] as Map<String, dynamic>)['valueSet'] as String;
      final String valueSetUrl = fullUrl.splitOffVersion;
      if (!_codesAndVS.keys.contains(valueSetUrl)) {
        final http.Response response = await http.get(
            Uri.parse(valueSetUrl.replaceFirst('http:', 'https:')),
            headers: <String, String>{'Accept': 'application/json'});
        if (response.statusCode != 200) {
          // print('Error: ${response.statusCode} for $valueSetUrl');
        } else {
          try {
            _codesAndVS[valueSetUrl] =
                jsonDecode(response.body) as Map<String, dynamic>;
          } catch (e) {
            // print('Error: $e\n$valueSetUrl');
          }
        }
      }
      if (_codesAndVS.keys.contains(valueSetUrl)) {
        _valueSets.add(valueSetUrl);
      } else {
        // print('Error: $valueSetUrl');
      }
    }
    final String path = element['path'] as String;
    final List<String> pathParts = path.split('.');
    final String fieldName = pathParts.last;
    final String fieldType = _getElementType(element).fhirToDartTypes;

    final String? thisClass =
        _determineClassForField(classes, path, className, pathParts, fieldType);

    final bool isPolymorphic = fieldName.endsWith('[x]');
    final bool isList = (element['max'] as String) == '*';
    final bool isRequired = (element['min'] as int) > 0;
    final bool isBackboneElement =
        classes[thisClass]?.isBackboneElement ?? false;
    final bool isElement = classes[thisClass]?.isElement ?? false;

    final bool isSuper =
        fieldName.isSuperField(thisClass!, isBackboneElement, isElement);

    if (isPolymorphic) {
      _handlePolymorphicTypes(
          classes, element, thisClass, fieldName, isRequired, isSuper, isList);
    } else {
      _processRegularField(classes, thisClass, fieldName, fieldType, isRequired,
          isSuper, isList);
    }
  }

  return classes;
}

String? _determineClassForField(Map<String, WritableClass> classes, String path,
    String className, List<String> pathParts, String fieldType) {
  String? thisClass;

  if (fieldType == 'BackboneElement') {
    // Create a BackboneElement subclass
    final String fieldName = '${pathParts.first}${pathParts.last.capitalize}';
    classes[path] ??= WritableClass()
      ..className = fieldName
      ..isBackboneElement = true;
    thisClass = className;
  } else {
    // Construct the full path and match it with the _nameMap
    final String fullPath = pathParts.join();
    if (fieldType == 'Element') {
      print('Element: $path');
    }

    // Check if the field is of type 'Element' and meets the subclass criteria
    if (fieldType == 'Element' &&
        (_nameMap.containsKey(fullPath.toLowerCase().replaceAll('.', '')) ||
            _nameMap.keys.contains(
                '${pathParts.first}${pathParts.last.capitalize}'
                    .toLowerCase()))) {
      // Check if the beginning of the path is the name of a DataType class
      // and if the full path exists in the _nameMap

      final String fieldName = '${pathParts.first}${pathParts.last.capitalize}';
      classes[path] ??= WritableClass()
        ..className = fieldName
        ..isElement = true;
      thisClass = className;
    } else {
      // Find the class this field belongs to
      int length = 0;
      for (final String key in classes.keys) {
        if (path.startsWith(key) && key.length > length) {
          length = key.length;
          thisClass = key;
        }
      }
    }
  }

  // Ensure thisClass is not null before using it further
  if (thisClass != null) {
    return thisClass;
  }

  // If no class found or created, return null
  return null;
}

void _handlePolymorphicTypes(
    Map<String, WritableClass> classes,
    Map<String, dynamic> element,
    String thisClass,
    String fieldName,
    bool isRequired,
    bool isSuper,
    bool isList) {
  final List<dynamic> types = element['type'] as List<dynamic>;
  for (final dynamic type in types) {
    final String polymorphicFieldType =
        ((type as Map<String, dynamic>)['code'] as String).fhirToDartTypes;
    final String polymorphicFieldName =
        '${fieldName.replaceAll("[x]", "")}${polymorphicFieldType.capitalize}';

    // Add the polymorphic field
    classes[thisClass]!.fields.add(Field()
      ..name = polymorphicFieldName
      ..type = polymorphicFieldType
      ..isRequired = isRequired
      ..isSuper = isSuper
      ..isList = isList);

    // If it's a primitive type, also add the corresponding Element field
    if (polymorphicFieldName.isPrimitiveType) {
      classes[thisClass]!.fields.add(Field()
        ..name = '${polymorphicFieldName}Element'
        ..type = 'Element'
        ..isRequired = isRequired
        ..isSuper = isSuper
        ..isList = false); // Element is never a list
    }
  }
}

void _processRegularField(
    Map<String, WritableClass> classes,
    String thisClass,
    String fieldName,
    String fieldType,
    bool isRequired,
    bool isSuper,
    bool isList) {
  classes[thisClass]!.fields.add(Field()
    ..name = fieldName
    ..type = fieldType
    ..isRequired = isRequired
    ..isSuper = isSuper
    ..isList = isList);
}

StringBuffer _generateClassBuffer(Map<String, WritableClass> classes) {
  final StringBuffer buffer = StringBuffer();

  buffer.writeln("import 'package:data_class/data_class.dart';");
  buffer.writeln("import 'package:json/json.dart';");
  buffer.writeln("\nimport '../../../fhir_r4.dart';\n");

  for (final WritableClass writableClass in classes.values) {
    _writeClassHeader(buffer, writableClass);
    _writeFields(buffer, writableClass);
    _writeConstructor(buffer, writableClass);
    _writeClassFooter(buffer, writableClass);
  }

  return buffer;
}

void _writeClassHeader(StringBuffer buffer, WritableClass writableClass) {
  buffer.writeln('@Data()');
  buffer.writeln('@JsonCodable()');
  final String writableName = writableClass.className;
  final String extendsClause = writableName.isDataType
      ? 'extends DataType'
      : writableName.isQuantity
          ? 'extends Quantity'
          : writableName.isBackboneType
              ? 'extends BackboneType'
              : writableClass.isBackboneElement
                  ? 'extends BackboneElement'
                  : writableName.isResourceType
                      ? 'extends DomainResource'
                      : writableClass.isElement
                          ? 'extends Element'
                          : '';
  if (extendsClause.isEmpty) {
    print('No extends clause for $writableName');
  }
  buffer.writeln('class ${writableName.fhirToDartTypes} $extendsClause {');
}

void _writeFields(StringBuffer buffer, WritableClass writableClass) {
  for (final Field field in writableClass.fields) {
    final String fieldDeclaration = field.isList
        ? 'List<${field.type}>${field.isRequired ? '' : '?'}'
        : '${field.type}${field.isRequired ? '' : '?'}';
    if (field.name != writableClass.className && !field.isSuper) {
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
}

void _writeClassFooter(StringBuffer buffer, WritableClass writableClass) {
  final String writableName = writableClass.className;
  if (writableName.isResourceType) {
    buffer.writeln(
        '  }) : super(resourceType: R4ResourceType.${writableName.fhirToDartTypes});\n');
  } else {
    buffer.writeln('  });\n');
  }
  buffer.writeln('@override');
  buffer.writeln(
      '${writableName.fhirToDartTypes} clone() => throw UnimplementedError();');
  buffer.writeln('}\n');
}

void _writeToFile(StringBuffer buffer, String className) {
  String? writeFileName = _fileNameFromClassName(className);
  if (writeFileName == null) {
    print('Not writing: $className');
    return;
  }

  writeFileName = writeFileName.properFileName;
  final String filePath = '../lib/src/fhir/'
      '${className.isResourceType ? "resource_types" : "data_types"}/$writeFileName.dart';
  File(filePath).writeAsStringSync(buffer.toString());
}

String? _fileNameFromClassName(String className) =>
    _nameMap[className.toLowerCase()];

String _getElementType(Map<String, dynamic> element) {
  final List<dynamic>? types = element['type'] as List<dynamic>?;
  if (types != null && types.isNotEmpty) {
    return (types.first as Map<String, dynamic>)['code'] as String;
  }
  return 'dynamic';
}

Future<void> _exportFiles() async {
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

class WritableClass {
  String className = '';
  bool isBackboneElement = false;
  bool isElement = false;
  final List<Field> fields = <Field>[];
}

class Field {
  String name = '';
  String type = '';
  bool isList = false;
  bool isRequired = false;
  bool isSuper = false;
}
