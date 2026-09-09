import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart';
import 'package:test/test.dart';

/// The two store defects of fhirant's REVIEW-2026-09-08 (§3 rows 33, 34),
/// each first a probe that failed against the code
/// (`fhirant_server/tool/review_2026-09-08/probes/OUTPUT.txt`).
void main() {
  late FhirDb db;

  setUp(() async {
    db = FhirDb(NativeDatabase.memory());
    await db.customSelect('SELECT 1').get();
  });
  tearDown(() => db.close());

  Future<int> containedRows() async {
    var n = 0;
    for (final t in [
      'string_search_parameters',
      'token_search_parameters',
      'reference_search_parameters',
      'date_search_parameters',
    ]) {
      n += (await db
              .customSelect(
                "SELECT count(*) AS c FROM $t WHERE resource_type LIKE '#%'",
              )
              .getSingle())
          .read<int>('c');
    }
    return n;
  }

  test('row 34: rebuildSearchIndex keeps the contained-resource rows',
      () async {
    await db.fhirDao.saveResource(
      fhir.Observation(
        id: 'o1'.toFhirString,
        status: fhir.ObservationStatus.final_,
        code: fhir.CodeableConcept(text: 'weight'.toFhirString),
        contained: [
          fhir.Patient(
            id: 'inner'.toFhirString,
            name: [fhir.HumanName(family: 'Contained'.toFhirString)],
          ),
        ],
        subject: fhir.Reference(reference: '#inner'.toFhirString),
      ),
    );
    final before = await containedRows();
    expect(before, greaterThan(0));
    Future<int> chained() async => (await db.fhirDao.search(
          resourceType: fhir.R4ResourceType.Observation,
          searchParameters: {
            'subject.family': ['Contained'],
          },
        ))
            .length;
    expect(await chained(), 1);
    await db.rebuildSearchIndex();
    expect(await containedRows(), before);
    expect(await chained(), 1);
  });

  test('row 33: :missing on the general path answers, and correctly', () async {
    await db.fhirDao.saveResource(
      fhir.Patient(
        id: 'a'.toFhirString,
        gender: fhir.AdministrativeGender.female,
      ),
    );
    await db.fhirDao.saveResource(fhir.Patient(id: 'b'.toFhirString));
    // An `_id` list over 500 values sends the search down the general
    // path, where `:missing` used to select the removed `search_path`
    // column (SqliteException: no such column).
    final manyIds = [...List.generate(501, (i) => 'id$i'), 'a', 'b'];
    Future<List<String>> ids(String missing) async => (await db.fhirDao.search(
          resourceType: fhir.R4ResourceType.Patient,
          searchParameters: {
            'gender:missing': [missing],
            '_id': [manyIds.join(',')],
          },
        ))
            .map((r) => r.id!.valueString!)
            .toList();
    expect(await ids('true'), ['b']);
    expect(await ids('false'), ['a']);
  });

  test(
      'row 36: a live resource carrying the tombstone tag is not deleted, '
      'a deleted one is', () async {
    await db.fhirDao.saveResource(
      fhir.Patient(
        id: 'tagged'.toFhirString,
        meta: fhir.FhirMeta(
          tag: [
            fhir.Coding(
              system: fhir.FhirUri(HistoryEntry.deletedTagSystem),
              code: fhir.FhirCode('DELETED'),
            ),
          ],
        ),
      ),
    );
    final live =
        await db.fhirDao.getHistory(fhir.R4ResourceType.Patient, 'tagged');
    expect(live.single.deleted, isFalse);
    expect(live.single.resource, isNotNull);

    await db.fhirDao.saveResource(fhir.Patient(id: 'gone'.toFhirString));
    await db.fhirDao.deleteResource(fhir.R4ResourceType.Patient, 'gone');
    final versions =
        await db.fhirDao.getHistory(fhir.R4ResourceType.Patient, 'gone');
    expect(versions.first.deleted, isTrue);
    expect(versions.first.resource, isNull);
    expect(versions.last.deleted, isFalse);
    final flag = await db
        .customSelect(
          "SELECT deleted FROM resources_history WHERE id = 'gone' "
          'ORDER BY version_id',
        )
        .get();
    expect(flag.map((r) => r.read<bool>('deleted')).toList(), [false, true]);
  });

  test('row 36: the upgrade back-fills the flag from the old tombstone JSON',
      () async {
    // A tombstone written before schema 13: the tag in the JSON and the
    // flag at its default. The migration step sets the flag from the tag.
    await db.customStatement(
      'INSERT INTO resources_history (resource_type, id, version_id, '
      "resource, last_updated, deleted) VALUES ('Patient', 'old', '2', "
      "'{\"resourceType\":\"Patient\",\"id\":\"old\","
      "\"meta\":{\"versionId\":\"2\",\"tag\":[{\"system\":"
      "\"${HistoryEntry.deletedTagSystem}\",\"code\":\"DELETED\"}]}}', "
      '1, 0)',
    );
    await db.customStatement(
      'INSERT INTO resources_history (resource_type, id, version_id, '
      "resource, last_updated, deleted) VALUES ('Patient', 'alive', '1', "
      "'{\"resourceType\":\"Patient\",\"id\":\"alive\","
      "\"meta\":{\"versionId\":\"1\",\"tag\":[{\"system\":"
      "\"http://example.org\",\"code\":\"DELETED\"}]}}', "
      '1, 0)',
    );
    await db.addHistoryDeletedColumn();
    final rows = await db
        .customSelect(
          'SELECT id, deleted FROM resources_history ORDER BY id',
        )
        .get();
    expect(
      {for (final r in rows) r.read<String>('id'): r.read<bool>('deleted')},
      {'alive': false, 'old': true},
    );
  });
}
