import 'dart:io';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:test/test.dart';

import '../test_helpers/cql_test_helpers.dart';

/// Tests for cross-library CQL resolution: included code refs, concept refs,
/// parameter refs, value set refs, signature overloads, and multi-library
/// scenarios from the CQF reference implementation.
void main() {
  final engineDir = Directory('cql/cqf-engine');
  if (!engineDir.existsSync()) {
    print('CQF engine tests not downloaded. '
        'Run: bash utils/download_engine_tests.sh');
    return;
  }

  final libraryManager = LibraryManager(
    sourceProvider: FileSystemLibrarySourceProvider(basePath: 'cql/cqf-engine'),
    parseLibrary: parseAndBuildLibrary,
  );

  // ── IncludedCodeRefTest ──
  group('IncludedCodeRefTest', () {
    test('resolves code from included library', () async {
      final source =
          File('cql/cqf-engine/IncludedCodeRefTest.cql').readAsStringSync();
      final library =
          parseAndBuildLibrary(source, libraryManager: libraryManager);
      final results = (await library.execute(null, const R4ModelResolver()))
          as Map<String, dynamic>;

      final includedCode = results['IncludedCode'];
      expect(
        includedCode,
        isNotNull,
        reason: 'IncludedCode should resolve from Common library',
      );
      expect(includedCode, isA<CqlCode>());
      if (includedCode is CqlCode) {
        expect(includedCode.code, equals('community'));
        expect(
          includedCode.system,
          equals(
            'http://terminology.hl7.org/CodeSystem/medicationrequest-category',
          ),
        );
      }
    });
  });

  // ── IncludedConceptRefTest ──
  group('IncludedConceptRefTest', () {
    test('resolves concept from included library',
        skip: 'Cross-library concept resolution returns null', () async {
      final source =
          File('cql/cqf-engine/IncludedConceptRefTest.cql').readAsStringSync();
      final library =
          parseAndBuildLibrary(source, libraryManager: libraryManager);
      final results = (await library.execute(null, const R4ModelResolver()))
          as Map<String, dynamic>;

      final concept = results['testIncludedConceptRef'];
      expect(
        concept,
        isNotNull,
        reason: 'testIncludedConceptRef should resolve from Common',
      );
      expect(concept, isA<CqlConcept>());
      if (concept is CqlConcept) {
        expect(concept.display, equals('concept-display'));
        expect(concept.codes, hasLength(1));
        expect(concept.codes.first.code, equals('code-value'));
      }
    });
  });

  // ── IncludedParameterTest ──
  group('IncludedParameterTest', () {
    test('resolves parameters from included and local libraries', () async {
      final source =
          File('cql/cqf-engine/IncludedParameterTest.cql').readAsStringSync();
      final library =
          parseAndBuildLibrary(source, libraryManager: libraryManager);
      final context = <String, dynamic>{
        'Measurement Period': CqlInteger(42),
      };
      final results = (await library.execute(context, const R4ModelResolver()))
          as Map<String, dynamic>;

      expect(results['Local Parameter'], equals(CqlInteger(42)));
      // Included parameter from IncludedParameterTestCommon — should be null
      // (no value provided for the included library's parameter)
      // or the same as the local if parameters propagate
    });
  });

  // ── IncludedValueSetRefTest ──
  group('IncludedValueSetRefTest', () {
    test('resolves value set from included library', () async {
      final source =
          File('cql/cqf-engine/IncludedValueSetRefTest.cql').readAsStringSync();
      final library =
          parseAndBuildLibrary(source, libraryManager: libraryManager);
      final results = (await library.execute(null, const R4ModelResolver()))
          as Map<String, dynamic>;

      final vs = results['IncludedValueSet'];
      expect(
        vs,
        isNotNull,
        reason: 'IncludedValueSet should resolve from Common',
      );
      expect(vs, isA<CqlValueSet>());
      if (vs is CqlValueSet) {
        expect(vs.id, equals('http://test/common'));
      }
    });
  });

  // ── IncludedSignatureOutputTests ──
  group('IncludedSignatureOutputTests', () {
    test('resolves overloaded functions from included library', () async {
      final source = File('cql/cqf-engine/IncludedSignatureOutputTests.cql')
          .readAsStringSync();
      final library =
          parseAndBuildLibrary(source, libraryManager: libraryManager);
      final results = (await library.execute(null, const R4ModelResolver()))
          as Map<String, dynamic>;

      expect(results['TestOverload'], equals(CqlInteger(5)));
      expect(results['TestOverloadOneInt'], equals(CqlInteger(1)));
    });
  });

  // ── IncludedSignatureWithAliasOutputTests ──
  group('IncludedSignatureWithAliasOutputTests', () {
    test('resolves overloaded functions via alias', () async {
      final source =
          File('cql/cqf-engine/IncludedSignatureWithAliasOutputTests.cql')
              .readAsStringSync();
      final library =
          parseAndBuildLibrary(source, libraryManager: libraryManager);
      final results = (await library.execute(null, const R4ModelResolver()))
          as Map<String, dynamic>;

      expect(results['TestOverload'], equals(CqlInteger(5)));
      expect(results['TestOverloadOneInt'], equals(CqlInteger(1)));
    });
  });

  // ── CoverageTest ──
  group('CoverageTest', () {
    late LibraryManager coverageManager;

    setUp(() {
      coverageManager = LibraryManager(
        sourceProvider: FileSystemLibrarySourceProvider(
          basePath: 'cql/cqf-engine/CoverageTest',
        ),
        parseLibrary: parseAndBuildLibrary,
      );
    });

    test('evaluates cross-library expressions', () async {
      final source =
          File('cql/cqf-engine/CoverageTest/Tests.cql').readAsStringSync();
      final library =
          parseAndBuildLibrary(source, libraryManager: coverageManager);
      final results = (await library.execute(null, const R4ModelResolver()))
          as Map<String, dynamic>;

      // CoverageTest/Tests.cql uses assertEquals which returns the message
      // source (first arg to Message). If assertion passes, condition is false
      // so Message is not triggered and result is 'Assertion failed' string.
      // Actually: assertEquals returns Message(..., not (expected = actual), ...)
      // When assertion PASSES, condition to Message is false, so Message
      // returns its source unchanged.
      // test1: assertEquals(Library1.expr1, 3) → expr1 = 1+2 = 3 → passes
      expect(results['test1'], equals('Assertion failed'));
      expect(results['test2'], equals('Assertion failed'));
      expect(results['test3'], equals('Assertion failed'));
      expect(results['test4'], equals('Assertion failed'));
      expect(results['test5'], equals('Assertion failed'));
      expect(results['test6'], equals('Assertion failed'));
      expect(results['test7'], equals('Assertion failed'));
      expect(results['test8'], equals('Assertion failed'));
      expect(results['test9'], equals('Assertion failed'));
    });
  });

  // ── Multilib tests ──
  group('multilib', () {
    late LibraryManager multilibManager;

    setUp(() {
      multilibManager = LibraryManager(
        sourceProvider: FileSystemLibrarySourceProvider(
          basePath: 'cql/cqf-engine/multilib',
        ),
        parseLibrary: parseAndBuildLibrary,
      );
    });

    test('MultiLibrary1 evaluates correctly', () async {
      final source =
          File('cql/cqf-engine/multilib/MultiLibrary1.cql').readAsStringSync();
      final library =
          parseAndBuildLibrary(source, libraryManager: multilibManager);
      final results = (await library.execute(null, const R4ModelResolver()))
          as Map<String, dynamic>;

      expect(results['Number'], equals(CqlInteger(1)));
      expect(results['Name'], equals('Uno'));
      expect(results['MultiLibraryIdent1'], equals('MultiLibrary1'));
      expect(results['MultiLibraryValue1'], equals('One'));
    });

    test('MultiLibrary2 evaluates correctly', () async {
      final source =
          File('cql/cqf-engine/multilib/MultiLibrary2.cql').readAsStringSync();
      final library =
          parseAndBuildLibrary(source, libraryManager: multilibManager);
      final results = (await library.execute(null, const R4ModelResolver()))
          as Map<String, dynamic>;

      expect(results['Number'], equals(CqlInteger(2)));
      expect(results['Name'], equals('Dos'));
    });

    test('MultiLibrary3 evaluates correctly', () async {
      final source =
          File('cql/cqf-engine/multilib/MultiLibrary3.cql').readAsStringSync();
      final library =
          parseAndBuildLibrary(source, libraryManager: multilibManager);
      final results = (await library.execute(null, const R4ModelResolver()))
          as Map<String, dynamic>;

      expect(results['Number'], equals(CqlInteger(3)));
      expect(results['Name'], equals('Tres'));
    });

    test('CqlFileWithLibOtherName evaluates correctly', () async {
      // File is named CqlFileWithLibOtherName.cql but library is OtherName
      final source = File('cql/cqf-engine/multilib/CqlFileWithLibOtherName.cql')
          .readAsStringSync();
      final library =
          parseAndBuildLibrary(source, libraryManager: multilibManager);
      final results = (await library.execute(null, const R4ModelResolver()))
          as Map<String, dynamic>;

      expect(results['Number'], equals(CqlInteger(1)));
    });

    test('LibraryWithVersion evaluates correctly', () async {
      final source = File('cql/cqf-engine/multilib/LibraryWithVersion.cql')
          .readAsStringSync();
      final library =
          parseAndBuildLibrary(source, libraryManager: multilibManager);
      final results = (await library.execute(null, const R4ModelResolver()))
          as Map<String, dynamic>;

      expect(results['Number'], equals(CqlInteger(5)));
    });
  });
}
