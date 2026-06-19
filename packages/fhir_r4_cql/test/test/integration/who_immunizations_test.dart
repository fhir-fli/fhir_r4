import 'dart:io';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:test/test.dart';

import '../test_helpers/who_test_helpers.dart';

/// Integration tests for WHO SMART Immunizations - Measles decision logic.
///
/// Tests parse CQL from the WHO smart-immunizations IG, load FHIR test bundles,
/// and execute the Measles Low Transmission decision table to verify correct
/// immunization recommendations.
void main() {
  late LibraryManager libraryManager;
  late Map<String, dynamic> valueSets;

  // Check if WHO CQL files exist before running tests
  final whoDir = Directory('cql/who');
  if (!whoDir.existsSync()) {
    print('WHO CQL files not found. Run utils/download_who_cql.sh first.');
    return;
  }

  setUpAll(() {
    libraryManager = createWhoLibraryManager();
    valueSets = loadValueSets('cql/who/vocabulary');
  });

  group('WHO SMART Immunizations - Measles Low Transmission', () {
    late CqlLibrary measlesLogic;

    setUpAll(() {
      measlesLogic = loadWhoLibrary(
          'IMMZD2DTMeaslesLowTransmissionLogic.cql', libraryManager);
    });

    // Test case 22.1: Patient under 12 months - not due for MCV1
    test('Measles22.1 - Client under 12 months, not due for MCV1', () async {
      final bundleContext =
          loadBundle('cql/who/tests/tests-Measles22.1-bundle.json');
      final context = buildContext(bundleContext, valueSets);
      final result = await measlesLogic.execute(context, const R4ModelResolver());

      expect(result['Client is not due for MCV1 Case 1'], isTrue,
          reason: 'Patient < 12 months should trigger not-due case 1');
      expect(result['Client is not due for MCV1'], isTrue,
          reason: 'Patient should not be due for MCV1');
    });

    // Test case 23.3: Patient >= 12 months, no doses, no recent live vaccine - due for MCV1
    test('Measles23.3 - Client due for MCV1', () async {
      final bundleContext =
          loadBundle('cql/who/tests/tests-Measles23.3-bundle.json');
      final context = buildContext(bundleContext, valueSets);
      final result = await measlesLogic.execute(context, const R4ModelResolver());

      expect(result['Client is due for MCV1'], isTrue,
          reason: 'Patient >= 12 months with no doses should be due for MCV1');
    });

    // Test case 25.2: MCV1 administered, patient < 15 months - not due for MCV2
    // Patient born 2024-10-12, MCV1 given 2025-10-12. Evaluation at 2025-12-01
    // (patient is ~14 months, < 15 months threshold).
    test('Measles25.2 - MCV1 given, client under 15 months, not due for MCV2',
        () async {
      final bundleContext =
          loadBundle('cql/who/tests/tests-Measles25.2-bundle.json');
      final context =
          buildContext(bundleContext, valueSets, evaluationDate: '2025-12-01');
      final result = await measlesLogic.execute(context, const R4ModelResolver());

      expect(result['Client is not due for MCV2 Case 1'], isTrue,
          reason:
              'Patient with MCV1 and < 15 months should trigger not-due case 1');
      expect(result['Client is not due for MCV2'], isTrue,
          reason: 'Patient should not be due for MCV2');
    });

    // Test case 28.1: MCV2 administered - primary series complete
    test('Measles28.1 - Primary series complete', () async {
      final bundleFile = File('cql/who/tests/tests-Measles28.1-bundle.json');
      if (!bundleFile.existsSync()) {
        markTestSkipped('Test bundle not available');
        return;
      }
      final bundleContext = loadBundle(bundleFile.path);
      final context = buildContext(bundleContext, valueSets);
      final result = await measlesLogic.execute(context, const R4ModelResolver());

      expect(result['Measles primary series is complete'], isTrue,
          reason: 'Patient with MCV2 should have complete primary series');
    });

    // Self-validation: The CQL itself contains a "Test Validation" define
    // that checks results against expected values per Patient.id
    test('Measles22.1 - Test Validation', () async {
      final bundleContext =
          loadBundle('cql/who/tests/tests-Measles22.1-bundle.json');
      final context = buildContext(bundleContext, valueSets);
      final result = await measlesLogic.execute(context, const R4ModelResolver());

      expect(result['Test Validation'], isTrue,
          reason: 'CQL Test Validation define should evaluate to true');
    });

    test('Measles23.3 - Test Validation', () async {
      final bundleContext =
          loadBundle('cql/who/tests/tests-Measles23.3-bundle.json');
      final context = buildContext(bundleContext, valueSets);
      final result = await measlesLogic.execute(context, const R4ModelResolver());

      expect(result['Test Validation'], isTrue,
          reason: 'CQL Test Validation define should evaluate to true');
    });

    test('Measles25.2 - Test Validation', () async {
      final bundleContext =
          loadBundle('cql/who/tests/tests-Measles25.2-bundle.json');
      final context =
          buildContext(bundleContext, valueSets, evaluationDate: '2025-12-01');
      final result = await measlesLogic.execute(context, const R4ModelResolver());

      expect(result['Test Validation'], isTrue,
          reason: 'CQL Test Validation define should evaluate to true');
    });
  });
}
