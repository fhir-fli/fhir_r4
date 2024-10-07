// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';

import 'export_files.dart';
import 'extract.dart';
import 'fhir_generate_extension.dart';
import 'models.dart';
import 'prepare_data.dart';
import 'write_enums.dart';

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
}

void _writeClassFooter(StringBuffer buffer, WritableClass writableClass) {
  final String writableName = writableClass.className;
  if (writableName.isResourceType && writableClass.isResourceType) {
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

bool _isValidStructureDefinition(dynamic entry) {
  return entry is Map<String, dynamic> &&
      entry['resource'] != null &&
      entry['resource'] is Map<String, dynamic> &&
      (entry['resource'] as Map<String, dynamic>)['resourceType'] ==
          'StructureDefinition';
}
