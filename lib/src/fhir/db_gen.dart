import 'dart:io';

const String searchDirectory =
    '.'; // Change this if you want to specify a directory
const List<String> ignoredPatterns = <String>['freezed', '.g.', 'db_gen'];

void main() {
  final Directory dir = Directory(searchDirectory);
  processDirectory(dir);
}

void processDirectory(Directory dir) {
  final List<FileSystemEntity> entities = dir.listSync(recursive: true);

  for (final FileSystemEntity entity in entities) {
    if (entity is File && entity.path.endsWith('.dart')) {
      final String fileName = entity.uri.pathSegments.last;

      // Ignore files that contain 'freezed' or '.g.' in their filenames
      if (ignoredPatterns.any((String pattern) => fileName.contains(pattern))) {
        continue;
      }

      // Read the file content
      final String fileContent = entity.readAsStringSync();

      // Check if the file contains multiple 'export' lines
      if (fileContent.contains('export') && !fileName.contains('entity')) {
        // Handle export transformation
        processExportFile(entity, fileContent);
      }

      // Check if the file content has the word 'freezed'
      if (fileContent.contains('@freezed')) {
        // Process the file for ObjectBox transformation
        final String transformedClass = transformToObjectBox(fileContent);

        // Create the new file name by appending '_entity' before the '.dart'
        final String newFileName =
            fileName.replaceFirst('.dart', '_entity.dart');

        // Write the transformed content to the new file in the same directory
        final String newPath = entity.path.replaceFirst(fileName, newFileName);
        File(newPath).writeAsStringSync(transformedClass);

        print('Processed and saved: $newFileName');
      }
    }
  }
}

// Handle export lines and file creation for export changes
void processExportFile(File entity, String content) {
  // Change the export filenames to end with '_entity.dart'
  final String updatedContent = content
      .replaceAllMapped(RegExp(r"export '([^']+).dart';"), (Match match) {
    final String oldFileName = match.group(1)!;
    return "export '${oldFileName}_entity.dart';";
  });

  // Create a new file with '_entity' appended to its name
  final String oldFileName = entity.uri.pathSegments.last;
  final String newFileName = oldFileName.replaceFirst('.dart', '_entity.dart');
  final String newPath = entity.path.replaceFirst(oldFileName, newFileName);

  // Write the updated export lines to the new file
  File(newPath).writeAsStringSync(updatedContent);

  print('Processed export file and saved: $newFileName');
}

String transformToObjectBox(String input) {
  final List<String> lines = input.split('\n');
  final StringBuffer buffer = StringBuffer();

  bool inConstructor = false;
  bool entityAdded = false;
  String? constructorName;

  // Add necessary imports at the start
  buffer.writeln("import 'package:objectbox/objectbox.dart';");
  buffer.writeln("import '../../r4_entity.dart';");

  // Regex for factory constructor
  final RegExp factoryConstructorRegex = RegExp(r'\s+factory (.*)\(\{');
  // Regex for constructor ending with _$ConstructorName;
  final RegExp constructorEndRegex = RegExp(r'\s+\}\)\s+=\s+_(.*);');
  // Regex to find and remove @JsonKey() annotations only
  final RegExp jsonKeyRegex = RegExp(r'@JsonKey\(.*\)');

  for (int i = 0; i < lines.length; i++) {
    String line = lines[i];

    // Remove only @JsonKey() annotations
    if (jsonKeyRegex.hasMatch(line)) {
      line = line.replaceAll(jsonKeyRegex, '');
    }

    // Remove comments, imports, and part statements
    if (line.trim().startsWith('//') ||
        line.trim().startsWith('///') ||
        line.trim().startsWith('import') ||
        line.trim().startsWith('part')) {
      continue;
    }

    // Add @Entity() at the beginning of the class (only once)
    if (!entityAdded && line.trim().startsWith('@freezed')) {
      buffer.writeln('@Entity()'); // ObjectBox entity annotation
      entityAdded = true;
      continue;
    }

    // Find the primary factory constructor
    final RegExpMatch? factoryMatch = factoryConstructorRegex.firstMatch(line);
    if (factoryMatch != null) {
      constructorName = factoryMatch.group(1);
      inConstructor = true;
      buffer.writeln('class ${constructorName}Entity {');
      buffer.writeln('  @Id(assignable: true) int dbId;'); // Add dbId field
      continue;
    }

    // If we are inside the primary constructor, process the fields
    if (inConstructor) {
      // Transform fields according to their type
      line = transformFhirFields(line);

      // Remove any double ?? and replace with a single ?
      line = line.replaceAll('??', '?');

      // Check if we reached the end of the primary constructor
      final RegExpMatch? endMatch = constructorEndRegex.firstMatch(line);
      if (endMatch != null && endMatch.group(1) == constructorName) {
        inConstructor = false; // End of constructor
        buffer.writeln('}');
      } else {
        buffer.writeln(line); // Add the constructor body lines
      }
    }
  }

  return buffer.toString();
}

// Function to handle transformation of FHIR-specific fields
String transformFhirFields(String line) {
  // Extract the field type and name
  final RegExp fieldRegex = RegExp(r'\s+([A-Za-z0-9<>\?]+)\s+([A-Za-z0-9_]+),');
  final RegExpMatch? match = fieldRegex.firstMatch(line);

  if (match != null) {
    String fieldType = match.group(1)!;
    final String fieldName = match.group(2)!;
    fieldType = fieldType.replaceAll('?', '');

    // If it's a list, assume it's a @ToMany relationship
    if (fieldType.startsWith('List<')) {
      fieldType = fieldType
          .replaceAll('List<', '')
          .replaceAll('>?', '')
          .replaceAll('>', '');
      if (isPrimitiveType(fieldType)) {
        return '  List<$fieldType>? $fieldName;'; // Primitive lists, no @ToMany()
      } else {
        return '  @ToMany() List<${fieldType.replaceAll("?", "")}Entity>? $fieldName;';
      }
    }

    // Handle complex types (non-primitives)
    if (!isPrimitiveType(fieldType)) {
      if (fieldType.toLowerCase().contains('can')) {
        print(fieldType);
      }
      return '  @ToOne() ${fieldType}Entity? $fieldName;';
    }

    // Handle primitive types (no annotation needed)
    return '  ${primitiveTypes[fieldType.toLowerCase()] ?? fieldType}? $fieldName;';
  }

  return line; // Return unchanged if it's a primitive type
}

// Function to check if the field type is a primitive
bool isPrimitiveType(String type) {
  final bool isPrimitive = primitiveTypes.keys.contains(type.toLowerCase());
  return isPrimitive;
}

// List of recognized primitive types
const Map<String, String> primitiveTypes = <String, String>{
  'base64binary': 'String',
  'fhirbase64binary': 'String',
  'fhir.base64binary': 'String',
  'bool': 'bool',
  'boolean': 'bool',
  'fhirboolean': 'bool',
  'fhir.boolean': 'bool',
  'canonical': 'String',
  'fhircanonical': 'String',
  'code': 'String',
  'fhircode': 'String',
  'fhir.code': 'String',
  'date': 'String',
  'fhirdate': 'String',
  'fhir.date': 'String',
  'datetime': 'String',
  'fhirdatetime': 'String',
  'fhir.datetime': 'String',
  'double': 'double',
  'decimal': 'double',
  'fhirdecimal': 'double',
  'fhir.decimal': 'double',
  'num': 'num',
  'id': 'String',
  'fhirid': 'String',
  'instant': 'String',
  'fhirinstant': 'String',
  'int': 'int',
  'integer': 'int',
  'fhirinteger': 'int',
  'fhir.integer': 'int',
  'integer64': 'String',
  'fhirinteger64': 'String',
  'markdown': 'String',
  'fhirmarkdown': 'String',
  'oid': 'String',
  'fhiroid': 'String',
  'positiveint': 'int',
  'fhirpositiveint': 'int',
  'string': 'String',
  'fhirstring': 'String',
  'fhir.string': 'String',
  'time': 'String',
  'fhirtime': 'String',
  'fhir.time': 'String',
  'unsignedint': 'int',
  'fhirunsignedint': 'int',
  'uri': 'String',
  'fhiruri': 'String',
  'fhir.uri': 'String',
  'url': 'String',
  'fhirurl': 'String',
  'uuid': 'String',
  'fhiruuid': 'String',
  'xhtml': 'String',
  'fhirxhtml': 'String',
};
