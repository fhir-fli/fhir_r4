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
    final bool isPolymorphic = fieldName.endsWith('[x]');
    final bool isList = (element['max'] as String) == '*';

    if (fieldType == 'BackboneElement') {
      // Create a BackboneElement subclass
      fieldType =
          '${pathParts.first}${pathParts.last[0].toUpperCase()}${pathParts.last.substring(1)}';
      classes[path] ??= WritableClass()
        ..className = fieldType
        ..isBackboneElement = true;
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

    final bool isRequired = (element['min'] as int) > 0;
    final bool isBackboneElement =
        classes[thisClass]?.isBackboneElement ?? false;
    final bool isSuper = fieldName.isSuperField(thisClass!, isBackboneElement);

    if (isPolymorphic) {
      // Handle polymorphic types
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
    } else {
      // Regular field processing
      classes[thisClass]!.fields.add(Field()
        ..name = fieldName
        ..type = fieldType
        ..isRequired = isRequired
        ..isSuper = isSuper
        ..isList = isList);
    }
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
      final String fieldDeclaration = field.isList
          ? 'List<${field.type}>${field.isRequired ? '' : '?'}'
          : '${field.type}${field.isRequired ? '' : '?'}';
      if (field.name != writableName && !field.isSuper) {
        buffer.writeln(
            '  final $fieldDeclaration ${field.name.fhirFieldToDartName};');
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
  writeFileName = writeFileName.properFileName;
  // Write class to file
  final String filePath = '../lib/src/fhir/'
      '${className.isResourceType ? "resource_types" : "data_types"}/'
      '$writeFileName.dart';
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
