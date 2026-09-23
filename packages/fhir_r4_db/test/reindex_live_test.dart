import 'dart:async';
import 'dart:io';

import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart';
import 'package:test/test.dart';

/// fhirant REVIEW-2026-09-17 Q2. `rebuildSearchIndex` dropped the nine
/// index tables, refilled them 500 resources at a time and created the
/// indexes last, none of it in one transaction, so a search that ran while
/// it did read a half-built index: `gender=female` over 6,000 Patients
/// polled during a 2.5 s rebuild gave 14 different answers, from -1 (the
/// table was missing) to 6,000. The rebuild now builds beside the live
/// index and swaps in one transaction, and re-extracts what was saved
/// while it ran.
///
/// The store runs on its own isolate here, as the app's does, so the
/// searches and the rebuild interleave.
void main() {
  late Directory dir;
  late FhirDb db;
  late FhirDao dao;

  setUp(() async {
    dir = await Directory.systemTemp.createTemp('fhir_r4_db_reindex_');
    db = FhirDb(NativeDatabase.createInBackground(File('${dir.path}/s.db')));
    dao = FhirDao(db);
  });

  tearDown(() async {
    await db.close();
    await dir.delete(recursive: true);
  });

  fhir.Resource patient(String id, String gender) => fhir.Resource.fromJson({
        'resourceType': 'Patient',
        'id': id,
        'gender': gender,
      });

  Future<int> females() async => (await dao.search(
        resourceType: fhir.R4ResourceType.Patient,
        searchParameters: {
          'gender': ['female'],
        },
      ))
          .length;

  test(
    'a search during a rebuild answers from a whole index',
    () async {
      const n = 3000;
      await dao.saveResources([
        for (var i = 0; i < n; i++) patient('p$i', 'female'),
      ]);
      expect(await females(), n);

      final answers = <Object>{};
      var polls = 0;
      final rebuild = db.rebuildSearchIndex();
      var done = false;
      unawaited(rebuild.whenComplete(() => done = true));
      while (!done) {
        try {
          answers.add(await females());
        } on Object catch (e) {
          // The test records whatever a query during the rebuild threw.
          answers.add('error: ${e.runtimeType}');
        }
        polls++;
      }
      await rebuild;
      expect(polls, greaterThan(3), reason: 'the rebuild ran too fast to poll');
      expect(answers, {n}, reason: '$polls polls');
    },
    timeout: const Timeout(Duration(minutes: 5)),
  );

  test(
    'a save made during the rebuild is indexed after it',
    () async {
      await dao.saveResources([
        for (var i = 0; i < 2000; i++) patient('p$i', 'female'),
      ]);
      final rebuild = db.rebuildSearchIndex();
      // Saved while the rebuild runs: a new resource, and a change to one.
      await dao.saveResource(patient('late', 'female'));
      await dao.saveResource(patient('p0', 'male'));
      await dao.deleteResource(fhir.R4ResourceType.Patient, 'p1');
      await rebuild;
      expect(await females(), 2000 - 1 - 1 + 1);
      final late = await dao.search(
        resourceType: fhir.R4ResourceType.Patient,
        searchParameters: {
          '_id': ['late'],
          'gender': ['female'],
        },
      );
      expect(late.map((r) => r.id!.valueString), ['late']);
      final p0 = await dao.search(
        resourceType: fhir.R4ResourceType.Patient,
        searchParameters: {
          'gender': ['male'],
        },
      );
      expect(p0.map((r) => r.id!.valueString), ['p0']);
    },
    timeout: const Timeout(Duration(minutes: 5)),
  );

  test('the value indexes exist once each after a rebuild', () async {
    await dao.saveResource(patient('p', 'female'));
    await db.rebuildSearchIndex();
    await db.rebuildSearchIndex();
    final rows = await db
        .customSelect(
          "SELECT name, tbl_name, sql FROM sqlite_master WHERE type = 'index' "
          "AND tbl_name LIKE '%_search_parameters' AND sql IS NOT NULL",
        )
        .get();
    // One index per definition, under its own name, whether the table was
    // created or renamed in by a rebuild: the migration steps drop indexes
    // by name.
    final names = rows.map((r) => r.read<String>('tbl_name')).toList();
    final definitions = rows
        .map(
          (r) => r
              .read<String>('sql')
              .replaceFirst(RegExp('^.* ON '), '')
              .replaceAll('"', ''),
        )
        .toList();
    expect(definitions.toSet().length, definitions.length, reason: '$rows');
    expect(names.where((n) => n == 'token_search_parameters'), hasLength(4));
    expect(
      rows.map((r) => r.read<String>('name')),
      containsAll([
        'idx_token_search_parameters_value_cover',
        'idx_token_search_parameters_system_cover',
        'idx_token_search_parameters_owner',
        'idx_token_search_parameters_contained',
      ]),
    );
  });
}
