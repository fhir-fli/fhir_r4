// ignore_for_file: lines_longer_than_80_chars
import 'package:drift/drift.dart' hide isNotNull, isNull;
import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_db/fhir_r4_db.dart' hide Resource;
import 'package:test/test.dart';

/// Schema 10, fhirant REVIEW-2026-09-06 §4: the index tables carry no
/// search_path and no declared key, the searches are served by covering
/// composites, string starts-with is a range, and `_lastUpdated` is written
/// on the raw column so the (resource_type, last_updated) index serves it.
void main() {
  late FhirDb db;
  late FhirDao dao;

  setUp(() async {
    db = FhirDb(NativeDatabase.memory());
    dao = db.fhirDao;
  });

  tearDown(() => db.close());

  Future<List<String>> plan(String sql) async =>
      (await db.customSelect('EXPLAIN QUERY PLAN $sql').get())
          .map((r) => r.read<String>('detail'))
          .toList();

  Future<List<String>> ids(
    R4ResourceType type,
    Map<String, List<String>> params, {
    List<String>? sort,
  }) async =>
      (await dao.search(
        resourceType: type,
        searchParameters: params,
        sort: sort ?? ['_id'],
        count: 20,
      ))
          .map((r) => r.id!.valueString!)
          .toList();

  group('string starts-with as a range', () {
    (String, List<Object?>) render(Expression<bool> e) {
      final ctx = GenerationContext.fromDb(db);
      e.writeInto(ctx);
      return (ctx.sql, ctx.boundVariables);
    }

    test('>= prefix AND < the prefix with its last code point incremented', () {
      final (sql, vars) = render(
        FhirDao.startsWith(db.stringSearchParameters.stringValue, 'ab'),
      );
      expect(sql, contains('>='));
      expect(sql, contains('<'));
      expect(vars, ['ab', 'ac']);
    });

    test('a trailing code point that cannot be incremented is dropped', () {
      final (_, vars) = render(
        FhirDao.startsWith(
          db.stringSearchParameters.stringValue,
          'a\u{10FFFF}',
        ),
      );
      expect(vars, ['a\u{10FFFF}', 'b']);
    });

    test('an increment into the surrogate range steps over it', () {
      final (_, vars) = render(
        FhirDao.startsWith(db.stringSearchParameters.stringValue, '\u{D7FF}'),
      );
      expect(vars, ['\u{D7FF}', '\u{E000}']);
    });

    test('% and _ in the value are characters, not wildcards', () async {
      for (final (id, family) in [
        ('under', 'Sm_th'),
        ('plain', 'Smith'),
        ('percent', 'Sm%th'),
      ]) {
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
      // Folding turns punctuation into a space, so the stored values are
      // "sm th", "smith", "sm th": the underscore and percent are not
      // wildcards that would make "Sm_th" match "Smith".
      expect(
          await ids(R4ResourceType.Patient, {
            'family': ['Sm_th'],
          }),
          [
            'percent',
            'under',
          ]);
      expect(
        await ids(R4ResourceType.Patient, {
          'family': ['Smi'],
        }),
        ['plain'],
      );
      expect(
          await ids(R4ResourceType.Patient, {
            'family': ['Sm'],
          }),
          [
            'percent',
            'plain',
            'under',
          ]);
    });

    test('the range is served by the covering index', () async {
      final steps = await plan(
        'SELECT DISTINCT id FROM string_search_parameters '
        "WHERE resource_type = 'Patient' AND search_name = 'family' "
        "AND string_value >= 'sm' AND string_value < 'sn'",
      );
      expect(
        steps.join(' | '),
        contains('COVERING INDEX idx_string_search_parameters_value_cover'),
      );
    });
  });

  group('_lastUpdated on the raw column', () {
    final t0 = DateTime.utc(2020, 6, 15, 12);
    setUp(() async {
      for (final (id, at) in [
        ('a', t0.subtract(const Duration(hours: 2))),
        ('b', t0),
        ('c', t0.add(const Duration(hours: 2))),
      ]) {
        await dao.saveResource(
          Observation.fromJson({
            'resourceType': 'Observation',
            'id': id,
            'status': 'final',
            'code': {'text': 'x'},
          }),
        );
        await db.customStatement(
          'UPDATE resources SET last_updated = ? WHERE id = ?',
          [at.millisecondsSinceEpoch, id],
        );
      }
    });

    Future<List<String>> at(String value) => ids(R4ResourceType.Observation, {
          '_lastUpdated': [value],
        });

    test('every prefix, against instants two hours apart', () async {
      const t = '2020-06-15T12:00:00Z';
      expect(await at(t), ['b']);
      expect(await at('eq$t'), ['b']);
      expect(await at('ne$t'), ['a', 'c']);
      expect(await at('ge$t'), ['b', 'c']);
      expect(await at('gt$t'), ['c']);
      expect(await at('le$t'), ['a', 'b']);
      expect(await at('lt$t'), ['a']);
      expect(await at('sa$t'), ['c']);
      expect(await at('eb$t'), ['a']);
      expect(await at('2020-06-15'), ['a', 'b', 'c']);
      expect(await at('ge2020-06-16'), isEmpty);
    });

    test('the type page and a last_updated range use the index', () async {
      final page = await plan(
        "SELECT id FROM resources WHERE resource_type = 'Observation' "
        'ORDER BY last_updated DESC LIMIT 20',
      );
      expect(page.join(' | '), contains('idx_resources_type_updated'));
      expect(page.join(' | '), isNot(contains('TEMP B-TREE')));
      final range = await plan(
        "SELECT id FROM resources WHERE resource_type = 'Observation' "
        'AND last_updated >= 1000',
      );
      expect(range.join(' | '), contains('idx_resources_type_updated'));
    });
  });

  group('the tables and their indexes', () {
    test('no index table has a search_path column or a declared key', () async {
      for (final table in FhirDb.searchTableNames) {
        final columns =
            (await db.customSelect('PRAGMA table_info($table)').get())
                .map((c) => c.read<String>('name'))
                .toList();
        expect(columns, isNot(contains('search_path')), reason: table);
        final autoIndexes = await db
            .customSelect(
              "SELECT name FROM sqlite_master WHERE type = 'index' "
              "AND tbl_name = '$table' AND name LIKE 'sqlite_autoindex%'",
            )
            .get();
        expect(autoIndexes, isEmpty, reason: table);
      }
    });

    test('the shapes the DAO writes are served by the covering indexes',
        () async {
      await dao.saveResource(
        Observation.fromJson({
          'resourceType': 'Observation',
          'id': 'o',
          'status': 'final',
          'code': {'text': 'x'},
          'subject': {'reference': 'Patient/p'},
          'effectiveDateTime': '2020-01-01',
        }),
      );
      for (final (sql, index) in [
        (
          "SELECT DISTINCT id FROM token_search_parameters WHERE resource_type = 'Observation' AND search_name = 'status' AND token_value = 'final'",
          'COVERING INDEX idx_token_search_parameters_value_cover',
        ),
        (
          "SELECT DISTINCT id FROM reference_search_parameters WHERE resource_type = 'Observation' AND search_name = 'subject' AND reference_resource_type = 'Patient' AND reference_id_part = 'p'",
          'COVERING INDEX idx_reference_search_parameters_target_cover',
        ),
        (
          "SELECT DISTINCT id FROM date_search_parameters WHERE resource_type = 'Observation' AND search_name = 'date' AND date_value >= 0",
          'COVERING INDEX idx_date_search_parameters_low_cover',
        ),
        (
          "DELETE FROM token_search_parameters WHERE resource_type = 'Observation' AND id = 'o'",
          'idx_token_search_parameters_owner',
        ),
      ]) {
        final steps = (await plan(sql)).join(' | ');
        expect(steps, contains(index), reason: sql);
        expect(steps, isNot(contains('SCAN')), reason: sql);
      }
    });

    test('two parameters on one path are two rows, and both answer', () async {
      await dao.saveResource(
        Observation.fromJson({
          'resourceType': 'Observation',
          'id': 'two',
          'status': 'final',
          'code': {
            'coding': [
              {'system': 'http://s', 'code': 'k'},
            ],
          },
          'component': [
            {
              'code': {
                'coding': [
                  {'system': 'http://s', 'code': 'k'},
                ],
              },
            },
          ],
        }),
      );
      // code (Observation.code) and combo-code (code | component.code) both
      // index the same coding under paramIndex 0: rows that only differed in
      // their path, which the old key told apart and the new shape simply
      // stores twice.
      expect(
        await ids(R4ResourceType.Observation, {
          'code': ['k'],
        }),
        ['two'],
      );
      expect(
        await ids(R4ResourceType.Observation, {
          'combo-code': ['k'],
        }),
        ['two'],
      );
    });
  });

  group('one parameter: the page shape is chosen by the size probe', () {
    // 2,500 Observations: above the first probe stage (2,000), so a broad
    // filter goes through the fetch-sort-page path with a real second
    // probe, and a narrow one through it with the first.
    setUp(() async {
      await dao.saveResources([
        for (var i = 0; i < 2500; i++)
          Observation.fromJson({
            'resourceType': 'Observation',
            'id': 'o${i.toString().padLeft(4, '0')}',
            'status': i % 5 == 0 ? 'amended' : 'final',
            'code': {'text': 'x'},
            'effectiveDateTime':
                '2020-01-${(i % 28 + 1).toString().padLeft(2, '0')}',
          }),
      ]);
    });

    test('a broad range pages in id order with an offset', () async {
      final page = await dao.search(
        resourceType: R4ResourceType.Observation,
        searchParameters: {
          'date': ['ge2019-01-01'],
        },
        count: 20,
        offset: 10,
      );
      expect(
        page.map((r) => r.id!.valueString).toList(),
        [for (var i = 10; i < 30; i++) 'o${i.toString().padLeft(4, '0')}'],
      );
    });

    test('a narrow range, and one matching nothing', () async {
      final narrow = await dao.search(
        resourceType: R4ResourceType.Observation,
        searchParameters: {
          'date': ['2020-01-28'],
        },
        count: 100,
      );
      expect(narrow, hasLength(2500 ~/ 28));
      expect(
        narrow.map((r) => r.id!.valueString).toList(),
        [
          for (var i = 27; i < 2500; i += 28)
            'o${i.toString().padLeft(4, '0')}',
        ],
      );
      expect(
        await dao.search(
          resourceType: R4ResourceType.Observation,
          searchParameters: {
            'date': ['ge2999-01-01'],
          },
          count: 20,
        ),
        isEmpty,
      );
    });

    test('_lastUpdated, a resources-table part, the same way', () async {
      final page = await dao.search(
        resourceType: R4ResourceType.Observation,
        searchParameters: {
          '_lastUpdated': ['ge2000-01-01'],
        },
        count: 5,
        offset: 2495,
      );
      expect(
        page.map((r) => r.id!.valueString).toList(),
        ['o2495', 'o2496', 'o2497', 'o2498', 'o2499'],
      );
      expect(
        await dao.search(
          resourceType: R4ResourceType.Observation,
          searchParameters: {
            '_lastUpdated': ['ge2999-01-01'],
          },
          count: 20,
        ),
        isEmpty,
      );
      expect(
        await dao.searchCount(
          resourceType: R4ResourceType.Observation,
          searchParameters: {
            '_lastUpdated': ['ge2000-01-01'],
          },
        ),
        2500,
      );
    });

    test('a negated part still applies on the fetch path', () async {
      final page = await dao.search(
        resourceType: R4ResourceType.Observation,
        searchParameters: {
          'date': ['ge2019-01-01'],
          'status:not': ['final'],
        },
        count: 3,
      );
      expect(
        page.map((r) => r.id!.valueString).toList(),
        ['o0000', 'o0005', 'o0010'],
      );
    });
  });
}
