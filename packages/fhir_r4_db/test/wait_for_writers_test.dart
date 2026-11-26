import 'dart:io';

import 'package:fhir_db/fhir_db.dart' show waitForWriters;
import 'package:sqlite3/sqlite3.dart';
import 'package:test/test.dart';

/// fhir_db `waitForWriters` under `flutter test`, which runs Dart's
/// profiler (`--enable-dart-profiling`). With the profiler on, `PRAGMA
/// busy_timeout = 2000` gave up after about 25 ms (fhir_r4_db
/// tool/probe_busy_timeout_wait.dart); this must wait the whole 2 s.
void main() {
  test('a write waits its whole timeout for a write lock held throughout', () {
    final dir = Directory.systemTemp.createTempSync('fhir_r4_db_wait_');
    addTearDown(() => dir.deleteSync(recursive: true));
    final path = '${dir.path}/w.db';
    final holder = sqlite3.open(path)
      ..execute('PRAGMA journal_mode = WAL')
      ..execute('CREATE TABLE t (x)');
    addTearDown(holder.close);
    final waiter = sqlite3.open(path);
    addTearDown(waiter.close);
    waitForWriters(waiter, timeout: const Duration(seconds: 2));

    holder.execute('BEGIN IMMEDIATE');
    final clock = Stopwatch()..start();
    expect(
      () => waiter.execute('BEGIN IMMEDIATE'),
      throwsA(isA<SqliteException>().having((e) => e.resultCode, 'code', 5)),
    );
    expect(clock.elapsedMilliseconds, inInclusiveRange(2000, 4000));
    holder.execute('ROLLBACK');
  });
}
