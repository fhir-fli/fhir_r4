import 'dart:io';

import 'package:fhir_r4_cql/fhir_r4_cql.dart' show CqlDateTime, R4ModelResolver;
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
    throw StateError('cql/cqf-engine is missing: the suite cannot run');
  }

  final suiteFile = File('cql/cqf-engine/CqlTestSuite.cql');
  if (!suiteFile.existsSync()) {
    throw StateError('CqlTestSuite.cql is missing: the suite cannot run');
  }

  final source = suiteFile.readAsStringSync();

  // Strip block comments (/* ... */) and line comments (// ...) before
  // extracting test names, so commented-out defines are not included.
  final uncommented = source
      .replaceAll(RegExp(r'/\*.*?\*/', dotAll: true), '')
      .replaceAll(RegExp('//.*'), '');

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
        'startTimestamp': CqlDateTime.fromString('2018-01-01T07:00:00.0-07:00'),
      };
      results = (await library.execute(context, const R4ModelResolver()))
          as Map<String, dynamic>;
    });

    for (final name in testNames) {
      final pin = _knownFailures[name];
      test(name, () {
        // The expected pattern: the test name without "test_" prefix + " TEST PASSED"
        final baseName = name.replaceFirst('test_', '');
        final expected = '$baseName TEST PASSED';
        final actual = results[name];
        // A pinned case asserts the suite's answer is NOT given (the engine
        // follows the spec sentence quoted beside the pin), so the pin
        // fails the day the case starts passing. Until 2026-10-07 a pin
        // skipped the case.
        if (pin != null) {
          expect(
            areValuesEqual(actual, expected),
            isFalse,
            reason: '$name now passes: remove its pin ($pin)',
          );
          return;
        }
        // The define answers a System String; compared by value.
        expect(
          areValuesEqual(actual, expected),
          isTrue,
          reason: 'Expected: $expected\nActual: $actual',
        );
      });
    }
  });
}

/// Known failures with skip reasons, categorized by root cause.
///
/// Note: ~148 test defines are commented out in CqlTestSuite.cql (inside
/// /* ... */ block comments or // line comments). These are not counted.
// ignore_for_file: lines_longer_than_80_chars
const _knownFailures = <String, String>{
  // Variance of quantities (5 tests). CQL reference 09-b's example keeps
  // the unit (`2.5 'mg'`); the JavaScript cql-execution and Firely .NET
  // engines keep it too (read 2026-10-07). This suite's Java engine squares
  // and canonicalizes it (`2.5 'm2'`, `0 'm6'`); the engine follows the
  // spec and the other two engines (cql #31).
  'test_Variance_v_q': 'the spec keeps the unit; this suite squares it',
  'test_Variance_q_diff_units':
      'the spec keeps the unit; this suite squares it',
  'test_Variance_q2': 'the spec keeps the unit; this suite squares it',
  'test_PopulationVariance_v_q':
      'the spec keeps the unit; this suite squares it',
  'test_PopulationVariance_q_diff_units':
      'the spec keeps the unit; this suite squares it',
  // Type conversion edge cases (1 test) - ToList promotion in CQL-to-ELM translator
  // Null list inclusion (8 tests). CQL reference 09-b, Includes / Included
  // In (lists): "For the list-list overload, if either argument is null,
  // the result is null." The engine answers null; this suite expects false
  // (`not IncludedIn_NullIncluded`). Measured 2026-10-07.
  'test_IncludedIn_NullIncluded':
      'the spec says null; this suite expects false',
  'test_IncludedIn_NullIncludes':
      'the spec says null; this suite expects false',
  'test_Includes_NullIncluded': 'the spec says null; this suite expects false',
  'test_Includes_NullIncludes': 'the spec says null; this suite expects false',
  'test_ProperIncludedIn_NullIncluded':
      'the spec says null; this suite expects false',
  'test_ProperIncludedIn_NullIncludes':
      'the spec says null; this suite expects false',
  'test_ProperIncludes_NullIncluded':
      'the spec says null; this suite expects false',
  'test_ProperIncludes_NullIncludes':
      'the spec says null; this suite expects false',
};
