import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:test/test.dart';

void main() {
  group('validateInvariants Tests', () {
    test('Handles valid simple LiteralNode', () async {
      final node = LiteralNode('123', '123', path: 'Patient.id');
      final element = ElementDefinition(
        path: 'Patient.id'.toFhirString,
        type: [ElementDefinitionType(code: 'string'.toFhirUri)],
      );
      final results = ValidationResults();

      final validationResults = await validateInvariants(
        node: node,
        element: element,
        results: results,
        resourceCache: CanonicalResourceManager(),
      );

      expect(validationResults.results, isEmpty); // No errors expected
    });

    test('Reports invariant violations for incorrect context', () async {
      final node = ObjectNode(path: 'Patient')
        ..children.add(
          PropertyNode(path: 'Patient.id')
            ..key = ValueNode('id', 'id')
            ..value =
                LiteralNode('wrong_value', 'wrong_value', path: 'Patient.id'),
        );
      final element = ElementDefinition(
        path: 'Patient.id'.toFhirString,
        type: [ElementDefinitionType(code: 'string'.toFhirUri)],
        constraint: [
          ElementDefinitionConstraint(
            key: 'human'.toFhirId,
            human: 'Must be a valid string'.toFhirString,
            expression: 'value.length() > 0'.toFhirString,
            severity: ConstraintSeverity.error,
          ),
        ],
      );
      final results = ValidationResults();

      final validationResults = await validateInvariants(
        node: node,
        element: element,
        results: results,
        resourceCache: CanonicalResourceManager(),
      );

      expect(validationResults.results, isNotEmpty);
      expect(
        validationResults.results.first.diagnostics,
        contains('Invariant violation'),
      );
    });

    test('Handles complex nested nodes', () async {
      final node = ObjectNode(path: 'Patient')
        ..children.add(
          PropertyNode(path: 'Patient.name')
            ..key = ValueNode('name', 'name')
            ..value = (ArrayNode(path: 'Patient.name')
              ..children.addAll([
                ObjectNode(path: 'Patient.name[0]')
                  ..children.add(
                    PropertyNode(path: 'Patient.name[0].given')
                      ..key = ValueNode('given', 'given')
                      ..value = LiteralNode(
                        'John',
                        'John',
                        path: 'Patient.name[0].given',
                      ),
                  ),
                ObjectNode(path: 'Patient.name[1]')
                  ..children.add(
                    PropertyNode(path: 'Patient.name[1].given')
                      ..key = ValueNode('given', 'given')
                      ..value = LiteralNode(
                        'Doe',
                        'Doe',
                        path: 'Patient.name[1].given',
                      ),
                  ),
              ])),
        );
      final element = ElementDefinition(
        path: 'Patient.name'.toFhirString,
        type: [ElementDefinitionType(code: 'HumanName'.toFhirUri)],
      );
      final results = ValidationResults();

      final validationResults = await validateInvariants(
        node: node,
        element: element,
        results: results,
        resourceCache: CanonicalResourceManager(),
      );

      expect(validationResults.results, isEmpty); // No errors expected
    });
    test('Passes validation for a correct constraint', () async {
      final node =
          LiteralNode('valid_value', 'valid_value', path: 'Patient.id');
      final element = ElementDefinition(
        path: 'Patient.id'.toFhirString,
        type: [ElementDefinitionType(code: 'string'.toFhirUri)],
        constraint: [
          ElementDefinitionConstraint(
            key: 'valid_id'.toFhirId,
            human: 'ID must not be empty'.toFhirString,
            expression: 'length() > 0'.toFhirString,
            severity: ConstraintSeverity.error,
          ),
        ],
      );
      final results = ValidationResults();

      final validationResults = await validateInvariants(
        node: node,
        element: element,
        results: results,
        resourceCache: CanonicalResourceManager(),
      );

      expect(validationResults.results, isEmpty); // Expect no errors
    });

    test('Fails validation for an incorrect constraint', () async {
      final node = LiteralNode('', '', path: 'Patient.id');
      final element = ElementDefinition(
        path: 'Patient.id'.toFhirString,
        type: [ElementDefinitionType(code: 'string'.toFhirUri)],
        constraint: [
          ElementDefinitionConstraint(
            key: 'non_empty_id'.toFhirId,
            human: 'ID must not be empty'.toFhirString,
            expression: 'length() > 0'.toFhirString,
            severity: ConstraintSeverity.error,
          ),
        ],
      );
      final results = ValidationResults();

      final validationResults = await validateInvariants(
        node: node,
        element: element,
        results: results,
        resourceCache: CanonicalResourceManager(),
      );

      expect(validationResults.results, isNotEmpty); // Expect errors
      expect(
        validationResults.results.first.diagnostics,
        contains('Invariant violation: ID must not be empty'),
      );
    });

    test('Fails validation for an ArrayNode with mixed validity', () async {
      final node = ArrayNode(path: 'Patient.name')
        ..children.addAll([
          // Valid HumanName
          ObjectNode(path: 'Patient.name[0]')
            ..children.addAll([
              PropertyNode(path: 'Patient.name[0].family')
                ..key = ValueNode('family', 'family')
                ..value =
                    LiteralNode('Doe', 'Doe', path: 'Patient.name[0].family'),
              PropertyNode(path: 'Patient.name[0].given')
                ..key = ValueNode('given', 'given')
                ..value = ArrayNode(path: 'Patient.name[0].given')
                ..children.add(
                  LiteralNode('John', 'John', path: 'Patient.name[0].given[0]'),
                ),
            ]),
          // Invalid HumanName (missing `family`)
          ObjectNode(path: 'Patient.name[1]')
            ..children.add(
              PropertyNode(path: 'Patient.name[1].given')
                ..key = ValueNode('given', 'given')
                ..value = ArrayNode(path: 'Patient.name[1].given')
                ..children.add(
                  LiteralNode('', '', path: 'Patient.name[1].given[0]'),
                ),
            ),
        ]);

      final element = ElementDefinition(
        path: 'Patient.name'.toFhirString,
        type: [ElementDefinitionType(code: 'HumanName'.toFhirUri)],
        constraint: [
          ElementDefinitionConstraint(
            key: 'non_empty_family'.toFhirId,
            human: 'Family name must not be empty'.toFhirString,
            expression: 'family.exists() and family.length() > 0'.toFhirString,
            severity: ConstraintSeverity.error,
          ),
          ElementDefinitionConstraint(
            key: 'non_empty_given'.toFhirId,
            human: 'Given name must not be empty'.toFhirString,
            expression:
                'given.exists() and given.all(length() > 0)'.toFhirString,
            severity: ConstraintSeverity.error,
          ),
        ],
      );

      final results = ValidationResults();

      final validationResults = await validateInvariants(
        node: node,
        element: element,
        results: results,
        resourceCache: CanonicalResourceManager(),
      );

      // Expect one error for the invalid entry
      expect(validationResults.results, hasLength(5));
      expect(
        validationResults.results.first.diagnostics,
        contains('Unable to determine context type for node:'),
      );
    });
  });
}
