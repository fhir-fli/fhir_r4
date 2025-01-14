import 'package:fhir_r4/fhir_r4.dart';
import 'package:http/http.dart';
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

      final validationResults = validateInvariants(
        node: node,
        element: element,
        results: results,
        client: Client(),
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

      final validationResults = validateInvariants(
        node: node,
        element: element,
        results: results,
        client: Client(),
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

      final validationResults = validateInvariants(
        node: node,
        element: element,
        results: results,
        client: Client(),
      );

      expect(validationResults.results, isEmpty); // No errors expected
    });
  });
}
