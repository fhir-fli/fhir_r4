import 'dart:async';
import 'dart:io';
import 'package:archive/archive_io.dart';

Future<void> extract() async {
  await _extractFilesToDisk();
  await _moveJsonExamples();
  await _moveNdJsonExamples();
  await _moveSourceFiles();
}

Future<void> _extractFilesToDisk() async {
  await extractFileToDisk('definitions.json.zip', '.');
  await extractFileToDisk('examples-json.zip', '.');
  await extractFileToDisk('examples-ndjson.zip', '.');
}

Future<void> _moveSourceFiles() async {
  await extractFileToDisk(
      'definitions.json/fhir.schema.json.zip', './definitions.json');
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

/// Deletes unnecessary directories after processing.
Future<void> deleteDirectories() async {
  final List<String> directories = <String>[
    '__MACOSX',
    'definitions.json',
    'examples-json',
    'examples-ndjson',
  ];
  for (final String dir in directories) {
    final Directory directory = Directory('./$dir');
    directory.deleteSync(recursive: true);
  }
}
