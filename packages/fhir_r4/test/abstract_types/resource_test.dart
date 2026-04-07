import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  group('Resource', () {
    group('fromJson', () {
      test('parses a Patient from JSON map', () {
        final json = <String, dynamic>{
          'resourceType': 'Patient',
          'id': 'example',
          'meta': {
            'versionId': '1',
          },
          'language': 'en',
          'active': true,
        };
        final resource = Resource.fromJson(json);

        expect(resource, isA<Patient>());
        expect(resource.resourceType, R4ResourceType.Patient);
        expect(resource.id?.valueString, 'example');
        expect(resource.meta?.versionId?.toString(), '1');
      });

      test('parses an Observation from JSON map', () {
        final json = <String, dynamic>{
          'resourceType': 'Observation',
          'id': 'obs-1',
          'status': 'final',
          'code': {
            'coding': [
              {
                'system': 'http://loinc.org',
                'code': '12345-6',
              }
            ],
          },
        };
        final resource = Resource.fromJson(json);

        expect(resource, isA<Observation>());
        expect(resource.id?.valueString, 'obs-1');
      });

      test('parses a Bundle from JSON map', () {
        final json = <String, dynamic>{
          'resourceType': 'Bundle',
          'id': 'bundle-1',
          'type': 'collection',
        };
        final resource = Resource.fromJson(json);

        expect(resource, isA<Bundle>());
        expect((resource as Bundle).type.valueString, 'collection');
      });

      test('throws on unknown resourceType', () {
        final json = <String, dynamic>{
          'resourceType': 'NonExistent',
        };
        expect(() => Resource.fromJson(json), throwsA(isA<UnsupportedError>()));
      });

      test('throws on null resourceType', () {
        final json = <String, dynamic>{
          'id': 'no-type',
        };
        expect(() => Resource.fromJson(json), throwsA(isA<UnsupportedError>()));
      });
    });

    group('fromJsonString', () {
      test('parses Patient from JSON string', () {
        const jsonString =
            '{"resourceType":"Patient","id":"from-string","active":true}';
        final resource = Resource.fromJsonString<Patient>(jsonString);

        expect(resource, isA<Patient>());
        expect(resource.id?.valueString, 'from-string');
      });

      test('throws FormatException for non-map JSON', () {
        expect(
          () => Resource.fromJsonString<Patient>('[]'),
          throwsA(isA<FormatException>()),
        );
      });

      test('throws FormatException for invalid JSON', () {
        expect(
          () => Resource.fromJsonString<Patient>('not json'),
          throwsA(isA<FormatException>()),
        );
      });
    });

    group('toJson round-trip', () {
      test('Patient round-trips through JSON', () {
        final patient = Patient(
          id: 'round-trip'.toFhirString,
          meta: FhirMeta(versionId: FhirId('1')),
          language: CommonLanguages.en,
          active: FhirBoolean(true),
          name: [
            HumanName(
              family: 'Doe'.toFhirString,
              given: ['John'.toFhirString],
            ),
          ],
        );

        final json = patient.toJson();
        final restored = Resource.fromJson(json);

        expect(restored, isA<Patient>());
        expect(restored.id?.valueString, 'round-trip');
        final restoredPatient = restored as Patient;
        expect(restoredPatient.name?.first.family?.valueString, 'Doe');
        expect(restoredPatient.active?.valueBoolean, true);
      });

      test('Observation round-trips through JSON', () {
        final obs = Observation(
          id: 'obs-rt'.toFhirString,
          status: ObservationStatus.final_,
          code: CodeableConcept(
            coding: [
              Coding(
                system: FhirUri('http://loinc.org'),
                code: FhirCode('12345-6'),
              ),
            ],
          ),
        );

        final json = obs.toJson();
        final restored = Resource.fromJson(json) as Observation;
        expect(restored.id?.valueString, 'obs-rt');
        expect(restored.status.valueString, 'final');
      });
    });

    group('resourceType accessor', () {
      test('returns correct R4ResourceType for Patient', () {
        final patient = Patient(
          id: 'p1'.toFhirString,
          active: FhirBoolean(true),
        );
        expect(patient.resourceType, R4ResourceType.Patient);
      });

      test('returns correct R4ResourceType for Organization', () {
        final org = Organization(id: 'org1'.toFhirString);
        expect(org.resourceType, R4ResourceType.Organization);
      });
    });

    group('resource fields', () {
      test('id field stores and serializes correctly', () {
        final patient = Patient(id: 'my-id'.toFhirString);
        expect(patient.id?.valueString, 'my-id');
        expect(patient.toJson()['id'], 'my-id');
      });

      test('meta field stores and serializes correctly', () {
        final meta = FhirMeta(
          versionId: FhirId('3'),
          lastUpdated: FhirInstant.fromDateTime(
            DateTime.utc(2024, 1, 15, 12),
          ),
        );
        final patient = Patient(id: 'p'.toFhirString, meta: meta);
        expect(patient.meta?.versionId?.toString(), '3');
        final json = patient.toJson();
        expect(json['meta'], isA<Map<String, dynamic>>());
        expect((json['meta'] as Map<String, dynamic>)['versionId'], '3');
      });

      test('implicitRules field stores and serializes correctly', () {
        final patient = Patient(
          id: 'p'.toFhirString,
          implicitRules:
              FhirUri('http://example.org/fhir/ImplementationGuide/my-ig'),
        );
        expect(
          patient.implicitRules?.valueString,
          'http://example.org/fhir/ImplementationGuide/my-ig',
        );
      });

      test('language field stores and serializes correctly', () {
        final patient = Patient(
          id: 'p'.toFhirString,
          language: CommonLanguages.en,
        );
        expect(patient.language?.valueString, 'en');
      });
    });

    group('path and thisReference', () {
      test('path returns ResourceType/id', () {
        final patient = Patient(id: 'abc'.toFhirString);
        expect(patient.path, 'Patient/abc');
      });

      test('thisReference returns a Reference to the resource', () {
        final patient = Patient(id: 'ref-test'.toFhirString);
        final ref = patient.thisReference;
        expect(ref.reference?.valueString, 'Patient/ref-test');
        expect(ref.type?.valueString, 'Patient');
      });
    });

    group('newId and newIdIfNoId', () {
      test('newId returns resource with a different id', () {
        final patient = Patient(id: 'original'.toFhirString);
        final newPatient = patient.newId() as Patient;
        expect(newPatient.id?.valueString, isNot('original'));
        expect(newPatient.id, isNotNull);
      });

      test('newIdIfNoId keeps existing id', () {
        final patient = Patient(id: 'keep-me'.toFhirString);
        final result = patient.newIdIfNoId() as Patient;
        expect(result.id?.valueString, 'keep-me');
      });

      test('newIdIfNoId assigns id when null', () {
        final patient = Patient(active: FhirBoolean(true));
        final result = patient.newIdIfNoId() as Patient;
        expect(result.id, isNotNull);
      });
    });

    group('updateVersion', () {
      test('creates version 1 for resource with no meta', () {
        final patient = Patient(id: 'p'.toFhirString);
        final updated = patient.updateVersion() as Patient;
        expect(updated.meta, isNotNull);
        expect(updated.meta?.versionId?.toString(), '1');
        expect(updated.meta?.lastUpdated, isNotNull);
      });

      test('increments version for resource with existing meta', () {
        final patient = Patient(
          id: 'p'.toFhirString,
          meta: FhirMeta(versionId: FhirId('2')),
        );
        final updated = patient.updateVersion() as Patient;
        expect(updated.meta?.versionId?.toString(), '3');
      });
    });

    group('copyWith', () {
      test('copies Patient with new id', () {
        final patient = Patient(
          id: 'old-id'.toFhirString,
          active: FhirBoolean(true),
        );
        final copied = patient.copyWith(id: 'new-id'.toFhirString);
        expect(copied.id?.valueString, 'new-id');
        expect(copied.active?.valueBoolean, true);
      });

      test('copies Patient with new meta', () {
        final patient = Patient(id: 'p'.toFhirString);
        final newMeta = FhirMeta(versionId: FhirId('5'));
        final copied = patient.copyWith(meta: newMeta);
        expect(copied.meta?.versionId?.toString(), '5');
      });
    });

    group('equality', () {
      test('two identical Patients are equal', () {
        final p1 = Patient(
          id: 'eq'.toFhirString,
          active: FhirBoolean(true),
        );
        final p2 = Patient(
          id: 'eq'.toFhirString,
          active: FhirBoolean(true),
        );
        expect(p1 == p2, isTrue);
        expect(p1.equalsDeep(p2), isTrue);
      });

      test('two Patients with different ids are not equal', () {
        final p1 = Patient(id: 'a'.toFhirString);
        final p2 = Patient(id: 'b'.toFhirString);
        expect(p1 == p2, isFalse);
      });

      test('two different resource types are not equal', () {
        final patient = Patient(id: 'x'.toFhirString);
        final org = Organization(id: 'x'.toFhirString);
        expect(patient == org, isFalse);
      });
    });

    group('clone', () {
      test('clone produces equal but distinct object', () {
        final patient = Patient(
          id: 'clone-test'.toFhirString,
          active: FhirBoolean(true),
          name: [HumanName(family: 'Smith'.toFhirString)],
        );
        final cloned = patient.clone();
        expect(cloned == patient, isTrue);
        expect(identical(cloned, patient), isFalse);
      });
    });

    group('serialization helpers', () {
      test('toJsonString returns valid JSON', () {
        final patient = Patient(id: 'json-str'.toFhirString);
        final jsonStr = patient.toJsonString();
        final decoded = jsonDecode(jsonStr) as Map<String, dynamic>;
        expect(decoded['resourceType'], 'Patient');
        expect(decoded['id'], 'json-str');
      });

      test('toYaml returns YAML string', () {
        final patient = Patient(id: 'yaml-test'.toFhirString);
        final yaml = patient.toYaml();
        expect(yaml, contains('resourceType'));
        expect(yaml, contains('Patient'));
      });

      test('prettyPrint returns indented JSON', () {
        final patient = Patient(id: 'pretty'.toFhirString);
        final pretty = patient.prettyPrint();
        expect(pretty, contains('    '));
        expect(pretty, contains('"resourceType"'));
      });
    });

    group('fromYaml', () {
      test('parses Patient from YAML string', () {
        const yamlString = '''
resourceType: Patient
id: yaml-patient
active: true
''';
        final patient = Resource.fromYaml<Patient>(yamlString);
        expect(patient, isA<Patient>());
        expect(patient.id?.valueString, 'yaml-patient');
      });

      test('throws on invalid YAML input type', () {
        expect(
          () => Resource.fromYaml<Patient>(42),
          throwsA(isA<ArgumentError>()),
        );
      });
    });

    group('resourceTypeFromString', () {
      test('returns R4ResourceType for valid string', () {
        final type = Resource.resourceTypeFromString('Patient');
        expect(type, R4ResourceType.Patient);
      });

      test('returns null for invalid string', () {
        final type = Resource.resourceTypeFromString('FakeResource');
        expect(type, isNull);
      });
    });

    group('isAs', () {
      test('returns typed value when type matches', () {
        final Resource patient = Patient(id: 'isas'.toFhirString);
        final result = patient.isAs<Patient>();
        expect(result, isNotNull);
        expect(result, isA<Patient>());
      });

      test('returns null when type does not match', () {
        final Resource patient = Patient(id: 'isas'.toFhirString);
        final result = patient.isAs<Organization>();
        expect(result, isNull);
      });
    });
  });
}
