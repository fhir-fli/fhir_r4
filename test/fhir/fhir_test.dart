// ignore_for_file: avoid_print, avoid_dynamic_calls

import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

Future<void> main() async {
  await roundtripTestJson();
  // await roundtripTestYaml();
}

Future<void> roundtripTestJson() async {
  group(
    'JSON',
    () {
      test(
        '\n****R4 Json is being Validated****',
        () async {
          final List<String> testList = await r4JsonValidation();
          print(
              'Invalid examples: ${testList.isEmpty ? 'none' : testList.join('\n')}');
          expect(testList.isEmpty, true);
        },
        timeout: const Timeout(Duration(minutes: 15)),
      );
    },
  );
}

Future<void> roundtripTestYaml() async {
  group(
    'YAML',
    () {
      test(
        '\n****R4 Yaml is being Validated****',
        () async {
          final List<String> testList = await r4YamlValidation();
          print(
              'Invalid examples: ${testList.isEmpty ? 'none' : testList.join('\n')}');
          expect(testList.isEmpty, true);
        },
        timeout: const Timeout(Duration(minutes: 25)),
      );
    },
  );
}

Future<List<String>> r4JsonValidation() async {
  final List<String> tested = await r4Validation(isYaml: false);
  print('Completed R4 Json');
  return tested;
}

Future<List<String>> r4YamlValidation() async {
  final List<String> tested = await r4Validation(isYaml: true);
  print('Completed R4 Yaml');
  return tested;
}

Future<List<String>> r4Validation({required bool isYaml}) async {
  final Directory dir = Directory('./test/fhir/examples');
  final List<String> errors = <String>[];

  for (final FileSystemEntity file in await dir.list().toList()) {
    final String contents = await File(file.path).readAsString();
    try {
      // Parse the file contents
      final Map<String, dynamic> jsonContents =
          jsonDecode(contents) as Map<String, dynamic>;

      // Remove 'text' field from original JSON contents
      jsonContents.remove('text');

      print('3***********************************************');
      print('isYaml: $isYaml');
      print('jsonContents: ${jsonContents["text"]}');

      // Create a Resource from the contents (either YAML or JSON)
      final Resource resource = isYaml
          ? Resource.fromYaml(contents)
          : Resource.fromJson(jsonContents);

      print('4***********************************************');

      // Convert Resource back to JSON or YAML, then remove 'text' from the result
      final Map<String, dynamic> serialized = isYaml
          ? jsonDecode(resource.toJsonString()) as Map<String, dynamic>
          : resource.toJson();

      print('5***********************************************');

      // Remove 'text' from the serialized result
      serialized.remove('text');

      print('6***********************************************');

      // Re-parse the original contents to compare with serialized output
      final Map<String, dynamic> original =
          jsonDecode(contents) as Map<String, dynamic>;

      print('7***********************************************');

      // Remove 'text' from the original contents as well
      original.remove('text');

      print('8***********************************************');

      // Compare the serialized and original contents without 'text'
      if (!const DeepCollectionEquality().equals(serialized, original)) {
        errors.add(file.path);
        await _writeErrorFiles(file, original, serialized);
      }
    } catch (e) {
      final dynamic errorContents = jsonDecode(contents);
      print(
          'Error with file $file\nResource: ${errorContents["resourceType"]}/${errorContents["id"]} Error: $e');
      rethrow;
    }
  }
  return errors;
}

Future<void> _writeErrorFiles(FileSystemEntity file,
    Map<String, dynamic> original, Map<String, dynamic> serialized) async {
  final String fileName = file.path.split('/').last.replaceAll('.json', '');
  final String originalFilePath = './test/fhir/wrong/${fileName}_original.json';
  final String serializedFilePath =
      './test/fhir/wrong/${fileName}_serialized.json';

  await File(originalFilePath).writeAsString(jsonEncode(original));
  await File(serializedFilePath).writeAsString(jsonEncode(serialized));

  print(
      'Discrepancy found in ${file.path}. Files written to ./test/fhir/wrong/');
}
