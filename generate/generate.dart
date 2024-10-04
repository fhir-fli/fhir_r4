import 'dart:convert';
import 'dart:io';

import 'package:archive/archive_io.dart';

import 'types.dart';

Future<void> main() async {
  await extractFilesToDisk();
  await moveJsonExamples();
  await moveNdJsonExamples();
  await actualFHIRClasses();
  await generateExportFile(); // Generate export.dart after generating class files
}

Future<void> actualFHIRClasses() async {
  await extractFileToDisk('definitions.json/fhir.schema.json.zip', '.');

  while (!File('fhir.schema.json').existsSync()) {}

  final String schemaString = File('fhir.schema.json').readAsStringSync();
  final Map<String, dynamic> schema =
      jsonDecode(schemaString) as Map<String, dynamic>;

  // Load the schema definitions
  final Map<String, dynamic> definitions =
      schema['definitions'] as Map<String, dynamic>;

  // Group classes by prefix
  final Map<String, StringBuffer> groupedClasses = <String, StringBuffer>{};

  // Iterate over all types and generate Dart classes
  for (final String key in definitions.keys) {
    if (key == 'xhtml') {
      continue;
    }

    final Map<String, dynamic> classDefinition =
        definitions[key] as Map<String, dynamic>;

    // Skip primitives, generate Dart code for the class otherwise
    if (!isPrimitiveType(classDefinition)) {
      final String dartClass = generateDartClass(key, classDefinition);

      // Extract prefix (everything before the first uppercase letter after the first word)
      final String prefix = extractPrefix(key);

      // Add to the buffer of that prefix group
      groupedClasses.putIfAbsent(prefix, () => StringBuffer());
      groupedClasses[prefix]!.writeln(dartClass);
    }
  }

  // Write grouped classes to their respective files with imports at the top
  for (final String prefix in groupedClasses.keys) {
    final String outputPath =
        '../lib/src/fhir/generated/${prefix.toLowerCase()}.dart';

    // Ensure directory exists
    final File outputFile = File(outputPath);
    outputFile.createSync(recursive: true);

    // Add imports at the top of the file
    final StringBuffer fileContent = StringBuffer();
    fileContent.writeln("import 'package:data_class/data_class.dart';");
    fileContent
        .writeln("import 'package:fhir_primitives/fhir_primitives.dart';");
    fileContent.writeln("import 'package:json/json.dart';\n");

    fileContent.writeln("import 'export.dart';\n");

    // Add the class definitions
    fileContent.writeln(groupedClasses[prefix]!.toString());

    // Write the classes and imports to the file
    outputFile.writeAsStringSync(fileContent.toString());
  }
}

// Function to extract the prefix from the class name (e.g., CapabilityStatement)
String extractPrefix(String className) {
  final RegExp regex = RegExp(r'^[A-Z][a-z]*');
  final RegExpMatch? match = regex.firstMatch(className);
  return match?.group(0) ?? className;
}

// Helper function to check if a class is a primitive type
bool isPrimitiveType(Map<String, dynamic> classDefinition) {
  final List<String> primitiveTypes = <String>[
    'string',
    'boolean',
    'integer',
    'number'
  ];
  final String? type = classDefinition['type'] as String?;
  return primitiveTypes.contains(type);
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

  // Class declaration with @Data() and @JsonCodable() annotations
  buffer.writeln('@Data()');
  buffer.writeln('@JsonCodable()');
  buffer.writeln('class ${_mapToDartType(className)} {');

  // Fields
  final Map<String, dynamic>? properties =
      classDefinition['properties'] as Map<String, dynamic>?;
  properties?.forEach((String field, dynamic details) {
    if (details is Map<String, dynamic>) {
      final String type = mapType(details);
      final String camelCaseField = toCamelCase(field);
      buffer.writeln('  final $type $camelCaseField;');
    } else {
      final String camelCaseField = toCamelCase(field);
      buffer.writeln('  final dynamic $camelCaseField;');
    }
  });

  // Constructor
  // buffer.writeln('  const ${_mapToDartType(className)}({');
  // properties?.forEach((String field, dynamic details) {
  //   final String camelCaseField = toCamelCase(field);
  //   buffer.writeln('    required this.$camelCaseField,');
  // });
  // buffer.writeln('  });');

  // Close class
  buffer.writeln('}');

  return buffer.toString();
}

// Function to convert snake_case to camelCase for fields
String toCamelCase(String text) {
  if (text[0] == '_') {
    return '${text.substring(1)}Element';
  }
  final List<String> words = text.split('_');
  final String camelCaseWord = words.first +
      words
          .skip(1)
          .map((String word) => word[0].toUpperCase() + word.substring(1))
          .join();

  return reserved.contains(camelCaseWord) ? '${camelCaseWord}_' : camelCaseWord;
}

String mapType(Map<String, dynamic> details) {
  if (details.containsKey(r'$ref')) {
    final String ref = details[r'$ref'] as String;
    return _extractTypeFromRef(ref);
  } else if (details['type'] == 'array') {
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
    if (details.containsKey(r'$ref')) {
      return _extractTypeFromRef(details[r'$ref'] as String);
    }
    return 'Map<String, dynamic>';
  }
  return 'dynamic';
}

String _extractTypeFromRef(String ref) {
  final String typeName = ref.split('/').last;
  return _mapToDartType(typeName);
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

// Generate a single `export.dart` file
Future<void> generateExportFile() async {
  final Directory generatedDir = Directory('../lib/src/fhir/generated');
  final List<FileSystemEntity> files = generatedDir.listSync();

  final StringBuffer exportBuffer = StringBuffer();

  for (final FileSystemEntity file in files) {
    if (file is File && file.path.endsWith('.dart')) {
      final String fileName = file.path.split('/').last;
      exportBuffer.writeln("export '$fileName';");
    }
  }

  final File exportFile = File('../lib/src/fhir/generated/export.dart');
  await exportFile.writeAsString(exportBuffer.toString());
}
