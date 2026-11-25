// While one connection re-indexes an uploaded search parameter in the
// background, how long does another connection's save wait, and does it
// fail with "database is locked"?
//
// Run: dart run tool/probe_writer_during_reindex.dart <empty dir> <patients>
// Both connections on their own isolates (NativeDatabase.createInBackground),
// WAL, busy timeout 10 s, as an app with a service and screens opens them.
// The second connection saves one Patient every 100 ms until the run ends;
// each save's time is printed as it ends.
//
// Results 2026-11-25, 20,000 patients:
//   fhir_db 0.15.8, twice: run 11.7 s and 11.9 s; one save failed each
//     time, "database is locked" after 10.0 s.
//   fhir_db 0.16.0: run 12.1-13.3 s; one save failed each time, after
//     10.0 s. Timed inside the swap transaction: the check for records
//     changed meanwhile took 11.1 s of it; SQLite looked each mark up on
//     the uri value index by type and name only, reading every mark.
//   fhir_db 0.16.1 (mark's value is the id; the check seeks by it),
//     three runs: run 2.24-2.28 s; no save failed; slowest 240, 113, 41 ms.
import 'dart:io';

import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart';
import 'package:sqlite3/sqlite3.dart' show Database;

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
    } on Object catch (e) {
      failed++;
      stdout.writeln('save ${i - 1}: FAILED after '
          '${save.elapsedMilliseconds} ms: ${'$e'.split('\n').first}');
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

void _setup(Database raw) => raw
  ..execute('PRAGMA journal_mode = WAL')
  ..execute('PRAGMA busy_timeout = 10000');
