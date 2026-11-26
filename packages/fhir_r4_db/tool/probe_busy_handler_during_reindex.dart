// When another connection's save fails with "database is locked" while a
// re-index runs, did SQLite call the busy handler first, and which
// extended code did it return?
//
// Run: PROBE_BUSY_LOG=<log> dart run
//   tool/probe_busy_handler_during_reindex.dart <empty dir> <patients>
// As probe_writer_during_reindex.dart, but each connection's busy handler
// (in place of busy_timeout 10000: sleep 10 ms, give up after 1,000 calls)
// appends every call to PROBE_BUSY_LOG, and a failed save prints its
// extended code.
//
// Results 2026-11-25, 20,000 patients, 30 runs under plain `dart`: no save
// failed; the handler was called 24-27 times a run, never past call 27.
// The failures it looked for came only with the profiler running; see
// tool/probe_busy_timeout_wait.dart.
import 'dart:io';

import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart';
import 'package:sqlite3/sqlite3.dart' show Database, SqliteException;

Future<void> main(List<String> args) async {
  final file = File('${args[0]}/probe.db');
  final n = int.parse(args[1]);
  final a = FhirDb(NativeDatabase.createInBackground(file, setup: _setup));
  final b = FhirDb(NativeDatabase.createInBackground(file, setup: _setup));
  await a.fhirDao.saveResources([
    for (var i = 0; i < n; i++)
      fhir.Patient.fromJson({
        'resourceType': 'Patient',
        'id': 'p$i',
        'gender': 'female',
      }),
  ]);
  await b.customSelect('SELECT 1').get();
  final run = Stopwatch()..start();
  await a.fhirDao.saveResource(
    fhir.SearchParameter.fromJson({
      'resourceType': 'SearchParameter',
      'id': 'sex',
      'url': 'http://example.org/SearchParameter/sex',
      'name': 'sex',
      'status': 'active',
      'description': 'probe',
      'code': 'sex',
      'base': ['Patient'],
      'type': 'token',
      'expression': 'Patient.gender',
    }),
  );
  var running = true;
  final idle = a.searchParameterIndexing.idle.whenComplete(() {
    running = false;
  });
  var i = 0;
  var failed = 0;
  var worst = 0;
  while (running) {
    final save = Stopwatch()..start();
    try {
      await b.fhirDao.saveResource(
        fhir.Patient.fromJson({'resourceType': 'Patient', 'id': 'b${i++}'}),
      );
      stdout.writeln('save ${i - 1}: ${save.elapsedMilliseconds} ms');
    } on SqliteException catch (e) {
      failed++;
      stdout.writeln('save ${i - 1}: FAILED after '
          '${save.elapsedMilliseconds} ms at '
          '${DateTime.now().toIso8601String()}: '
          'extended ${e.extendedResultCode}: ${e.message}; '
          '${e.causingStatement}');
    }
    if (save.elapsedMilliseconds > worst) worst = save.elapsedMilliseconds;
    await Future<void>.delayed(const Duration(milliseconds: 100));
  }
  await idle;
  stdout.writeln('run ${run.elapsedMilliseconds} ms; saves $i; failed '
      '$failed; slowest $worst ms');
  await a.close();
  await b.close();
}

// The setup runs on the connection's own isolate: it gets the log path
// from the environment, as a closure cannot carry it there.
void _setup(Database raw) {
  final log = File(Platform.environment['PROBE_BUSY_LOG']!);
  final who = identityHashCode(raw);
  raw
    ..execute('PRAGMA journal_mode = WAL')
    ..busyHandler = (count) {
      log.writeAsStringSync(
        '${DateTime.now().toIso8601String()} conn $who call $count\n',
        mode: FileMode.append,
        flush: true,
      );
      if (count >= 1000) return false;
      sleep(const Duration(milliseconds: 10));
      return true;
    };
}
