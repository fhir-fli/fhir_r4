// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  // Print message about asset loading to explain the delay
  print('\n${'=' * 80}');
  print('Loading test assets from ./test/assets directory...');
  print('This may take 60-90 seconds as thousands of files are processed.');
  print('=' * 80 + '\n');

  group(
    'JSON Validation',
    () {
      final dir = Directory('./test/assets');
      final fileCount = dir.listSync().length;
      print('Registering $fileCount JSON validation tests...');
      for (final file in dir.listSync()) {
        final contents = File(file.path).readAsStringSync();
        final contentJson1 = jsonDecode(contents) as Map<String, dynamic>;
        final contentJson = jsonDecode(contents) as Map<String, dynamic>;
        final resource = Resource.fromJson(contentJson1);
        try {
          test('$file.path', () {
            expect(deepCompare(contentJson, resource.toJson()), isTrue);
          });
          if (!deepCompare(contentJson, resource.toJson())) {
            File(
              file.path.replaceAll('assets/', '').replaceAll(
                    '.json',
                    '1.json',
                  ),
            ).writeAsStringSync(prettyPrintJson(contentJson));
            File(
              file.path.replaceAll('assets/', '').replaceAll(
                    '.json',
                    '2.json',
                  ),
            ).writeAsStringSync(prettyPrintJson(resource.toJson()));
            throw Exception('Unequal');
          }
        } catch (e) {
          File(
            file.path.replaceAll('assets/', '').replaceAll(
                  '.json',
                  '1.json',
                ),
          ).writeAsStringSync(prettyPrintJson(contentJson));
          File(
            file.path.replaceAll('assets/', '').replaceAll(
                  '.json',
                  '2.json',
                ),
          ).writeAsStringSync(prettyPrintJson(resource.toJson()));

          print(file.path);
          rethrow;
        }
      }
    },
  );

  group(
    'YAML Validation',
    () {
      final dir = Directory('./test/assets');
      final fileCount = dir.listSync().length;
      print('Registering $fileCount YAML validation tests...');
      for (final file in dir.listSync()) {
        final contents = File(file.path).readAsStringSync();
        final contentJson1 = jsonDecode(contents) as Map<String, dynamic>;
        final contentJson = jsonDecode(contents) as Map<String, dynamic>;
        final preResource = Resource.fromJson(contentJson1);
        final yamlResourceString = preResource.toYaml();
        final resource = Resource.fromYaml(yamlResourceString);
        try {
          test('$file.path', () {
            expect(deepCompare(contentJson, resource.toJson()), isTrue);
          });
          if (!deepCompare(contentJson, resource.toJson())) {
            File(
              file.path.replaceAll('assets/', '').replaceAll(
                    '.json',
                    '1.json',
                  ),
            ).writeAsStringSync(prettyPrintJson(contentJson));
            File(
              file.path.replaceAll('assets/', '').replaceAll(
                    '.json',
                    '2.json',
                  ),
            ).writeAsStringSync(prettyPrintJson(resource.toJson()));
            throw Exception('Unequal');
          }
        } catch (e) {
          File(
            file.path.replaceAll('assets/', '').replaceAll(
                  '.json',
                  '1.json',
                ),
          ).writeAsStringSync(prettyPrintJson(contentJson));
          File(
            file.path.replaceAll('assets/', '').replaceAll(
                  '.json',
                  '2.json',
                ),
          ).writeAsStringSync(prettyPrintJson(resource.toJson()));

          print(file.path);
          rethrow;
        }
      }
    },
  );

  print('\n${'=' * 80}');
  print('Asset loading and test registration complete!');
  print('=' * 80 + '\n');
}

const JsonEncoder jsonEncoder = JsonEncoder.withIndent('    ');

String prettyPrintJson(Map<String, dynamic> map) => jsonEncoder.convert(map);
