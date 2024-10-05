import 'dart:convert';
import 'dart:io';

import 'extract.dart';
import 'types.dart';

Future<void> main() async {
  await _classesFromStructureDefinitions();
}

Future<void> _classesFromStructureDefinitions() async {
  final List<String> structureDefinitionBundles = <String>[
    'definitions.json/profiles-resources.json',
    'definitions.json/profiles-types.json'
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
    if (entry is Map<String, dynamic> &&
        entry['resource'] != null &&
        entry['resource'] is Map<String, dynamic> &&
        (entry['resource'] as Map<String, dynamic>)['resourceType'] ==
            'StructureDefinition') {
      await _generateFromSd(entry['resource'] as Map<String, dynamic>);
    }
  }
}

Future<void> _generateFromSd(Map<String, dynamic> sd) async {
  final String className = sd['name'] as String;
  if (!typeToGenerate(className)) {
    return;
  }
  final StringBuffer buffer = StringBuffer();

  buffer.writeln('@Data()');
  buffer.writeln('@JsonCodable()');
  buffer.writeln('class ${fhirToDartType(className, true)} {');

  // Prepare constructor
  final StringBuffer constructorBuffer = StringBuffer();
  constructorBuffer.writeln('\n  ${fhirToDartType(className)}({');

  // Parse the snapshot to get the elements of the StructureDefinition
  final List<Map<String, dynamic>> elements =
      ((sd['snapshot'] as Map<String, dynamic>)['element'] as List<dynamic>)
          .map((dynamic item) => item as Map<String, dynamic>)
          .toList();

  // Use these to store fields for subclasses
  final Map<String, List<Map<String, dynamic>>> subClassFields =
      <String, List<Map<String, dynamic>>>{};

  // Iterate over each element and generate fields and constructor
  for (final Map<String, dynamic> element in elements) {
    _processElementForSd(element, buffer, constructorBuffer, subClassFields);
  }

  // Close constructor and class
  constructorBuffer.writeln('  });');
  buffer.writeln(constructorBuffer.toString());

  buffer.writeln('}\n');

  // Generate the subclasses
  for (final String subClassName in subClassFields.keys) {
    _generateSubClass(subClassName, subClassFields[subClassName]!, buffer);
  }

  // Write the class to the appropriate file
  _writeClassToFile(className, buffer.toString());
}

void _processElementForSd(
    Map<String, dynamic> element,
    StringBuffer buffer,
    StringBuffer constructorBuffer,
    Map<String, List<Map<String, dynamic>>> subClassFields) {
  final String path = element['path'] as String;
  final List<String> pathParts = path.split('.');
  final String fieldName = pathParts.last;

  // Handle sub-class generation for nested fields
  if (pathParts.length > 2) {
    final String parentClass = pathParts.first;
    final String subClassName =
        pathParts.sublist(0, pathParts.length - 1).join('_');

    // Collect the fields for the subclass
    subClassFields
        .putIfAbsent(subClassName, () => <Map<String, dynamic>>[])
        .add(element);
    return;
  }

  // Determine the type of the field
  final String type = _getElementTypeFromSd(element, fieldName);
  final bool isRequired = _isRequiredFromSd(element);

  final String camelCaseField = _toCamelCase(fieldName);
  final String nullableMark = isRequired ? '' : '?';

  // Replace BackboneElement type with the generated subclass name
  final String effectiveType =
      type == 'BackboneElement' ? _generateSubClassName(camelCaseField) : type;

  buffer.writeln('  final $effectiveType$nullableMark $camelCaseField;');

  // Add field to constructor
  if (isRequired) {
    constructorBuffer.writeln('    required this.$camelCaseField,');
  } else {
    constructorBuffer.writeln('    this.$camelCaseField,');
  }
}

String _getElementTypeFromSd(Map<String, dynamic> element, String fieldName) {
  final List<Map<String, dynamic>>? types = (element['type'] as List<dynamic>?)
      ?.map((dynamic item) => item as Map<String, dynamic>)
      .toList();

  if (types != null && types.isNotEmpty) {
    final String code = types.first['code'] as String;

    // Handle specific FHIR type mapping
    if (code == 'http://hl7.org/fhirpath/System.String') {
      return fieldName == 'id' ? 'FhirId' : 'FhirString';
    }
    return fhirToDartType(code);
  }
  return 'dynamic';
}

bool _isRequiredFromSd(Map<String, dynamic> element) {
  final int min = element['min'] as int;
  return min > 0;
}

void _generateSubClass(String subClassName, List<Map<String, dynamic>> elements,
    StringBuffer buffer) {
  final String effectiveClassName = fhirToDartType(subClassName, true);

  buffer.writeln('@Data()');
  buffer.writeln('@JsonCodable()');
  buffer.writeln('class $effectiveClassName {');

  // Prepare constructor
  final StringBuffer constructorBuffer = StringBuffer();
  constructorBuffer.writeln('\n  $effectiveClassName({');

  // Iterate through the fields collected for this subclass
  for (final Map<String, dynamic> element in elements) {
    final String fieldName = (element['path'] as String).split('.').last;
    final String type = _getElementTypeFromSd(element, fieldName);
    final bool isRequired = _isRequiredFromSd(element);
    final String camelCaseField = _toCamelCase(fieldName);
    final String nullableMark = isRequired ? '' : '?';

    buffer.writeln('  final $type$nullableMark $camelCaseField;');

    // Add field to constructor
    if (isRequired) {
      constructorBuffer.writeln('    required this.$camelCaseField,');
    } else {
      constructorBuffer.writeln('    this.$camelCaseField,');
    }
  }

  // Close constructor and class
  constructorBuffer.writeln('  });');
  buffer.writeln(constructorBuffer.toString());

  buffer.writeln('}\n');
}

String _generateSubClassName(String camelCaseField) {
  // Create a class name for the subclass based on the camelCaseField
  return fhirToDartType(_toUpperCamelCase(camelCaseField), true);
}

void _writeClassToFile(String className, String classContent) {
  final String typeDirectory =
      isResourceType(className) ? 'resource_types' : 'data_types';
  final String outputPath =
      '../lib/src/fhir/$typeDirectory/${className.toLowerCase()}.dart';

  final File outputFile = File(outputPath);
  outputFile.createSync(recursive: true);
  outputFile.writeAsStringSync(classContent);
}

// Utility functions for type mapping and camelCase conversion
String fhirToDartType(String type, [bool isClass = false]) {
  if (type == 'String' || type == 'http://hl7.org/fhirpath/System.String') {
    return 'FhirString';
  }
  if (type == 'id' || type == 'http://hl7.org/fhirpath/System.Id') {
    return 'FhirId';
  }
  // Add other type mappings as needed
  return isClass ? _toUpperCamelCase(type) : type;
}

String _toCamelCase(String text) {
  if (text[0] == '_') {
    return '${text.substring(1)}Element';
  }
  final List<String> words = text.split('_');
  return words.first +
      words
          .skip(1)
          .map((String word) => word[0].toUpperCase() + word.substring(1))
          .join();
}

String _toUpperCamelCase(String text) {
  return text
      .split('_')
      .map((String word) => word[0].toUpperCase() + word.substring(1))
      .join();
}
