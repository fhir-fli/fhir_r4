// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'extract.dart';
import 'types.dart';

Future<void> main() async {
  await extract();
  await _classesFromStructureDefinitions();
}

final Map<String, String> _nameMap = <String, String>{};

Future<void> _classesFromStructureDefinitions() async {
  final List<String> structureDefinitionBundles = <String>[
    './profiles-resources.json',
    './profiles-types.json',
  ];
  final String fileString = File('fhir.schema.json').readAsStringSync();
  final Map<String, dynamic> jsonSchema =
      jsonDecode(fileString) as Map<String, dynamic>;
  (jsonSchema['definitions'] as Map<String, dynamic>)
      .forEach((String key, dynamic value) {
    _nameMap[key.toLowerCase().replaceAll('_', '')] = key;
  });
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

  final Map<String, WritableClass> classes = <String, WritableClass>{};
  classes[className] = WritableClass()..className = className;

  for (final dynamic elementDefinition
      in (sd['snapshot'] as Map<String, dynamic>)['element'] as List<dynamic>) {
    final Map<String, dynamic> element =
        elementDefinition as Map<String, dynamic>;
    final String path = element['path'] as String;
    final List<String> pathParts = path.split('.');
    final String fieldName = pathParts.last;
    String fieldType = _getElementType(element).fhirToDartTypes;
    String? thisClass;
    if (fieldType == 'BackboneElement') {
      fieldType = '${pathParts.first}${pathParts.last[0].toUpperCase()}'
          '${pathParts.last.substring(1)}';
      classes[path] ??= WritableClass()
        ..className = fieldType
        ..isBackboneElement = true;
      thisClass = className;
    } else {
      int length = 0;
      for (final String key in classes.keys) {
        if (path.startsWith(key) && key.length > length) {
          length = key.length;
          thisClass = key;
        }
      }
    }
    final bool isRequired = (element['min'] as int) > 0;
    final bool isSuper = fieldName.isSuperField(className);
    classes[thisClass]!.fields.add(Field()
      ..name = fieldName
      ..type = fieldType
      ..isRequired = isRequired
      ..isSuper = isSuper);
  }

  final StringBuffer buffer = StringBuffer();

  // Write class header
  buffer.writeln("import 'package:data_class/data_class.dart';");
  buffer.writeln("import 'package:json/json.dart';");
  buffer.writeln("\nimport '../../../fhir_r4.dart';\n");

  for (final WritableClass writableClass in classes.values) {
    buffer.writeln('@Data()');
    buffer.writeln('@JsonCodable()');
    final String writableName = writableClass.className;
    final String extendsClause = writableName.isDataType
        ? 'extends DataType'
        : writableName.isQuantity
            ? 'extends Quantity'
            : writableName.isBackboneType || writableClass.isBackboneElement
                ? 'extends BackboneElement'
                : writableName.isResourceType
                    ? 'extends DomainResource'
                    : '';
    if (extendsClause.isEmpty) {
      print('No extends clause for $writableName');
    }
    buffer.writeln('class $writableName $extendsClause {');

    for (final Field field in writableClass.fields) {
      if (field.name != writableName && !field.isSuper) {
        buffer.writeln(
            '  final ${field.type}${field.isRequired ? '' : '?'} ${field.name.fhirFieldToDartName};');
        if (field.name.isPrimitiveType && field.name != 'id') {
          buffer.writeln(
              '  final Element${field.isRequired ? '' : '?'} ${field.name}Element;');
        }
      }
    }

    buffer.writeln('\n  $writableName({');
    for (final Field field in writableClass.fields) {
      if (field.name != writableName) {
        buffer.writeln('    ${field.isRequired ? 'required ' : ''}'
            '${field.isSuper ? 'super' : 'this'}'
            '.${field.name.fhirFieldToDartName},');
        if (field.name.isPrimitiveType && field.name != 'id') {
          buffer.writeln('    ${field.isRequired ? 'required ' : ''}'
              '${field.isSuper ? 'super' : 'this'}'
              '.${field.name}Element,');
        }
      }
    }
    if (writableName.isResourceType) {
      buffer.writeln(
          '  }) : super(resourceType: R4ResourceType.$writableName);\n');
    } else {
      buffer.writeln('  });\n');
    }
    buffer.writeln('@override');
    buffer.writeln('$writableName clone() => throw UnimplementedError();');
    buffer.writeln('}\n');
  }

  String? writeFileName = _fileNameFromClassName(className);
  if (writeFileName == null) {
    print('Not writing: $className');
    return;
  }
  writeFileName = writeFileName[0].toLowerCase() + writeFileName.substring(1);
  // Write class to file
  final String filePath = '../lib/src/fhir/generated/$writeFileName.dart';
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

class WritableClass {
  String className = '';
  bool isBackboneElement = false;
  final List<Field> fields = <Field>[];
}

class Field {
  String name = '';
  String type = '';
  bool isList = false;
  bool isRequired = false;
  bool isSuper = false;
}
