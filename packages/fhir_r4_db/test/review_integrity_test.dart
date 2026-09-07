// The integrity and wrong-answer findings of fhirant's REVIEW-2026-09-06 that
// live in this package (§2 rows 17-20, §3 rows 27-31). Each test asserts
// what the specification requires and failed before its fix; the review's
// probe archive is fhirant/packages/fhirant_server/tool/review_2026-09-06/.
import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_db/fhir_r4_db.dart' hide Resource;
import 'package:test/test.dart';

Future<void> main() async {
  late FhirDb db;
  late FhirDao dao;

  setUp(() async {
    db = FhirDb(NativeDatabase.memory());
    dao = db.fhirDao;
  });

  tearDown(() => db.close());

  Observation obs(String id, Map<String, dynamic> code) =>
      Observation.fromJson({
        'resourceType': 'Observation',
        'id': id,
        'status': 'final',
        'code': code,
      });

  Future<List<String>> ids(
    R4ResourceType type,
    List<String> sort, {
    Map<String, List<String>> params = const {},
  }) async =>
      (await dao.search(
        resourceType: type,
        searchParameters: params,
        sort: sort,
        count: 10,
      ))
          .map((r) => r.id!.valueString!)
          .toList();

  group('token |code (finding 17)', () {
    test('matches only rows with NO system, R4B 3.1.1.4.10 [parameter]=|[code]',
        () async {
      await dao.saveResource(
        obs('with-system', {
          'coding': [
            {'system': 'http://s', 'code': 'X'},
          ],
        }),
      );
      await dao.saveResource(
        obs('no-system', {
          'coding': [
            {'code': 'X'},
          ],
        }),
      );
      expect(
        await ids(
          R4ResourceType.Observation,
          [],
          params: {
            'code': ['|X'],
          },
        ),
        ['no-system'],
      );
      // The bare code still matches both.
      expect(
        await ids(
          R4ResourceType.Observation,
          [
            '_id',
          ],
          params: {
            'code': ['X'],
          },
        ),
        ['no-system', 'with-system'],
      );
    });
  });

  group('reference parsing (finding 18)', () {
    test('an absolute versioned reference is type/id/version', () async {
      await dao.saveResource(
        Observation.fromJson({
          'resourceType': 'Observation',
          'id': 'o1',
          'status': 'final',
          'code': {'text': 'x'},
          'subject': {
            'reference': 'http://example.org/fhir/Patient/123/_history/2',
          },
        }),
      );
      final rows = await (db.select(db.referenceSearchParameters)
            ..where((t) => t.searchName.equals('subject')))
          .get();
      expect(rows, hasLength(1));
      expect(rows.single.referenceResourceType, 'Patient');
      expect(rows.single.referenceIdPart, '123');
      expect(rows.single.referenceVersion, '2');
      expect(rows.single.referenceBaseUrl, 'http://example.org/fhir/');
    });

    test('a base path that contains the type name splits at the LAST type/id',
        () async {
      await dao.saveResource(
        Observation.fromJson({
          'resourceType': 'Observation',
          'id': 'o2',
          'status': 'final',
          'code': {'text': 'x'},
          'subject': {
            'reference': 'http://example.org/Patient/fhir/Patient/123',
          },
        }),
      );
      final rows = await (db.select(db.referenceSearchParameters)
            ..where((t) => t.searchName.equals('subject')))
          .get();
      expect(rows.single.referenceResourceType, 'Patient');
      expect(rows.single.referenceIdPart, '123');
      expect(rows.single.referenceBaseUrl, 'http://example.org/Patient/fhir/');
    });
  });

  group('_sort on strings and tokens (findings 19, 20)', () {
    test('family sorts by the whole name, not by a word of it', () async {
      for (final (id, family) in [('p1', 'Zeta Alpha'), ('p2', 'Beta')]) {
        await dao.saveResource(
          Patient.fromJson({
            'resourceType': 'Patient',
            'id': id,
            'name': [
              {'family': family},
            ],
          }),
        );
      }
      expect(await ids(R4ResourceType.Patient, ['family']), ['p2', 'p1']);
      expect(await ids(R4ResourceType.Patient, ['-family']), ['p1', 'p2']);
      // The general path (a modifier the SQL path refuses) agrees.
      expect(
        await ids(
          R4ResourceType.Patient,
          [
            'family',
          ],
          params: {
            'family:missing': ['false'],
          },
        ),
        ['p2', 'p1'],
      );
    });

    test('every part of an address is a value; the earliest one is the key',
        () async {
      // p1's earliest address value is its second line, "Alpha"; p2's is
      // "Beta". A sort that dropped address parts after the first would put
      // p1 ("Zeta") after p2.
      await dao.saveResource(
        Patient.fromJson({
          'resourceType': 'Patient',
          'id': 'p1',
          'address': [
            {
              'line': ['Zeta Street', 'Alpha Building'],
              'city': 'Middle',
            },
          ],
        }),
      );
      await dao.saveResource(
        Patient.fromJson({
          'resourceType': 'Patient',
          'id': 'p2',
          'address': [
            {'city': 'Beta'},
          ],
        }),
      );
      expect(await ids(R4ResourceType.Patient, ['address']), ['p1', 'p2']);
      expect(
        await ids(
          R4ResourceType.Patient,
          [
            'address',
          ],
          params: {
            'address:missing': ['false'],
          },
        ),
        ['p1', 'p2'],
      );
    });

    test('a text-only CodeableConcept has no code value and sorts LAST',
        () async {
      await dao.saveResource(obs('text-only', {'text': 'Aaa'}));
      await dao.saveResource(
        obs('coded', {
          'coding': [
            {'system': 'http://s', 'code': 'M'},
          ],
        }),
      );
      expect(await ids(R4ResourceType.Observation, ['code']), [
        'coded',
        'text-only',
      ]);
      expect(await ids(R4ResourceType.Observation, ['-code']), [
        'coded',
        'text-only',
      ]);
      expect(
        await ids(
          R4ResourceType.Observation,
          [
            'code',
          ],
          params: {
            'status:missing': ['false'],
          },
        ),
        ['coded', 'text-only'],
      );
    });
  });

  group('saveResources (findings 27, 28)', () {
    test('continues the version sequence and keeps history', () async {
      final p = Patient.fromJson({'resourceType': 'Patient', 'id': 'v'});
      await dao.saveResource(p);
      await dao.saveResource(p);
      expect(await dao.saveResources([p]), isTrue);
      final current = await dao.getResource(R4ResourceType.Patient, 'v');
      expect(current!.meta!.versionId!.valueString, '3');
      final history = await dao.getResourceHistory(R4ResourceType.Patient, 'v');
      expect(
        history.map((r) => r.meta!.versionId!.valueString).toList(),
        ['3', '2', '1'],
      );
    });

    test('a batch that mixes new resources and a re-save of one', () async {
      await dao.saveResource(
        Patient.fromJson({'resourceType': 'Patient', 'id': 'old'}),
      );
      expect(
        await dao.saveResources([
          Patient.fromJson({'resourceType': 'Patient', 'id': 'new1'}),
          Patient.fromJson({'resourceType': 'Patient', 'id': 'old'}),
          Observation.fromJson({
            'resourceType': 'Observation',
            'id': 'new2',
            'status': 'final',
            'code': {'text': 'x'},
          }),
        ]),
        isTrue,
      );
      Future<String> version(R4ResourceType t, String id) async =>
          (await dao.getResource(t, id))!.meta!.versionId!.valueString!;
      expect(await version(R4ResourceType.Patient, 'new1'), '1');
      expect(await version(R4ResourceType.Patient, 'old'), '2');
      expect(await version(R4ResourceType.Observation, 'new2'), '1');
    });

    test('the same id twice in one batch is two versions', () async {
      final p = Patient.fromJson({'resourceType': 'Patient', 'id': 'twice'});
      expect(await dao.saveResources([p, p]), isTrue);
      final history =
          await dao.getResourceHistory(R4ResourceType.Patient, 'twice');
      expect(
        history.map((r) => r.meta!.versionId!.valueString).toList(),
        ['2', '1'],
      );
    });

    test('is atomic: an indexing failure stores no resource', () async {
      dao.extractSearchParameters = (_) => throw StateError('index failed');
      final ok = await dao.saveResources([
        Patient.fromJson({'resourceType': 'Patient', 'id': 'atomic'}),
      ]);
      expect(ok, isFalse);
      expect(await dao.getResource(R4ResourceType.Patient, 'atomic'), isNull);
      expect(
        await dao.getResourceHistory(R4ResourceType.Patient, 'atomic'),
        isEmpty,
      );
    });
  });

  group('deleteResource (findings 29, 31)', () {
    Observation withContained(String id) => Observation.fromJson({
          'resourceType': 'Observation',
          'id': id,
          'status': 'final',
          'code': {'text': 'x'},
          'contained': [
            {
              'resourceType': 'Patient',
              'id': 'p1',
              'gender': 'female',
              'name': [
                {'family': 'Contained'},
              ],
            },
          ],
          'subject': {'reference': '#p1'},
        });

    Future<int> containedRows() async => (await db
            .customSelect(
              'SELECT count(*) AS c FROM token_search_parameters '
              "WHERE resource_type LIKE '#%'",
            )
            .getSingle())
        .read<int>('c');

    test('removes the contained rows with the container', () async {
      await dao.saveResource(withContained('o1'));
      expect(await containedRows(), greaterThan(0), reason: 'indexed on save');
      expect(
        await dao.deleteResource(R4ResourceType.Observation, 'o1'),
        isTrue,
      );
      expect(await containedRows(), 0, reason: 'no orphan rows after delete');
    });

    test('writes a tombstone that parses, at the next version', () async {
      await dao.saveResource(withContained('o2'));
      await dao.saveResource(withContained('o2'));
      await dao.deleteResource(R4ResourceType.Observation, 'o2');
      final history = await dao.getHistory(R4ResourceType.Observation, 'o2');
      expect(history.map((e) => e.versionId).toList(), ['3', '2', '1']);
      expect(history.map((e) => e.deleted).toList(), [true, false, false]);
      expect(history.first.resource, isNull);
      expect(history.first.id, 'o2');
      expect(history[1].resource!.meta!.versionId!.valueString, '2');
      // The resource-only view leaves the tombstone out instead of failing
      // to parse it as an Observation.
      expect(
        (await dao.getResourceHistory(R4ResourceType.Observation, 'o2'))
            .map((r) => r.meta!.versionId!.valueString)
            .toList(),
        ['2', '1'],
      );
    });

    test('a missing resource deletes nothing and writes no tombstone',
        () async {
      expect(
        await dao.deleteResource(R4ResourceType.Observation, 'never'),
        isFalse,
      );
      expect(
        await dao.getResourceHistory(R4ResourceType.Observation, 'never'),
        isEmpty,
      );
    });
  });

  group('version check inside the write (finding 30)', () {
    final p = Patient.fromJson({'resourceType': 'Patient', 'id': 'cas'});

    test('ifMatchVersion equal to the stored version: the write proceeds',
        () async {
      await dao.saveResource(p);
      final saved = await dao.saveResource(p, ifMatchVersion: '1');
      expect(saved.meta!.versionId!.valueString, '2');
    });

    test('ifMatchVersion behind the stored version: VersionConflict, no write',
        () async {
      await dao.saveResource(p);
      await dao.saveResource(p);
      await expectLater(
        dao.saveResource(p, ifMatchVersion: '1'),
        throwsA(
          isA<VersionConflict>()
              .having((e) => e.expected, 'expected', '1')
              .having((e) => e.actual, 'actual', '2'),
        ),
      );
      expect(
        (await dao.getResource(R4ResourceType.Patient, 'cas'))!
            .meta!
            .versionId!
            .valueString,
        '2',
      );
      expect(
        await dao.getResourceHistory(R4ResourceType.Patient, 'cas'),
        hasLength(2),
      );
    });

    test('ifMatchVersion on a resource that does not exist: VersionConflict',
        () async {
      await expectLater(
        dao.saveResource(p, ifMatchVersion: '1'),
        throwsA(isA<VersionConflict>().having((e) => e.actual, 'actual', null)),
      );
      expect(await dao.getResource(R4ResourceType.Patient, 'cas'), isNull);
    });

    test('deleteResource honours ifMatchVersion the same way', () async {
      await dao.saveResource(p);
      await dao.saveResource(p);
      await expectLater(
        dao.deleteResource(R4ResourceType.Patient, 'cas', ifMatchVersion: '1'),
        throwsA(isA<VersionConflict>()),
      );
      expect(await dao.getResource(R4ResourceType.Patient, 'cas'), isNotNull);
      expect(
        await dao.deleteResource(
          R4ResourceType.Patient,
          'cas',
          ifMatchVersion: '2',
        ),
        isTrue,
      );
      expect(await dao.getResource(R4ResourceType.Patient, 'cas'), isNull);
    });

    test('two concurrent saves of one resource are two versions, both kept',
        () async {
      await dao.saveResource(p);
      final saved =
          await Future.wait([dao.saveResource(p), dao.saveResource(p)]);
      expect(
        saved.map((r) => r.meta!.versionId!.valueString).toSet(),
        {'2', '3'},
      );
      expect(
        (await dao.getResource(R4ResourceType.Patient, 'cas'))!
            .meta!
            .versionId!
            .valueString,
        '3',
      );
      expect(
        (await dao.getResourceHistory(R4ResourceType.Patient, 'cas'))
            .map((r) => r.meta!.versionId!.valueString)
            .toList(),
        ['3', '2', '1'],
      );
    });
  });

  group('meta on update (found while fixing the set)', () {
    Patient withMeta(Map<String, dynamic> meta) => Patient.fromJson({
          'resourceType': 'Patient',
          'id': 'm',
          'meta': meta,
        });
    Map<String, dynamic> coding(String code) =>
        {'system': 'http://s', 'code': code};
    List<String> codes(List<Coding>? l) =>
        [for (final c in l ?? const <Coding>[]) c.code!.valueString!];

    test(
        'profile and source are as submitted; versionId and lastUpdated '
        "are the server's", () async {
      await dao.saveResource(
        withMeta({
          'profile': ['http://p/1'],
          'source': 'urn:a',
        }),
      );
      final saved = await dao.saveResource(
        withMeta({
          'profile': ['http://p/2'],
          'source': 'urn:b',
          'versionId': '99',
          'lastUpdated': '2001-01-01T00:00:00Z',
        }),
      );
      expect(saved.meta!.versionId!.valueString, '2');
      expect(saved.meta!.lastUpdated!.valueDateTime!.year, greaterThan(2001));
      expect(
        saved.meta!.profile!.map((p) => p.valueString).toList(),
        ['http://p/2'],
      );
      expect(saved.meta!.source!.valueString, 'urn:b');
      final stored = await dao.getResource(R4ResourceType.Patient, 'm');
      expect(stored!.meta!.toJson(), saved.meta!.toJson());
    });

    test('tags and security labels are merged by system+code', () async {
      await dao.saveResource(
        withMeta({
          'tag': [coding('a')],
          'security': [coding('x')],
        }),
      );
      final saved = await dao.saveResource(
        withMeta({
          'tag': [coding('b'), coding('a')],
          'security': [coding('y')],
        }),
      );
      expect(codes(saved.meta!.tag), ['b', 'a']);
      expect(codes(saved.meta!.security), ['x', 'y']);
      final again = await dao.saveResource(withMeta({}));
      expect(codes(again.meta!.tag), ['b', 'a']);
      expect(codes(again.meta!.security), ['x', 'y']);
      expect(again.meta!.versionId!.valueString, '3');
    });

    test('mergeTags: false writes the submitted labels exactly', () async {
      await dao.saveResource(
        withMeta({
          'tag': [coding('a'), coding('b')],
        }),
      );
      final saved = await dao.saveResource(
        withMeta({
          'tag': [coding('a')],
        }),
        mergeTags: false,
      );
      expect(codes(saved.meta!.tag), ['a']);
      final stored = await dao.getResource(R4ResourceType.Patient, 'm');
      expect(codes(stored!.meta!.tag), ['a']);
    });

    test('saveResources merges the same way', () async {
      await dao.saveResource(
        withMeta({
          'tag': [coding('a')],
        }),
      );
      expect(
        await dao.saveResources([
          withMeta({
            'tag': [coding('b')],
            'profile': ['http://p/3'],
          }),
        ]),
        isTrue,
      );
      final stored = await dao.getResource(R4ResourceType.Patient, 'm');
      expect(codes(stored!.meta!.tag), ['a', 'b']);
      expect(stored.meta!.profile!.single.valueString, 'http://p/3');
      expect(stored.meta!.versionId!.valueString, '2');
    });

    test('a first save keeps everything submitted but the server fields',
        () async {
      final saved = await dao.saveResource(
        withMeta({
          'versionId': '7',
          'profile': ['http://p/1'],
          'tag': [coding('a')],
        }),
      );
      expect(saved.meta!.versionId!.valueString, '1');
      expect(saved.meta!.profile!.single.valueString, 'http://p/1');
      expect(codes(saved.meta!.tag), ['a']);
    });
  });
}
