import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_db/fhir_r4_db.dart' hide Resource;
import 'package:test/test.dart';

/// R4 search.html gives exactly two forms:
///
///   [parameter]:[modifier]=[value]     — modifier on the NAME
///   [parameter]=[prefix][value]        — prefix on the VALUE
///
/// This DAO read both off the END OF THE VALUE (`family=Smith:exact`), a third
/// form the specification does not have. Every modifier and every comparator
/// was therefore unreachable from a conforming client: measured 2026-08-29,
/// 33 of 40 matrix rows returned nothing, and the 7 that returned anything
/// were plain queries with no modifier at all.
///
/// Each group starts with the plain query as a known positive, so a zero here
/// means the modifier failed rather than the fixture being wrong.
Future<void> main() async {
  late FhirDb fhirDb;
  late FhirDao dao;

  Future<List<String>> ids(
    R4ResourceType type,
    String param,
    String value,
  ) async =>
      (await dao.search(
        resourceType: type,
        searchParameters: {
          param: [value],
        },
      ))
          .map((r) => r.id?.valueString ?? '')
          .toList()
        ..sort();

  setUp(() async {
    fhirDb = FhirDb(NativeDatabase.memory());
    dao = fhirDb.fhirDao;

    await dao.saveResource(
      Patient.fromJson({
        'resourceType': 'Patient',
        'id': 'p1',
        'gender': 'male',
        'birthDate': '1980-05-15',
        'name': [
          {
            'family': 'Faulkenberry',
            'given': ['Grey'],
          },
        ],
      }),
    );
    await dao.saveResource(
      Patient.fromJson({
        'resourceType': 'Patient',
        'id': 'p2',
        'name': [
          {'family': 'Munoz'},
        ],
      }),
    );
    await dao.saveResource(
      Organization.fromJson({
        'resourceType': 'Organization',
        'id': 'north',
        'name': 'Clinic: North Wing',
      }),
    );
  });

  tearDown(() async => fhirDb.close());

  group('the modifier goes on the parameter NAME', () {
    test('plain string search works, so a zero below is the modifier',
        () async {
      expect(
        await ids(R4ResourceType.Patient, 'family', 'Faulkenberry'),
        equals(['p1']),
      );
    });

    // The casing half of :exact needs the ORIGINAL value in the index, which
    // today stores only input.toLowerCase(). That is the schema slice, and the
    // assertion for it is held with those tests rather than weakened here.
    test(':exact matches the whole value, not a prefix of it', () async {
      expect(
        await ids(R4ResourceType.Patient, 'family:exact', 'Faulkenberry'),
        equals(['p1']),
      );
      expect(
        await ids(R4ResourceType.Patient, 'family:exact', 'Faulken'),
        isEmpty,
        reason: ':exact is not a prefix match',
      );
    });

    test(':contains matches anywhere in the field', () async {
      expect(
        await ids(R4ResourceType.Patient, 'family:contains', 'kenberry'),
        equals(['p1']),
      );
    });

    test(':missing finds resources with and without the element', () async {
      expect(
        await ids(R4ResourceType.Patient, 'gender:missing', 'true'),
        equals(['p2']),
      );
      expect(
        await ids(R4ResourceType.Patient, 'gender:missing', 'false'),
        equals(['p1']),
      );
    });

    test('the invented value:modifier form is NOT honoured', () async {
      // It only ever worked here. Accepting it would keep a syntax no
      // conforming client sends, and it is what truncated real values.
      expect(
        await ids(R4ResourceType.Patient, 'family', 'Faulkenberry:exact'),
        isEmpty,
      );
    });
  });

  group('a colon inside a VALUE is data, not syntax', () {
    test('the whole name matches', () async {
      expect(
        await ids(R4ResourceType.Organization, 'name', 'Clinic: North'),
        equals(['north']),
      );
    });

    test('a different wing does not match', () async {
      // This returned the North Wing before the fix, because the value was
      // truncated at the colon and both sides became "Clinic". A wrong record
      // is worse than a missing one.
      expect(
        await ids(R4ResourceType.Organization, 'name', 'Clinic: SOUTH Wing'),
        isEmpty,
      );
    });
  });

  group('the prefix goes on the VALUE, for ordered types', () {
    test('plain date search works, so a zero below is the prefix', () async {
      expect(
        await ids(R4ResourceType.Patient, 'birthdate', '1980-05-15'),
        equals(['p1']),
      );
    });

    test('eq, gt, lt, ge, le all select correctly', () async {
      Future<List<String>> b(String v) async =>
          ids(R4ResourceType.Patient, 'birthdate', v);

      expect(await b('eq1980-05-15'), equals(['p1']));
      expect(await b('gt1980-01-01'), equals(['p1']));
      expect(await b('gt1990-01-01'), isEmpty);
      expect(await b('lt1990-01-01'), equals(['p1']));
      expect(await b('lt1970-01-01'), isEmpty);
      expect(await b('ge1980-05-15'), equals(['p1']));
      expect(await b('le1980-05-15'), equals(['p1']));
    });

    test('sa and eb select correctly', () async {
      Future<List<String>> b(String v) async =>
          ids(R4ResourceType.Patient, 'birthdate', v);

      expect(await b('sa1980-01-01'), equals(['p1']));
      expect(await b('eb1990-01-01'), equals(['p1']));
    });
  });
}
