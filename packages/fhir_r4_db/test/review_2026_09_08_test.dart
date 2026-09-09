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
}
