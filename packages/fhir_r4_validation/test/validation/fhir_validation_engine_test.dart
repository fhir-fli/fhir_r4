import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_validation/fhir_r4_validation.dart';
import 'package:test/test.dart';

void main() {
  group('FhirValidationEngine', () {
    late FhirValidationEngine validator;

    setUp(() {
      validator = FhirValidationEngine();
    });

    group('validateFhirResource', () {
      test('validates a valid Patient resource', () async {
        final patient = Patient(
          id: 'example'.toFhirString,
          name: [
            HumanName(
              family: 'Doe'.toFhirString,
              given: ['John'.toFhirString],
            ),
          ],
        );

        final results = await validator.validateFhirResource(
          structureToValidate: patient,
        );

        // Should have minimal or no errors for a basic valid Patient
        expect(results, isNotNull);
        expect(results.results, isA<List<ValidationDiagnostics>>());
      });

      test('validates a Patient resource with missing required fields',
          () async {
        final patient = Patient(
          id: 'example'.toFhirString,
        );

        final results = await validator.validateFhirResource(
          structureToValidate: patient,
        );

        expect(results, isNotNull);
        // May have warnings or information messages
        expect(results.results, isA<List<ValidationDiagnostics>>());
      });
    });

    group('validateFhirString', () {
      test('validates a valid JSON string', () async {
        const jsonString = '''
        {
          "resourceType": "Patient",
          "id": "example",
          "name": [{
            "family": "Doe",
            "given": ["John"]
          }]
        }
        ''';

        final results = await validator.validateFhirString(
          structureToValidate: jsonString,
        );

        expect(results, isNotNull);
        expect(results.results, isA<List<ValidationDiagnostics>>());
      });

      test('handles invalid JSON string', () async {
        const invalidJson = '{ "resourceType": "Patient", invalid }';

        final results = await validator.validateFhirString(
          structureToValidate: invalidJson,
        );

        expect(results, isNotNull);
        expect(results.hasErrors, isTrue);
        expect(
          results.results.any(
            (r) => r.diagnostics.contains('Failed to parse resource JSON'),
          ),
          isTrue,
        );
      });

      test('handles missing resourceType', () async {
        const jsonString = '''
        {
          "id": "example",
          "name": [{
            "family": "Doe"
          }]
        }
        ''';

        final results = await validator.validateFhirString(
          structureToValidate: jsonString,
        );

        expect(results, isNotNull);
        expect(results.hasErrors, isTrue);
        expect(
          results.results.any(
            (r) => r.diagnostics.contains('ResourceType is missing'),
          ),
          isTrue,
        );
      });
    });

    group('validateFhirMap', () {
      test('validates a valid Patient map', () async {
        final patientMap = {
          'resourceType': 'Patient',
          'id': 'example',
          'name': [
            {
              'family': 'Doe',
              'given': ['John'],
            },
          ],
        };

        final results = await validator.validateFhirMap(
          structureToValidate: patientMap,
        );

        expect(results, isNotNull);
        expect(results.results, isA<List<ValidationDiagnostics>>());
      });

      test('handles missing resourceType in map', () async {
        final invalidMap = {
          'id': 'example',
          'name': [
            {
              'family': 'Doe',
            },
          ],
        };

        final results = await validator.validateFhirMap(
          structureToValidate: invalidMap,
        );

        expect(results, isNotNull);
        expect(results.hasErrors, isTrue);
        expect(
          results.results.any(
            (r) => r.diagnostics.contains('ResourceType is missing'),
          ),
          isTrue,
        );
      });
    });
  });
}
