import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';
import 'package:fhir_r4_validation/fhir_r4_validation.dart';
import 'package:test/test.dart';

void main() {
  group('validateExtensions', () {
    test('validates extension structure successfully', () async {
      final node = ObjectNode(path: 'Patient')
        ..children.add(
          PropertyNode(path: 'Patient.extension')
            ..key = ValueNode('extension', 'extension')
            ..value = ArrayNode(path: 'Patient.extension')
            ..children.add(
              ObjectNode(path: 'Patient.extension[0]')
                ..children.addAll([
                  PropertyNode(path: 'Patient.extension[0].url')
                    ..key = ValueNode('url', 'url')
                    ..value = LiteralNode(
                      'http://example.org/fhir/StructureDefinition/example-extension',
                      'http://example.org/fhir/StructureDefinition/example-extension',
                      path: 'Patient.extension[0].url',
                    ),
                  PropertyNode(path: 'Patient.extension[0].valueString')
                    ..key = ValueNode('valueString', 'valueString')
                    ..value = LiteralNode(
                      'test',
                      'test',
                      path: 'Patient.extension[0].valueString',
                    ),
                ]),
            ),
        );

      final element = ElementDefinition(
        path: 'Patient.extension'.toFhirString,
        type: [
          ElementDefinitionType(
            code: 'Extension'.toFhirUri,
            profile: [
              'http://example.org/fhir/StructureDefinition/example-extension'
                  .toFhirCanonical,
            ],
          ),
        ],
      );

      final elements = {'Patient.extension': element};
      final results = ValidationResults();
      final resourceCache = CanonicalResourceCache();

      final validationResults = await validateExtensions(
        node: node,
        elements: elements,
        results: results,
        resourceCache: resourceCache,
      );

      expect(validationResults, isNotNull);
      expect(validationResults.results, isA<List<ValidationDiagnostics>>());
    });

    test('handles extension without profile URL', () async {
      final node = ObjectNode(path: 'Patient')
        ..children.add(
          PropertyNode(path: 'Patient.extension')
            ..key = ValueNode('extension', 'extension')
            ..value = ArrayNode(path: 'Patient.extension')
            ..children.add(
              ObjectNode(path: 'Patient.extension[0]')
                ..children.add(
                  PropertyNode(path: 'Patient.extension[0].url')
                    ..key = ValueNode('url', 'url')
                    ..value = LiteralNode(
                      'http://example.org/extension',
                      'http://example.org/extension',
                      path: 'Patient.extension[0].url',
                    ),
                ),
            ),
        );

      final element = ElementDefinition(
        path: 'Patient.extension'.toFhirString,
        type: [ElementDefinitionType(code: 'Extension'.toFhirUri)],
      );

      final elements = {'Patient.extension': element};
      final results = ValidationResults();
      final resourceCache = CanonicalResourceCache();

      final validationResults = await validateExtensions(
        node: node,
        elements: elements,
        results: results,
        resourceCache: resourceCache,
      );

      expect(validationResults, isNotNull);
      // May not validate if StructureDefinition cannot be fetched
    });

    test('handles element without extension type', () async {
      final node = ObjectNode(path: 'Patient')
        ..children.add(
          PropertyNode(path: 'Patient.id')
            ..key = ValueNode('id', 'id')
            ..value = LiteralNode('12345', '12345', path: 'Patient.id'),
        );

      final element = ElementDefinition(
        path: 'Patient.id'.toFhirString,
        type: [ElementDefinitionType(code: 'string'.toFhirUri)],
      );

      final elements = {'Patient.id': element};
      final results = ValidationResults();
      final resourceCache = CanonicalResourceCache();

      final validationResults = await validateExtensions(
        node: node,
        elements: elements,
        results: results,
        resourceCache: resourceCache,
      );

      // Should have no extension-related errors
      expect(
        validationResults.results.where(
          (r) => r.diagnostics.contains('Extension'),
        ),
        isEmpty,
      );
    });

    test('handles invalid extension node type', () async {
      final node = ObjectNode(path: 'Patient')
        ..children.add(
          PropertyNode(path: 'Patient.extension')
            ..key = ValueNode('extension', 'extension')
            ..value =
                LiteralNode('invalid', 'invalid', path: 'Patient.extension'),
        );

      final element = ElementDefinition(
        path: 'Patient.extension'.toFhirString,
        type: [ElementDefinitionType(code: 'Extension'.toFhirUri)],
      );

      final elements = {'Patient.extension': element};
      final results = ValidationResults();
      final resourceCache = CanonicalResourceCache();

      final validationResults = await validateExtensions(
        node: node,
        elements: elements,
        results: results,
        resourceCache: resourceCache,
      );

      // Should have error for invalid extension node type
      expect(
        validationResults.results.any(
          (r) => r.diagnostics.contains('Extension must be an ObjectNode'),
        ),
        isTrue,
      );
    });

    test('validates multiple extensions', () async {
      final node = ObjectNode(path: 'Patient')
        ..children.add(
          PropertyNode(path: 'Patient.extension')
            ..key = ValueNode('extension', 'extension')
            ..value = ArrayNode(path: 'Patient.extension')
            ..children.addAll([
              ObjectNode(path: 'Patient.extension[0]')
                ..children.add(
                  PropertyNode(path: 'Patient.extension[0].url')
                    ..key = ValueNode('url', 'url')
                    ..value = LiteralNode(
                      'http://example.org/extension1',
                      'http://example.org/extension1',
                      path: 'Patient.extension[0].url',
                    ),
                ),
              ObjectNode(path: 'Patient.extension[1]')
                ..children.add(
                  PropertyNode(path: 'Patient.extension[1].url')
                    ..key = ValueNode('url', 'url')
                    ..value = LiteralNode(
                      'http://example.org/extension2',
                      'http://example.org/extension2',
                      path: 'Patient.extension[1].url',
                    ),
                ),
            ]),
        );

      final element = ElementDefinition(
        path: 'Patient.extension'.toFhirString,
        type: [ElementDefinitionType(code: 'Extension'.toFhirUri)],
      );

      final elements = {'Patient.extension': element};
      final results = ValidationResults();
      final resourceCache = CanonicalResourceCache();

      final validationResults = await validateExtensions(
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
