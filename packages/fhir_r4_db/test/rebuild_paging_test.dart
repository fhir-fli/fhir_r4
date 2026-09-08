import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart';
import 'package:test/test.dart';

/// `rebuildSearchIndex` pages the resources table by keyset over
/// (resource_type, id). Every resource across several pages and a type
/// boundary is re-indexed, and the result equals what saving wrote.
void main() {
  test('a rebuild over more than one page indexes every resource', () async {
    final db = FhirDb(NativeDatabase.memory());
    addTearDown(db.close);
    final dao = FhirDao(db);
    await dao.saveResources([
      for (var i = 0; i < 700; i++)
        fhir.Patient.fromJson({
          'resourceType': 'Patient',
          'id': 'p${i.toString().padLeft(4, '0')}',
          'gender': i.isEven ? 'male' : 'female',
        }),
      for (var i = 0; i < 600; i++)
        fhir.Observation.fromJson({
          'resourceType': 'Observation',
          'id': 'o${i.toString().padLeft(4, '0')}',
          'status': 'final',
          'code': {'text': 'n$i'},
        }),
    ]);
    Future<Map<String, int>> tokenRows() async {
      final rows = await db
          .customSelect(
            'SELECT resource_type AS t, count(*) AS c FROM '
            'token_search_parameters GROUP BY resource_type',
          )
          .get();
      return {for (final r in rows) r.read<String>('t'): r.read<int>('c')};
    }

    final before = await tokenRows();
    expect(before['Patient'], greaterThanOrEqualTo(700));
    expect(before['Observation'], greaterThanOrEqualTo(600));

    await db.rebuildSearchIndex();

    expect(await tokenRows(), before);
    expect(
      await dao.searchCount(
        resourceType: fhir.R4ResourceType.Patient,
        searchParameters: {
          'gender': ['male'],
        },
      ),
      350,
    );
    expect(
      await dao.searchCount(
        resourceType: fhir.R4ResourceType.Observation,
        searchParameters: {
          'status': ['final'],
        },
      ),
      600,
    );
  });
}
