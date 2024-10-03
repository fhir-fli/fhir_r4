import 'dart:io';

const String searchDirectory = '.'; // Directory to search
const List<String> ignoredPatterns = <String>['freezed', '.g.', 'db_gen'];

void main() {
  final Directory dir = Directory(searchDirectory);
  processDirectory(dir);
}

void processDirectory(Directory dir) {
  final List<FileSystemEntity> entities = dir.listSync(recursive: true);

  for (final FileSystemEntity entity in entities) {
    if (entity is File && entity.path.endsWith('_entity.dart')) {
      final String fileContent = entity.readAsStringSync();

      // Only process files containing @Entity()
      if (fileContent.contains('@Entity()')) {
        final String newContent = addConstructorAndFinalFields(fileContent);
        final String newPath = entity.path;
        File(newPath).writeAsStringSync(newContent);
        print('Processed and updated: ${entity.path}');
      }
    }
  }
}

String addConstructorAndFinalFields(String input) {
  final List<String> lines = input.split('\n');
  final StringBuffer buffer = StringBuffer();

  bool inClass = false;
  String? className;
  final List<String> classFields = <String>[];

  for (int i = 0; i < lines.length; i++) {
    final String line = lines[i];

    // Find the class definition
    if (line.contains('class') && line.contains('{')) {
      inClass = true;
      className = line.split(' ')[1]; // Get class name
    }

    // Collect class fields while inside the class
    if (inClass) {
      // Skip the constructor line if it exists
      if (line.contains('$className(')) {
        while (!line.contains(')')) {
          i++;
        }
        continue;
      }

      // Check if the line contains a field (e.g., `int dbId = 0;` or `String? id;`)
      final RegExp fieldRegex =
          RegExp(r'^\s+([A-Za-z0-9<>\?]+)\s+([A-Za-z0-9_]+);$');
      final RegExpMatch? match = fieldRegex.firstMatch(line);

      if (match != null) {
        // Ensure the field is marked final
        final String finalField = line.trim().startsWith('final')
            ? line.trim()
            : 'final ${line.trim()}';
        classFields.add(finalField);
        continue;
      }

      // When we reach the end of the class
      if (line.contains('}')) {
        inClass = false;

        // Add final fields
        for (final String field in classFields) {
          buffer.writeln(field);
        }

        // Add constructor after the class fields
        buffer.writeln(addConstructor(className!, classFields));
      }
    }

    buffer.writeln(line);
  }

  return buffer.toString();
}

String addConstructor(String className, List<String> fields) {
  final StringBuffer constructorBuffer = StringBuffer();

  constructorBuffer.writeln('  const $className({');

  for (final String field in fields) {
    final RegExp fieldRegex =
        RegExp(r'final ([A-Za-z0-9<>\?]+)\s+([A-Za-z0-9_]+);');
    final RegExpMatch? match = fieldRegex.firstMatch(field);

    if (match != null) {
      final String fieldName = match.group(2)!;
      constructorBuffer.writeln('    this.$fieldName,');
    }
  }

  constructorBuffer.writeln('  });');

  return constructorBuffer.toString();
}
