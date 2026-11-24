import 'dart:async';
import 'dart:io';

import 'package:drift/drift.dart' show Variable;
import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart';
import 'package:test/test.dart';

/// `FhirDb.reindexSearchParameter`: one uploaded SearchParameter indexed
/// over what was stored before it, without rebuilding the rest of the
/// index. The definition is US Core's race parameter as in
/// custom_search_parameter_test.dart (`SearchParameter-us-core-race`,
/// hl7.fhir.us.core#3.1.0: code `race`, base Patient, type token).
void main() {
  const raceUrl =
      'http://hl7.org/fhir/us/core/StructureDefinition/us-core-race';

  fhir.SearchParameter parameter({
    String code = 'race',
    String type = 'token',
    List<String> base = const ['Patient'],
    String expression =
        "Patient.extension.where(url = '$raceUrl').extension.value.code",
  }) =>
      fhir.SearchParameter.fromJson({
        'resourceType': 'SearchParameter',
        'id': 'p-$code',
        'url': 'http://example.org/SearchParameter/$code',
        'name': code,
        'status': 'active',
        'description': 'test',
        'code': code,
        'base': base,
        'type': type,
        'expression': expression,
      });

  fhir.Patient patient(String id, {String? race, String family = 'Shaw'}) =>
      fhir.Patient.fromJson({
        'resourceType': 'Patient',
        'id': id,
        if (race != null)
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
          {'family': family},
        ],
        'gender': 'female',
      });

  Future<List<String>> found(
    FhirDb db,
    Map<String, List<String>> params, {
    fhir.R4ResourceType type = fhir.R4ResourceType.Patient,
  }) async =>
      (await db.fhirDao.search(resourceType: type, searchParameters: params))
          .map((r) => r.id!.valueString!)
          .toList()
        ..sort();

  /// Every index row not named [code], with its rowid: a row rewritten,
  /// removed or added under another name changes this.
  Future<List<String>> otherRows(FhirDb db, String code) async => [
        for (final table in FhirDb.searchTableNames)
          for (final row in await db.customSelect(
            'SELECT rowid, * FROM $table '
            'WHERE search_name NOT IN (?, ?) ORDER BY rowid',
            variables: [
              Variable.withString(code),
              Variable.withString('$code:of-type'),
            ],
          ).get())
            '$table ${row.data}',
      ];

  Future<int> rowsNamed(FhirDb db, String code) async {
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

  group('in memory', () {
    late FhirDb db;

    setUp(() async {
      db = FhirDb(NativeDatabase.memory());
      await db.customSelect('SELECT 1').get();
    });
    tearDown(() => db.close());

    test(
        'a parameter uploaded after the records finds them, reading only its '
        'base type and touching no other row', () async {
      await db.fhirDao.saveResources([
        patient('white', race: '2106-3'),
        patient('asian', race: '2028-9'),
        patient('none'),
        fhir.Observation.fromJson({
          'resourceType': 'Observation',
          'id': 'o1',
          'status': 'final',
          'code': {'text': 'x'},
        }),
      ]);
      await db.fhirDao.saveResource(parameter());
      expect(
        await found(db, {
          'race': ['2028-9'],
        }),
        isEmpty,
      );
      final before = await otherRows(db, 'race');

      expect(await db.reindexSearchParameter('race'), 3);

      expect(
        await found(db, {
          'race': ['2028-9'],
        }),
        ['asian'],
      );
      expect(
        await found(db, {
          'race': ['2106-3'],
        }),
        ['white'],
      );
      expect(await otherRows(db, 'race'), before);
    });

    test('a changed definition replaces its rows; a deleted one leaves none',
        () async {
      await db.fhirDao.saveResource(parameter());
      await db.fhirDao.saveResources([
        patient('a', race: '2028-9', family: 'Okello'),
        patient('b', race: '2106-3'),
      ]);
      expect(
        await found(db, {
          'race': ['2028-9'],
        }),
        ['a'],
      );

      // The same code, now a string parameter over the family name: its
      // rows move from the token table to the string table.
      await db.fhirDao.saveResource(
        parameter(type: 'string', expression: 'Patient.name.family'),
      );
      expect(await db.reindexSearchParameter('race'), 2);
      expect(
        await found(db, {
          'race': ['Okello'],
        }),
        ['a'],
      );
      final tokenRows = await db
          .customSelect(
            'SELECT count(*) AS n FROM token_search_parameters '
            "WHERE search_name IN ('race', 'race:of-type')",
          )
          .getSingle();
      expect(tokenRows.read<int>('n'), 0);

      await db.fhirDao.deleteResource(
        fhir.R4ResourceType.SearchParameter,
        'p-race',
      );
      expect(await db.reindexSearchParameter('race'), 0);
      expect(await rowsNamed(db, 'race'), 0);
    });

    test(
        "a code the specification defines on another type keeps that type's "
        'rows', () async {
      // `family` is Patient's own parameter; uploaded on Basic it is new.
      await db.fhirDao.saveResources([
        patient('p'),
        fhir.Basic.fromJson({
          'resourceType': 'Basic',
          'id': 'b',
          'code': {'text': 'Shaw'},
        }),
      ]);
      await db.fhirDao.saveResource(
        parameter(
          code: 'family',
          type: 'string',
          base: ['Basic'],
          expression: 'Basic.code.text',
        ),
      );
      final patientRows = await db
          .customSelect(
            'SELECT rowid, * FROM string_search_parameters '
            "WHERE resource_type = 'Patient' AND search_name = 'family'",
          )
          .get();
      expect(patientRows, isNotEmpty);

      expect(await db.reindexSearchParameter('family'), 1);

      expect(
        await found(
          db,
          {
            'family': ['Shaw'],
          },
          type: fhir.R4ResourceType.Basic,
        ),
        ['b'],
      );
      expect(
        await found(db, {
          'family': ['Shaw'],
        }),
        ['p'],
      );
      expect(
        (await db
                .customSelect(
                  'SELECT rowid, * FROM string_search_parameters '
                  "WHERE resource_type = 'Patient' AND search_name = 'family'",
                )
                .get())
            .map((r) => r.data),
        patientRows.map((r) => r.data),
      );
    });

    test('a full rebuild started during a re-index leaves the rows whole',
        () async {
      await db.fhirDao.saveResources([
        for (var i = 0; i < 600; i++) patient('p$i', race: '2028-9'),
      ]);
      await db.fhirDao.saveResource(parameter());
      final one = db.reindexSearchParameter('race');
      final all = db.rebuildSearchIndex();
      await Future.wait([one, all]);
      expect(
        await found(db, {
          'race': ['2028-9'],
        }),
        hasLength(600),
      );
      expect(await rowsNamed(db, 'race'), 600);
    });
  });

  group('on its own isolate, as an app runs its store', () {
    late Directory dir;
    late FhirDb db;

    setUp(() async {
      dir = await Directory.systemTemp.createTemp('fhir_r4_db_reindex_one_');
      db = FhirDb(NativeDatabase.createInBackground(File('${dir.path}/s.db')));
    });

    tearDown(() async {
      await db.close();
      await dir.delete(recursive: true);
    });

    test(
      'saves and deletes made while it builds are indexed as they end up',
      () async {
        const n = 3000;
        await db.fhirDao.saveResources([
          for (var i = 0; i < n; i++) patient('p$i', race: '2028-9'),
        ]);
        await db.fhirDao.saveResource(parameter());

        var done = false;
        final job = db.reindexSearchParameter('race');
        unawaited(job.whenComplete(() => done = true));
        // Until the build has read its first page, which in id order holds
        // p0, p1, p10 and p100. White-box: the build marks each resource it
        // has read with a row named ' read ' (FhirDb._readMark).
        while (!done) {
          final marked = await db
              .customSelect(
                'SELECT count(*) AS n FROM uri_search_parameters '
                "WHERE search_name = ' read '",
              )
              .getSingle();
          if (marked.read<int>('n') >= 500) break;
        }
        expect(done, isFalse, reason: 'the build ended before a page was read');
        // Each already read: a new record that sorts before them all, one
        // that loses its race, one deleted, and one copied from another
        // server with its old time kept.
        await db.fhirDao.saveResource(patient('a-new', race: '2028-9'));
        await db.fhirDao.saveResource(patient('p1'));
        await db.fhirDao.deleteResource(fhir.R4ResourceType.Patient, 'p10');
        final copied = patient('p100', race: '2106-3').copyWith(
          meta: fhir.FhirMeta(
            lastUpdated: fhir.FhirInstant.fromString('2001-01-01T00:00:00Z'),
            versionId: '1'.toFhirId,
          ),
        );
        await db.fhirDao.saveResource(copied, preserveMeta: true);
        expect(done, isFalse, reason: 'the build ended before the writes');
        await job;

        final asian = await found(db, {
          'race': ['2028-9'],
        });
        expect(asian, hasLength(n - 3 + 1));
        expect(asian, contains('a-new'));
        expect(asian, isNot(contains('p1')));
        expect(asian, isNot(contains('p10')));
        expect(asian, isNot(contains('p100')));
        expect(
          await found(db, {
            'race': ['2106-3'],
          }),
          ['p100'],
        );
      },
      timeout: const Timeout(Duration(minutes: 5)),
    );

    test(
      'a search while it builds answers from the old rows or the new, whole',
      () async {
        const n = 3000;
        await db.fhirDao.saveResources([
          for (var i = 0; i < n; i++) patient('p$i', race: '2028-9'),
        ]);
        await db.fhirDao.saveResource(
          parameter(code: 'sex', expression: 'Patient.gender'),
        );
        // Counted, not read: reading 3000 matches took about as long as a
        // quarter of the build, so a search fitted in only 3 or 4 times
        // (measured 2026-11-24), too few to see a half-swapped index.
        Future<int> females() => db.fhirDao.searchCount(
              resourceType: fhir.R4ResourceType.Patient,
              searchParameters: {
                'sex': ['female'],
              },
            );
        expect(await db.reindexSearchParameter('sex'), n);
        expect(await females(), n);

        // Now over a field none of them has.
        await db.fhirDao.saveResource(
          parameter(code: 'sex', expression: 'Patient.maritalStatus'),
        );
        final answers = <Object>{};
        // Answers given once the build had read a page and before it
        // swapped: white-box, the build marks each resource it has read
        // with a row named ' read ' (FhirDb._readMark) and removes the
        // marks at the swap.
        final midBuild = <Object>{};
        var polls = 0;
        var done = false;
        final job = db.reindexSearchParameter('sex');
        unawaited(job.whenComplete(() => done = true));
        while (!done) {
          final building = (await db
                      .customSelect(
                        'SELECT count(*) AS n FROM uri_search_parameters '
                        "WHERE search_name = ' read '",
                      )
                      .getSingle())
                  .read<int>('n') >
              0;
          Object answer;
          try {
            answer = await females();
          } on Object catch (e) {
            answer = 'error: ${e.runtimeType}';
          }
          answers.add(answer);
          if (building) midBuild.add(answer);
          polls++;
        }
        await job;
        expect(polls, greaterThan(3), reason: 'too fast to poll');
        expect(answers.difference({n, 0}), isEmpty, reason: '$polls polls');
        // The old rows answered while it built: a build that cleared them
        // first answers 0 from its first page.
        expect(midBuild, contains(n), reason: '$polls polls');
        expect(await females(), 0);
      },
      timeout: const Timeout(Duration(minutes: 5)),
    );
  });
}
