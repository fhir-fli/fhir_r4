import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'fhir_generate_extension.dart';
import 'writable_class.dart';
import 'json_utils.dart';

Future<void> generateClassesFromStructureDefinitions(
    Map<String, Map<String, dynamic>> codesAndVS,
    Set<String> valueSets,
    Map<String, String> nameMap) async {
  final List<String> structureDefinitionBundles = <String>[
    './definitions.json/profiles-resources.json',
    './definitions.json/profiles-types.json',
  ];

  for (final String file in structureDefinitionBundles) {
    await generateFromBundle(file, codesAndVS, valueSets, nameMap);
  }
}

Future<void> generateFromBundle(
    String file,
    Map<String, Map<String, dynamic>> codesAndVS,
    Set<String> valueSets,
    Map<String, String> nameMap) async {
  final String bundleString = File(file).readAsStringSync();
  final Map<String, dynamic> bundle =
      jsonDecode(bundleString) as Map<String, dynamic>;

  for (final dynamic entry in bundle['entry'] as List<dynamic>) {
    if (_isValidStructureDefinition(entry)) {
      await _generateFromSd(
          (entry as Map<String, dynamic>)['resource'] as Map<String, dynamic>,
          codesAndVS,
          valueSets,
          nameMap);
    }
  }
}

Future<void> _generateFromSd(
    Map<String, dynamic> sd,
    Map<String, Map<String, dynamic>> codesAndVS,
    Set<String> valueSets,
    Map<String, String> nameMap) async {
  final String className = sd['name'] as String;
  if (!className.shouldGenerate) {
    return;
  }
  final Map<String, WritableClass> classes =
      await _buildWritableClasses(sd, className, codesAndVS, valueSets);
  final StringBuffer buffer = _generateClassBuffer(classes);

  writeToFile(buffer, className, nameMap);
}

Future<Map<String, WritableClass>> _buildWritableClasses(
    Map<String, dynamic> sd,
    String className,
    Map<String, Map<String, dynamic>> codesAndVS,
    Set<String> valueSets) async {
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

    if (element['binding'] != null &&
        (element['binding'] as Map<String, dynamic>)['valueSet'] != null) {
      final String fullUrl =
          (element['binding'] as Map<String, dynamic>)['valueSet'] as String;
      final String valueSetUrl = fullUrl.splitOffVersion;
      if (codesAndVS.keys.contains(valueSetUrl)) {
        valueSets.add(valueSetUrl);
      } else {
        print('Error: $valueSetUrl');
      }
    }

    // Rest of the _buildWritableClasses logic...
  }

  return classes;
}

StringBuffer _generateClassBuffer(Map<String, WritableClass> classes) {
  final StringBuffer buffer = StringBuffer();

  buffer.writeln("import 'package:dataclass/dataclass.dart';");
  buffer.writeln("import 'package:json/json.dart';");
  buffer.writeln("import 'package:json_annotation/json_annotation.dart';");
  buffer.writeln("import 'package:objectbox/objectbox.dart';");
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
  buffer.writeln('@Entity()');
  final String writableName = writableClass.className;
  final String extendsClause = writableClass.extendsClause;
  if (extendsClause.isEmpty) {
    print('No extends clause for $writableName');
  }
  buffer.writeln('class ${writableName.fhirToDartTypes} $extendsClause {');
}

void _writeFields(StringBuffer buffer, WritableClass writableClass) {
  buffer.writeln('  @Id()');
  buffer.writeln('@JsonKey(ignore: true)');
  buffer.writeln('  int dbId = 0;');
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

bool _isValidStructureDefinition(dynamic entry) {
  return entry is Map<String, dynamic> &&
      entry['resource'] != null &&
      entry['resource'] is Map<String, dynamic> &&
      (entry['resource'] as Map<String, dynamic>)['resourceType'] ==
          'StructureDefinition';
}
