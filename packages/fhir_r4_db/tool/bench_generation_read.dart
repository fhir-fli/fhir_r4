// Times fhir_db's `searchParameterGeneration` read on its own, the extra
// statement each save or search now makes.
//   dart run tool/bench_generation_read.dart
// Measured 2026-11-24 on the laptop: 25 µs a read, 10,000 reads.
import 'dart:io';

import 'package:drift/native.dart';
import 'package:fhir_r4_db/fhir_r4_db.dart';

Future<void> main() async {
  final dir = await Directory.systemTemp.createTemp('fhir_bench_gen_');
  final db = FhirDb(NativeDatabase(File('${dir.path}/s.db')));
  try {
    await db.searchParameterGeneration();
    const n = 10000;
    final sw = Stopwatch()..start();
    for (var i = 0; i < n; i++) {
      await db.searchParameterGeneration();
    }
    stdout.writeln('generation_read_us=${sw.elapsedMicroseconds / n}');
  } finally {
    await db.close();
    await dir.delete(recursive: true);
  }
}
