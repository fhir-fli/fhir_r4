import 'dart:io';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:test/test.dart';

import '../test_helpers/cql_test_helpers.dart';

/// Test runner for CqlTimeZoneTestSuite.cql.
///
/// Same self-validating pattern as CqlTestSuite: each `define test_*` returns
/// `"<name> TEST PASSED"` on success.
void main() {
  final suiteFile = File('cql/cqf-engine/CqlTimeZoneTestSuite.cql');
  if (!suiteFile.existsSync()) {
    print('CqlTimeZoneTestSuite.cql not found. '
        'Run: bash utils/download_engine_tests.sh');
    return;
  }

  final source = suiteFile.readAsStringSync();
  final testNames = RegExp(r'define (test_\w+):')
      .allMatches(source)
      .map((m) => m.group(1)!)
      .toList();

  group('CqlTimeZoneTestSuite', () {
    late Map<String, dynamic> results;

    setUpAll(() async {
      final library = parseAndBuildLibrary(source);
      final context = <String, dynamic>{
        'startTimestamp': FhirDateTime.fromString('2018-01-01T07:00:00.0-07:00'),
      };
      results = (await library.execute(context)) as Map<String, dynamic>;
    });

    for (final name in testNames) {
      final skipReason = _knownFailures[name];
      test(name, () {
        final baseName = name.replaceFirst('test_', '');
        final expected = '$baseName TEST PASSED';
        final actual = results[name];
        expect(actual, equals(expected),
            reason: 'Expected: $expected\nActual: $actual');
      }, skip: skipReason);
    }
  });
}

const _knownFailures = <String, String>{};
