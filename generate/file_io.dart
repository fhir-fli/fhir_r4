// ignore_for_file: avoid_print

import 'dart:io';

import 'package:archive/archive_io.dart';

import 'fhir_generate_extension.dart';

Future<void> extract() async {
  await _extractFilesToDisk();
  _moveJsonExamples();
  _moveNdJsonExamples();
}

Future<void> _extractFilesToDisk() async {
  await extractFileToDisk('definitions.json.zip', '.');
  await extractFileToDisk('examples-json.zip', '.');
  await extractFileToDisk('examples-ndjson.zip', '.');
  await extractFileToDisk(
      'definitions.json/fhir.schema.json.zip', './definitions.json');
}

void _moveJsonExamples() {
  final Directory examplesJsonDirectory = Directory('examples-json');
  final List<FileSystemEntity> examplesJson = examplesJsonDirectory.listSync();
  for (final FileSystemEntity file in examplesJson) {
    if (file is File) {
      file.copySync(
          file.path.replaceAll('examples-json', '../test/fhir/examples'));
    }
  }
}

void _moveNdJsonExamples() {
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

void exportFiles() {
  final List<String> directories = <String>[
    'data_types',
    'resource_types',
    'enums'
  ];
  for (final String dir in directories) {
    final List<String> exportFile = <String>[];
    final Directory directory = Directory('../lib/src/fhir/$dir');
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
    File('../lib/src/fhir/$dir/$dir.dart')
        .writeAsStringSync(exportFile.join('\n'));
  }
}

void writeEnumToFile(String enumName, String enumString) {
  final String enumFileName = '${enumName.snakeCase}.dart';
  final String filePath = '../lib/src/fhir/enums/$enumFileName';

  final File enumFile = File(filePath);
  if (!enumFile.existsSync()) {
    enumFile.createSync(recursive: true);
  }

  enumFile.writeAsStringSync(enumString);
}

void deleteDirectories() {
  final List<String> directories = <String>[
    '__MACOSX',
    'definitions.json',
    'examples-json',
    'examples-ndjson',
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
