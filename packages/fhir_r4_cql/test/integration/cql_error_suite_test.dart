import 'dart:io';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:test/test.dart';

import '../test_helpers/cql_test_helpers.dart';

/// Test runner for CqlErrorTestSuite.cql.
///
/// Each non-commented define in this file is expected to produce a runtime
/// error when evaluated. We verify that executing each define throws.
void main() {
  final suiteFile = File('cql/cqf-engine/CqlErrorTestSuite.cql');
  if (!suiteFile.existsSync()) {
    throw StateError('CqlErrorTestSuite.cql is missing: the suite cannot run');
  }

  final source = suiteFile.readAsStringSync();

  // Extract all non-function, non-commented defines (skip helpers/functions)
  final defineNames = RegExp(r'^define (\w+):', multiLine: true)
      .allMatches(source)
      .map((m) => m.group(1)!)
      .where((name) => name != 'function') // skip function defs
      .toList();

  group('CqlErrorTestSuite', () {
    late CqlLibrary library;

    setUpAll(() {
      library = parseAndBuildLibrary(source);
    });

    for (final name in defineNames) {
      final pin = _knownFailures[name];
      test('$name should throw at runtime', () async {
        final context = <String, dynamic>{
          'startTimestamp':
              CqlDateTime.fromString('2018-01-01T07:00:00.0-07:00'),
        };
        final results = (await library.execute(
          context,
          const R4ModelResolver(),
        )) as Map<String, dynamic>;

        // The define should either throw during execution or produce
        // a CqlException/error value. Since we execute the whole library,
        // check that the result is an error or null.
        final result = results[name];
        // An error-suite case errors when its define holds the exception
        // it threw (a failed define carries its exception as its value).
        // Until 2026-10-07 a null answer counted as an error too, which
        // hid every case the engine answers null for.
        final errored = result is Exception || result is Error;

        // A pinned case asserts the suite's expectation is NOT met (the
        // engine follows the spec sentence quoted beside the pin), so the
        // pin fails the day the case starts erroring. Until 2026-10-07 a
        // pin skipped the case.
        if (pin != null) {
          expect(
            errored,
            isFalse,
            reason: '$name now errors: remove its pin ($pin)',
          );
          return;
        }

        // For error suite, we accept: threw during whole-library execution
        // (caught above), or produced null/error result
        expect(
          errored,
          isTrue,
          reason: '$name should error but got: $result (${result.runtimeType})',
        );
      });
    }
  });
}

const _knownFailures = <String, String>{
  // CQL reference 09-b, Successor: "If the argument is already the maximum
  // value for the type, a null is returned" (ELM 04 says the same); the
  // reference engine's suite expects a run-time error. The engine follows
  // the spec and answers null (2026-10-07).
  'Successor_ofr': 'the spec says null; this suite expects a run-time error',
  'Predecessor_ufr': 'the spec says null; this suite expects a run-time error',
};
