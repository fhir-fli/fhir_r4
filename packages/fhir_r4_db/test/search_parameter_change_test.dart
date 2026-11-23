import 'package:drift/drift.dart' show Variable;
import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart';
import 'package:test/test.dart';

/// A change to the uploaded search parameters re-indexes the codes it
/// changed, by itself, in the background (fhir_db
/// `FhirDb.reindexOnSearchParameterChange`, on by default as HAPI FHIR's
/// `JpaStorageSettings.markResourcesForReindexingUponSearchParameterChange`
/// is). The definition is US Core's race parameter as in
/// custom_search_parameter_test.dart (`SearchParameter-us-core-race`,
/// hl7.fhir.us.core#3.1.0: code `race`, base Patient, type token).
void main() {
  const raceUrl =
      'http://hl7.org/fhir/us/core/StructureDefinition/us-core-race';

  late FhirDb db;

  setUp(() async {
    db = FhirDb(NativeDatabase.memory());
    await db.customSelect('SELECT 1').get();
  });
  tearDown(() async {
    await db.searchParameterIndexing.idle;
    await db.close();
  });

  fhir.SearchParameter parameter({
    String code = 'race',
    String type = 'token',
    String expression =
        "Patient.extension.where(url = '$raceUrl').extension.value.code",
  }) =>
      fhir.SearchParameter.fromJson({
        'resourceType': 'SearchParameter',
        'id': 'race-parameter',
        'url': 'http://example.org/SearchParameter/race',
        'name': 'race',
        'status': 'active',
        'description': 'test',
        'code': code,
        'base': ['Patient'],
        'type': type,
        'expression': expression,
      });

  fhir.Patient patient(String id, String race, {List<String>? families}) =>
      fhir.Patient.fromJson({
        'resourceType': 'Patient',
        'id': id,
        'extension': [
          {
            'url': raceUrl,
            'extension': [
              {
                'url': 'ombCategory',
                'valueCoding': {
                  'system': 'urn:oid:2.16.840.1.113883.6.238',
                  'code': race,
                },
              },
            ],
          },
        ],
        'name': [
          for (final f in families ?? ['Shaw']) {'family': f},
        ],
      });

  Future<List<String>> found(String code, String value) async =>
      (await db.fhirDao.search(
        resourceType: fhir.R4ResourceType.Patient,
        searchParameters: {
          code: [value],
        },
      ))
          .map((r) => r.id!.valueString!)
          .toList()
        ..sort();

  Future<int> rowsNamed(String code) async {
    var n = 0;
    for (final table in FhirDb.searchTableNames) {
      n += (await db.customSelect(
        'SELECT count(*) AS n FROM $table WHERE search_name IN (?, ?)',
        variables: [
          Variable.withString(code),
          Variable.withString('$code:of-type'),
        ],
      ).getSingle())
          .read<int>('n');
    }
    return n;
  }

  test('records stored before the parameter are found once it has indexed',
      () async {
    await db.fhirDao.saveResources([
      patient('asian', '2028-9'),
      patient('white', '2106-3'),
    ]);
    await db.fhirDao.saveResource(parameter());
    await db.searchParameterIndexing.idle;

    expect(await found('race', '2028-9'), ['asian']);
    final last = db.searchParameterIndexing.last['race']!;
    expect(last.resourcesRead, 2);
    expect(last.error, isNull);
    expect(last.finished.isBefore(last.started), isFalse);
  });

  test("a code changed from one to another moves the rows to the new one's",
      () async {
    await db.fhirDao.saveResource(parameter());
    await db.fhirDao.saveResource(patient('asian', '2028-9'));
    expect(await rowsNamed('race'), greaterThan(0));

    await db.fhirDao.saveResource(parameter(code: 'ethnicity'));
    await db.searchParameterIndexing.idle;

    expect(await rowsNamed('race'), 0);
    expect(await found('ethnicity', '2028-9'), ['asian']);
    expect(
      db.searchParameterIndexing.last.keys,
      containsAll(['race', 'ethnicity']),
    );
  });

  test('a deleted parameter leaves no rows, and a purged one', () async {
    await db.fhirDao.saveResource(parameter());
    await db.fhirDao.saveResource(patient('asian', '2028-9'));
    await db.fhirDao.deleteResource(
      fhir.R4ResourceType.SearchParameter,
      'race-parameter',
    );
    await db.searchParameterIndexing.idle;
    expect(await rowsNamed('race'), 0);

    await db.fhirDao.saveResource(parameter());
    await db.searchParameterIndexing.idle;
    expect(await rowsNamed('race'), greaterThan(0));
    await db.fhirDao.purgeResourcesLastUpdatedBefore(
      fhir.R4ResourceType.SearchParameter,
      DateTime.now().add(const Duration(days: 1)),
    );
    await db.searchParameterIndexing.idle;
    expect(await rowsNamed('race'), 0);
  });

  test('switched off, a change indexes nothing by itself', () async {
    db.reindexOnSearchParameterChange = false;
    await db.fhirDao.saveResource(patient('asian', '2028-9'));
    await db.fhirDao.saveResource(parameter());
    await db.searchParameterIndexing.idle;
    expect(await found('race', '2028-9'), isEmpty);
    expect(db.searchParameterIndexing.last, isEmpty);
  });

  test('a definition saved inside a transaction is indexed after it commits',
      () async {
    await db.fhirDao.saveResource(patient('asian', '2028-9'));
    await db.transaction(() async {
      await db.fhirDao.saveResource(parameter());
    });
    await db.searchParameterIndexing.idle;
    expect(db.searchParameterIndexing.last['race']?.error, isNull);
    expect(await found('race', '2028-9'), ['asian']);
  });

  test('a re-index that fails is reported, and the store goes on', () async {
    // An expression this engine cannot finish on a stored record:
    // `single()` over a patient with two family names.
    await db.fhirDao.saveResource(
      patient('two', '2028-9', families: ['Shaw', 'Okello']),
    );
    await db.fhirDao.saveResource(
      parameter(
        code: 'family-one',
        type: 'string',
        expression: 'Patient.name.family.single()',
      ),
    );
    await db.searchParameterIndexing.idle;
    final last = db.searchParameterIndexing.last['family-one']!;
    expect(last.error, isNotNull);
    expect(last.resourcesRead, isNull);
    expect(db.searchParameterIndexing.running, isNull);
    expect(await found('family', 'Shaw'), ['two']);
  });
}
