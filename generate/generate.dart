import 'dart:io';

import 'package:archive/archive_io.dart';

Future<void> main() async {
  await extractFilesToDisk();
  await moveJsonExamples();
  await moveNdJsonExamples();

  // File('definitions.json.zip').deleteSync();
  // File('examples-json.zip').deleteSync();
  // File('examples-ndjson.zip').deleteSync();
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
