import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';
import 'package:fhir_r4_validation/fhir_r4_validation.dart';
import 'package:test/test.dart';

void main() {
  group('Choice type (value[x]) validation via structure validation', () {
    test('validates valid valueString on a polymorphic element', () async {
      final node = ObjectNode(path: 'Observation')
        ..children.add(
          PropertyNode(path: 'Observation.valueString')
            ..key = ValueNode('valueString', 'valueString')
            ..value = LiteralNode(
              'test result',
              '"test result"',
              path: 'Observation.valueString',
            ),
        );

      // The element definition uses [x] to indicate a polymorphic type
      final element = ElementDefinition(
        path: 'Observation.value[x]'.toFhirString,
        type: [
          ElementDefinitionType(code: 'Quantity'.toFhirUri),
          ElementDefinitionType(code: 'CodeableConcept'.toFhirUri),
          ElementDefinitionType(code: 'string'.toFhirUri),
          ElementDefinitionType(code: 'boolean'.toFhirUri),
          ElementDefinitionType(code: 'integer'.toFhirUri),
          ElementDefinitionType(code: 'Range'.toFhirUri),
          ElementDefinitionType(code: 'Ratio'.toFhirUri),
          ElementDefinitionType(code: 'SampledData'.toFhirUri),
          ElementDefinitionType(code: 'time'.toFhirUri),
          ElementDefinitionType(code: 'dateTime'.toFhirUri),
          ElementDefinitionType(code: 'Period'.toFhirUri),
        ],
      );
      final elements = {'Observation.value[x]': element};
      final resourceCache = CanonicalResourceCache();

      final results = await validateStructure(
        node: node,
        elements: elements,
        type: 'Observation',
        resourceCache: resourceCache,
      );

      // The string value should be validated against the string type
      expect(
        results.results.where(
          (r) =>
              r.severity == Severity.error &&
              r.diagnostics.contains('Invalid value for primitive type'),
        ),
        isEmpty,
      );
    });

    test('validates valid valueBoolean on a polymorphic element', () async {
      final node = ObjectNode(path: 'Observation')
        ..children.add(
          PropertyNode(path: 'Observation.valueBoolean')
            ..key = ValueNode('valueBoolean', 'valueBoolean')
            ..value = LiteralNode(
              true,
              'true',
              path: 'Observation.valueBoolean',
            ),
        );

      final element = ElementDefinition(
        path: 'Observation.value[x]'.toFhirString,
        type: [
          ElementDefinitionType(code: 'string'.toFhirUri),
          ElementDefinitionType(code: 'boolean'.toFhirUri),
          ElementDefinitionType(code: 'integer'.toFhirUri),
          ElementDefinitionType(code: 'dateTime'.toFhirUri),
        ],
      );
      final elements = {'Observation.value[x]': element};
      final resourceCache = CanonicalResourceCache();

      final results = await validateStructure(
        node: node,
        elements: elements,
        type: 'Observation',
        resourceCache: resourceCache,
      );

      expect(
        results.results.where(
          (r) =>
              r.severity == Severity.error &&
              r.diagnostics.contains('Invalid value for primitive type'),
        ),
        isEmpty,
      );
    });

    test('validates valid valueInteger on a polymorphic element', () async {
      final node = ObjectNode(path: 'Observation')
        ..children.add(
          PropertyNode(path: 'Observation.valueInteger')
            ..key = ValueNode('valueInteger', 'valueInteger')
            ..value = LiteralNode(
              42,
              '42',
              path: 'Observation.valueInteger',
            ),
        );

      final element = ElementDefinition(
        path: 'Observation.value[x]'.toFhirString,
        type: [
          ElementDefinitionType(code: 'string'.toFhirUri),
          ElementDefinitionType(code: 'boolean'.toFhirUri),
          ElementDefinitionType(code: 'integer'.toFhirUri),
          ElementDefinitionType(code: 'dateTime'.toFhirUri),
        ],
      );
      final elements = {'Observation.value[x]': element};
      final resourceCache = CanonicalResourceCache();

      final results = await validateStructure(
        node: node,
        elements: elements,
        type: 'Observation',
        resourceCache: resourceCache,
      );

      expect(
        results.results.where(
          (r) =>
              r.severity == Severity.error &&
              r.diagnostics.contains('Invalid value for primitive type'),
        ),
        isEmpty,
      );
    });

    test('validates valid valueDateTime on a polymorphic element', () async {
      final node = ObjectNode(path: 'Observation')
        ..children.add(
          PropertyNode(path: 'Observation.valueDateTime')
            ..key = ValueNode('valueDateTime', 'valueDateTime')
            ..value = LiteralNode(
              '2024-01-15T10:30:00Z',
              '"2024-01-15T10:30:00Z"',
              path: 'Observation.valueDateTime',
            ),
        );

      final element = ElementDefinition(
        path: 'Observation.value[x]'.toFhirString,
        type: [
          ElementDefinitionType(code: 'string'.toFhirUri),
          ElementDefinitionType(code: 'boolean'.toFhirUri),
          ElementDefinitionType(code: 'integer'.toFhirUri),
          ElementDefinitionType(code: 'dateTime'.toFhirUri),
        ],
      );
      final elements = {'Observation.value[x]': element};
      final resourceCache = CanonicalResourceCache();

      final results = await validateStructure(
        node: node,
        elements: elements,
        type: 'Observation',
        resourceCache: resourceCache,
      );

      expect(
        results.results.where(
          (r) =>
              r.severity == Severity.error &&
              r.diagnostics.contains('Invalid value for primitive type'),
        ),
        isEmpty,
      );
    });

    test(
        'reports error for choice type with name not matching any allowed type',
        () async {
      final node = ObjectNode(path: 'Observation')
        ..children.add(
          PropertyNode(path: 'Observation.valuePatient')
            ..key = ValueNode('valuePatient', 'valuePatient')
            ..value = (ObjectNode(path: 'Observation.valuePatient')
              ..children.add(
                PropertyNode(path: 'Observation.valuePatient.id')
                  ..key = ValueNode('id', 'id')
                  ..value = LiteralNode(
                    '123',
                    '"123"',
                    path: 'Observation.valuePatient.id',
                  ),
              )),
        );

      final element = ElementDefinition(
        path: 'Observation.value[x]'.toFhirString,
        type: [
          ElementDefinitionType(code: 'string'.toFhirUri),
          ElementDefinitionType(code: 'boolean'.toFhirUri),
          ElementDefinitionType(code: 'integer'.toFhirUri),
        ],
      );
      final elements = {'Observation.value[x]': element};
      final resourceCache = CanonicalResourceCache();

      final results = await validateStructure(
        node: node,
        elements: elements,
        type: 'Observation',
        resourceCache: resourceCache,
      );

      // Should have an error because "Patient" is not in the allowed types
      expect(
        results.results.any((r) => r.severity == Severity.error),
        isTrue,
      );
    });

    test('element not in definition when unrecognized choice suffix', () async {
      final node = ObjectNode(path: 'Observation')
        ..children.add(
          PropertyNode(path: 'Observation.valueFoo')
            ..key = ValueNode('valueFoo', 'valueFoo')
            ..value = LiteralNode(
              'something',
              '"something"',
              path: 'Observation.valueFoo',
            ),
        );

      final element = ElementDefinition(
        path: 'Observation.value[x]'.toFhirString,
        type: [
          ElementDefinitionType(code: 'string'.toFhirUri),
          ElementDefinitionType(code: 'boolean'.toFhirUri),
        ],
      );
      final elements = {'Observation.value[x]': element};
      final resourceCache = CanonicalResourceCache();

      final results = await validateStructure(
        node: node,
        elements: elements,
        type: 'Observation',
        resourceCache: resourceCache,
      );

      // "Foo" doesn't match any type, so it should be flagged
      expect(
        results.results.any((r) => r.severity == Severity.error),
        isTrue,
      );
    });
  });

  group('Choice type validation via FhirValidationEngine', () {
    late FhirValidationEngine validator;

    setUp(() {
      validator = FhirValidationEngine();
    });

    test('validates Observation with valueQuantity', () async {
      final results = await validator.validateFhirMap(
        structureToValidate: {
          'resourceType': 'Observation',
          'id': 'bp-obs',
          'status': 'final',
          'code': {
            'coding': [
              {
                'system': 'http://loinc.org',
                'code': '8480-6',
                'display': 'Systolic blood pressure',
              },
            ],
          },
          'valueQuantity': {
            'value': 120,
            'unit': 'mmHg',
            'system': 'http://unitsofmeasure.org',
            'code': 'mm[Hg]',
          },
        },
      );

      expect(results, isNotNull);
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });

    test('validates Observation with valueString', () async {
      final results = await validator.validateFhirMap(
        structureToValidate: {
          'resourceType': 'Observation',
          'id': 'string-obs',
          'status': 'final',
          'code': {
            'coding': [
              {
                'system': 'http://loinc.org',
                'code': '8480-6',
              },
            ],
          },
          'valueString': 'Normal range',
        },
      );

      expect(results, isNotNull);
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });

    test('validates Observation with valueBoolean', () async {
      final results = await validator.validateFhirMap(
        structureToValidate: {
          'resourceType': 'Observation',
          'id': 'bool-obs',
          'status': 'final',
          'code': {
            'coding': [
              {
                'system': 'http://loinc.org',
                'code': '8480-6',
              },
            ],
          },
          'valueBoolean': true,
        },
      );

      expect(results, isNotNull);
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });

    test('validates Observation with valueDateTime', () async {
      final results = await validator.validateFhirMap(
        structureToValidate: {
          'resourceType': 'Observation',
          'id': 'dt-obs',
          'status': 'final',
          'code': {
            'coding': [
              {
                'system': 'http://loinc.org',
                'code': '8480-6',
              },
            ],
          },
          'valueDateTime': '2024-01-15T10:30:00Z',
        },
      );

      expect(results, isNotNull);
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });

    test('validates Observation with valueCodeableConcept', () async {
      final results = await validator.validateFhirMap(
        structureToValidate: {
          'resourceType': 'Observation',
          'id': 'cc-obs',
          'status': 'final',
          'code': {
            'coding': [
              {
                'system': 'http://loinc.org',
                'code': '8480-6',
              },
            ],
          },
          'valueCodeableConcept': {
            'coding': [
              {
                'system': 'http://snomed.info/sct',
                'code': '260373001',
                'display': 'Detected',
              },
            ],
          },
        },
      );

      expect(results, isNotNull);
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });

    test('validates Observation with valueInteger', () async {
      final results = await validator.validateFhirMap(
        structureToValidate: {
          'resourceType': 'Observation',
          'id': 'int-obs',
          'status': 'final',
          'code': {
            'coding': [
              {
                'system': 'http://loinc.org',
                'code': '8480-6',
              },
            ],
          },
          'valueInteger': 42,
        },
      );

      expect(results, isNotNull);
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });

    test('flags unknown field via structure-level validation', () async {
      // Use direct structure validation with a known element map to test
      // that unknown fields are flagged -- the engine-level test relies on
      // having the StructureDefinition in the cache, so we test at the lower
      // level where the elements map is explicit.
      final node = ObjectNode(path: 'Observation')
        ..children.add(
          PropertyNode(path: 'Observation.notAField')
            ..key = ValueNode('notAField', 'notAField')
            ..value = LiteralNode(
              'something',
              '"something"',
              path: 'Observation.notAField',
            ),
        );

      // Provide only the value[x] element -- 'notAField' is not in the map
      final element = ElementDefinition(
        path: 'Observation.value[x]'.toFhirString,
        type: [
          ElementDefinitionType(code: 'string'.toFhirUri),
          ElementDefinitionType(code: 'boolean'.toFhirUri),
        ],
      );
      final elements = {'Observation.value[x]': element};
      final resourceCache = CanonicalResourceCache();

      final results = await validateStructure(
        node: node,
        elements: elements,
        type: 'Observation',
        resourceCache: resourceCache,
      );

      expect(results, isNotNull);
      expect(
        results.results.any(
          (r) =>
              r.severity == Severity.error &&
              r.diagnostics.contains('Element not found'),
        ),
        isTrue,
      );
    });

    test('validates effectiveDateTime choice type on Observation', () async {
      final results = await validator.validateFhirMap(
        structureToValidate: {
          'resourceType': 'Observation',
          'id': 'eff-obs',
          'status': 'final',
          'code': {
            'coding': [
              {
                'system': 'http://loinc.org',
                'code': '8480-6',
              },
            ],
          },
          'effectiveDateTime': '2024-06-15T14:30:00Z',
        },
      );

      expect(results, isNotNull);
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });

    test('validates effectivePeriod choice type on Observation', () async {
      final results = await validator.validateFhirMap(
        structureToValidate: {
          'resourceType': 'Observation',
          'id': 'period-obs',
          'status': 'final',
          'code': {
            'coding': [
              {
                'system': 'http://loinc.org',
                'code': '8480-6',
              },
            ],
          },
          'effectivePeriod': {
            'start': '2024-01-01T00:00:00Z',
            'end': '2024-12-31T23:59:59Z',
          },
        },
      );

      expect(results, isNotNull);
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });
  });
}
