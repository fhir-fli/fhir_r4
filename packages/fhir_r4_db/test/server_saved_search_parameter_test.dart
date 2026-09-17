import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart';
import 'package:test/test.dart';

/// A SearchParameter a client saves is checked as an upload the store will
/// index by; one the server saves as itself (`asServer`) is a document.
/// fhirant's load of the shipped definitions was refused whole, and
/// stopped, because it was checked as uploads (found 2026-09-17).
void main() {
  late FhirDb db;
  late FhirDao dao;

  setUp(() async {
    db = FhirDb(NativeDatabase.memory());
    dao = FhirDao(db);
    // Any earlier save loads the uploaded-parameter registry.
    await dao.saveResource(fhir.Patient(id: 'p'.toFhirString));
  });

  tearDown(() => db.close());

  fhir.Resource definition(String id, {String? code, String? expression}) =>
      fhir.Resource.fromJson({
        'resourceType': 'SearchParameter',
        'id': id,
        'url': 'http://example.org/SearchParameter/$id',
        'name': id,
        'status': 'draft',
        'description': id,
        'code': code ?? id,
        'base': ['Patient'],
        'type': 'string',
        if (expression != null) 'expression': expression,
      });

  test('a client save of one with no expression is refused', () {
    expect(
      dao.saveResource(definition('noexpression')),
      throwsA(isA<InvalidSearchParameter>()),
    );
    expect(
      dao.saveResources([definition('noexpression')]),
      throwsA(isA<InvalidSearchParameter>()),
    );
  });

  test('a client save that redefines a built-in code is refused', () {
    expect(
      dao.saveResource(
        definition('family', code: 'family', expression: 'Patient.name.family'),
      ),
      throwsA(isA<InvalidSearchParameter>()),
    );
  });

  test('the server saves both, singly and in a batch, as documents', () async {
    await dao.saveResource(definition('noexpression'), asServer: true);
    expect(
      await dao.saveResources(
        [
          definition(
            'family',
            code: 'family',
            expression: 'Patient.name.family',
          ),
        ],
        asServer: true,
      ),
      isTrue,
    );
    expect(
      await dao.getResourceCount(fhir.R4ResourceType.SearchParameter),
      2,
    );
    // Built-in search is as it was.
    await dao.saveResource(
      fhir.Resource.fromJson({
        'resourceType': 'Patient',
        'id': 'q',
        'name': [
          {'family': 'Okello'},
        ],
      }),
    );
    final found = await dao.search(
      resourceType: fhir.R4ResourceType.Patient,
      searchParameters: {
        'family': ['Okello'],
      },
    );
    expect(found.map((r) => r.id!.valueString), ['q']);
  });
}
