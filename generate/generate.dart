import 'dart:convert';
import 'dart:io';

import 'package:archive/archive_io.dart';

import 'types.dart';

Future<void> main() async {
  // await _extractFilesToDisk();
  // await _moveJsonExamples();
  // await _moveNdJsonExamples();
  await _actualFHIRClasses();
  await _generateExportFile(); // Generate export.dart after generating class files
}

Future<void> _actualFHIRClasses() async {
  await extractFileToDisk('definitions.json/fhir.schema.json.zip', '.');

  while (!File('fhir.schema.json').existsSync()) {}

  final String schemaString = File('fhir.schema.json').readAsStringSync();
  final Map<String, dynamic> schema =
      jsonDecode(schemaString) as Map<String, dynamic>;

  // Load the schema definitions
  final Map<String, dynamic> definitions =
      schema['definitions'] as Map<String, dynamic>;

  // Group classes by their type and whether they share a common prefix
  final Map<String, List<String>> groupedClasses = <String, List<String>>{};

  for (final String key in definitions.keys) {
    if (typeToGenerate(key)) {
      final String prefix = _getPrefix(key);
      groupedClasses.putIfAbsent(prefix, () => <String>[]).add(key);
    }
  }

  for (final String prefix in groupedClasses.keys) {
    final List<String> classKeys = groupedClasses[prefix] ?? <String>[];
    _generateClasses(prefix, classKeys, definitions);
  }
}

// Function to get prefix (e.g., for 'data_requirement_sort' -> 'data_requirement')
String _getPrefix(String key) {
  return key.split('_').first;
}

// Function to generate all classes in the same file
void _generateClasses(
    String prefix, List<String> classKeys, Map<String, dynamic> definitions) {
  final StringBuffer buffer = StringBuffer();

  // Iterate through each class and generate its code
  for (final String classKey in classKeys) {
    final Map<String, dynamic> classDefinition =
        definitions[classKey] as Map<String, dynamic>;
    buffer.writeln(_generateDartClass(classKey, classDefinition));
  }

  // Determine type directory (resourceType or dataType)
  final String typeDirectory =
      isResourceType(prefix) ? 'resource_types' : 'data_types';

  // Write to the same file with the prefix
  final String outputPath =
      '../lib/src/fhir/$typeDirectory/${prefix.toLowerCase()}.dart';

  // Ensure directory exists
  final File outputFile = File(outputPath);
  outputFile.createSync(recursive: true);

  // Add imports at the top of the file
  final StringBuffer fileContent = StringBuffer();
  fileContent.writeln("import 'package:data_class/data_class.dart';");
  fileContent.writeln("import 'package:json/json.dart';\n");
  fileContent.writeln("import '../../../fhir_r4.dart';\n");

  // Add the class definitions
  fileContent.writeln(buffer.toString());

  // Write the classes and imports to the file
  outputFile.writeAsStringSync(fileContent.toString());
}

// Function to generate Dart class from schema definition
String _generateDartClass(
    String className, Map<String, dynamic> classDefinition) {
  final StringBuffer buffer = StringBuffer();

  // Convert className to UpperCamelCase
  className = className
      .split('_')
      .map((String str) => str[0].toUpperCase() + str.substring(1))
      .join();

  // Class declaration with @Data() and @JsonCodable() annotations
  buffer.writeln('@Data()');
  buffer.writeln('@JsonCodable()');
  buffer.writeln('class ${fhirToDartType(className)} {');

// Fields
  final Map<String, dynamic>? properties =
      classDefinition['properties'] as Map<String, dynamic>?;
  properties?.forEach((String field, dynamic details) {
    if (details is Map<String, dynamic>) {
      final String type = mapType(details);
      final String camelCaseField = _toCamelCase(field);
      if (camelCaseField == 'resourceType') {
        buffer.writeln(
            '  final R4ResourceType resourceType = R4ResourceType.$className;');
      } else if (camelCaseField == 'id') {
        buffer.writeln('  final FhirId id;');
      } else {
        buffer.writeln('  final $type ${editIfReserved(camelCaseField)};');
      }
    }
  });

  // Close class
  buffer.writeln('}\n');

  return buffer.toString();
}

// Function to convert snake_case to camelCase for fields
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

// Mapping and utilities (same as before)
String mapType(Map<String, dynamic> details) {
  if (details.containsKey(r'$ref')) {
    final String ref = details[r'$ref'] as String;
    return _extractTypeFromRef(ref);
  } else if (details['type'] == 'array') {
    final Map<String, dynamic> items = details['items'] as Map<String, dynamic>;
    final String itemType = mapType(items);
    return 'List<${fhirToDartType(itemType)}>';
  } else if (details['type'] == 'string') {
    return 'String';
  } else if (details['type'] == 'boolean') {
    return 'bool';
  } else if (details['type'] == 'integer') {
    return 'int';
  } else if (details['type'] == 'number') {
    return 'double';
  } else if (details['type'] == 'object') {
    if (details.containsKey(r'$ref')) {
      return _extractTypeFromRef(details[r'$ref'] as String);
    }
    return 'Map<String, dynamic>';
  }
  return 'dynamic';
}

String _extractTypeFromRef(String ref) {
  final String typeName = ref.split('/').last;
  return fhirToDartType(typeName);
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

// Generate a single `export.dart` file
Future<void> _generateExportFile() async {
  for (final String type in <String>['data_types', 'resource_types']) {
    final Directory generatedDir = Directory('../lib/src/fhir/$type');
    final List<FileSystemEntity> files = generatedDir.listSync();

    final StringBuffer exportBuffer = StringBuffer();

    for (final FileSystemEntity file in files) {
      if (file is File &&
          file.path.endsWith('.dart') &&
          !file.path.endsWith('$type.dart')) {
        final String fileName = file.path.split('/').last;
        exportBuffer.writeln("export '$fileName';");
      }
    }

    final File exportFile = File('../lib/src/fhir/$type/$type.dart');
    await exportFile.writeAsString(exportBuffer.toString());
  }
}
