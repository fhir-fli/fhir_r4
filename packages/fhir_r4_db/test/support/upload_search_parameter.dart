import 'dart:io';

import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart';
import 'package:sqlite3/sqlite3.dart' show Database;

/// A process of its own that uploads the search parameter `sex` (Patient,
/// token, `Patient.gender`) to the store file at the first argument and
/// then stays up while the store re-indexes it in the background, for
/// search_parameter_indexing_store_test.dart to end with SIGKILL partway.
/// Prints `uploaded` once the parameter is saved.
Future<void> main(List<String> args) async {
  final db = FhirDb(
    NativeDatabase.createInBackground(
      File(args.single),
      setup: _appConnection,
    ),
  );
  await db.fhirDao.saveResource(
    fhir.SearchParameter.fromJson({
      'resourceType': 'SearchParameter',
      'id': 'sex',
      'url': 'http://example.org/SearchParameter/sex',
      'name': 'sex',
      'status': 'active',
      'description': 'test',
      'code': 'sex',
      'base': ['Patient'],
      'type': 'token',
      'expression': 'Patient.gender',
    }),
  );
  stdout.writeln('uploaded');
  await stdout.flush();
  await db.searchParameterIndexing.idle;
  await db.close();
}

void _appConnection(Database raw) => raw
  ..execute('PRAGMA journal_mode = WAL')
  ..execute('PRAGMA busy_timeout = 10000');
