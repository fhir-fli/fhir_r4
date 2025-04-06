// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_utils/fhir_r4_utils.dart';

void main() {
  final dir = Directory('test/mapping/parser_examples');
  for (final file in dir.listSync()) {
    if (file is File && file.path.endsWith('.json')) {
      testFile(file.path);
    }
  }
}

void testFile(String key) {
  print('Testing $key');
  final structureMapString = File(key).readAsStringSync();
  final realStructureMap =
      StructureMap.fromJsonString(structureMapString).toJson()
        ..remove('text')
        ..remove('meta');

  final fhirMap = File(key.replaceAll('.json', '.map')).readAsStringSync();
  try {
    final structureMap = StructureMapParser().parse(fhirMap, 'fhirmap');

    final structureMapJson = structureMap.toJson()
      ..remove('text')
      ..remove('meta');

    final equals = const DeepCollectionEquality()
        .equals(realStructureMap, structureMapJson);
    print('equals: $equals');
    if (!equals) {
      File(key.replaceAll('.json', '_ours.json'))
          .writeAsStringSync(prettyJson(structureMapJson));
      throw Exception('StructureMap not equal');
    }
    print('\n\n**********************************');
  } catch (e, s) {
    print('$key: $e');
    print(s);
    throw Exception('$key $e');
  }
}

String prettyJson(Map<String, dynamic> map) =>
    const JsonEncoder.withIndent('    ').convert(map);

String prettyPrintJson(Map<String, dynamic> map) =>
    const JsonEncoder.withIndent('    ').convert(map);

String jsonPrettyPrint(Map<String, dynamic> map) =>
    const JsonEncoder.withIndent('    ').convert(map);
