import 'dart:io';

import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart';
import 'package:test/test.dart';

/// Two connections to one store file, as an app has when a background
/// service and its screens each open the store: a `SearchParameter` saved,
/// changed or deleted through one is known to the other at its next search
/// or save (fhir_db `FhirDb.searchParameterGeneration`). Measured
/// 2026-11-24 before this: the second connection searched by an uploaded
/// code as if it were absent, and its saves wrote no rows under it, until
/// it was reopened.
void main() {
  late Directory dir;
  late File file;
  late FhirDb server;
  late FhirDb screen;

  setUp(() async {
    dir = await Directory.systemTemp.createTemp('fhir_r4_db_sp_two_');
    file = File('${dir.path}/s.db');
    server = FhirDb(NativeDatabase(file));
    screen = FhirDb(NativeDatabase(file));
  });

  tearDown(() async {
    await server.searchParameterIndexing.idle;
    await screen.searchParameterIndexing.idle;
    await server.close();
    await screen.close();
    await dir.delete(recursive: true);
  });

  fhir.SearchParameter parameter({String expression = 'Patient.gender'}) =>
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
        'expression': expression,
      });

  fhir.Patient patient(String id, String gender, {String? marital}) =>
      fhir.Patient.fromJson({
        'resourceType': 'Patient',
        'id': id,
        'gender': gender,
        if (marital != null)
          'maritalStatus': {
            'coding': [
              {'code': marital},
            ],
          },
      });

  Future<List<String>> sex(FhirDb db, String value) async =>
      (await db.fhirDao.search(
        resourceType: fhir.R4ResourceType.Patient,
        searchParameters: {
          'sex': [value],
        },
      ))
          .map((r) => r.id!.valueString!)
          .toList()
        ..sort();

  test('a parameter uploaded through one is searched by the other', () async {
    await server.fhirDao.saveResources([
      patient('f', 'female'),
      patient('m', 'male'),
    ]);
    // Each has read its uploaded parameters (none) before the upload.
    expect(await sex(screen, 'female'), ['f', 'm']);
    expect(await sex(server, 'female'), ['f', 'm']);

    await server.fhirDao.saveResource(parameter());
    await server.searchParameterIndexing.idle;

    expect(await sex(server, 'female'), ['f']);
    expect(await sex(screen, 'female'), ['f']);
    // The other connection reads how it ended.
    final status = await screen.searchParameterIndexing.status();
    expect(status.map((s) => s.code), ['sex']);
    expect(status.single.state, SearchParameterIndexState.done);
    expect(status.single.resourcesRead, 2);
  });

  test("the other's saves are indexed under it", () async {
    expect(await sex(screen, 'female'), isEmpty);
    await server.fhirDao.saveResource(parameter());
    await server.searchParameterIndexing.idle;

    await screen.fhirDao.saveResource(patient('f2', 'female'));
    expect(await sex(server, 'female'), ['f2']);
  });

  test('a change and a delete through one reach the other', () async {
    await server.fhirDao.saveResources([
      patient('f', 'female', marital: 'M'),
      patient('m', 'male'),
    ]);
    await server.fhirDao.saveResource(parameter());
    await server.searchParameterIndexing.idle;
    expect(await sex(screen, 'female'), ['f']);

    await server.fhirDao.saveResource(
      parameter(expression: 'Patient.maritalStatus.coding.code'),
    );
    await server.searchParameterIndexing.idle;
    await screen.fhirDao.saveResource(patient('s', 'female', marital: 'S'));
    expect(await sex(screen, 'S'), ['s']);
    expect(await sex(screen, 'M'), ['f']);

    await server.fhirDao.deleteResource(
      fhir.R4ResourceType.SearchParameter,
      'sex',
    );
    await server.searchParameterIndexing.idle;
    expect(await sex(screen, 'M'), ['f', 'm', 's']);
  });

  test('an upload inside a transaction that rolled back changes nothing',
      () async {
    await server.fhirDao.saveResources([
      patient('f', 'female'),
      patient('m', 'male'),
    ]);
    expect(await sex(server, 'female'), ['f', 'm']);
    await expectLater(
      server.transaction(() async {
        await server.fhirDao.saveResource(parameter());
        throw StateError('rolled back');
      }),
      throwsStateError,
    );
    await server.searchParameterIndexing.idle;
    expect(await sex(server, 'female'), ['f', 'm']);
    expect(await sex(screen, 'female'), ['f', 'm']);

    await server.fhirDao.saveResource(parameter());
    await server.searchParameterIndexing.idle;
    expect(await sex(screen, 'female'), ['f']);
  });

  test('a first use inside a transaction that rolled back leaves it working',
      () async {
    // The count's table is created at first use; here that creation is
    // inside a transaction that rolls back, and so is undone.
    await expectLater(
      server.transaction(() async {
        await server.fhirDao.saveResource(patient('f', 'female'));
        throw StateError('rolled back');
      }),
      throwsStateError,
    );
    await server.fhirDao.saveResource(patient('m', 'male'));
    await screen.fhirDao.saveResource(parameter());
    await screen.searchParameterIndexing.idle;
    expect(await sex(server, 'male'), ['m']);
  });
}
