import 'package:drift/drift.dart' show Variable;
import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_db/fhir_r4_db.dart' hide Resource;
import 'package:test/test.dart';

/// Schema 14 (fhirant REVIEW-2026-09-06 §4.5): the current version of a
/// resource is stored once, in `resources`; `resources_history` holds the
/// versions a save replaced and the tombstones. The history interaction
/// still answers with every version. Quoted verbatim from R4B http.html
/// 3.1.0.12 (curled and read whole 2026-09-09): "The interactions create,
/// update, and delete create history entries." and the returned Bundle
/// contains "the specified version history, sorted with oldest versions
/// last, and including deleted resources".
void main() {
  late FhirDb db;
  late FhirDao dao;

  setUp(() {
    db = FhirDb(NativeDatabase.memory());
    dao = db.fhirDao;
  });
  tearDown(() => db.close());

  Future<List<String>> tableVersions(String id) async => (await db.customSelect(
        'SELECT version_id FROM resources_history WHERE id = ? '
        'ORDER BY CAST(version_id AS INTEGER)',
        variables: [Variable.withString(id)],
      ).get())
          .map((r) => r.read<String>('version_id'))
          .toList();

  Future<List<String>> answered(
    String id, {
    DateTime? since,
    DateTime? at,
  }) async =>
      (await dao.getHistory(R4ResourceType.Patient, id, since: since, at: at))
          .map((h) => h.deleted ? 'tombstone-${h.versionId}' : h.versionId)
          .toList();

  Patient patient(String id, [String family = 'A']) => Patient.fromJson({
        'resourceType': 'Patient',
        'id': id,
        'name': [
          {'family': family},
        ],
      });

  test('a create stores the resource once and history still answers it',
      () async {
    await dao.saveResource(patient('p1'));
    expect(await tableVersions('p1'), isEmpty, reason: 'no second copy');
    expect(await answered('p1'), ['1']);
    expect(await dao.countHistory(R4ResourceType.Patient, 'p1'), 1);
    final v1 = await dao.getVersion(R4ResourceType.Patient, 'p1', '1');
    expect(v1!.deleted, isFalse);
    expect(v1.resource!.id!.valueString, 'p1');
    expect(await dao.getVersion(R4ResourceType.Patient, 'p1', '2'), isNull);
    final row = await db
        .customSelect("SELECT version_id FROM resources WHERE id = 'p1'")
        .getSingle();
    expect(row.read<String>('version_id'), '1');
  });

  test('an update moves the replaced version into history, as stored',
      () async {
    await dao.saveResource(patient('p2', 'First'));
    final storedV1 = (await db
            .customSelect("SELECT resource FROM resources WHERE id = 'p2'")
            .getSingle())
        .read<String>('resource');
    await dao.saveResource(patient('p2', 'Second'));
    expect(await tableVersions('p2'), ['1']);
    final historyV1 = (await db
            .customSelect(
              "SELECT resource FROM resources_history WHERE id = 'p2'",
            )
            .getSingle())
        .read<String>('resource');
    expect(historyV1, storedV1, reason: 'the JSON moves, byte for byte');
    expect(await answered('p2'), ['2', '1']);
    expect(await dao.countHistory(R4ResourceType.Patient, 'p2'), 2);
    final v1 = await dao.getVersion(R4ResourceType.Patient, 'p2', '1');
    expect(
      (v1!.resource! as Patient).name!.first.family!.valueString,
      'First',
    );
    final v2 = await dao.getVersion(R4ResourceType.Patient, 'p2', '2');
    expect(
      (v2!.resource! as Patient).name!.first.family!.valueString,
      'Second',
    );
  });

  test('a delete moves the current version into history before the tombstone',
      () async {
    await dao.saveResource(patient('p3'));
    await dao.saveResource(patient('p3', 'B'));
    expect(await dao.deleteResource(R4ResourceType.Patient, 'p3'), isTrue);
    expect(await tableVersions('p3'), ['1', '2', '3']);
    expect(await answered('p3'), ['tombstone-3', '2', '1']);
    expect(await dao.countHistory(R4ResourceType.Patient, 'p3'), 3);
    final v2 = await dao.getVersion(R4ResourceType.Patient, 'p3', '2');
    expect(
      (v2!.resource! as Patient).name!.first.family!.valueString,
      'B',
    );
    expect(
      (await dao.getVersion(R4ResourceType.Patient, 'p3', '3'))!.deleted,
      isTrue,
    );
  });

  test('a batch that holds the same resource twice keeps the first version',
      () async {
    await dao.saveResources([patient('p4', 'one'), patient('p4', 'two')]);
    expect(await tableVersions('p4'), ['1']);
    expect(await answered('p4'), ['2', '1']);
    final current = await dao.getResource(R4ResourceType.Patient, 'p4');
    expect((current! as Patient).name!.first.family!.valueString, 'two');
    // And a later batch over a stored resource moves that row.
    await dao.saveResources([patient('p4', 'three')]);
    expect(await tableVersions('p4'), ['1', '2']);
    expect(await answered('p4'), ['3', '2', '1']);
  });

  test('_since and _at apply across both tables', () async {
    await dao.saveResource(patient('p5'));
    final between = DateTime.now().toUtc().add(const Duration(seconds: 1));
    await Future<void>.delayed(const Duration(milliseconds: 1100));
    await dao.saveResource(patient('p5', 'later'));
    expect(await answered('p5', since: between), ['2']);
    expect(await answered('p5', at: between), ['1']);
    expect(
      await dao.countHistory(R4ResourceType.Patient, 'p5', since: between),
      1,
    );
  });

  test('versionIdAsTime: the replaced version still moves into history',
      () async {
    dao.versionIdAsTime = true;
    await dao.saveResource(patient('p6'));
    await Future<void>.delayed(const Duration(milliseconds: 5));
    await dao.saveResource(patient('p6', 'B'));
    expect(await tableVersions('p6'), hasLength(1));
    expect(await answered('p6'), hasLength(2));
  });

  test('the schema-14 step fills version_id and drops the duplicate copies',
      () async {
    // The pre-14 layout: the current version in both tables, older versions
    // and a tombstone in history only. version_id at its default until the
    // step fills it from the JSON.
    const v3 = '{"resourceType":"Patient","id":"old","meta":{"versionId":"3"}}';
    await db.customStatement(
      'INSERT INTO resources (resource_type, id, resource, last_updated) '
      "VALUES ('Patient', 'old', '$v3', 3)",
    );
    for (final v in ['1', '2', '3']) {
      await db.customStatement(
        'INSERT INTO resources_history (resource_type, id, version_id, '
        "resource, last_updated, deleted) VALUES ('Patient', 'old', '$v', "
        "'{\"resourceType\":\"Patient\",\"id\":\"old\","
        '"meta":{"versionId":"$v"}}\', $v, 0)',
      );
    }
    await db.customStatement(
      'INSERT INTO resources_history (resource_type, id, version_id, '
      "resource, last_updated, deleted) VALUES ('Patient', 'gone', '2', "
      "'{\"resourceType\":\"Patient\",\"id\":\"gone\"}', 2, 1)",
    );
    await db.moveCurrentVersionsOutOfHistory();
    final row = await db
        .customSelect("SELECT version_id FROM resources WHERE id = 'old'")
        .getSingle();
    expect(row.read<String>('version_id'), '3');
    expect(await tableVersions('old'), ['1', '2']);
    expect(await tableVersions('gone'), ['2'], reason: 'tombstones stay');
    expect(await answered('old'), ['3', '2', '1']);
    // Running it again changes nothing.
    await db.moveCurrentVersionsOutOfHistory();
    expect(await tableVersions('old'), ['1', '2']);
  });
}
