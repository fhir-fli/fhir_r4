// ignore_for_file: avoid_print, avoid_dynamic_calls

import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

Future<void> main() async {
  await roundtripTestJson();
  await roundtripTestYaml();
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
      final Resource resource = isYaml
          ? Resource.fromYaml(contents)
          : Resource.fromJson(jsonDecode(contents) as Map<String, dynamic>);

      final Map<String, dynamic> serialized = isYaml
          ? jsonDecode(resource.toJsonString()) as Map<String, dynamic>
          : resource.toJson();

      final Map<String, dynamic> original =
          jsonDecode(contents) as Map<String, dynamic>;

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
