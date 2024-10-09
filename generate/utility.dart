// utility.dart
import 'dart:convert';
import 'dart:io';

import 'consts.dart';
import 'fhir_generate_extension.dart';

// Utility method for populating the name map from FHIR schema
Map<String, String> populateNameMap(String fhirSchemaPath) {
  final Map<String, String> nameMap = <String, String>{};
  final String fileString = File(fhirSchemaPath).readAsStringSync();
  final Map<String, dynamic> jsonSchema =
      jsonDecode(fileString) as Map<String, dynamic>;

  final Map<String, dynamic> definitions =
      jsonSchema['definitions'] as Map<String, dynamic>;
  definitions.forEach((String key, dynamic value) {
    nameMap[key.toLowerCase().replaceAll('_', '')] = key;
  });
  return nameMap;
}

// Utility method to format comments for fields
String formatComment(String comment) {
  comment = comment.replaceAll(RegExp(r'^///\s*'), '').trim();
  final List<String> commentLines = comment.split('\n').expand((String line) {
    final List<String> words = line.split(RegExp(r'\s+'));
    final List<String> formattedLines = <String>[];
    String currentLine = '/// ';

    for (final String word in words) {
      if (currentLine.length + word.length + 1 > 80) {
        formattedLines.add(currentLine.trim());
        currentLine = '/// $word ';
      } else {
        currentLine += '$word ';
      }
    }
    formattedLines.add(currentLine.trim());
    return formattedLines;
  }).toList();

  return commentLines.join('\n');
}

// Write the generated class to a file
void writeToFile(
    StringBuffer buffer, String className, Map<String, String> nameMap) {
  String? writeFileName = className.fileNameFromClassName(nameMap);
  if (writeFileName == null) {
    // ignore: avoid_print
    print('Not writing: $className');
    return;
  }

  writeFileName = writeFileName.properFileName;
  final String filePath =
      '$fhirDirectory/${className.isResource ? "resource_types" : "data_types"}/$writeFileName.dart';
  File(filePath).writeAsStringSync(buffer.toString());
}
