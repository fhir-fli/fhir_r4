// How long does a write wait for another connection's write lock under
// `PRAGMA busy_timeout`, with the SQLite this package builds against?
//
// Run: dart [--profiler] tool/probe_busy_timeout_wait.dart <empty dir> [clock]
// With `clock`, a Dart busy handler that reads the clock replaces the
// pragma.
// Connection a holds BEGIN IMMEDIATE; connection b, with each busy
// timeout below, tries BEGIN IMMEDIATE and is timed until it gives up.
// SQLite's own busy handler (main.c sqliteDefaultBusyCallback) sleeps
// between tries until the timeout's milliseconds have been slept.
//
// Results 2026-11-25, SQLite 3.53.4 (sqlite3 3.5.2), busy timeout 10 s:
//   plain `dart`: the pragma gave up after 10,009 ms.
//   `dart --profiler`: the pragma gave up after 115 ms (100 ms: 7 ms,
//     1 s: 20 ms). SQLite's handler counts the sleeps it asked for, not
//     the time that passed (main.c sqliteDefaultBusyCallback, its
//     `totals` table), and unixSleep calls nanosleep once (os_unix.c),
//     which the profiler's sampling signal cuts short.
//   The `clock` handler: 10,002 ms, with and without the profiler.
// On CI and locally, saves in the store test failed "database is locked"
// at BEGIN IMMEDIATE after 119, 121 and 135 ms with a 10 s busy timeout.
import 'dart:io';

import 'package:sqlite3/sqlite3.dart';

void main(List<String> args) {
  final path = '${args[0]}/probe.db';
  final a = sqlite3.open(path)
    ..execute('PRAGMA journal_mode = WAL')
    ..execute('CREATE TABLE IF NOT EXISTS t (x)');
  final b = sqlite3.open(path);
  stdout.writeln('sqlite ${sqlite3.version.libVersion}');
  final byClock = args.length > 1 && args[1] == 'clock';
  for (final timeout in [0, 100, 1000, 10000]) {
    if (byClock) {
      // A handler that waits until the clock says the timeout has passed.
      final waited = Stopwatch();
      b.busyHandler = (count) {
        if (count == 0) waited.reset();
        waited.start();
        if (waited.elapsedMilliseconds >= timeout) return false;
        sleep(const Duration(milliseconds: 5));
        return true;
      };
    } else {
      b.execute('PRAGMA busy_timeout = $timeout');
    }
    a.execute('BEGIN IMMEDIATE');
    final clock = Stopwatch()..start();
    try {
      b.execute('BEGIN IMMEDIATE');
      stdout.writeln('timeout $timeout: got the lock?');
      b.execute('ROLLBACK');
    } on SqliteException catch (e) {
      stdout.writeln('timeout $timeout ms: gave up after '
          '${clock.elapsedMilliseconds} ms, extended ${e.extendedResultCode}');
    }
    a.execute('ROLLBACK');
  }
  a.dispose();
  b.dispose();
}
