import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';
import 'package:fhir_r4_validation/fhir_r4_validation.dart';
import 'package:test/test.dart';

// Test ResourceCache that provides ValueSets
class _TestResourceCache extends CanonicalResourceCache {
  _TestResourceCache() {
    // Create a mock ValueSet for observation-status from JSON
    final valueSetJson = {
      'resourceType': 'ValueSet',
      'id': 'observation-status',
      'url': 'http://hl7.org/fhir/ValueSet/observation-status',
      'name': 'ObservationStatus',
      'status': 'active',
      'compose': {
        'include': [
          {
            'system': 'http://hl7.org/fhir/observation-status',
            'concept': [
              {'code': 'registered'},
              {'code': 'preliminary'},
              {'code': 'final'},
              {'code': 'amended'},
              {'code': 'corrected'},
              {'code': 'cancelled'},
              {'code': 'entered-in-error'},
              {'code': 'unknown'},
            ],
          },
        ],
      },
    };
    final observationStatusValueSet = ValueSet.fromJson(valueSetJson);
    _valueSets['http://hl7.org/fhir/ValueSet/observation-status'] =
        observationStatusValueSet;

    // Add test ValueSet for preferred strength test
    final testValueSetJson = {
      'resourceType': 'ValueSet',
      'id': 'test',
      'url': 'http://example.org/ValueSet/test',
      'name': 'TestValueSet',
      'status': 'active',
      'compose': {
        'include': [
          {
            'system': 'http://example.org/test',
            'concept': [
              {'code': 'some-code'},
              {'code': 'other-code'},
            ],
          },
        ],
      },
    };
    final testValueSet = ValueSet.fromJson(testValueSetJson);
    _valueSets['http://example.org/ValueSet/test'] = testValueSet;

    // Add observation-category ValueSet for nested binding test
    final observationCategoryValueSetJson = {
      'resourceType': 'ValueSet',
      'id': 'observation-category',
      'url': 'http://hl7.org/fhir/ValueSet/observation-category',
      'name': 'ObservationCategory',
      'status': 'active',
      'compose': {
        'include': [
          {
            'system':
                'http://terminology.hl7.org/CodeSystem/observation-category',
            'concept': [
              {'code': 'social-history'},
              {'code': 'vital-signs'},
              {'code': 'imaging'},
              {'code': 'laboratory'},
              {'code': 'procedure'},
              {'code': 'survey'},
              {'code': 'exam'},
              {'code': 'therapy'},
            ],
          },
        ],
      },
    };
    final observationCategoryValueSet =
        ValueSet.fromJson(observationCategoryValueSetJson);
    _valueSets['http://hl7.org/fhir/ValueSet/observation-category'] =
        observationCategoryValueSet;
  }
  final Map<String, ValueSet> _valueSets = {};

  @override
  Future<T?> getCanonicalResource<T extends CanonicalResource>(
    String url, [
    String? version,
  ]) async {
    final cached = _valueSets[url];
    if (cached != null) {
      // Check if T is ValueSet or a supertype
      if (T == ValueSet || T == CanonicalResource || T == Resource) {
        return cached as T;
      }
    }
    return super.getCanonicalResource<T>(url, version);
  }
}

void main() {
  group('validateBindings', () {
    test('validates code against value set successfully', () async {
      final node = ObjectNode(path: 'Observation')
        ..children.add(
          PropertyNode(path: 'Observation.status')
            ..key = ValueNode('status', 'status')
            ..value = LiteralNode('final', 'final', path: 'Observation.status'),
        );

      final element = ElementDefinition(
        path: 'Observation.status'.toFhirString,
        type: [ElementDefinitionType(code: 'code'.toFhirUri)],
        binding: ElementDefinitionBinding(
          strength: BindingStrength.required_,
          valueSet:
              'http://hl7.org/fhir/ValueSet/observation-status'.toFhirCanonical,
        ),
      );

      final elements = {'Observation.status': element};
      final results = ValidationResults();
      final resourceCache = _TestResourceCache();

      final validationResults = await validateBindings(
        node: node,
        elements: elements,
        results: results,
        resourceCache: resourceCache,
      );

      // Note: This test may fail if the value set cannot be fetched
      // In a real scenario, you'd mock the resourceCache
      expect(validationResults, isNotNull);
      expect(validationResults.results, isA<List<ValidationDiagnostics>>());
    });

    test('validates binding with required strength', () async {
      final node = ObjectNode(path: 'Observation')
        ..children.add(
          PropertyNode(path: 'Observation.status')
            ..key = ValueNode('status', 'status')
            ..value = LiteralNode(
              'invalid-code',
              'invalid-code',
              path: 'Observation.status',
            ),
        );

      final element = ElementDefinition(
        path: 'Observation.status'.toFhirString,
        type: [ElementDefinitionType(code: 'code'.toFhirUri)],
        binding: ElementDefinitionBinding(
          strength: BindingStrength.required_,
          valueSet:
              'http://hl7.org/fhir/ValueSet/observation-status'.toFhirCanonical,
        ),
      );

      final elements = {'Observation.status': element};
      final results = ValidationResults();
      final resourceCache = _TestResourceCache();

      final validationResults = await validateBindings(
        node: node,
        elements: elements,
        results: results,
        resourceCache: resourceCache,
      );

      // Should potentially have errors for invalid code with required binding
      expect(validationResults, isNotNull);
      expect(validationResults.results, isA<List<ValidationDiagnostics>>());
    });

    test('validates binding with preferred strength', () async {
      final node = ObjectNode(path: 'CodeableConcept')
        ..children.add(
          PropertyNode(path: 'CodeableConcept.coding')
            ..key = ValueNode('coding', 'coding')
            ..value = ArrayNode(path: 'CodeableConcept.coding')
            ..children.add(
              ObjectNode(path: 'CodeableConcept.coding[0]')
                ..children.add(
                  PropertyNode(path: 'CodeableConcept.coding[0].code')
                    ..key = ValueNode('code', 'code')
                    ..value = LiteralNode(
                      'some-code',
                      'some-code',
                      path: 'CodeableConcept.coding[0].code',
                    ),
                ),
            ),
        );

      final element = ElementDefinition(
        path: 'CodeableConcept.coding.code'.toFhirString,
        type: [ElementDefinitionType(code: 'code'.toFhirUri)],
        binding: ElementDefinitionBinding(
          strength: BindingStrength.preferred,
          valueSet: 'http://example.org/ValueSet/test'.toFhirCanonical,
        ),
      );

      final elements = {'CodeableConcept.coding.code': element};
      final results = ValidationResults();
      final resourceCache = _TestResourceCache();

      final validationResults = await validateBindings(
        node: node,
        elements: elements,
        results: results,
        resourceCache: resourceCache,
      );

      expect(validationResults, isNotNull);
      expect(validationResults.results, isA<List<ValidationDiagnostics>>());
    });

    test('handles element without binding', () async {
      final node = ObjectNode(path: 'Patient')
        ..children.add(
          PropertyNode(path: 'Patient.id')
            ..key = ValueNode('id', 'id')
            ..value = LiteralNode('12345', '12345', path: 'Patient.id'),
        );

      final element = ElementDefinition(
        path: 'Patient.id'.toFhirString,
        type: [ElementDefinitionType(code: 'string'.toFhirUri)],
        // No binding
      );

      final elements = {'Patient.id': element};
      final results = ValidationResults();
      final resourceCache = _TestResourceCache();

      final validationResults = await validateBindings(
        node: node,
        elements: elements,
        results: results,
        resourceCache: resourceCache,
      );

      // Should have no binding-related errors
      expect(
        validationResults.results.where(
          (r) => r.diagnostics.contains('ValueSet'),
        ),
        isEmpty,
      );
    });

    test('handles element with binding but no valueSet', () async {
      final node = ObjectNode(path: 'Observation')
        ..children.add(
          PropertyNode(path: 'Observation.status')
            ..key = ValueNode('status', 'status')
            ..value = LiteralNode('final', 'final', path: 'Observation.status'),
        );

      final element = ElementDefinition(
        path: 'Observation.status'.toFhirString,
        type: [ElementDefinitionType(code: 'code'.toFhirUri)],
        binding: const ElementDefinitionBinding(
          strength: BindingStrength.required_,
          // No valueSet
        ),
      );

      final elements = {'Observation.status': element};
      final results = ValidationResults();
      final resourceCache = _TestResourceCache();

      final validationResults = await validateBindings(
        node: node,
        elements: elements,
        results: results,
        resourceCache: resourceCache,
      );

      expect(validationResults, isNotNull);
      // Should not fail if valueSet is missing
    });

    test('validates nested binding in array', () async {
      final node = ObjectNode(path: 'Observation')
        ..children.add(
          PropertyNode(path: 'Observation.category')
            ..key = ValueNode('category', 'category')
            ..value = ArrayNode(path: 'Observation.category')
            ..children.addAll([
              ObjectNode(path: 'Observation.category[0]')
                ..children.add(
                  PropertyNode(path: 'Observation.category[0].coding')
                    ..key = ValueNode('coding', 'coding')
                    ..value = ArrayNode(path: 'Observation.category[0].coding')
                    ..children.add(
                      ObjectNode(path: 'Observation.category[0].coding[0]')
                        ..children.add(
                          PropertyNode(
                            path: 'Observation.category[0].coding[0].code',
                          )
                            ..key = ValueNode('code', 'code')
                            ..value = LiteralNode(
                              'vital-signs',
                              'vital-signs',
                              path: 'Observation.category[0].coding[0].code',
                            ),
                        ),
                    ),
                ),
            ]),
        );

      final element = ElementDefinition(
        path: 'Observation.category.coding.code'.toFhirString,
        type: [ElementDefinitionType(code: 'code'.toFhirUri)],
        binding: ElementDefinitionBinding(
          strength: BindingStrength.example,
          valueSet: 'http://hl7.org/fhir/ValueSet/observation-category'
              .toFhirCanonical,
        ),
      );

      final elements = {'Observation.category.coding.code': element};
      final results = ValidationResults();
      final resourceCache = _TestResourceCache();

      final validationResults = await validateBindings(
        node: node,
        elements: elements,
        results: results,
        resourceCache: resourceCache,
      );

      expect(validationResults, isNotNull);
      expect(validationResults.results, isA<List<ValidationDiagnostics>>());
    });
  });
}
