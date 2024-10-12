// utility.dart
// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'consts.dart';
import 'fhir_generate_extension.dart';

// Utility method for populating the name map from FHIR schema
Map<String, String> populateNameMap(String fhirSchemaPath) {
  final nameMap = <String, String>{};
  final fileString = File(fhirSchemaPath).readAsStringSync();
  final jsonSchema = jsonDecode(fileString) as Map<String, dynamic>;

  (jsonSchema['definitions'] as Map<String, dynamic>)
      .forEach((String key, dynamic value) {
    nameMap[key.toLowerCase().replaceAll('_', '')] = key;
  });
  return nameMap;
}

String formatComment(String comment, {int indentationLevel = 0}) {
  final maxLineLength =
      80 - (indentationLevel + 4); // Adjust for indentation + '/// '

  // Remove any leading '///' and trim the comment
  final newComment = comment.replaceAll(RegExp(r'^///\s*'), '').trim();

  // Split the comment into lines, then split each line into words
  final commentLines = newComment.split('\n').expand((String line) {
    final words = line.split(RegExp(r'\s+')); // Split line into words
    final formattedLines = <String>[];
    var currentLine = '/// ';

    for (final word in words) {
      // If adding the next word exceeds the line length, create a new line
      if (currentLine.length + word.length + 1 > maxLineLength) {
        formattedLines.add(currentLine.trim());
        currentLine = '/// $word '; // Start the new line with the word
      } else {
        currentLine += '$word '; // Add the word to the current line
      }
    }

    // Add the last line to the list
    formattedLines.add(currentLine.trim());

    return formattedLines;
  }).toList();

  // Return the formatted comment
  return commentLines.join('\n');
}

void writeToFile(
  StringBuffer buffer,
  String className,
  Map<String, String> nameMap,
) {
  final writeFileName = className.fileNameFromClassName(nameMap);

  // Early exit if no valid file name is found
  if (writeFileName == null) {
    print(
      'Warning: Skipping file generation for class $className, invalid file '
      'name.',
    );
    return;
  }

  // Prepare the file path based on the class type (resource or data type)
  final fileTypeDirectory =
      className.isResource ? 'resource_types' : 'data_types';
  final filePath =
      '$fhirDirectory/$fileTypeDirectory/${writeFileName.properFileName}.dart';

  try {
    // Write the buffer content to the specified file path
    File(filePath).writeAsStringSync(buffer.toString());
    print('Successfully wrote to: $filePath');
  } catch (e) {
    print('Error: Failed to write file for class $className. Error: $e');
  }
}
