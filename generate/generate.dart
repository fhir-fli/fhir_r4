// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';
import 'dart:io';

import 'package:archive/archive_io.dart';

Future<void> main() async {
  await extractFilesToDisk();
  await moveJsonExamples();
  await moveNdJsonExamples();
  await actualFHIRClasses();

  // File('definitions.json.zip').deleteSync();
  // File('examples-json.zip').deleteSync();
  // File('examples-ndjson.zip').deleteSync();
}

Future<void> actualFHIRClasses() async {
  await extractFileToDisk('definitions.json/fhir.schema.json.zip', '.');

  final String schemaString = await File('fhir.schema.json').readAsString();
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
        'lib/fhir/$key.dart'; // Organize paths based on categories
    await File(outputPath).writeAsString(dartClass);
  }
}

// Function to generate Dart class from schema definition
String generateDartClass(
    String className, Map<String, dynamic> classDefinition) {
  final StringBuffer buffer = StringBuffer();

  // Add imports
  buffer.writeln("import 'package:json_annotation/json_annotation.dart';");
  buffer.writeln("import 'package:equatable/equatable.dart';");

  // Class declaration
  buffer.writeln('@JsonSerializable()');
  buffer.writeln('class $className extends Equatable {');

  // Fields
  final Map<String, dynamic> properties =
      classDefinition['properties'] as Map<String, dynamic>;
  properties.forEach((String field, dynamic details) {
    final String type = details['type'] as String? ?? 'dynamic';
    final bool isRequired =
        (classDefinition['required'] as List<dynamic>?)?.contains(field) ??
            false;
    buffer.writeln('  final ${isRequired ? '' : ''}$type $field;');
  });

  // Constructor
  buffer.writeln('  const $className({');
  properties.forEach((String field, dynamic details) {
    final bool isRequired =
        (classDefinition['required'] as List<dynamic>?)?.contains(field) ??
            false;
    buffer.writeln('    ${isRequired ? 'required this.' : 'this.'}$field,');
  });
  buffer.writeln('  });');

  // Add toJson/fromJson methods
  buffer.writeln(
      'factory $className.fromJson(Map<String, dynamic> json) => _\$${className}FromJson(json);');
  buffer
      .writeln('Map<String, dynamic> toJson() => _\$${className}ToJson(this);');

  // Add Equatable properties (for equality and hashCode)
  buffer.writeln('@override');
  buffer.writeln('List<Object?> get props => [');
  properties.forEach((String field, _) {
    buffer.writeln('    $field,');
  });
  buffer.writeln('  ];');

  // Close class
  buffer.writeln('}');

  return buffer.toString();
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
  examplesJsonDirectory.deleteSync(recursive: true);
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
  examplesJsonDirectory.deleteSync(recursive: true);
}

Future<void> extractFilesToDisk() async {
  await extractFileToDisk('definitions.json.zip', '.');
  await extractFileToDisk('examples-json.zip', '.');
  await extractFileToDisk('examples-ndjson.zip', '.');
  Directory('./__MACOSX').deleteSync(recursive: true);
}
