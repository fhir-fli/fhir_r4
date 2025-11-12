import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';
import 'package:fhir_r4_validation/fhir_r4_validation.dart';
import 'package:test/test.dart';

void main() {
  group('validateCardinality', () {
    test('validates element with correct cardinality', () async {
      final node = ObjectNode(path: 'Patient')
        ..children.add(
          PropertyNode(path: 'Patient.id')
            ..key = ValueNode('id', 'id')
            ..value = LiteralNode('12345', '12345', path: 'Patient.id'),
        );

      final element = ElementDefinition(
        path: 'Patient.id'.toFhirString,
        min: 0.toFhirUnsignedInt,
        max: '1'.toFhirString,
        type: [ElementDefinitionType(code: 'string'.toFhirUri)],
      );

      final elements = {'Patient.id': element};
      final results = ValidationResults();
      final resourceCache = CanonicalResourceCache();

      final validationResults = await validateCardinality(
        node: node,
        elements: elements,
        originalPath: 'Patient',
        replacePath: 'Patient',
        results: results,
        resourceCache: resourceCache,
      );

      // Should have no errors for correct cardinality
      expect(
        validationResults.results.where((r) => r.severity == Severity.error),
        isEmpty,
      );
    });

    test('reports error for missing required element (min > 0)', () async {
      final node = ObjectNode(path: 'Patient');

      final element = ElementDefinition(
        path: 'Patient.name'.toFhirString,
        min: 1.toFhirUnsignedInt,
        max: '*'.toFhirString,
        type: [ElementDefinitionType(code: 'HumanName'.toFhirUri)],
      );

      final elements = {'Patient.name': element};
      final results = ValidationResults();
      final resourceCache = CanonicalResourceCache();

      final validationResults = await validateCardinality(
        node: node,
        elements: elements,
        originalPath: 'Patient',
        replacePath: 'Patient',
        results: results,
        resourceCache: resourceCache,
      );

      // Should have error for missing required element
      expect(validationResults.missingResults, isNotEmpty);
      expect(
        validationResults.missingResults.first.diagnostics,
        contains('minimum required'),
      );
    });

    test('reports error for too many occurrences (exceeds max)', () async {
      final node = ObjectNode(path: 'Patient')
        ..children.add(
          PropertyNode(path: 'Patient.identifier')
            ..key = ValueNode('identifier', 'identifier')
            ..value = (ArrayNode(path: 'Patient.identifier')
              ..children.addAll([
                ObjectNode(path: 'Patient.identifier[0]'),
                ObjectNode(path: 'Patient.identifier[1]'),
                ObjectNode(path: 'Patient.identifier[2]'),
              ])),
        );

      final element = ElementDefinition(
        path: 'Patient.identifier'.toFhirString,
        min: 0.toFhirUnsignedInt,
        max: '2'.toFhirString,
        type: [ElementDefinitionType(code: 'Identifier'.toFhirUri)],
      );

      final elements = {'Patient.identifier': element};
      final results = ValidationResults();
      final resourceCache = CanonicalResourceCache();

      final validationResults = await validateCardinality(
        node: node,
        elements: elements,
        originalPath: 'Patient',
        replacePath: 'Patient',
        results: results,
        resourceCache: resourceCache,
      );

      // Should have error for exceeding max
      expect(validationResults.results, isNotEmpty);
      expect(
        validationResults.results.any(
          (r) => r.diagnostics.contains('maximum allowed'),
        ),
        isTrue,
      );
    });

    test('validates array with correct cardinality', () async {
      final node = ObjectNode(path: 'Patient')
        ..children.add(
          PropertyNode(path: 'Patient.name')
            ..key = ValueNode('name', 'name')
            ..value = ArrayNode(path: 'Patient.name')
            ..children.addAll([
              ObjectNode(path: 'Patient.name[0]'),
              ObjectNode(path: 'Patient.name[1]'),
            ]),
        );

      final element = ElementDefinition(
        path: 'Patient.name'.toFhirString,
        min: 0.toFhirUnsignedInt,
        max: '*'.toFhirString,
        type: [ElementDefinitionType(code: 'HumanName'.toFhirUri)],
      );

      final elements = {'Patient.name': element};
      final results = ValidationResults();
      final resourceCache = CanonicalResourceCache();

      final validationResults = await validateCardinality(
        node: node,
        elements: elements,
        originalPath: 'Patient',
        replacePath: 'Patient',
        results: results,
        resourceCache: resourceCache,
      );

      // Should have no errors
      expect(
        validationResults.results.where((r) => r.severity == Severity.error),
        isEmpty,
      );
    });

    test('validates element with min=0 (optional element)', () async {
      final node = ObjectNode(path: 'Patient');

      final element = ElementDefinition(
        path: 'Patient.birthDate'.toFhirString,
        min: 0.toFhirUnsignedInt,
        max: '1'.toFhirString,
        type: [ElementDefinitionType(code: 'date'.toFhirUri)],
      );

      final elements = {'Patient.birthDate': element};
      final results = ValidationResults();
      final resourceCache = CanonicalResourceCache();

      final validationResults = await validateCardinality(
        node: node,
        elements: elements,
        originalPath: 'Patient',
        replacePath: 'Patient',
        results: results,
        resourceCache: resourceCache,
      );

      // Should have no errors for optional element
      expect(
        validationResults.results.where((r) => r.severity == Severity.error),
        isEmpty,
      );
    });

    test('validates element with max=* (unbounded)', () async {
      final node = ObjectNode(path: 'Patient')
        ..children.add(
          PropertyNode(path: 'Patient.name')
            ..key = ValueNode('name', 'name')
            ..value = ArrayNode(path: 'Patient.name')
            ..children.addAll([
              ObjectNode(path: 'Patient.name[0]'),
              ObjectNode(path: 'Patient.name[1]'),
              ObjectNode(path: 'Patient.name[2]'),
              ObjectNode(path: 'Patient.name[3]'),
            ]),
        );

      final element = ElementDefinition(
        path: 'Patient.name'.toFhirString,
        min: 0.toFhirUnsignedInt,
        max: '*'.toFhirString,
        type: [ElementDefinitionType(code: 'HumanName'.toFhirUri)],
      );

      final elements = {'Patient.name': element};
      final results = ValidationResults();
      final resourceCache = CanonicalResourceCache();

      final validationResults = await validateCardinality(
        node: node,
        elements: elements,
        originalPath: 'Patient',
        replacePath: 'Patient',
        results: results,
        resourceCache: resourceCache,
      );

      // Should have no errors for unbounded max
      expect(
        validationResults.results.where((r) => r.severity == Severity.error),
        isEmpty,
      );
    });

    test('validates nested element cardinality', () async {
      final node = ObjectNode(path: 'Patient')
        ..children.add(
          PropertyNode(path: 'Patient.name')
            ..key = ValueNode('name', 'name')
            ..value = ArrayNode(path: 'Patient.name')
            ..children.add(
              ObjectNode(path: 'Patient.name[0]')
                ..children.add(
                  PropertyNode(path: 'Patient.name[0].given')
                    ..key = ValueNode('given', 'given')
                    ..value = ArrayNode(path: 'Patient.name[0].given')
                    ..children.add(
                      LiteralNode(
                        'John',
                        'John',
                        path: 'Patient.name[0].given[0]',
                      ),
                    ),
                ),
            ),
        );

      final nameElement = ElementDefinition(
        path: 'Patient.name'.toFhirString,
        min: 0.toFhirUnsignedInt,
        max: '*'.toFhirString,
        type: [ElementDefinitionType(code: 'HumanName'.toFhirUri)],
      );

      final givenElement = ElementDefinition(
        path: 'Patient.name.given'.toFhirString,
        min: 0.toFhirUnsignedInt,
        max: '*'.toFhirString,
        type: [ElementDefinitionType(code: 'string'.toFhirUri)],
      );

      final elements = {
        'Patient.name': nameElement,
        'Patient.name.given': givenElement,
      };
      final results = ValidationResults();
      final resourceCache = CanonicalResourceCache();

      final validationResults = await validateCardinality(
        node: node,
        elements: elements,
        originalPath: 'Patient',
        replacePath: 'Patient',
        results: results,
        resourceCache: resourceCache,
      );

      // Should have no errors
      expect(
        validationResults.results.where((r) => r.severity == Severity.error),
        isEmpty,
      );
    });
  });
}
