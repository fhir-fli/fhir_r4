import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';

void main() {
  final dir = Directory('test/parser_examples');
  for (final file in dir.listSync(recursive: true)) {
    if (file is File &&
        file.path.endsWith('.json')) {
      testFile(file.path);
    }
  }
}

void testFile(String key) {
  print('Testing $key');
  final structureMapString = File(key).readAsStringSync();
  final realStructureMap = StructureMap.fromJsonString(structureMapString).toJson();

  realStructureMap.remove('text');
  realStructureMap.remove('meta');

  final fhirMap =
      File(key.replaceAll('.json', '.map')).readAsStringSync();
  try {
    final structureMap = StructureMapParser().parse(fhirMap, 'fhirmap');

    final structureMapJson = structureMap.toJson()
      ..remove('text')
      ..remove('meta');

    final equals = const DeepCollectionEquality()
        .equals(realStructureMap, structureMapJson);
    print('equals: $equals');
    if (!equals) {
      File('temp1.json').writeAsStringSync(prettyJson(realStructureMap));
      File('temp2.json').writeAsStringSync(prettyJson(structureMapJson));
      throw 'StructureMap not equal';
    }
    print('\n\n**********************************');
  } catch (e, s) {
    print('$key: $e');
    print(s);
    throw '$key $e';
  }
}

String prettyJson(Map map) => const JsonEncoder.withIndent('    ').convert(map);

String prettyPrintJson(Map map) =>
    const JsonEncoder.withIndent('    ').convert(map);

String jsonPrettyPrint(Map map) =>
    const JsonEncoder.withIndent('    ').convert(map);
