import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_db/fhir_r4_db.dart' hide Resource;
import 'package:test/test.dart';

/// A save that cannot be indexed must fail, and must leave nothing behind.
///
/// It used to do neither. `_updateSearchParameters` caught every exception,
/// printed it and returned `false`; `saveResource` ignored the `false` and
/// returned the resource. The row was in `resources` and had no index rows,
/// so every search missed it while the caller had been told the save worked.
/// That is the silently-wrong outcome, and it is what these tests pin.
Future<void> main() async {
  late FhirDb fhirDb;
  late FhirDao dao;

  final patient = Patient.fromJson({
    'resourceType': 'Patient',
    'id': 'p1',
    'name': [
      {'family': 'Okello'},
    ],
  });

  setUp(() {
    fhirDb = FhirDb(NativeDatabase.memory());
    dao = fhirDb.fhirDao;
  });

  tearDown(() => fhirDb.close());

  test('the save succeeds and the resource is searchable', () async {
    await dao.saveResource(patient);

    final found = await dao.search(
      resourceType: R4ResourceType.Patient,
      searchParameters: {
        'family': ['Okello'],
      },
    );
    expect(found.map((r) => r.id?.valueString), ['p1']);
  });

  test('a save whose indexing fails throws instead of returning', () async {
    dao.extractSearchParameters = (_) => throw StateError('index is broken');

    await expectLater(
      dao.saveResource(patient),
      throwsA(isA<StateError>()),
    );
  });

  test('a save whose indexing fails stores nothing', () async {
    dao.extractSearchParameters = (_) => throw StateError('index is broken');

    await expectLater(
      dao.saveResource(patient),
      throwsA(isA<StateError>()),
    );

    // Not merely absent from the index: absent from the store, because the
    // row and its index rows go in one transaction.
    dao.extractSearchParameters = updateSearchParameters;
    expect(
      await dao.getResource(R4ResourceType.Patient, 'p1'),
      isNull,
    );
    expect(
      await dao.search(
        resourceType: R4ResourceType.Patient,
        searchParameters: {
          'family': ['Okello'],
        },
      ),
      isEmpty,
    );
  });

  test('a failed save leaves the previous version in place', () async {
    await dao.saveResource(patient);

    dao.extractSearchParameters = (_) => throw StateError('index is broken');
    await expectLater(
      dao.saveResource(
        Patient.fromJson({
          'resourceType': 'Patient',
          'id': 'p1',
          'name': [
            {'family': 'Changed'},
          ],
        }),
      ),
      throwsA(isA<StateError>()),
    );

    dao.extractSearchParameters = updateSearchParameters;
    final stored = await dao.getResource(R4ResourceType.Patient, 'p1');
    expect(
      (stored! as Patient).name?.first.family?.valueString,
      'Okello',
    );
    final found = await dao.search(
      resourceType: R4ResourceType.Patient,
      searchParameters: {
        'family': ['Okello'],
      },
    );
    expect(found.map((r) => r.id?.valueString), ['p1']);
  });

  test('saveResources reports a failed bulk index as false', () async {
    dao.extractSearchParameters = (_) => throw StateError('index is broken');

    // saveResources keeps its bool contract: its own catch turns the failure
    // into `false`, which every caller can act on. What it must not do is
    // return true.
    expect(await dao.saveResources([patient]), isFalse);
  });
}
