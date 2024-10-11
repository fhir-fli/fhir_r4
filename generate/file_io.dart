// ignore_for_file: avoid_print

import 'dart:io';

import 'package:archive/archive_io.dart';

import 'consts.dart';
import 'fhir_generate_extension.dart';

Future<void> extract() async {
  await _extractFilesToDisk();
  // _moveJsonExamples();
  // _moveNdJsonExamples();
}

Future<void> _extractFilesToDisk() async {
  await extractFileToDisk(definitionsPathZip, '.');
  await extractFileToDisk(examplesPathZip, '.');
  await extractFileToDisk(ndJsonExamplesPathZip, '.');
  await extractFileToDisk(schemaPathZip, definitionsPath);
}

void _moveJsonExamples() {
  final Directory examplesJsonDirectory = Directory(examplesPath);
  final List<FileSystemEntity> examplesJson = examplesJsonDirectory.listSync();
  for (final FileSystemEntity file in examplesJson) {
    if (file is File) {
      file.copySync(file.path.replaceAll(examplesPath, testPath));
    }
  }
}

void _moveNdJsonExamples() {
  final Directory examplesJsonDirectory = Directory(ndJsonExamplesPath);
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
              .replaceAll(ndJsonExamplesPath, testPath)
              .replaceAll('.ndjson', '.json')
              .replaceAll(titleString, '$titleString$i');
          final File newFile = File(partialPath);
          newFile.writeAsStringSync(line);
        }
      }
    }
  }
}

void exportFiles() {
  for (final String dir in directories) {
    final List<String> exportFile = <String>[];
    final Directory directory = Directory('$fhirDirectory/$dir');
    final List<FileSystemEntity> files = directory.listSync();
    for (final FileSystemEntity file in files) {
      final String fileName = file.path.split('/').last;
      if (fileName.endsWith('.dart') &&
          !fileName.endsWith('$dir.dart') &&
          !fileName.contains('.g.')) {
        exportFile.add("export '$fileName';");
      }
    }
    exportFile.sort();
    File('$fhirDirectory/$dir/$dir.dart')
        .writeAsStringSync(exportFile.join('\n'));
  }
}

void writeEnumToFile(String enumName, String enumString) {
  final String enumFileName = '${enumName.snakeCase}.dart';
  final String filePath = '$fhirDirectory/enums/$enumFileName';

  final File enumFile = File(filePath);
  if (!enumFile.existsSync()) {
    enumFile.createSync(recursive: true);
  }

  enumFile.writeAsStringSync(enumString);
}

void deleteDirectories() {
  final List<String> directories = <String>[
    '__MACOSX',
    definitionsPath,
    examplesPath,
    ndJsonExamplesPath,
  ];

  for (final String dir in directories) {
    final Directory directory = Directory('./$dir');
    if (directory.existsSync()) {
      try {
        directory.deleteSync(recursive: true);
      } catch (e) {
        print('Error deleting $dir: $e');
      }
    } else {
      print('Directory $dir does not exist.');
    }
  }
}
