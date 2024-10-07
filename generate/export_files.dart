// ignore_for_file: avoid_print

import 'dart:io';

import 'fhir_generate_extension.dart';

Future<void> exportFiles() async {
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
      if (fileName.endsWith('.dart') && !fileName.endsWith('$dir.dart')) {
        exportFile.add("export '$fileName';");
      }
    }
    exportFile.sort();
    File('../lib/src/fhir/$dir/$dir.dart')
        .writeAsStringSync(exportFile.join('\n'));
  }
}

void writeToFile(
    StringBuffer buffer, String className, Map<String, String> nameMap) {
  String? writeFileName = className.fileNameFromClassName(nameMap);
  if (writeFileName == null) {
    print('Not writing: $className');
    return;
  }

  writeFileName = writeFileName.properFileName;
  final String filePath = '../lib/src/fhir/'
      '${className.isResourceType ? "resource_types" : "data_types"}/$writeFileName.dart';
  File(filePath).writeAsStringSync(buffer.toString());
}
