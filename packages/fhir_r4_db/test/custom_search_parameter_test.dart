import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart';
import 'package:test/test.dart';

/// Uploaded SearchParameters, indexed by evaluating their FHIRPath with the
/// engine at save time (fhir_db `CustomSearchParameters`). The definition
/// is US Core's published race parameter (`SearchParameter-us-core-race`,
/// hl7.fhir.us.core#3.1.0 on disk: code `race`, base Patient, type token,
/// expression as below) and the patient carries the race extension of US
/// Core's published Patient example (STU3.1.1 `Patient-example.json`,
/// downloaded 2026-09-14), copied whole. Each test failed before the R4
/// model supplied an engine.
void main() {
  late FhirDb db;

  setUp(() async {
    db = FhirDb(NativeDatabase.memory());
    await db.customSelect('SELECT 1').get();
  });
  tearDown(() => db.close());

  const raceUrl =
      'http://hl7.org/fhir/us/core/StructureDefinition/us-core-race';
  const racePath = '.extension.value.code';

  final raceParameter = fhir.SearchParameter.fromJson({
    'resourceType': 'SearchParameter',
    'id': 'us-core-race',
    'url': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-race',
    'name': 'USCoreRace',
    'status': 'active',
    'description': 'Returns patients with a race extension matching the '
        'specified code.',
    'code': 'race',
    'base': ['Patient'],
    'type': 'token',
    'expression': "Patient.extension.where(url = '$raceUrl')$racePath",
  });

  // The race extension of US Core's Patient example, verbatim.
  const raceExtension = {
    'extension': [
      {
        'url': 'ombCategory',
        'valueCoding': {
          'system': 'urn:oid:2.16.840.1.113883.6.238',
          'code': '2106-3',
          'display': 'White',
        },
      },
      {
        'url': 'ombCategory',
        'valueCoding': {
          'system': 'urn:oid:2.16.840.1.113883.6.238',
          'code': '1002-5',
          'display': 'American Indian or Alaska Native',
        },
      },
      {
        'url': 'ombCategory',
        'valueCoding': {
          'system': 'urn:oid:2.16.840.1.113883.6.238',
          'code': '2028-9',
          'display': 'Asian',
        },
      },
      {
        'url': 'detailed',
        'valueCoding': {
          'system': 'urn:oid:2.16.840.1.113883.6.238',
          'code': '1586-7',
          'display': 'Shoshone',
        },
      },
      {
        'url': 'detailed',
        'valueCoding': {
          'system': 'urn:oid:2.16.840.1.113883.6.238',
          'code': '2036-2',
          'display': 'Filipino',
        },
      },
      {'url': 'text', 'valueString': 'Mixed'},
    ],
    'url': raceUrl,
  };

  fhir.Patient patient(String id, {bool withRace = false}) =>
      fhir.Patient.fromJson({
        'resourceType': 'Patient',
        'id': id,
        if (withRace) 'extension': [raceExtension],
        'name': [
          {'family': 'Shaw'},
        ],
      });

  Future<List<String>> patients(Map<String, List<String>> params) async =>
      (await db.fhirDao.search(
        resourceType: fhir.R4ResourceType.Patient,
        searchParameters: params,
      ))
          .map((r) => r.id!.valueString!)
          .toList()
        ..sort();

  test('a saved SearchParameter indexes every later save by its expression',
      () async {
    await db.fhirDao.saveResource(raceParameter);
    await db.fhirDao.saveResource(patient('mixed', withRace: true));
    await db.fhirDao.saveResource(patient('plain'));
    expect(
      await patients({
        'race': ['2028-9'],
      }),
      ['mixed'],
    );
    // A detailed code is a value of the same expression.
    expect(
      await patients({
        'race': ['2036-2'],
      }),
      ['mixed'],
    );
    expect(
      await patients({
        'race': ['9999-9'],
      }),
      isEmpty,
    );
    expect(db.fhirDao.lookupDefinition('Patient', 'race')?.type, 'token');
  });

  test('a resource stored before the parameter is found after a rebuild',
      () async {
    await db.fhirDao.saveResource(patient('early', withRace: true));
    await db.fhirDao.saveResource(raceParameter);
    expect(
      await patients({
        'race': ['2028-9'],
      }),
      isEmpty,
    );
    await db.rebuildSearchIndex();
    expect(
      await patients({
        'race': ['2028-9'],
      }),
      ['early'],
    );
  });

  test('where(resolve() is Patient) is decided from the reference string',
      () async {
    await db.fhirDao.saveResource(
      fhir.SearchParameter.fromJson({
        'resourceType': 'SearchParameter',
        'id': 'obs-subject-patient',
        'url': 'http://example.org/SearchParameter/obs-subject-patient',
        'name': 'ObservationSubjectPatient',
        'status': 'active',
        'description': 'Observations whose subject is a Patient.',
        'code': 'subject-patient',
        'base': ['Observation'],
        'type': 'reference',
        'target': ['Patient'],
        'expression': 'Observation.subject.where(resolve() is Patient)',
      }),
    );
    fhir.Observation observation(String id, String subject) =>
        fhir.Observation.fromJson({
          'resourceType': 'Observation',
          'id': id,
          'status': 'final',
          'code': {'text': 'weight'},
          'subject': {'reference': subject},
        });
    // The Patient is not stored: the type comes from the string alone.
    await db.fhirDao.saveResource(observation('of-patient', 'Patient/p1'));
    await db.fhirDao.saveResource(observation('of-group', 'Group/g1'));
    final found = await db.fhirDao.search(
      resourceType: fhir.R4ResourceType.Observation,
      searchParameters: {
        'subject-patient': ['Patient/p1'],
      },
    );
    expect(found.map((r) => r.id!.valueString), ['of-patient']);
    expect(
      await db.fhirDao.search(
        resourceType: fhir.R4ResourceType.Observation,
        searchParameters: {
          'subject-patient': ['Group/g1'],
        },
      ),
      isEmpty,
    );
  });

  test('a definition the store cannot index by is refused', () async {
    Future<void> refused(Map<String, dynamic> changes, String reason) async {
      final json = {...raceParameter.toJson(), ...changes};
      await expectLater(
        db.fhirDao.saveResource(fhir.SearchParameter.fromJson(json)),
        throwsA(
          isA<InvalidSearchParameter>()
              .having((e) => e.message, 'message', contains(reason)),
        ),
      );
    }

    await refused({'type': 'composite'}, 'composite');
    await refused({'expression': 'Patient.extension.where('}, 'parse');
    await refused({'code': 'name'}, 'defined by the specification');
    await refused(
      {
        'base': ['Spaceship'],
      },
      'not a resource type',
    );
    await refused({'expression': null}, 'expression is required');
    expect(
      await db.fhirDao.getResource(
        fhir.R4ResourceType.SearchParameter,
        'us-core-race',
      ),
      isNull,
    );
  });

  test(
      'an inactive definition is stored but indexes nothing, and a deleted '
      'one stops indexing', () async {
    await db.fhirDao.saveResource(
      fhir.SearchParameter.fromJson(
        {...raceParameter.toJson(), 'status': 'draft'},
      ),
    );
    expect(db.fhirDao.lookupDefinition('Patient', 'race'), isNull);
    await db.fhirDao.saveResource(raceParameter);
    expect(db.fhirDao.lookupDefinition('Patient', 'race'), isNotNull);
    await db.fhirDao.deleteResource(
      fhir.R4ResourceType.SearchParameter,
      'us-core-race',
    );
    expect(db.fhirDao.lookupDefinition('Patient', 'race'), isNull);
    await db.fhirDao.saveResource(patient('later', withRace: true));
    final rows = await db
        .customSelect(
          'SELECT count(*) AS c FROM token_search_parameters '
          "WHERE search_name = 'race'",
        )
        .getSingle();
    expect(rows.read<int>('c'), 0);
  });
}
