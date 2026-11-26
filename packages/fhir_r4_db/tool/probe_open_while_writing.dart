// Does a second connection to a store file open while another connection
// writes without pause, as a background re-index does?
//
// Run: dart run tool/probe_open_while_writing.dart <empty dir> <same|own>
//        <busy timeout ms: 0 or 10000>
// `same`: both connections on the calling isolate (NativeDatabase);
// `own`: each on its own isolate (NativeDatabase.createInBackground), as
// fhirant opens its store. WAL journal in both.
//
// Results 2026-11-25, 20 trials each, on the fhir_db branch that keeps
// re-indexing in the store; `same` also on fhir_db 0.15.8, alike:
//   same, 10000 ms: 20 of 20 opens failed, "database is locked" at
//     `PRAGMA optimize=0x10002` (beforeOpen), 218 s (242 s on 0.15.8):
//     each waited out the timeout. Not measured, inferred from the next
//     line: the busy wait blocks the isolate it runs on, which is the
//     writer's too, so the writer cannot end its transaction.
//   own, 10000 ms: 0 of 20 failed, 21 s.
//   own, 0 ms (no busy timeout; fhirant's store sets none): 20 of 20
//     failed, "database is locked" at the same statement, 15 s.
import 'dart:io';

import 'package:drift/drift.dart' show QueryExecutor;
import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart';
import 'package:sqlite3/sqlite3.dart' show Database;

Future<void> main(List<String> args) async {
  final file = File('${args[0]}/probe.db');
  final own = args[1] == 'own';
  final busy = int.parse(args[2]);
  if (busy != 0 && busy != 10000) throw ArgumentError('0 or 10000');
  // Top-level: a closure sent to another isolate may not capture this
  // one's state.
  final setup = busy == 0 ? _noWait : _wait10s;
  QueryExecutor exec() {
    return own
        ? NativeDatabase.createInBackground(file, setup: setup)
        : NativeDatabase(file, setup: setup);
  }

  final a = FhirDb(exec());
  await a.fhirDao.saveResources([
    for (var i = 0; i < 2000; i++)
      fhir.Patient.fromJson({'resourceType': 'Patient', 'id': 'p$i'}),
  ]);
  var failures = 0;
  for (var trial = 0; trial < 20; trial++) {
    var writing = true;
    final writer = () async {
      var i = 0;
      while (writing) {
        await a.fhirDao.saveResource(
          fhir.Patient.fromJson({'resourceType': 'Patient', 'id': 'w${i++}'}),
        );
      }
    }();
    final b = FhirDb(exec());
    try {
      await b.customSelect('SELECT 1').get();
      stdout.writeln('trial $trial: opened');
    } on Object catch (e) {
      failures++;
      stdout.writeln('trial $trial: ${'$e'.split('\n').take(2).join(' ')}');
    }
    writing = false;
    await writer;
    try {
      await b.close();
    } on Object catch (_) {
      // Never opened.
    }
  }
  stdout.writeln('failures $failures of 20');
  await a.close();
}

void _noWait(Database raw) => raw
  ..execute('PRAGMA journal_mode = WAL')
  ..execute('PRAGMA busy_timeout = 0');

void _wait10s(Database raw) => raw
  ..execute('PRAGMA journal_mode = WAL')
  ..execute('PRAGMA busy_timeout = 10000');
