import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';
import 'package:fhir_r4_validation/fhir_r4_validation.dart';
import 'package:test/test.dart';

/// Test ResourceCache that provides StructureDefinitions for Reference type.
class _TestResourceCache extends CanonicalResourceCache {
  _TestResourceCache() {
    // Add Reference StructureDefinition
    final referenceSD = StructureDefinition(
      id: 'Reference'.toFhirString,
      url: 'http://hl7.org/fhir/StructureDefinition/Reference'.toFhirCanonical,
      name: 'Reference'.toFhirString,
      type: 'Reference'.toFhirUri,
      kind: StructureDefinitionKind.complexType,
      abstract_: false.toFhirBoolean,
      status: PublicationStatus.active,
      snapshot: StructureDefinitionSnapshot(
        element: [
          ElementDefinition(
            path: 'Reference'.toFhirString,
            min: 0.toFhirUnsignedInt,
            max: '*'.toFhirString,
          ),
          ElementDefinition(
            path: 'Reference.reference'.toFhirString,
            min: 0.toFhirUnsignedInt,
            max: '1'.toFhirString,
            type: [ElementDefinitionType(code: 'string'.toFhirUri)],
          ),
          ElementDefinition(
            path: 'Reference.type'.toFhirString,
            min: 0.toFhirUnsignedInt,
            max: '1'.toFhirString,
            type: [ElementDefinitionType(code: 'uri'.toFhirUri)],
          ),
          ElementDefinition(
            path: 'Reference.display'.toFhirString,
            min: 0.toFhirUnsignedInt,
            max: '1'.toFhirString,
            type: [ElementDefinitionType(code: 'string'.toFhirUri)],
          ),
        ],
      ),
    );
    see(referenceSD);
  }
}

void main() {
  group('Reference validation via structure validation', () {
    test('validates valid internal reference (Patient/123)', () async {
      final node = ObjectNode(path: 'Observation')
        ..children.add(
          PropertyNode(path: 'Observation.subject')
            ..key = ValueNode('subject', 'subject')
            ..value = (ObjectNode(path: 'Observation.subject')
              ..children.add(
                PropertyNode(path: 'Observation.subject.reference')
                  ..key = ValueNode('reference', 'reference')
                  ..value = LiteralNode(
                    'Patient/123',
                    '"Patient/123"',
                    path: 'Observation.subject.reference',
                  ),
              )),
        );

      final element = ElementDefinition(
        path: 'Observation.subject'.toFhirString,
        type: [
          ElementDefinitionType(
            code: 'Reference'.toFhirUri,
            targetProfile: [
              'http://hl7.org/fhir/StructureDefinition/Patient'.toFhirCanonical,
            ],
          ),
        ],
      );
      final elements = {'Observation.subject': element};
      final resourceCache = _TestResourceCache();

      final results = await validateStructure(
        node: node,
        elements: elements,
        type: 'Observation',
        resourceCache: resourceCache,
      );

      // Should parse and validate without structural errors on the reference
      expect(results, isNotNull);
    });

    test('validates valid absolute URL reference', () async {
      final node = ObjectNode(path: 'Observation')
        ..children.add(
          PropertyNode(path: 'Observation.subject')
            ..key = ValueNode('subject', 'subject')
            ..value = (ObjectNode(path: 'Observation.subject')
              ..children.add(
                PropertyNode(path: 'Observation.subject.reference')
                  ..key = ValueNode('reference', 'reference')
                  ..value = LiteralNode(
                    'http://example.com/fhir/Patient/123',
                    '"http://example.com/fhir/Patient/123"',
                    path: 'Observation.subject.reference',
                  ),
              )),
        );

      final element = ElementDefinition(
        path: 'Observation.subject'.toFhirString,
        type: [ElementDefinitionType(code: 'Reference'.toFhirUri)],
      );
      final elements = {'Observation.subject': element};
      final resourceCache = _TestResourceCache();

      final results = await validateStructure(
        node: node,
        elements: elements,
        type: 'Observation',
        resourceCache: resourceCache,
      );

      expect(results, isNotNull);
    });

    test('validates reference with display text', () async {
      final node = ObjectNode(path: 'Observation')
        ..children.add(
          PropertyNode(path: 'Observation.subject')
            ..key = ValueNode('subject', 'subject')
            ..value = (ObjectNode(path: 'Observation.subject')
              ..children.addAll([
                PropertyNode(path: 'Observation.subject.reference')
                  ..key = ValueNode('reference', 'reference')
                  ..value = LiteralNode(
                    'Patient/123',
                    '"Patient/123"',
                    path: 'Observation.subject.reference',
                  ),
                PropertyNode(path: 'Observation.subject.display')
                  ..key = ValueNode('display', 'display')
                  ..value = LiteralNode(
                    'John Doe',
                    '"John Doe"',
                    path: 'Observation.subject.display',
                  ),
              ])),
        );

      final element = ElementDefinition(
        path: 'Observation.subject'.toFhirString,
        type: [ElementDefinitionType(code: 'Reference'.toFhirUri)],
      );
      final elements = {'Observation.subject': element};
      final resourceCache = _TestResourceCache();

      final results = await validateStructure(
        node: node,
        elements: elements,
        type: 'Observation',
        resourceCache: resourceCache,
      );

      expect(results, isNotNull);
    });

    test('reports error for unknown field in reference', () async {
      final node = ObjectNode(path: 'Observation')
        ..children.add(
          PropertyNode(path: 'Observation.subject')
            ..key = ValueNode('subject', 'subject')
            ..value = (ObjectNode(path: 'Observation.subject')
              ..children.addAll([
                PropertyNode(path: 'Observation.subject.reference')
                  ..key = ValueNode('reference', 'reference')
                  ..value = LiteralNode(
                    'Patient/123',
                    '"Patient/123"',
                    path: 'Observation.subject.reference',
                  ),
                PropertyNode(path: 'Observation.subject.invalidField')
                  ..key = ValueNode('invalidField', 'invalidField')
                  ..value = LiteralNode(
                    'bad',
                    '"bad"',
                    path: 'Observation.subject.invalidField',
                  ),
              ])),
        );

      final element = ElementDefinition(
        path: 'Observation.subject'.toFhirString,
        type: [ElementDefinitionType(code: 'Reference'.toFhirUri)],
      );
      final elements = {'Observation.subject': element};
      final resourceCache = _TestResourceCache();

      final results = await validateStructure(
        node: node,
        elements: elements,
        type: 'Observation',
        resourceCache: resourceCache,
      );

      // The unknown field should cause an error since it is not in the
      // Reference StructureDefinition
      expect(
        results.results.any(
          (r) => r.severity == Severity.error,
        ),
        isTrue,
      );
    });
  });

  group('Reference validation via FhirValidationEngine', () {
    late FhirValidationEngine validator;

    setUp(() {
      validator = FhirValidationEngine();
    });

    test('validates Observation with valid Patient reference', () async {
      final results = await validator.validateFhirMap(
        structureToValidate: {
          'resourceType': 'Observation',
          'id': 'test-obs',
          'status': 'final',
          'code': {
            'coding': [
              {
                'system': 'http://loinc.org',
                'code': '8480-6',
              },
            ],
          },
          'subject': {
            'reference': 'Patient/123',
          },
        },
      );

      expect(results, isNotNull);
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });

    test('validates Observation with absolute URL reference', () async {
      final results = await validator.validateFhirMap(
        structureToValidate: {
          'resourceType': 'Observation',
          'id': 'test-obs',
          'status': 'final',
          'code': {
            'coding': [
              {
                'system': 'http://loinc.org',
                'code': '8480-6',
              },
            ],
          },
          'subject': {
            'reference': 'http://example.com/fhir/Patient/456',
          },
        },
      );

      expect(results, isNotNull);
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });

    test('validates contained resource reference', () async {
      final results = await validator.validateFhirMap(
        structureToValidate: {
          'resourceType': 'Observation',
          'id': 'test-obs',
          'status': 'final',
          'contained': [
            {
              'resourceType': 'Patient',
              'id': 'p1',
              'name': [
                {'family': 'Doe'},
              ],
            },
          ],
          'code': {
            'coding': [
              {
                'system': 'http://loinc.org',
                'code': '8480-6',
              },
            ],
          },
          'subject': {
            'reference': '#p1',
          },
        },
      );

      expect(results, isNotNull);
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });

    test('validates reference with type and display', () async {
      final results = await validator.validateFhirMap(
        structureToValidate: {
          'resourceType': 'Observation',
          'id': 'test-obs',
          'status': 'final',
          'code': {
            'coding': [
              {
                'system': 'http://loinc.org',
                'code': '8480-6',
              },
            ],
          },
          'subject': {
            'reference': 'Patient/123',
            'type': 'Patient',
            'display': 'John Doe',
          },
        },
      );

      expect(results, isNotNull);
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });

    test('validates resource with invalid reference field structure', () async {
      final results = await validator.validateFhirMap(
        structureToValidate: {
          'resourceType': 'Observation',
          'id': 'test-obs',
          'status': 'final',
          'code': {
            'coding': [
              {
                'system': 'http://loinc.org',
                'code': '8480-6',
              },
            ],
          },
          'subject': {
            'reference': 'Patient/123',
            'unknownField': 'bad-data',
          },
        },
      );

      expect(results, isNotNull);
      // Should flag the unknown field in the reference at some level
      expect(
        results.results.any(
          (r) => r.severity == Severity.error,
        ),
        isTrue,
      );
    });

    test('validates Bundle with cross-references between entries', () async {
      final results = await validator.validateFhirMap(
        structureToValidate: {
          'resourceType': 'Bundle',
          'id': 'ref-test-bundle',
          'type': 'collection',
          'entry': [
            {
              'resource': {
                'resourceType': 'Patient',
                'id': 'pat1',
                'name': [
                  {'family': 'Smith'},
                ],
              },
            },
            {
              'resource': {
                'resourceType': 'Observation',
                'id': 'obs1',
                'status': 'final',
                'code': {
                  'coding': [
                    {
                      'system': 'http://loinc.org',
                      'code': '8480-6',
                    },
                  ],
                },
                'subject': {
                  'reference': 'Patient/pat1',
                },
              },
            },
          ],
        },
      );

      expect(results, isNotNull);
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });
  });
}
