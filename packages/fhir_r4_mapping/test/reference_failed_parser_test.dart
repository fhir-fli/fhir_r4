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

/// Maps our parser does not parse either. Empty since 2026-10-07: the two
/// SDOHCC maps write their `///` metadata before the `map` line, which the
/// parser now accepts (fhir_mapping, metadata-before-map).
const _parseThrows = <String, String>{};
