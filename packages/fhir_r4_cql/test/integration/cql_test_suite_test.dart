import 'dart:io';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:test/test.dart';

import '../test_helpers/cql_test_helpers.dart';

/// Test runner for the CQF Reference Implementation's CqlTestSuite.cql.
///
/// This is a comprehensive, self-validating test suite from:
/// https://github.com/cqframework/clinical_quality_language
///
/// Each `define test_*` in the CQL returns `"<name> TEST PASSED"` on success,
/// or triggers a runtime Message() error on failure via the TestMessage() helper.
///
/// We parse and execute the entire library once, then check each test define's
/// result individually.
void main() {
  final engineDir = Directory('cql/cqf-engine');
  if (!engineDir.existsSync()) {
    print('CQF engine tests not downloaded. '
        'Run: bash utils/download_engine_tests.sh');
    return;
  }

  final suiteFile = File('cql/cqf-engine/CqlTestSuite.cql');
  if (!suiteFile.existsSync()) {
    print('CqlTestSuite.cql not found');
    return;
  }

  final source = suiteFile.readAsStringSync();

  // Strip block comments (/* ... */) and line comments (// ...) before
  // extracting test names, so commented-out defines are not included.
  final uncommented = source
      .replaceAll(RegExp(r'/\*.*?\*/', dotAll: true), '')
      .replaceAll(RegExp(r'//.*'), '');

  // Extract all `define test_*:` names from uncommented source
  final testNames = RegExp(r'define (test_\w+):')
      .allMatches(uncommented)
      .map((m) => m.group(1)!)
      .toList();

  group('CqlTestSuite', () {
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
        // The expected pattern: the test name without "test_" prefix + " TEST PASSED"
        final baseName = name.replaceFirst('test_', '');
        final expected = '$baseName TEST PASSED';
        final actual = results[name];
        expect(actual, equals(expected),
            reason: 'Expected: $expected\nActual: $actual');
      }, skip: skipReason);
    }
  });
}

/// Known failures with skip reasons, categorized by root cause.
///
/// Note: ~148 test defines are commented out in CqlTestSuite.cql (inside
/// /* ... */ block comments or // line comments). These are not counted.
// ignore_for_file: lines_longer_than_80_chars
const _knownFailures = <String, String>{
  // Interval Expand cross-unit edge cases (2 tests) — require matching CQF precision during unit conversion
  'test_QtyIvlExpand_ClosedSingleGPerMG': 'Interval Expand cross-unit edge cases',
  'test_QtyIvlExpand_ClosedSingleMGPerGTrunc': 'Interval Expand cross-unit edge cases',
  // Type conversion edge cases (1 test) - ToList promotion in CQL-to-ELM translator
  'test_ToList_LengthOfNull': 'Type conversion edge cases',
  // Null list inclusion semantics (8 tests) — CQF returns false, CQL spec says null;
  // cannot fix without breaking unit tests (null as List<T> is indistinguishable from null at runtime)
  'test_IncludedIn_NullIncluded': 'Null list inclusion semantics',
  'test_IncludedIn_NullIncludes': 'Null list inclusion semantics',
  'test_Includes_NullIncluded': 'Null list inclusion semantics',
  'test_Includes_NullIncludes': 'Null list inclusion semantics',
  'test_ProperIncludedIn_NullIncluded': 'Null list inclusion semantics',
  'test_ProperIncludedIn_NullIncludes': 'Null list inclusion semantics',
  'test_ProperIncludes_NullIncluded': 'Null list inclusion semantics',
  'test_ProperIncludes_NullIncludes': 'Null list inclusion semantics',
};
