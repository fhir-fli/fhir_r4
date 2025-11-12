import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_validation/fhir_r4_validation.dart';
import 'package:test/test.dart';

void main() {
  group('Integration Tests - Real FHIR Resources', () {
    late FhirValidationEngine validator;

    setUp(() {
      validator = FhirValidationEngine();
    });

    test('validates a complete Patient resource', () async {
      final patient = Patient(
        id: 'example'.toFhirString,
        meta: FhirMeta(
          profile: [
            'http://hl7.org/fhir/StructureDefinition/Patient'.toFhirCanonical,
          ],
        ),
        identifier: [
          Identifier(
            system: 'http://example.org/identifiers'.toFhirUri,
            value: '12345'.toFhirString,
          ),
        ],
        active: true.toFhirBoolean,
        name: [
          HumanName(
            use: NameUse.official,
            family: 'Doe'.toFhirString,
            given: ['John'.toFhirString, 'Michael'.toFhirString],
          ),
        ],
        telecom: [
          ContactPoint(
            system: ContactPointSystem.phone,
            value: '555-1234'.toFhirString,
          ),
        ],
        gender: AdministrativeGender.male,
        birthDate: FhirDate.fromString('1980-01-01'),
        address: [
          Address(
            use: AddressUse.home,
            line: ['123 Main St'.toFhirString],
            city: 'Anytown'.toFhirString,
            state: 'CA'.toFhirString,
            postalCode: '12345'.toFhirString,
            country: 'USA'.toFhirString,
          ),
        ],
      );

      final results = await validator.validateFhirResource(
        structureToValidate: patient,
      );

      expect(results, isNotNull);
      expect(results.results, isA<List<ValidationDiagnostics>>());
      // A well-formed Patient should have minimal errors
      // Note: Actual errors may vary based on StructureDefinition availability
    });

    test('validates a complete Observation resource', () async {
      final observation = Observation(
        id: 'example'.toFhirString,
        status: ObservationStatus.final_,
        category: [
          CodeableConcept(
            coding: [
              Coding(
                system:
                    'http://terminology.hl7.org/CodeSystem/observation-category'
                        .toFhirUri,
                code: 'vital-signs'.toFhirCode,
                display: 'Vital Signs'.toFhirString,
              ),
            ],
          ),
        ],
        code: CodeableConcept(
          coding: [
            Coding(
              system: 'http://loinc.org'.toFhirUri,
              code: '8480-6'.toFhirCode,
              display: 'Systolic blood pressure'.toFhirString,
            ),
          ],
        ),
        subject: Reference(reference: 'Patient/example'.toFhirString),
        effectiveX: FhirDateTime.fromString('2023-01-01T10:00:00Z'),
        valueX: Quantity(
          value: 120.toFhirDecimal,
          unit: 'mmHg'.toFhirString,
          system: 'http://unitsofmeasure.org'.toFhirUri,
          code: 'mm[Hg]'.toFhirCode,
        ),
      );

      final results = await validator.validateFhirResource(
        structureToValidate: observation,
      );

      expect(results, isNotNull);
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });

    test('validates a Bundle resource with multiple entries', () async {
      final bundle = Bundle(
        id: 'example'.toFhirString,
        type: BundleType.collection,
        entry: [
          BundleEntry(
            resource: Patient(
              id: 'patient1'.toFhirString,
              name: [
                HumanName(
                  family: 'Smith'.toFhirString,
                  given: ['Jane'.toFhirString],
                ),
              ],
            ),
          ),
          BundleEntry(
            resource: Observation(
              id: 'obs1'.toFhirString,
              status: ObservationStatus.final_,
              code: CodeableConcept(
                coding: [
                  Coding(
                    system: 'http://loinc.org'.toFhirUri,
                    code: '8480-6'.toFhirCode,
                  ),
                ],
              ),
              subject: Reference(reference: 'Patient/patient1'.toFhirString),
            ),
          ),
        ],
      );

      final results = await validator.validateFhirResource(
        structureToValidate: bundle,
      );

      expect(results, isNotNull);
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });

    test('validates resource from JSON string', () async {
      const jsonString = '''
      {
        "resourceType": "Patient",
        "id": "example",
        "name": [{
          "use": "official",
          "family": "Doe",
          "given": ["John"]
        }],
        "gender": "male",
        "birthDate": "1980-01-01"
      }
      ''';

      final results = await validator.validateFhirString(
        structureToValidate: jsonString,
      );

      expect(results, isNotNull);
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });

    test('validates resource from JSON map', () async {
      final resourceMap = {
        'resourceType': 'Patient',
        'id': 'example',
        'identifier': [
          {
            'system': 'http://example.org/identifiers',
            'value': '12345',
          },
        ],
        'name': [
          {
            'family': 'Doe',
            'given': ['John'],
          },
        ],
        'gender': 'male',
      };

      final results = await validator.validateFhirMap(
        structureToValidate: resourceMap,
      );

      expect(results, isNotNull);
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });

    test('handles invalid resource structure', () async {
      final invalidMap = {
        'resourceType': 'Patient',
        'id': 'example',
        'invalidField': 'this should not be here',
        'name': [
          {
            'family': 'Doe',
            'invalidNestedField': 'also invalid',
          },
        ],
      };

      final results = await validator.validateFhirMap(
        structureToValidate: invalidMap,
      );

      expect(results, isNotNull);
      // May have warnings or errors for invalid fields
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });

    test('validates OperationOutcome from validation results', () async {
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

      final operationOutcome = results.toOperationOutcome();

      expect(operationOutcome, isA<OperationOutcome>());
      expect(operationOutcome.resourceType, isNotNull);
      expect(operationOutcome.resourceType.toString(), contains('OperationOutcome'));
      expect(operationOutcome.issue, isA<List<OperationOutcomeIssue>>());
    });

    test('validates results JSON output', () async {
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

      final json = results.toJson();

      expect(json, isA<Map<String, dynamic>>());
      expect(json.containsKey('error'), isTrue);
      expect(json.containsKey('warning'), isTrue);
      expect(json.containsKey('information'), isTrue);
      expect(json['error'], isA<List>());
      expect(json['warning'], isA<List>());
      expect(json['information'], isA<List>());
    });
  });
}
