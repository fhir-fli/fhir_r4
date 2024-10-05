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
  if (!shouldGenerate(className)) {
    return;
  }

  final StringBuffer buffer = StringBuffer();
  final StringBuffer constructorBuffer = StringBuffer();

  // Write class header
  buffer.writeln("import 'package:data_class/data_class.dart';");
  buffer.writeln("import 'package:json/json.dart';");
  buffer.writeln("\nimport '../../../fhir_r4.dart';\n");
  buffer.writeln('@Data()');
  buffer.writeln('@JsonCodable()');
  final String extendsClause = isDataType(className)
      ? 'extends DataType'
      : isQuantity(className)
          ? 'extends Quantity'
          : isBackboneType(className)
              ? 'extends BackboneElement'
              : isResourceType(className)
                  ? 'extends DomainResource'
                  : '';
  if (extendsClause.isEmpty) {
    print('No extends clause for $className');
  }
  buffer.writeln('class $className $extendsClause {');

  // Prepare constructor
  constructorBuffer.writeln('\n  $className({');

  // Process elements
  final List<Map<String, dynamic>> elements =
      ((sd['snapshot'] as Map<String, dynamic>)['element'] as List<dynamic>)
          .map((dynamic item) => item as Map<String, dynamic>)
          .toList();

  final Map<String, List<Map<String, dynamic>>> subClassFields =
      <String, List<Map<String, dynamic>>>{};

  // Generate fields and constructor
  for (final Map<String, dynamic> element in elements) {
    _processElement(
        element, buffer, constructorBuffer, className, subClassFields);
  }

  // Close constructor and class
  constructorBuffer.writeln('  });');
  buffer.writeln(constructorBuffer.toString());
  buffer.writeln('}\n');

  // Generate any BackboneElement subclasses
  for (final String subClassName in subClassFields.keys) {
    _generateBackboneSubClass(
        subClassName, subClassFields[subClassName]!, buffer);
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

void _processElement(
    Map<String, dynamic> element,
    StringBuffer buffer,
    StringBuffer constructorBuffer,
    String className,
    Map<String, List<Map<String, dynamic>>> subClassFields) {
  final String path = element['path'] as String;
  final String fieldName = _removeUnderscores(path.split('.').last);
  final String fieldType = fhirToDartTypes(_getElementType(element));
  final bool isRequired = (element['min'] as int) > 0;

  if (fieldType == 'BackboneElement') {
    // Create a subclass for BackboneElement, and ensure proper naming
    final String subClassName = _getSubClassName(fieldName, className);

    // Store this element as part of the subclass fields
    subClassFields
        .putIfAbsent(subClassName, () => <Map<String, dynamic>>[])
        .add(element);

    // Write the field in the main class with a reference to the subclass
    buffer.writeln('  final $subClassName? $fieldName;');

    // Add the field to the constructor of the main class
    constructorBuffer.writeln('    this.$fieldName,');
  } else {
    // Regular field processing
    final String nullableMark = isRequired ? '' : '?';
    final bool isSuper = isSuperField(fieldName, className);
    if (!isSuper) {
      buffer.writeln('  final $fieldType$nullableMark $fieldName;');
      if (isPrimitiveType(fieldName)) {
        buffer.writeln('  final FhirElement$nullableMark ${fieldName}Element;');
      }
    }
    constructorBuffer.writeln('    ${isRequired ? "required " : ""}'
        '${isSuper ? "super" : "this"}'
        '.$fieldName,');
    if (isPrimitiveType(fieldName)) {
      constructorBuffer.writeln('    ${isRequired ? "required " : ""}'
          '${isSuper ? "super" : "this"}'
          '.${fieldName}Element,');
    }
  }
}

String _getSubClassName(String fieldName, String parentClassName) {
  // Convert both parentClassName and fieldName to PascalCase without underscores
  final String cleanedParentClassName = _removeUnderscores(parentClassName);
  final String cleanedFieldName =
      _removeUnderscores(_capitalizeFirstLetter(fieldName));

  // Return the combined subclass name without underscores
  return '$cleanedParentClassName$cleanedFieldName';
}

void _generateBackboneSubClass(String subClassName,
    List<Map<String, dynamic>> elements, StringBuffer buffer) {
  final StringBuffer constructorBuffer = StringBuffer();

  // Class header for the BackboneElement subclass
  buffer.writeln('@Data()');
  buffer.writeln('@JsonCodable()');
  buffer.writeln('class $subClassName extends BackboneElement {');

  constructorBuffer.writeln('\n  $subClassName({');

  for (final Map<String, dynamic> element in elements) {
    final String fieldName = _removeUnderscores(
        (element['path'] as String).split('.').last); // Remove underscores
    final String fieldType = fhirToDartTypes(_getElementType(element));
    final bool isRequired = (element['min'] as int) > 0;
    final String nullableMark = isRequired ? '' : '?';

    buffer.writeln('  final $fieldType$nullableMark $fieldName;');
    constructorBuffer.writeln('    ${isRequired ? "required " : ""}'
        'this.$fieldName,');
  }

  constructorBuffer.writeln('  });');
  buffer.writeln(constructorBuffer.toString());
  buffer.writeln('}\n');
}

String _capitalizeFirstLetter(String input) {
  if (input.isEmpty) {
    return input;
  }
  return input[0].toUpperCase() + input.substring(1);
}

String _removeUnderscores(String input) {
  // Convert snake_case to PascalCase for field names
  final List<String> parts = input.split('_');
  return parts.first + parts.skip(1).map(_capitalizeFirstLetter).join();
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
