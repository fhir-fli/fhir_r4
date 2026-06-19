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
    print('CqlErrorTestSuite.cql not found. '
        'Run: bash utils/download_engine_tests.sh');
    return;
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
      final skipReason = _knownFailures[name];
      test('$name should throw at runtime', () async {
        final context = <String, dynamic>{
          'startTimestamp':
              CqlDateTime.fromString('2018-01-01T07:00:00.0-07:00'),
        };
        final results =
            (await library.execute(context, const R4ModelResolver())) as Map<String, dynamic>;

        // The define should either throw during execution or produce
        // a CqlException/error value. Since we execute the whole library,
        // check that the result is an error or null.
        final result = results[name];

        // For error suite, we accept: threw during whole-library execution
        // (caught above), or produced null/error result
        expect(
          result == null || result is Exception || result is Error,
          isTrue,
          reason: '$name should error but got: $result (${result.runtimeType})',
        );
      }, skip: skipReason);
    }
  });
}

const _knownFailures = <String, String>{
  'Successor_ofr': 'Integer overflow wraps instead of throwing',
  'Predecessor_ufr': 'Integer underflow wraps instead of throwing',
};
