// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Validation',
    () {
      test(
        '\n****R4 JSON is being Validated****',
        () {
          final tested = <String>[...r4Validation()];
          expect(tested.isEmpty, true);
        },
        timeout: const Timeout(Duration(minutes: 15)),
      );
    },
  );
}

String filePath = '';

List<String> r4Validation() {
  final dir = Directory('./test/assets');
  final string = <String>[];
  for (final file in dir.listSync()) {
    print(file.path);
    filePath = file.path;
    final contents = File(file.path).readAsStringSync();
    final contentJson1 = jsonDecode(contents) as Map<String, dynamic>;
    final contentJson = jsonDecode(contents) as Map<String, dynamic>;
    final resource = Resource.fromJson(contentJson1);
    try {
      if (!deepCompare(
        contentJson,
        resource.toJson(),
      )) {
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
      File(file.path.replaceAll('assets/', '').replaceAll('.json', '1.json'))
          .writeAsStringSync(prettyPrintJson(contentJson));
      File(file.path.replaceAll('assets/', '').replaceAll('.json', '2.json'))
          .writeAsStringSync(prettyPrintJson(resource.toJson()));

      print(file.path);
      rethrow;
    }
  }
  return string;
}

const JsonEncoder jsonEncoder = JsonEncoder.withIndent('    ');

String prettyPrintJson(Map<String, dynamic> map) => jsonEncoder.convert(map);
