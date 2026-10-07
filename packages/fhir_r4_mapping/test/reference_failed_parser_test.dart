import 'dart:io';

import 'package:fhir_r4_mapping/fhir_r4_mapping.dart';
import 'package:test/test.dart';

/// See test/parser_examples_reference_failed/README.md.
Future<void> main() async {
  final parser = await StructureMapParser.create();
  final maps = Directory('test/parser_examples_reference_failed')
      .listSync()
      .whereType<File>()
      .where((f) => f.path.endsWith('.map'))
      .toList()
    ..sort((a, b) => a.path.compareTo(b.path));
  test('thirteen maps', () => expect(maps.length, 13));
  for (final map in maps) {
    final name = map.path.split('/').last;
    final pin = _parseThrows[name];
    test(name, () {
      if (pin != null) {
        expect(() => parser.parse(map.readAsStringSync(), 'fhirmap'),
            throwsA(anything),
            reason: '$name now parses: remove its pin ($pin)');
        return;
      }
      expect(parser.parse(map.readAsStringSync(), 'fhirmap').group, isNotEmpty);
    });
  }
}

/// Maps our parser does not parse either (measured 2026-10-06).
const _parseThrows = <String, String>{
  'SDOHCCHungerVitalSignMap.map': 'parse error at line 6, column 1',
  'SDOHCCPRAPAREMap.map': 'parse error at line 9, column 1',
};
