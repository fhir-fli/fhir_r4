import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart';
import 'package:test/test.dart';

/// `searchIds` gives the set a `search` would page, and a long `_id` list
/// is answered from the set path (fhirant REVIEW-2026-09-06 finding 38).
void main() {
  late FhirDb db;
  late FhirDao dao;

  setUp(() async {
    db = FhirDb(NativeDatabase.memory());
    dao = FhirDao(db);
    for (var i = 0; i < 30; i++) {
      await dao.saveResource(
        fhir.Patient.fromJson({
          'resourceType': 'Patient',
          'id': 'p${i.toString().padLeft(2, '0')}',
          'gender': i.isEven ? 'male' : 'female',
          'active': i % 3 == 0,
        }),
      );
    }
  });

  tearDown(() => db.close());

  test('the ids a search would return, whole, in one call', () async {
    final ids = await dao.searchIds(
      resourceType: fhir.R4ResourceType.Patient,
      searchParameters: {
        'gender': ['male'],
        'active': ['true'],
      },
    );
    final searched = await dao.search(
      resourceType: fhir.R4ResourceType.Patient,
      searchParameters: {
        'gender': ['male'],
        'active': ['true'],
      },
      count: 100,
    );
    expect(ids, searched.map((r) => r.id!.valueString).toSet());
    expect(ids, hasLength(5));
  });

  test('no parameters: every id of the type', () async {
    final ids = await dao.searchIds(resourceType: fhir.R4ResourceType.Patient);
    expect(ids, hasLength(30));
    expect(
      await dao.searchIds(resourceType: fhir.R4ResourceType.Observation),
      isEmpty,
    );
  });

  test('a long _id list leaves the SQL path and still answers', () async {
    final ids = [
      for (var i = 0; i < FhirDao.maxIdListInSql + 100; i++) 'nope$i',
      'p03',
      'p17',
    ].join(',');
    final page = await dao.search(
      resourceType: fhir.R4ResourceType.Patient,
      searchParameters: {
        '_id': [ids],
      },
      count: 20,
    );
    expect(dao.lastSearchPagedInSql, isFalse);
    expect(page.map((r) => r.id!.valueString), ['p03', 'p17']);

    final withOther = await dao.search(
      resourceType: fhir.R4ResourceType.Patient,
      searchParameters: {
        '_id': [ids],
        'gender': ['female'],
      },
      count: 20,
    );
    expect(withOther.map((r) => r.id!.valueString), ['p03', 'p17']);
    expect(
      await dao.searchCount(
        resourceType: fhir.R4ResourceType.Patient,
        searchParameters: {
          '_id': [ids],
          'active': ['true'],
        },
      ),
      1,
    );
  });

  test('getResources: the existing ones, in id order, across a chunk',
      () async {
    final ids = [
      for (var i = 0; i < FhirDao.maxIdListInSql + 10; i++) 'absent$i',
      'p29',
      'p02',
      'p02',
      'p11',
    ];
    final got = await dao.getResources(fhir.R4ResourceType.Patient, ids);
    expect(got.map((r) => r.id!.valueString), ['p02', 'p11', 'p29']);
    expect(
      await dao.getResources(fhir.R4ResourceType.Observation, ['p02']),
      isEmpty,
    );
  });

  test('a short _id list keeps the SQL path', () async {
    await dao.search(
      resourceType: fhir.R4ResourceType.Patient,
      searchParameters: {
        '_id': ['p01,p02,p03'],
      },
      count: 20,
    );
    expect(dao.lastSearchPagedInSql, isTrue);
  });
}
