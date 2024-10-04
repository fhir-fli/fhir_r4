// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';
import 'dart:io';

import 'package:archive/archive_io.dart';

import 'types.dart';

Future<void> main() async {
  await extractFilesToDisk();
  await moveJsonExamples();
  await moveNdJsonExamples();
  await actualFHIRClasses();
}

Future<void> actualFHIRClasses() async {
  await extractFileToDisk('definitions.json/fhir.schema.json.zip', '.');

  final String schemaString = File('fhir.schema.json').readAsStringSync();
  final Map<String, dynamic> schema =
      jsonDecode(schemaString) as Map<String, dynamic>;

  // Load the schema definitions
  final Map<String, dynamic> definitions =
      schema['definitions'] as Map<String, dynamic>;

  // Iterate over all types and generate Dart classes
  for (final String key in definitions.keys) {
    final Map<String, dynamic> classDefinition =
        definitions[key] as Map<String, dynamic>;

    // Generate Dart code for the class
    final String dartClass = generateDartClass(key, classDefinition);

    // Write the Dart class to a file
    final String outputPath =
        '../lib/src/fhir/generated/${key.toLowerCase()}.dart'; // Organize paths based on categories
    File(outputPath).writeAsStringSync(dartClass);
  }
}

// Helper function to convert snake_case to UpperCamelCase
String toUpperCamelCase(String text) {
  return text
      .split('_')
      .map((String str) => str[0].toUpperCase() + str.substring(1))
      .join();
}

// Function to generate Dart class from schema definition
String generateDartClass(
    String className, Map<String, dynamic> classDefinition) {
  final StringBuffer buffer = StringBuffer();

  // Convert className to UpperCamelCase
  className = toUpperCamelCase(className);

  // Add imports
  buffer.writeln("import 'package:data_class/data_class.dart';");
  buffer.writeln("import 'package:json/json.dart';\n");

  // Class declaration with @Data() and @JsonCodable() annotations
  buffer.writeln('@Data()');
  buffer.writeln('@JsonCodable()');
  buffer.writeln('class $className {');

// Fields
  final Map<String, dynamic>? properties =
      classDefinition['properties'] as Map<String, dynamic>?;
  properties?.forEach((String field, dynamic details) {
    // Check if details is a Map<String, dynamic>
    if (details is Map<String, dynamic>) {
      // Handle array type as List<T> and map other types properly
      final String type = mapType(details);
      final bool isRequired =
          (classDefinition['required'] as List<dynamic>?)?.contains(field) ??
              false;

      // Convert field name to camelCase and make fields final
      final String camelCaseField = toCamelCase(field);
      buffer.writeln('  final ${isRequired ? '' : ''}$type $camelCaseField;');
    } else {
      // If details is not a map, default to dynamic or handle accordingly
      final String camelCaseField = toCamelCase(field);
      buffer.writeln('  final dynamic $camelCaseField;');
    }
  });

  // Constructor
  buffer.writeln('  const $className({');
  properties?.forEach((String field, dynamic details) {
    final bool isRequired =
        (classDefinition['required'] as List<dynamic>?)?.contains(field) ??
            false;

    final String camelCaseField = toCamelCase(field);
    buffer.writeln(
        '    ${isRequired ? 'required this.' : 'this.'}$camelCaseField,');
  });
  buffer.writeln('  });');

  // Close class
  buffer.writeln('}');

  return buffer.toString();
}

// Function to convert snake_case to camelCase for fields
String toCamelCase(String text) {
  final List<String> words = text.split('_');
  return words.first +
      words
          .skip(1)
          .map((String word) => word[0].toUpperCase() + word.substring(1))
          .join();
}

String mapType(Map<String, dynamic> details) {
  if (details.containsKey(r'$ref')) {
    // Extract the type from $ref and map it using allTypes
    final String ref = details[r'$ref'] as String;
    return _extractTypeFromRef(ref);
  } else if (details['type'] == 'array') {
    // Handle arrays as List<T>
    final Map<String, dynamic> items = details['items'] as Map<String, dynamic>;
    final String itemType = mapType(items);
    return 'List<${_mapToDartType(itemType)}>';
  } else if (details['type'] == 'string') {
    return 'String';
  } else if (details['type'] == 'boolean') {
    return 'bool';
  } else if (details['type'] == 'integer') {
    return 'int';
  } else if (details['type'] == 'number') {
    return 'double';
  } else if (details['type'] == 'object') {
    // Handle specific object types (e.g., Extension, Reference)
    if (details.containsKey(r'$ref')) {
      return _extractTypeFromRef(details[r'$ref'] as String);
    }
    // Otherwise, return a generic Map<String, dynamic> for plain objects
    return 'Map<String, dynamic>';
  }

  // Default fallback to 'dynamic'
  return 'dynamic';
}

String _extractTypeFromRef(String ref) {
  // Ref will be something like "#/definitions/Extension", we extract the type name
  final String typeName = ref.split('/').last;

  // Use allTypes to map the type name to Dart types
  if (allTypes.containsKey(typeName)) {
    return _mapToDartType(typeName);
  }

  // If type is not found, assume it's a custom class and return as-is
  return typeName;
}

String _mapToDartType(String typeName) {
  typeName = typeName.replaceAll('_', '');
  return typeNames[typeName] ?? typeName;
}

Future<void> moveNdJsonExamples() async {
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

Future<void> moveJsonExamples() async {
  final Directory examplesJsonDirectory = Directory('examples-json');
  final List<FileSystemEntity> examplesJson = examplesJsonDirectory.listSync();
  for (final FileSystemEntity file in examplesJson) {
    if (file is File) {
      await file
          .copy(file.path.replaceAll('examples-json', '../test/fhir/examples'));
    }
  }
}

Future<void> extractFilesToDisk() async {
  await extractFileToDisk('definitions.json.zip', '.');
  await extractFileToDisk('examples-json.zip', '.');
  await extractFileToDisk('examples-ndjson.zip', '.');
}

// Extracts files from a zip archive
Future<void> extractFileToDisk(String path, String destination) async {
  final InputFileStream inputStream = InputFileStream(path);
  final Archive archive = ZipDecoder().decodeBuffer(inputStream);
  extractArchiveToDisk(archive, destination);
}
