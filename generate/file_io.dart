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

// void _moveJsonExamples() {
//   final examplesJsonDirectory = Directory(examplesPath);
//   final examplesJson = examplesJsonDirectory.listSync();
//   for (final file in examplesJson) {
//     if (file is File) {
//       file.copySync(file.path.replaceAll(examplesPath, testPath));
//     }
//   }
// }

// void _moveNdJsonExamples() {
//   final examplesJsonDirectory = Directory(ndJsonExamplesPath);
//   final examplesJson = examplesJsonDirectory.listSync();
//   for (final file in examplesJson) {
//     if (file is File) {
//       final titleString = file.path.split('/').last.split('.').first;
//       final fileString = file.readAsStringSync();
//       final lines = fileString.split('\n');
//       for (var i = 0; i < lines.length; i++) {
//         final line = lines[i];
//         if (line.isNotEmpty) {
//           final partialPath = file.path
//               .replaceAll(ndJsonExamplesPath, testPath)
//               .replaceAll('.ndjson', '.json')
//               .replaceAll(titleString, '$titleString$i');
//           File(partialPath).writeAsStringSync(line);
//         }
//       }
//     }
//   }
// }

void exportFiles() {
  for (final dir in directories) {
    final exportFile = <String>[];
    final directory = Directory('$fhirDirectory/$dir');
    final files = directory.listSync();
    for (final file in files) {
      final fileName = file.path.split('/').last;
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
  final enumFileName = '${enumName.snakeCase}.dart';
  final filePath = '$fhirDirectory/enums/$enumFileName';

  final enumFile = File(filePath);
  if (!enumFile.existsSync()) {
    enumFile.createSync(recursive: true);
  }

  enumFile.writeAsStringSync(enumString);
}

void deleteDirectories() {
  final directories = <String>[
    '__MACOSX',
    definitionsPath,
    examplesPath,
    ndJsonExamplesPath,
  ];

  for (final dir in directories) {
    final directory = Directory('./$dir');
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
