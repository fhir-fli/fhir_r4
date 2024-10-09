// utility.dart
// ignore_for_file: avoid_print

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

void writeToFile(
    StringBuffer buffer, String className, Map<String, String> nameMap) {
  final String? writeFileName = className.fileNameFromClassName(nameMap);

  // Early exit if no valid file name is found
  if (writeFileName == null) {
    print(
        'Warning: Skipping file generation for class $className, invalid file name.');
    return;
  }

  // Prepare the file path based on the class type (resource or data type)
  final String fileTypeDirectory =
      className.isResource ? 'resource_types' : 'data_types';
  final String filePath =
      '$fhirDirectory/$fileTypeDirectory/${writeFileName.properFileName}.dart';

  try {
    // Write the buffer content to the specified file path
    File(filePath).writeAsStringSync(buffer.toString());
    print('Successfully wrote to: $filePath');
  } catch (e) {
    print('Error: Failed to write file for class $className. Error: $e');
  }
}
