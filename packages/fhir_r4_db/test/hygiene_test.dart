import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart';
import 'package:test/test.dart';

/// fhirant REVIEW-2026-09-06 rows 24 and 26 on the general search path.
void main() {
  late FhirDb db;
  late FhirDao dao;

  setUp(() async {
    db = FhirDb(NativeDatabase.memory());
    dao = FhirDao(db);
  });

  tearDown(() => db.close());

  Future<void> save(Map<String, dynamic> json) =>
      dao.saveResource(fhir.Resource.fromJson(json));

  Map<String, dynamic> observation(String id, String code) => {
        'resourceType': 'Observation',
        'id': id,
        'status': 'final',
        'code': {
          'coding': [
            {'system': 'http://example.org/cs', 'code': code},
          ],
        },
      };

  test(':in refuses a compose with include.filter', () async {
    await save({
      'resourceType': 'ValueSet',
      'id': 'vs',
      'url': 'http://example.org/vs',
      'status': 'active',
      'compose': {
        'include': [
          {
            'system': 'http://example.org/cs',
            'filter': [
              {'property': 'concept', 'op': 'is-a', 'value': 'x'},
            ],
          },
        ],
      },
    });
    await save(observation('o1', 'a'));
    expect(
      () => dao.search(
        resourceType: fhir.R4ResourceType.Observation,
        searchParameters: {
          'code:in': ['http://example.org/vs'],
        },
      ),
      throwsA(isA<UnsupportedValueSetCompose>()),
    );
  });

  test(':in honours exclude.concept', () async {
    await save({
      'resourceType': 'ValueSet',
      'id': 'vs',
      'url': 'http://example.org/vs',
      'status': 'active',
      'compose': {
        'include': [
          {
            'system': 'http://example.org/cs',
            'concept': [
              {'code': 'a'},
              {'code': 'b'},
            ],
          },
        ],
        'exclude': [
          {
            'system': 'http://example.org/cs',
            'concept': [
              {'code': 'b'},
            ],
          },
        ],
      },
    });
    await save(observation('oa', 'a'));
    await save(observation('ob', 'b'));
    final hits = await dao.search(
      resourceType: fhir.R4ResourceType.Observation,
      searchParameters: {
        'code:in': ['http://example.org/vs'],
      },
    );
    expect(hits.map((r) => r.id!.valueString), ['oa']);
  });

  test('an unknown parameter is ignored on the general path', () async {
    await save({
      'resourceType': 'Patient',
      'id': 'p',
      'name': [
        {'family': 'Unique'},
      ],
    });
    // A long _id list is what sends a search down the general path
    // (maxIdListInSql); the unknown parameter rides along with it.
    final ids = [
      for (var i = 0; i <= FhirDao.maxIdListInSql; i++) 'absent$i',
      'p',
    ].join(',');
    final hits = await dao.search(
      resourceType: fhir.R4ResourceType.Patient,
      searchParameters: {
        '_id': [ids],
        'family:exact': ['Unique'],
        'nonsense': ['1'],
      },
    );
    expect(dao.lastSearchPagedInSql, isFalse);
    expect(hits.map((r) => r.id!.valueString), ['p']);
  });

  test('a value ending in ":missing" is a value', () async {
    await save({
      'resourceType': 'Patient',
      'id': 'p',
      'name': [
        {'family': 'Ends:missing'},
      ],
    });
    final hits = await dao.search(
      resourceType: fhir.R4ResourceType.Patient,
      searchParameters: {
        'family:exact': ['Ends:missing'],
      },
    );
    expect(hits.map((r) => r.id!.valueString), ['p']);
    expect(
      await dao.search(
        resourceType: fhir.R4ResourceType.Patient,
        searchParameters: {
          'family:missing': ['true'],
        },
      ),
      isEmpty,
    );
  });
}
