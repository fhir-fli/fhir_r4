import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_db/fhir_r4_db.dart' hide Resource;
import 'package:test/test.dart';

/// Integration tests exercising the DAO's search() with real search parameters
/// indexed by saveResource(). These complement the unit-level extraction tests.
Future<void> main() async {
  late FhirDb fhirDb;
  late FhirDao dao;

  setUp(() async {
    fhirDb = FhirDb(NativeDatabase.memory());
    dao = fhirDb.fhirDao;
  });

  tearDown(() async {
    await fhirDb.close();
  });

  // ──────────────────────────────────────────────────────────────────────────
  // Token search (code, identifier, status)
  // ──────────────────────────────────────────────────────────────────────────
  group('Token search:', () {
    setUp(() async {
      await dao.saveResource(
        Observation(
          id: 'obs-hgb'.toFhirString,
          status: ObservationStatus.final_,
          code: CodeableConcept(
            coding: <Coding>[
              Coding(
                system: FhirUri('http://loinc.org'),
                code: FhirCode('718-7'),
                display: 'Hemoglobin'.toFhirString,
              ),
            ],
          ),
          subject: Reference(reference: 'Patient/p1'.toFhirString),
        ),
      );
      await dao.saveResource(
        Observation(
          id: 'obs-glu'.toFhirString,
          status: ObservationStatus.preliminary,
          code: CodeableConcept(
            coding: <Coding>[
              Coding(
                system: FhirUri('http://loinc.org'),
                code: FhirCode('2345-7'),
                display: 'Glucose'.toFhirString,
              ),
            ],
          ),
          subject: Reference(reference: 'Patient/p2'.toFhirString),
        ),
      );
    });

    test('search by code (system|value)', () async {
      final results = await dao.search(
        resourceType: R4ResourceType.Observation,
        searchParameters: {
          'code': ['http://loinc.org|718-7'],
        },
      );
      expect(results.length, 1);
      expect(results.first.id?.toString(), 'obs-hgb');
    });

    test('search by code (value only)', () async {
      final results = await dao.search(
        resourceType: R4ResourceType.Observation,
        searchParameters: {
          'code': ['2345-7'],
        },
      );
      expect(results.length, 1);
      expect(results.first.id?.toString(), 'obs-glu');
    });

    test('search by status token', () async {
      final results = await dao.search(
        resourceType: R4ResourceType.Observation,
        searchParameters: {
          'status': ['final'],
        },
      );
      expect(results.length, 1);
      expect(results.first.id?.toString(), 'obs-hgb');
    });

    test('token search with no match returns empty', () async {
      final results = await dao.search(
        resourceType: R4ResourceType.Observation,
        searchParameters: {
          'code': ['http://loinc.org|99999-9'],
        },
      );
      expect(results, isEmpty);
    });
  });

  // ──────────────────────────────────────────────────────────────────────────
  // String search (name, address)
  // ──────────────────────────────────────────────────────────────────────────
  group('String search:', () {
    setUp(() async {
      await dao.saveResource(
        Patient(
          id: 'p-smith'.toFhirString,
          name: <HumanName>[
            HumanName(
              family: 'Smith'.toFhirString,
              given: <FhirString>['Alice'.toFhirString],
            ),
          ],
          address: <Address>[
            Address(
              city: 'Boston'.toFhirString,
              state: 'MA'.toFhirString,
            ),
          ],
        ),
      );
      await dao.saveResource(
        Patient(
          id: 'p-jones'.toFhirString,
          name: <HumanName>[
            HumanName(
              family: 'Jones'.toFhirString,
              given: <FhirString>['Bob'.toFhirString],
            ),
          ],
          address: <Address>[
            Address(
              city: 'New York'.toFhirString,
              state: 'NY'.toFhirString,
            ),
          ],
        ),
      );
    });

    test('search by family name', () async {
      final results = await dao.search(
        resourceType: R4ResourceType.Patient,
        searchParameters: {
          'family': ['Smith'],
        },
      );
      expect(results.length, 1);
      expect(results.first.id?.toString(), 'p-smith');
    });

    test('string search is case-insensitive', () async {
      final results = await dao.search(
        resourceType: R4ResourceType.Patient,
        searchParameters: {
          'family': ['smith'],
        },
      );
      expect(results.length, 1);
      expect(results.first.id?.toString(), 'p-smith');
    });

    test('search by given name', () async {
      final results = await dao.search(
        resourceType: R4ResourceType.Patient,
        searchParameters: {
          'given': ['Bob'],
        },
      );
      expect(results.length, 1);
      expect(results.first.id?.toString(), 'p-jones');
    });

    test('search by address-city', () async {
      final results = await dao.search(
        resourceType: R4ResourceType.Patient,
        searchParameters: {
          'address-city': ['Boston'],
        },
      );
      expect(results.length, 1);
      expect(results.first.id?.toString(), 'p-smith');
    });

    test('search by address-state', () async {
      final results = await dao.search(
        resourceType: R4ResourceType.Patient,
        searchParameters: {
          'address-state': ['NY'],
        },
      );
      expect(results.length, 1);
      expect(results.first.id?.toString(), 'p-jones');
    });
  });

  // ──────────────────────────────────────────────────────────────────────────
  // Reference search
  // ──────────────────────────────────────────────────────────────────────────
  group('Reference search:', () {
    setUp(() async {
      await dao.saveResource(
        Patient(id: 'ref-pat'.toFhirString),
      );
      await dao.saveResource(
        Observation(
          id: 'ref-obs-1'.toFhirString,
          status: ObservationStatus.final_,
          code: CodeableConcept(text: 'Test'.toFhirString),
          subject: Reference(reference: 'Patient/ref-pat'.toFhirString),
        ),
      );
      await dao.saveResource(
        Observation(
          id: 'ref-obs-2'.toFhirString,
          status: ObservationStatus.final_,
          code: CodeableConcept(text: 'Test2'.toFhirString),
          subject: Reference(reference: 'Patient/other-pat'.toFhirString),
        ),
      );
    });

    test('search by subject reference', () async {
      final results = await dao.search(
        resourceType: R4ResourceType.Observation,
        searchParameters: {
          'subject': ['Patient/ref-pat'],
        },
      );
      expect(results.length, 1);
      expect(results.first.id?.toString(), 'ref-obs-1');
    });

    test('search by patient reference (alias for subject)', () async {
      final results = await dao.search(
        resourceType: R4ResourceType.Observation,
        searchParameters: {
          'patient': ['Patient/ref-pat'],
        },
      );
      expect(results.length, 1);
      expect(results.first.id?.toString(), 'ref-obs-1');
    });
  });

  // ──────────────────────────────────────────────────────────────────────────
  // Date search
  // ──────────────────────────────────────────────────────────────────────────
  group('Date search:', () {
    setUp(() async {
      await dao.saveResource(
        Patient(
          id: 'date-p1'.toFhirString,
          birthDate: FhirDate.fromString('1990-01-15'),
        ),
      );
      await dao.saveResource(
        Patient(
          id: 'date-p2'.toFhirString,
          birthDate: FhirDate.fromString('2000-06-20'),
        ),
      );
    });

    test('search by birthdate exact', () async {
      final results = await dao.search(
        resourceType: R4ResourceType.Patient,
        searchParameters: {
          'birthdate': ['1990-01-15'],
        },
      );
      expect(results.length, 1);
      expect(results.first.id?.toString(), 'date-p1');
    });
  });

  // ──────────────────────────────────────────────────────────────────────────
  // _lastUpdated search
  // ──────────────────────────────────────────────────────────────────────────
  group('_lastUpdated search:', () {
    test('_lastUpdated returns resources updated after date', () async {
      await dao.saveResource(Patient(id: 'lu-1'.toFhirString));

      // All resources saved just now should be after 2020
      final results = await dao.search(
        resourceType: R4ResourceType.Patient,
        searchParameters: {
          '_lastUpdated': ['gt2020-01-01'],
        },
      );
      expect(results.isNotEmpty, true);
    });
  });

  // ──────────────────────────────────────────────────────────────────────────
  // _tag, _profile, _security search
  // ──────────────────────────────────────────────────────────────────────────
  group('Meta-based search:', () {
    setUp(() async {
      await dao.saveResource(
        Patient(
          id: 'meta-p1'.toFhirString,
          meta: FhirMeta(
            tag: <Coding>[
              Coding(
                system: FhirUri('http://example.org/tags'),
                code: FhirCode('test-tag'),
              ),
            ],
            profile: <FhirCanonical>[
              FhirCanonical(
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient',
              ),
            ],
            security: <Coding>[
              Coding(
                system: FhirUri(
                    'http://terminology.hl7.org/CodeSystem/v3-Confidentiality'),
                code: FhirCode('R'),
              ),
            ],
          ),
        ),
      );
      await dao.saveResource(
        Patient(id: 'meta-p2'.toFhirString),
      );
    });

    test('search by _tag', () async {
      final results = await dao.search(
        resourceType: R4ResourceType.Patient,
        searchParameters: {
          '_tag': ['http://example.org/tags|test-tag'],
        },
      );
      expect(results.length, 1);
      expect(results.first.id?.toString(), 'meta-p1');
    });

    test('search by _profile', () async {
      final results = await dao.search(
        resourceType: R4ResourceType.Patient,
        searchParameters: {
          '_profile': [
            'http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient',
          ],
        },
      );
      expect(results.length, 1);
      expect(results.first.id?.toString(), 'meta-p1');
    });

    test('search by _security', () async {
      final results = await dao.search(
        resourceType: R4ResourceType.Patient,
        searchParameters: {
          '_security': [
            'http://terminology.hl7.org/CodeSystem/v3-Confidentiality|R',
          ],
        },
      );
      expect(results.length, 1);
      expect(results.first.id?.toString(), 'meta-p1');
    });
  });

  // ──────────────────────────────────────────────────────────────────────────
  // Identifier search
  // ──────────────────────────────────────────────────────────────────────────
  group('Identifier search:', () {
    setUp(() async {
      await dao.saveResource(
        Patient(
          id: 'id-p1'.toFhirString,
          identifier: <Identifier>[
            Identifier(
              system: FhirUri('http://hospital.example.org/mrn'),
              value: 'MRN-12345'.toFhirString,
            ),
          ],
        ),
      );
      await dao.saveResource(
        Patient(
          id: 'id-p2'.toFhirString,
          identifier: <Identifier>[
            Identifier(
              system: FhirUri('http://hospital.example.org/mrn'),
              value: 'MRN-67890'.toFhirString,
            ),
          ],
        ),
      );
    });

    test('search by identifier system|value', () async {
      final results = await dao.search(
        resourceType: R4ResourceType.Patient,
        searchParameters: {
          'identifier': ['http://hospital.example.org/mrn|MRN-12345'],
        },
      );
      expect(results.length, 1);
      expect(results.first.id?.toString(), 'id-p1');
    });

    test('search by identifier value only', () async {
      final results = await dao.search(
        resourceType: R4ResourceType.Patient,
        searchParameters: {
          'identifier': ['MRN-67890'],
        },
      );
      expect(results.length, 1);
      expect(results.first.id?.toString(), 'id-p2');
    });
  });

  // ──────────────────────────────────────────────────────────────────────────
  // Gender (token) search
  // ──────────────────────────────────────────────────────────────────────────
  group('Gender token search:', () {
    setUp(() async {
      await dao.saveResource(
        Patient(
          id: 'gen-f'.toFhirString,
          gender: AdministrativeGender.female,
        ),
      );
      await dao.saveResource(
        Patient(
          id: 'gen-m'.toFhirString,
          gender: AdministrativeGender.male,
        ),
      );
    });

    test('search by gender=female', () async {
      final results = await dao.search(
        resourceType: R4ResourceType.Patient,
        searchParameters: {
          'gender': ['female'],
        },
      );
      expect(results.length, 1);
      expect(results.first.id?.toString(), 'gen-f');
    });

    test('search by gender=male', () async {
      final results = await dao.search(
        resourceType: R4ResourceType.Patient,
        searchParameters: {
          'gender': ['male'],
        },
      );
      expect(results.length, 1);
      expect(results.first.id?.toString(), 'gen-m');
    });
  });

  // ──────────────────────────────────────────────────────────────────────────
  // Search parameter indexing after update
  // ──────────────────────────────────────────────────────────────────────────
  group('Search index update on resource update:', () {
    test('search indexes reflect latest version', () async {
      await dao.saveResource(
        Patient(
          id: 'update-p'.toFhirString,
          name: <HumanName>[
            HumanName(family: 'OldName'.toFhirString),
          ],
        ),
      );

      // Should find by old name
      var results = await dao.search(
        resourceType: R4ResourceType.Patient,
        searchParameters: {
          'family': ['OldName']
        },
      );
      expect(results.length, 1);

      // Update the resource
      await dao.saveResource(
        Patient(
          id: 'update-p'.toFhirString,
          name: <HumanName>[
            HumanName(family: 'NewName'.toFhirString),
          ],
        ),
      );

      // Old name should no longer match
      results = await dao.search(
        resourceType: R4ResourceType.Patient,
        searchParameters: {
          'family': ['OldName']
        },
      );
      expect(results, isEmpty);

      // New name should match
      results = await dao.search(
        resourceType: R4ResourceType.Patient,
        searchParameters: {
          'family': ['NewName']
        },
      );
      expect(results.length, 1);
    });

    test('search indexes removed on delete', () async {
      await dao.saveResource(
        Patient(
          id: 'del-p'.toFhirString,
          name: <HumanName>[
            HumanName(family: 'DeleteMe'.toFhirString),
          ],
        ),
      );

      var results = await dao.search(
        resourceType: R4ResourceType.Patient,
        searchParameters: {
          'family': ['DeleteMe']
        },
      );
      expect(results.length, 1);

      await dao.deleteResource(R4ResourceType.Patient, 'del-p');

      results = await dao.search(
        resourceType: R4ResourceType.Patient,
        searchParameters: {
          'family': ['DeleteMe']
        },
      );
      expect(results, isEmpty);
    });
  });

  // ──────────────────────────────────────────────────────────────────────────
  // Multiple search parameters (AND)
  // ──────────────────────────────────────────────────────────────────────────
  group('Multiple parameter AND search:', () {
    setUp(() async {
      await dao.saveResource(
        Patient(
          id: 'multi-1'.toFhirString,
          name: <HumanName>[
            HumanName(family: 'Adams'.toFhirString),
          ],
          gender: AdministrativeGender.female,
        ),
      );
      await dao.saveResource(
        Patient(
          id: 'multi-2'.toFhirString,
          name: <HumanName>[
            HumanName(family: 'Adams'.toFhirString),
          ],
          gender: AdministrativeGender.male,
        ),
      );
    });

    test('AND of family + gender narrows results', () async {
      final results = await dao.search(
        resourceType: R4ResourceType.Patient,
        searchParameters: {
          'family': ['Adams'],
          'gender': ['female'],
        },
      );
      expect(results.length, 1);
      expect(results.first.id?.toString(), 'multi-1');
    });
  });
}
