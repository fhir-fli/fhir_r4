import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  group('resourceFromJson', () {
    group('valid resource types', () {
      test('parses Patient', () {
        final json = <String, dynamic>{
          'resourceType': 'Patient',
          'id': 'p1',
          'active': true,
        };
        final resource = resourceFromJson(json);
        expect(resource, isA<Patient>());
        expect(resource.id?.valueString, 'p1');
      });

      test('parses Observation', () {
        final json = <String, dynamic>{
          'resourceType': 'Observation',
          'id': 'obs-1',
          'status': 'final',
          'code': {
            'coding': [
              {'system': 'http://loinc.org', 'code': '12345-6'}
            ],
          },
        };
        final resource = resourceFromJson(json);
        expect(resource, isA<Observation>());
      });

      test('parses Bundle', () {
        final json = <String, dynamic>{
          'resourceType': 'Bundle',
          'type': 'collection',
          'entry': <dynamic>[],
        };
        final resource = resourceFromJson(json);
        expect(resource, isA<Bundle>());
      });

      test('parses Organization', () {
        final json = <String, dynamic>{
          'resourceType': 'Organization',
          'id': 'org-1',
          'name': 'Test Hospital',
        };
        final resource = resourceFromJson(json);
        expect(resource, isA<Organization>());
      });

      test('parses Practitioner', () {
        final json = <String, dynamic>{
          'resourceType': 'Practitioner',
          'id': 'prac-1',
        };
        final resource = resourceFromJson(json);
        expect(resource, isA<Practitioner>());
      });

      test('parses Condition', () {
        final json = <String, dynamic>{
          'resourceType': 'Condition',
          'id': 'cond-1',
          'subject': {'reference': 'Patient/p1'},
        };
        final resource = resourceFromJson(json);
        expect(resource, isA<Condition>());
      });

      test('parses OperationOutcome', () {
        final json = <String, dynamic>{
          'resourceType': 'OperationOutcome',
          'issue': [
            {
              'severity': 'error',
              'code': 'not-found',
            }
          ],
        };
        final resource = resourceFromJson(json);
        expect(resource, isA<OperationOutcome>());
      });

      test('parses ValueSet', () {
        final json = <String, dynamic>{
          'resourceType': 'ValueSet',
          'id': 'vs-1',
          'status': 'active',
        };
        final resource = resourceFromJson(json);
        expect(resource, isA<ValueSet>());
      });

      test('parses Parameters', () {
        final json = <String, dynamic>{
          'resourceType': 'Parameters',
          'parameter': <dynamic>[],
        };
        final resource = resourceFromJson(json);
        expect(resource, isA<Parameters>());
      });

      test('parses Binary', () {
        final json = <String, dynamic>{
          'resourceType': 'Binary',
          'contentType': 'application/pdf',
        };
        final resource = resourceFromJson(json);
        expect(resource, isA<Binary>());
      });
    });

    group('FHIR renamed types', () {
      test('parses Endpoint (FhirEndpoint)', () {
        final json = <String, dynamic>{
          'resourceType': 'Endpoint',
          'id': 'ep-1',
          'status': 'active',
          'connectionType': {
            'system': 'http://terminology.hl7.org/CodeSystem/endpoint-connection-type',
            'code': 'hl7-fhir-rest',
          },
          'payloadType': [
            {
              'coding': [
                {'code': 'any'}
              ]
            }
          ],
          'address': 'http://example.org/fhir',
        };
        final resource = resourceFromJson(json);
        expect(resource, isA<FhirEndpoint>());
      });

      test('parses Group (FhirGroup)', () {
        final json = <String, dynamic>{
          'resourceType': 'Group',
          'id': 'g-1',
          'type': 'person',
          'actual': true,
        };
        final resource = resourceFromJson(json);
        expect(resource, isA<FhirGroup>());
      });

      test('parses List (FhirList)', () {
        final json = <String, dynamic>{
          'resourceType': 'List',
          'id': 'l-1',
          'status': 'current',
          'mode': 'working',
        };
        final resource = resourceFromJson(json);
        expect(resource, isA<FhirList>());
      });
    });

    group('invalid input', () {
      test('throws UnsupportedError for unknown resourceType', () {
        final json = <String, dynamic>{
          'resourceType': 'FooBar',
        };
        expect(
          () => resourceFromJson(json),
          throwsA(isA<UnsupportedError>()),
        );
      });

      test('throws UnsupportedError for missing resourceType', () {
        final json = <String, dynamic>{
          'id': 'no-type',
          'active': true,
        };
        expect(
          () => resourceFromJson(json),
          throwsA(isA<UnsupportedError>()),
        );
      });

      test('throws UnsupportedError for null resourceType value', () {
        final json = <String, dynamic>{
          'resourceType': null,
        };
        expect(
          () => resourceFromJson(json),
          throwsA(isA<UnsupportedError>()),
        );
      });

      test('throws UnsupportedError for empty string resourceType', () {
        final json = <String, dynamic>{
          'resourceType': '',
        };
        expect(
          () => resourceFromJson(json),
          throwsA(isA<UnsupportedError>()),
        );
      });

      test('throws UnsupportedError for numeric resourceType', () {
        final json = <String, dynamic>{
          'resourceType': 123,
        };
        expect(
          () => resourceFromJson(json),
          throwsA(isA<UnsupportedError>()),
        );
      });
    });

    group('returned resource type fidelity', () {
      test('returned resource has correct resourceType enum', () {
        final json = <String, dynamic>{
          'resourceType': 'Patient',
          'id': 'type-check',
        };
        final resource = resourceFromJson(json);
        expect(resource.resourceType, R4ResourceType.Patient);
      });

      test('returned resource preserves all fields', () {
        final json = <String, dynamic>{
          'resourceType': 'Patient',
          'id': 'full',
          'meta': {
            'versionId': '2',
            'lastUpdated': '2024-01-01T00:00:00Z',
          },
          'active': true,
          'name': [
            {
              'family': 'Test',
              'given': ['Tester'],
            }
          ],
        };
        final patient = resourceFromJson(json) as Patient;
        expect(patient.id?.valueString, 'full');
        expect(patient.meta?.versionId?.toString(), '2');
        expect(patient.active?.valueBoolean, true);
        expect(patient.name?.first.family?.valueString, 'Test');
      });
    });
  });
}
