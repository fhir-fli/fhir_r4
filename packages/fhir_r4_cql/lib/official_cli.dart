import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:http/http.dart';
import 'package:path/path.dart' as path;

Future<void> main() async {
  // Define the source and destination directories
  final cqlDir = Directory('cql');
  final jsonDir = Directory('json');

  // Create the JSON directory if it doesn't exist
  if (!await jsonDir.exists()) {
    await jsonDir.create(recursive: true);
  }

  // Find all .cql files in the CQL directory and its subdirectories
  await _processCqlFiles(cqlDir, jsonDir);

  print('CQL to JSON conversion complete!');
}

Future<void> _processCqlFiles(Directory sourceDir, Directory targetDir) async {
  // Recursively process all files and directories
  await for (final entity in sourceDir.list(recursive: true)) {
    if (entity is File && entity.path.endsWith('.cql')) {
      await _processCqlFile(entity, sourceDir.path, targetDir.path);
    }
  }
}

Future<void> _processCqlFile(
    File cqlFile, String sourceDirPath, String targetDirPath) async {
  try {
    // Read the CQL file
    final cqlContent = await cqlFile.readAsString();

    // Determine the corresponding JSON file path
    final relativePath = path.relative(cqlFile.path, from: sourceDirPath);
    final jsonFilePath =
        path.join(targetDirPath, relativePath.replaceAll('.cql', '.json'));

    // Create necessary parent directories for the JSON file
    final jsonFile = File(jsonFilePath);
    await jsonFile.parent.create(recursive: true);

    print('Converting ${cqlFile.path} to JSON...');

    // Send the CQL to the local translation service
    final response = await post(
        Uri.parse('http://localhost:8080/cql/translator'),
        body: cqlContent,
        headers: {
          'Content-Type': 'application/cql',
          'Accept': 'application/elm+json'
        });

    if (response.statusCode == 200) {
      // Parse and pretty-print the JSON response
      final jsonContent = jsonDecode(response.body);
      await jsonFile.writeAsString(jsonPrettyPrint(jsonContent));
      print('Successfully created ${jsonFile.path}');
    } else {
      print('Error converting ${cqlFile.path}: HTTP ${response.statusCode}');
      print('Response: ${response.body}');
    }
  } catch (e, s) {
    print('Error processing ${cqlFile.path}: $e');
    log(e.toString());
    log(s.toString());
  }
}

const jsonEncoder = JsonEncoder.withIndent('    ');

String jsonPrettyPrint(Map<String, dynamic> map) => jsonEncoder.convert(map);
