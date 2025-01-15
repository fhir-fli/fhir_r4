import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';

void main() async {
  // Base directory where the step directories are located
  final baseDirectory = Directory('test');

  // Loop through each step directory
  for (final stepDir in baseDirectory.listSync()) {
    if (stepDir is Directory &&
        stepDir.path.contains('step') &&
        !stepDir.path.contains('14') &&
        !stepDir.path.contains('15')) {
      // Process the logical directory JSON files
      await processDirectory(
        Directory('${stepDir.path}/logical'),
        stepDir.path,
        'logical',
      );

      // Process the map directory JSON files
      await processDirectory(
        Directory('${stepDir.path}/map'),
        stepDir.path,
        'map',
      );

      // Process the source directory
      await processSourceDirectory(
        Directory('${stepDir.path}/source'),
        stepDir.path,
      );

      // Process the result directory
      await processSourceDirectory(
        Directory('${stepDir.path}/result'),
        stepDir.path,
        'result',
      );

      // Generate the export file for the current step
      await createExportFile(stepDir);
    }
  }

  print('All files processed and export files generated.');
}

// Function to process JSON files in the specified directory and generate Dart classes
Future<void> processDirectory(
  Directory directory,
  String stepDirPath,
  String type,
) async {
  if (directory.existsSync()) {
    for (final jsonFile in directory.listSync()) {
      if (jsonFile is File && jsonFile.path.endsWith('.json')) {
        print('Processing ${jsonFile.path}');

        // Read the JSON file
        final jsonContent = await jsonFile.readAsString();
        final jsonMap = jsonDecode(jsonContent) as Map<String, dynamic>;

        final numbers = jsonFile.path.split('/');
        final stepNumber = numbers
            .firstWhereOrNull((element) => element.contains('step'))
            ?.replaceAll('step', '');

        // Initialize className with a default value
        var className = 'unknownClassName';

        // Generate the Dart class name based on type
        if (type == 'logical') {
          // StructureDefinition: structureDefinitionTLeft1, structureDefinitionTRight1, etc.
          className =
              _generateStructureDefinitionClassName(jsonFile.path, stepNumber);
        } else if (type == 'map') {
          // StructureMap: structureMap3a or structureMap7b
          className =
              'structureMap${jsonFile.uri.pathSegments.last.replaceAll('.json', '')}';
        }

        // Convert className to proper camelCase
        className = _toProperCamelCase(className);

        // Create the Dart code as a string
        final dartCode = _generateDartCode(className, jsonMap, type);

        // Write the Dart code to a .dart file
        final jsonFileNameWithoutExtension =
            jsonFile.uri.pathSegments.last.replaceAll('.json', '');
        final dartFileName = '$jsonFileNameWithoutExtension.dart';
        final dartFile = File('${directory.path}/$dartFileName');
        await dartFile.writeAsString(dartCode);
      }
    }
  }
}

// Function to process source and result files and generate Dart source map
Future<void> processSourceDirectory(
  Directory directory,
  String stepDirPath, [
  String? type,
]) async {
  if (directory.existsSync()) {
    for (final jsonFile in directory.listSync()) {
      if (jsonFile is File && jsonFile.path.endsWith('.json')) {
        print('Processing ${type ?? 'source'} ${jsonFile.path}');

        // Read the JSON file as a map
        final jsonContent = await jsonFile.readAsString();
        final jsonMap = jsonDecode(jsonContent) as Map<String, dynamic>;

        // Initialize className with a default value
        var className = 'unknownSourceClass';

        // Generate the Dart file name and class
        if (type == 'result') {
          // Result: resultFilenameWithoutDots
          className =
              'result${jsonFile.uri.pathSegments.last.replaceAll('.json', '').replaceAll('.', '')}';
        } else {
          // Source: same as filename without extension
          className = jsonFile.uri.pathSegments.last.replaceAll('.json', '');
        }

        // Convert className to proper camelCase
        className = _toProperCamelCase(className);

        final dartCode = _generateDartSourceCode(className, jsonMap);

        // Write the Dart code to a .dart file
        final jsonFileNameWithoutExtension =
            jsonFile.uri.pathSegments.last.replaceAll('.json', '');
        final dartFileName = '$jsonFileNameWithoutExtension.dart';
        final dartFile = File('${directory.path}/$dartFileName');
        await dartFile.writeAsString(dartCode);
      }
    }
  }
}

// Function to generate Dart code for StructureDefinition or StructureMap
String _generateDartCode(
  String className,
  Map<String, dynamic> jsonContent,
  String type,
) {
  final prettyJson = const JsonEncoder.withIndent('  ').convert(jsonContent);
  final fromJsonType =
      type == 'logical' ? 'StructureDefinition' : 'StructureMap';
  className = className.replaceAll('step', 'Step');
  return '''
// ignore_for_file: prefer_single_quotes, always_specify_types, 
// ignore_for_file: avoid_escaping_inner_quotes

import 'package:fhir_r4/fhir_r4.dart';

final $className = $fromJsonType.fromJson(
  $prettyJson
);
''';
}

// Function to generate Dart source code without fromJson()
String _generateDartSourceCode(
  String className,
  Map<String, dynamic> jsonContent,
) {
  final prettyJson = const JsonEncoder.withIndent('  ').convert(jsonContent);
  className = className.replaceAll('step', 'Step');
  if (className.contains('source') && !className.startsWith('source')) {
    className = className.replaceAll('source', 'Source');
  }
  return '''
// ignore_for_file: prefer_single_quotes, always_specify_types, 
// ignore_for_file: avoid_escaping_inner_quotes

final $className = $prettyJson;
''';
}

// Function to generate StructureDefinition class name
String _generateStructureDefinitionClassName(
  String filePath,
  String? stepNumber,
) {
  filePath = filePath.toLowerCase(); // Ensure case-insensitivity
  if (filePath.contains('tleftinner')) {
    return 'structureDefinitionTLeftInner$stepNumber';
  } else if (filePath.contains('trightinner')) {
    return 'structureDefinitionTRightInner$stepNumber';
  } else if (filePath.contains('tleft')) {
    return 'structureDefinitionTLeft$stepNumber';
  } else if (filePath.contains('tright')) {
    return 'structureDefinitionTRight$stepNumber';
  }
  return 'structureDefinition$stepNumber';
}

// Proper camelCase conversion function remains unchanged
String _toProperCamelCase(String input) {
  final buffer = StringBuffer();
  var capitalizeNext = false;

  for (var i = 0; i < input.length; i++) {
    final char = input[i];

    if (char == '_' || char == '-' || char == '.') {
      capitalizeNext = true;
      continue;
    }

    if (capitalizeNext ||
        (i > 0 && isNumeric(char) && !isNumeric(input[i - 1]))) {
      buffer.write(char.toUpperCase());
      capitalizeNext = false;
    } else {
      buffer.write(i == 0 ? char.toLowerCase() : char);
    }
  }

  return buffer.toString();
}

// Helper function to check if a character is numeric
bool isNumeric(String s) {
  return double.tryParse(s) != null;
}

// Function to create an export file for each step
Future<void> createExportFile(Directory stepDir) async {
  final exportFile = File('${stepDir.path}/export.dart');
  final buffer = StringBuffer();

  buffer.writeln('// ignore_for_file: unused_import, directives_ordering');
  buffer.writeln();

  // Loop through all .dart files in the step directory and its subdirectories
  for (final entity in stepDir.listSync(recursive: true)) {
    if (entity is File && entity.path.endsWith('.dart')) {
      final relativePath = entity.path.replaceFirst('${stepDir.path}/', '');
      buffer.writeln("export '$relativePath';");
    }
  }

  // Write the content to the export.dart file
  await exportFile.writeAsString(buffer.toString());
  print('Generated export file at ${exportFile.path}');
}
