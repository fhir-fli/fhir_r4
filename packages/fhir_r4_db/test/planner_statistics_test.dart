import 'dart:io';

import 'package:drift/drift.dart' hide isNull;
import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_db/fhir_r4_db.dart' hide Resource;
import 'package:test/test.dart';

/// Planner statistics follow the data.
///
/// Measured 2026-09-06: a database created empty and then loaded with 928,935
/// resources carried statistics for three empty indexes and nothing else,
/// because ANALYZE had run once at create, on empty tables, and never again;
/// `status=final AND code` took 58s where the analysed database took 0.23s.
/// The store now runs `PRAGMA optimize` (SQLite's documented mechanism) on
/// every open with every table examined, and after every bulk save, so
/// statistics appear once there is data and are refreshed when a table grows
/// 10-fold.
Future<void> main() async {
  Map<String, dynamic> observation(int i) => {
        'resourceType': 'Observation',
        'id': 'o$i',
        'status': i.isEven ? 'final' : 'preliminary',
        'code': {
          'coding': [
            {'system': 'http://example.org', 'code': 'c${i % 7}'},
          ],
        },
        'effectiveDateTime':
            '2020-01-${(i % 28 + 1).toString().padLeft(2, '0')}',
      };

  Future<Map<String, String>> statsOf(FhirDb db, String table) async {
    final rows = await db.customSelect(
      'SELECT idx, stat FROM sqlite_stat1 WHERE tbl = ?',
      variables: [Variable.withString(table)],
    ).get();
    return {
      for (final r in rows) r.read<String>('idx'): r.read<String>('stat'),
    };
  }

  test('a bulk save into an empty database leaves statistics behind', () async {
    final db = FhirDb(NativeDatabase.memory());
    addTearDown(db.close);
    expect(
      await statsOf(db, 'token_search_parameters'),
      isNot(contains('idx_token_search_parameters_value_cover')),
      reason: 'ANALYZE on empty tables writes no row for a value index',
    );
    await db.fhirDao.saveResources(
      [for (var i = 0; i < 2000; i++) Observation.fromJson(observation(i))],
    );
    final stats = await statsOf(db, 'token_search_parameters');
    expect(stats, contains('idx_token_search_parameters_value_cover'));
    // stat is "<rows> <avg rows per distinct value>": the row count is real.
    final rows = int.parse(
      stats['idx_token_search_parameters_value_cover']!.split(' ').first,
    );
    expect(rows, greaterThan(1000));
  });

  test('opening a database with data but no statistics analyses it', () async {
    final dir = await Directory.systemTemp.createTemp('fhir_db_stats_');
    addTearDown(() => dir.delete(recursive: true));
    final file = File('${dir.path}/db.sqlite');
    final first = FhirDb(NativeDatabase(file));
    for (var i = 0; i < 300; i++) {
      await first.fhirDao.saveResource(Observation.fromJson(observation(i)));
    }
    await first.customStatement('DELETE FROM sqlite_stat1');
    await first.close();

    final second = FhirDb(NativeDatabase(file));
    addTearDown(second.close);
    // beforeOpen runs on the first statement.
    await second.customSelect('SELECT 1').get();
    expect(
      await statsOf(second, 'token_search_parameters'),
      contains('idx_token_search_parameters_value_cover'),
    );
    final limit =
        await second.customSelect('PRAGMA analysis_limit').getSingle();
    expect(limit.data.values.first, FhirDb.analysisLimit);
  });

  test('analyzeFully reads every row and leaves the periodic limit behind',
      () async {
    final db = FhirDb(NativeDatabase.memory());
    addTearDown(db.close);
    await db.fhirDao.saveResources(
      [for (var i = 0; i < 200; i++) Observation.fromJson(observation(i))],
    );
    await db.customStatement('DELETE FROM sqlite_stat1');
    await db.analyzeFully();
    expect(
      await statsOf(db, 'token_search_parameters'),
      contains('idx_token_search_parameters_value_cover'),
    );
    final limit = await db.customSelect('PRAGMA analysis_limit').getSingle();
    expect(limit.data.values.first, FhirDb.analysisLimit);
  });

  test('optimizePlannerStatistics is callable and cheap when nothing changed',
      () async {
    final db = FhirDb(NativeDatabase.memory());
    addTearDown(db.close);
    await db.fhirDao.saveResources(
      [for (var i = 0; i < 200; i++) Observation.fromJson(observation(i))],
    );
    final before = await statsOf(db, 'token_search_parameters');
    final t = DateTime.now();
    await db.optimizePlannerStatistics();
    await db.optimizePlannerStatistics(allTables: true);
    expect(DateTime.now().difference(t).inMilliseconds, lessThan(2000));
    expect(await statsOf(db, 'token_search_parameters'), before);
  });
}
