import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_db/fhir_r4_db.dart' hide Resource;
import 'package:test/test.dart';

/// R4 3.1.1.4.17 gives the two separators different meanings:
///
/// > If a parameter repeats, such as `/Patient?language=FR&language=NL`, then
/// > this matches a patient who speaks **both** languages. This is known as an
/// > AND search parameter...
/// >
/// > If, instead, the search is to find patients that speak **either**
/// > language, then this is a single parameter with multiple values, separated
/// > by a `,`.
///
/// One element of the `searchParameters` list is one REPETITION. Elements are
/// ANDed; the comma split inside an element is ORed. Passing the whole list to
/// a single resolve, which is what this used to do, made every repeat behave
/// as OR.
Future<void> main() async {
  late FhirDb fhirDb;
  late FhirDao dao;

  Future<List<String>> ids(
    R4ResourceType type,
    Map<String, List<String>> params,
  ) async =>
      (await dao.search(resourceType: type, searchParameters: params))
          .map((r) => r.id?.valueString ?? '')
          .toList()
        ..sort();

  setUp(() async {
    fhirDb = FhirDb(NativeDatabase.memory());
    dao = fhirDb.fhirDao;
    await dao.saveResource(
      Patient.fromJson({
        'resourceType': 'Patient',
        'id': 'both',
        'name': [
          {
            'given': ['Anna', 'Beth'],
          },
        ],
      }),
    );
    await dao.saveResource(
      Patient.fromJson({
        'resourceType': 'Patient',
        'id': 'onlyA',
        'name': [
          {
            'given': ['Anna'],
          },
        ],
      }),
    );
    await dao.saveResource(
      Patient.fromJson({
        'resourceType': 'Patient',
        'id': 'onlyB',
        'name': [
          {
            'given': ['Beth'],
          },
        ],
      }),
    );
  });

  tearDown(() async => fhirDb.close());

  test('a known positive, so an empty result below means the join', () async {
    expect(
      await ids(R4ResourceType.Patient, {
        'given': ['Anna'],
      }),
      equals(['both', 'onlyA']),
    );
  });

  test('a repeated parameter is AND: only the record with both', () async {
    expect(
      await ids(R4ResourceType.Patient, {
        'given': ['Anna', 'Beth'],
      }),
      equals(['both']),
    );
  });

  test('a comma inside one value is OR: every record with either', () async {
    expect(
      await ids(R4ResourceType.Patient, {
        'given': ['Anna,Beth'],
      }),
      equals(['both', 'onlyA', 'onlyB']),
    );
  });

  test('the two are not the same query', () async {
    final and = await ids(R4ResourceType.Patient, {
      'given': ['Anna', 'Beth'],
    });
    final or = await ids(R4ResourceType.Patient, {
      'given': ['Anna,Beth'],
    });
    expect(and, isNot(equals(or)));
  });

  test('AND and OR combine: either given, ANDed with a family', () async {
    await dao.saveResource(
      Patient.fromJson({
        'resourceType': 'Patient',
        'id': 'withFamily',
        'name': [
          {
            'given': ['Anna'],
            'family': 'Okello',
          },
        ],
      }),
    );
    expect(
      await ids(R4ResourceType.Patient, {
        'given': ['Anna,Beth'],
        'family': ['Okello'],
      }),
      equals(['withFamily']),
    );
  });

  test('an escaped comma is one value, not two', () async {
    await dao.saveResource(
      Organization.fromJson({
        'resourceType': 'Organization',
        'id': 'comma',
        'name': 'Clinic, North Wing',
      }),
    );
    await dao.saveResource(
      Organization.fromJson({
        'resourceType': 'Organization',
        'id': 'plain',
        'name': 'Clinic',
      }),
    );
    // Unescaped this is two OR values, and "Clinic" matches both records.
    expect(
      await ids(R4ResourceType.Organization, {
        'name': [r'Clinic\, North'],
      }),
      equals(['comma']),
    );
    expect(
      await ids(R4ResourceType.Organization, {
        'name': ['Clinic, North'],
      }),
      equals(['comma', 'plain']),
    );
  });

  test('_id repeats intersect, which a resource can never satisfy', () async {
    expect(
      await ids(R4ResourceType.Patient, {
        '_id': ['both'],
      }),
      equals(['both']),
    );
    expect(
      await ids(R4ResourceType.Patient, {
        '_id': ['both,onlyA'],
      }),
      equals(['both', 'onlyA']),
    );
    expect(
      await ids(R4ResourceType.Patient, {
        '_id': ['both', 'onlyA'],
      }),
      isEmpty,
      reason: 'a resource has one id, so ANDing two different ones matches '
          'nothing, which is what the spec asks for',
    );
  });
}
