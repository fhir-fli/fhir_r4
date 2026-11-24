// Times single saves, reads and searches on a file store, to price the
// check fhir_db makes before each save or search that no other connection
// changed the uploaded search parameters (`searchParameterGeneration`).
// Run once against each fhir_db (pubspec_overrides.yaml) and compare.
//   dart run tool/bench_search_parameter_check.dart <label> <out.log>
// Measured 2026-11-24 on the laptop, three alternating rounds, fhir_db
// 0.15.7 (main) against 0.15.8: search 346/386/327 µs against 342/388/365;
// save 1353/1770/2062 µs against 1489/2769/1864. No difference outside the
// spread between rounds.
import 'dart:io';

import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart';

Future<void> main(List<String> args) async {
  final label = args[0];
  final out = File(args[1]).openSync(mode: FileMode.append);
  void log(String line) {
    out
      ..writeStringSync('$line\n')
      ..flushSync();
    stdout.writeln(line);
  }

  final dir = await Directory.systemTemp.createTemp('fhir_bench_spc_');
  final db = FhirDb(NativeDatabase(File('${dir.path}/s.db')));
  const n = 2000;
  try {
    // Warm up: open, create tables, load the registry.
    await db.fhirDao.saveResource(
      fhir.Patient.fromJson({'resourceType': 'Patient', 'id': 'warm'}),
    );
    var sw = Stopwatch()..start();
    for (var i = 0; i < n; i++) {
      await db.fhirDao.saveResource(
        fhir.Patient.fromJson({
          'resourceType': 'Patient',
          'id': 'p$i',
          'gender': i.isEven ? 'female' : 'male',
          'name': [
            {'family': 'F$i'},
          ],
        }),
      );
    }
    log('$label save_us=${sw.elapsedMicroseconds ~/ n}');
    sw = Stopwatch()..start();
    for (var i = 0; i < n; i++) {
      await db.fhirDao.search(
        resourceType: fhir.R4ResourceType.Patient,
        searchParameters: {
          'family': ['F$i'],
        },
      );
    }
    log('$label search_us=${sw.elapsedMicroseconds ~/ n}');
  } finally {
    await db.close();
    await dir.delete(recursive: true);
    out.closeSync();
  }
}
