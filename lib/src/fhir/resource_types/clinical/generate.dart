import 'dart:io';

void main() {
  final Directory directory = Directory('.');
  final List<FileSystemEntity> files = directory.listSync();

  for (final FileSystemEntity file in files) {
    if (file is File && file.path.endsWith('.dart')) {
      print('Processing file: ${file.path}');
      processFile(file);
    }
  }
}

void processFile(File file) {
  final String content = file.readAsStringSync();
  final List<String> lines = content.split('\n');
  final Map<String, List<String>> newFiles = <String, List<String>>{};
  String? currentClass;
  final List<String> remainingLines = <String>[];

  for (final String line in lines) {
    if (line.startsWith('@freezed')) {
      final String? className = extractClassName(line);
      if (className != null) {
        currentClass = className;
        newFiles[currentClass] = <String>[
          '// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin',
          '',
          '// Dart imports:',
          "import 'dart:convert';",
          '',
          '// Package imports:',
          "import 'package:freezed_annotation/freezed_annotation.dart';",
          "import 'package:yaml/yaml.dart';",
          '',
          '// Project imports:',
          "import '../../../../../fhir_r4.dart';",
          '',
          "part '${snakeCase(className)}.freezed.dart';",
          "part '${snakeCase(className)}.g.dart';",
          '',
          line,
        ];
      } else {
        remainingLines.add(line);
      }
    } else if (currentClass != null) {
      newFiles[currentClass]!.add(line);
    } else {
      remainingLines.add(line);
    }
  }

  file.writeAsStringSync(remainingLines.join('\n'));

  for (final MapEntry<String, List<String>> entry in newFiles.entries) {
    final String className = entry.key;
    final String classContent = entry.value.join('\n');
    final String newFileName = '${snakeCase(className)}.dart';
    final File newFile = File(newFileName);
    newFile.writeAsStringSync(classContent);
    print('Created new file: $newFileName');
  }
}

String? extractClassName(String line) {
  final RegExp regex = RegExp(r'@freezed\s+class\s+(\w+)\s+with\s+\*\$\w+\s+implements\s+DomainResource');
  final RegExpMatch? match = regex.firstMatch(line);
  return match?.group(1);
}

String snakeCase(String input) {
  final RegExp regex = RegExp(r'(?<=[a-z])[A-Z]');
  return input.replaceAllMapped(regex, (Match match) => '_${match.group(0)!.toLowerCase()}').toLowerCase();
}