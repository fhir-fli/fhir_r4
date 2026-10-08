import 'dart:io';

import 'package:cql/src/internal.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:test/test.dart';

import '../test_helpers/cql_test_helpers.dart';

/// Test runner for standalone CQL engine test files from the CQF reference
/// implementation. These are NOT self-validating — expected results are
/// derived from the Java/Kotlin test classes.
void main() {
  final engineDir = Directory('cql/cqf-engine');
  if (!engineDir.existsSync()) {
    throw StateError('cql/cqf-engine is missing: the suite cannot run');
  }

  final libraryManager = LibraryManager(
    sourceProvider: FileSystemLibrarySourceProvider(basePath: 'cql/cqf-engine'),
    parseLibrary: parseAndBuildLibrary,
  );

  // ── CqlFunctionTests ──
  _testFile(
    'CqlFunctionTests',
    libraryManager,
    {
      'FunctionTestStringArg': 'hello',
      'FunctionTestNullStringArg': null,
      'FunctionTestMultipleArgs': 'hell0',
      'FunctionTestTupleArg': CqlInteger(3),
      'FunctionTestNullTupleArg': null,
      'FunctionTestNullMultipleArgs': null,
      'FunctionTestOverload': 'hell00.000',
      'FunctionTestNullOverload': null,
      'FunctionTestQuantityArg': 'cm',
      'FunctionTestNullQuantityArg': null,
    },
    knownFailures: {},
  );

  // ── CqlConceptTest ──
  _testFile(
    'CqlConceptTest',
    libraryManager,
    {
      // testConceptRef should be a CqlConcept with 3 codes
      'testConceptRef': _isCqlConcept,
    },
  );

  // ── FunctionOverloadTest ──
  _testFile(
    'FunctionOverloadTest',
    libraryManager,
    {
      'TestAnyFunctionWithInteger': CqlInteger(1),
      'TestAnyFunctionWithString': 'joe',
      'TestAnyFunctionWithDecimal': CqlDecimal(12.3),
      'TestAnyFunctionWithNoArgs': 'any',
      'TestAnyFunctionWith2Args': CqlInteger(3),
    },
  );

  // ── EmptyStringsTest ──
  _testFile(
    'EmptyStringsTest',
    libraryManager,
    {
      'Null': null,
      'Empty': '',
      'Space': ' ',
    },
  );

  // ── SortDescendingTest ──
  _testFile(
    'SortDescendingTest',
    libraryManager,
    {
      'list of numbers': [
        CqlInteger(2),
        CqlInteger(4),
        CqlInteger(1),
        CqlInteger(9),
      ],
      'sorted list of numbers descending': [
        CqlInteger(9),
        CqlInteger(4),
        CqlInteger(2),
        CqlInteger(1),
      ],
    },
  );

  // ── TestUnion ──
  _testFile(
    'TestUnion',
    libraryManager,
    {
      // CQL reference 09-b, Union (lists), read whole 2026-10-07: "If
      // either argument is null, it is considered an empty list for the
      // purposes of evaluating the union." Two typed null lists → {}.
      'NullAndNullList': <dynamic>[],
      'NullAndNullInterval': null,
      'NullAndNullUntyped': null,
      'NullAndEmpty': <dynamic>[],
      'EmptyAndNull': <dynamic>[],
      'NullAndSingle': [CqlInteger(1)],
      'SingleAndNull': [CqlInteger(1)],
    },
  );

  // ── DateComparatorTest ──
  _testFile(
    'DateComparatorTest',
    libraryManager,
    {
      'Date 1': CqlDate.fromString('2018-01-01'),
      'Date 2': CqlDate.fromString('2018-02-01'),
      'Date Comparator Test': true,
    },
  );

  // ── DateOrDateTimeInNullIntervalTest ──
  _testFile(
    'DateOrDateTimeInNullIntervalTest',
    libraryManager,
    {
      // The file's answers (null); the engine answers false, see the pins.
      'Date in Null Interval Test': null,
      'DateTime in Null Interval Test': null,
    },
    knownFailures: {
      // Interval[null, null] with untyped nulls is a null interval, and a
      // point in a null interval is false (09-b, Contains: "If the first
      // argument is null, the result is false"; HL7's own conformance suite,
      // CqlIntervalOperatorsTest: `5 in Interval[null, null] // false`,
      // `Interval[null, null] // null`). This Java engine file expects
      // null, as does the JavaScript engine; Firely's .NET answers true
      // (read 2026-10-07). Measured 2026-10-07.
      'Date in Null Interval Test':
          'the spec says false; this file expects null',
      'DateTime in Null Interval Test':
          'the spec says false; this file expects null',
    },
  );

  // ── LetClauseOutsideQueryContextTest ──
  _testFile(
    'LetClauseOutsideQueryContextTest',
    libraryManager,
    {
      'First Position of list': [
        CqlInteger(1),
        CqlInteger(1),
        CqlInteger(1),
        CqlInteger(1),
      ],
      'Third Position of list With Same Name of Let As First': [
        CqlInteger(3),
        CqlInteger(3),
        CqlInteger(3),
        CqlInteger(3),
      ],
    },
  );

  // ── Issue33 — CalendarDayOf function ──
  _testFile(
    'Issue33',
    libraryManager,
    {
      'Issue33': _isInterval,
    },
  );

  // ── Issue39 — Equivalent intervals ──
  _testFile(
    'Issue39',
    libraryManager,
    {
      'EquivalentIntervals': false,
    },
    knownFailures: {
      // x is [11:00, next day 00:00:00.000) and y is [11:00, 23:59:59.999].
      // CQL reference 09-b, Equivalent (intervals): "their starting and
      // ending points, as determined by the Start and End operators, are
      // equivalent"; End of x is the predecessor of 00:00:00.000, which is
      // 23:59:59.999, so the engine answers true. This file (cql-engine
      // Issue39) expects false. Measured 2026-10-07.
      'EquivalentIntervals': 'the spec says true; this file expects false',
    },
  );

  // ── Issue208 — Let clause with list of lists ──
  _testFile(
    'Issue208',
    libraryManager,
    {
      'List 1': [CqlInteger(1), CqlInteger(2), CqlInteger(3)],
      'List 2': [CqlInteger(4), CqlInteger(5), CqlInteger(6)],
    },
  );

  // ── Issue213 — Collapse per day ──
  _testFile(
    'Issue213',
    libraryManager,
    {
      'Collapsed Treatment Intervals': _isList,
    },
  );

  // ── Issue223 — Flatten list of lists ──
  _testFile(
    'Issue223',
    libraryManager,
    {
      'Access Flattened List of List Items': [true],
      'Access Flattened List of List Items in a Single Query': [true],
    },
  );

  // ── Issue458 — Closed-open interval ──
  _testFile(
    'Issue458',
    libraryManager,
    {
      'Closed-Open Interval': _isInterval,
    },
  );

  // ── HedisCompatibilityTest ──
  _testFile(
    'HedisCompatibilityTest',
    libraryManager,
    {
      'ReturnAll': [
        CqlInteger(1),
        CqlInteger(1),
        CqlInteger(1),
        CqlInteger(2),
        CqlInteger(2),
      ],
      'ReturnDistinct': [CqlInteger(1), CqlInteger(2)],
    },
  );

  // ── ResolveParameterDefaultTest ──
  group('ResolveParameterDefaultTest', () {
    test('resolves parameter defaults', () async {
      final source = File('cql/cqf-engine/ResolveParameterDefaultTest.cql')
          .readAsStringSync();
      final library =
          parseAndBuildLibrary(source, libraryManager: libraryManager);
      final results = (await library.execute(null, const R4ModelResolver()))
          as Map<String, dynamic>;

      expect(results['Simple Expression'], equals(CqlInteger(42)));
    });
  });

  // ── CqlListDistinguishedOverloads ──
  _testFile(
    'CqlListDistinguishedOverloads',
    libraryManager,
    {
      'Test': '1, 2, 3, 4, 5',
    },
  );

  // ── SignatureOutputTests ──
  _testFile(
    'SignatureOutputTests',
    libraryManager,
    {
      'TestAdd': CqlInteger(10),
      'TestDateAdd': CqlDate.fromString('2012-02-01'),
      'TestDateTime': CqlDateTime.fromString('2012-01-01T00:00:00.000'),
      'TestAvg': CqlDecimal(3.0),
      'TestDivide': CqlDecimal(0.8),
      'TestMultipleOverload': CqlInteger(5),
    },
  );

  // ── CqlErrorsAndMessagingOperatorsTest ──
  _testFile(
    'CqlErrorsAndMessagingOperatorsTest',
    libraryManager,
    {
      'TestMessageInfo': CqlInteger(1),
      'TestMessageWarn': CqlInteger(2),
      'TestMessageTrace': [CqlInteger(3), CqlInteger(4), CqlInteger(5)],
      'TestMessageWithNullSource': null,
      'TestMessageWithNullCondition': CqlInteger(1),
      'TestWarningWithNullSource': null,
      'TestWarningWithNullCondition': CqlInteger(1),
      'TestTraceWithNullSource': null,
      'TestTraceWithNullCondition': CqlInteger(1),
    },
  );

  // ── CqlInternalTypeRepresentationSuite ──
  _testFile(
    'CqlInternalTypeRepresentationSuite',
    libraryManager,
    {
      'BoolTrue': true,
      'BoolFalse': false,
      'IntOne': CqlInteger(1),
      'DecimalTenth': CqlDecimal(0.1),
      'StringTrue': 'true',
    },
  );
}

/// Matcher for CqlConcept values (we don't check the exact content, just type).
const _isCqlConcept = TypeMatcher<CqlConcept>();

/// Matcher for CqlInterval values.
const _isInterval = TypeMatcher<CqlInterval<dynamic>>();

/// Matcher for List values.
const _isList = TypeMatcher<List<dynamic>>();

/// Helper that generates a test group for a single CQL file.
void _testFile(
  String filename,
  LibraryManager libraryManager,
  Map<String, dynamic> expectedResults, {
  Map<String, String> knownFailures = const {},
  String? skipAll,
}) {
  group(
    filename,
    () {
      late Map<String, dynamic> results;

      setUpAll(() async {
        final source = File('cql/cqf-engine/$filename.cql').readAsStringSync();
        final library =
            parseAndBuildLibrary(source, libraryManager: libraryManager);
        final context = <String, dynamic>{
          'startTimestamp':
              CqlDateTime.fromString('2018-01-01T07:00:00.0-07:00'),
        };
        results = (await library.execute(context, const R4ModelResolver()))
            as Map<String, dynamic>;
      });

      for (final entry in expectedResults.entries) {
        final name = entry.key;
        final expected = entry.value;
        final pin = knownFailures[name];

        test(name, () {
          final actual = results[name];
          // A pinned case asserts that the file's answer is NOT given (the
          // engine follows the spec sentence quoted beside the pin), so the
          // pin fails the day the case starts matching. Until 2026-10-07 a
          // pin skipped the case, and two pins named cases that had no
          // expectation at all, so they never ran.
          if (pin != null) {
            expect(
              expected is TypeMatcher
                  ? expected.matches(actual, <dynamic, dynamic>{})
                  : areValuesEqual(actual, expected),
              isFalse,
              reason: '$filename.$name now matches the file: remove its pin '
                  '($pin)',
            );
            return;
          }
          if (expected is TypeMatcher) {
            expect(
              actual,
              expected,
              reason: '$filename.$name: got ${actual?.runtimeType}',
            );
          } else {
            expect(
              areValuesEqual(actual, expected),
              isTrue,
              reason: '$filename.$name: '
                  '$actual (${actual?.runtimeType}) != '
                  '$expected (${expected?.runtimeType})',
            );
          }
        });
      }
    },
    skip: skipAll,
  );
}
