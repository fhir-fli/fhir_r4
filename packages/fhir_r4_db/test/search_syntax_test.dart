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

  group('an unsupported modifier is rejected, not ignored', () {
    // R4 3.1.1.4.4, a SHALL: "Server SHALL reject any search request that
    // contains is suffixed by a modifier that the server does not support for
    // that parameter ... using an HTTP 400 error". Contrast an unknown
    // PARAMETER, which the same page says a server SHOULD ignore: ignoring a
    // parameter only widens the result set and the self link discloses it,
    // while ignoring a modifier changes what the query means silently.
    test('a modifier from another type is refused', () async {
      // :exact is a string modifier. gender is a token.
      await expectLater(
        ids(R4ResourceType.Patient, 'gender:exact', 'male'),
        throwsA(isA<UnsupportedSearchModifier>()),
      );
    });

    test('an invented modifier is refused', () async {
      await expectLater(
        ids(R4ResourceType.Patient, 'family:banana', 'Faulkenberry'),
        throwsA(isA<UnsupportedSearchModifier>()),
      );
    });

    test('the message names the parameter, its type, and what is allowed',
        () async {
      try {
        await ids(R4ResourceType.Patient, 'gender:contains', 'male');
        fail('expected a rejection');
      } on UnsupportedSearchModifier catch (e) {
        expect(e.message, contains('gender'));
        expect(e.message, contains('token'));
        expect(e.message, contains(':not'));
      }
    });

    test('a modifier the type DOES allow is not refused', () async {
      await expectLater(
        ids(R4ResourceType.Patient, 'gender:not', 'female'),
        completes,
      );
      await expectLater(
        ids(R4ResourceType.Patient, 'family:exact', 'Faulkenberry'),
        completes,
      );
    });

    test('a reference takes a resource type as its modifier', () async {
      await expectLater(
        ids(R4ResourceType.Observation, 'subject:Patient', 'p1'),
        completes,
      );
    });

    test('an unknown PARAMETER is not rejected on this basis', () async {
      // Nothing is known about it, so its modifier cannot be judged, and
      // refusing would reject searches a deployment does support.
      await expectLater(
        ids(R4ResourceType.Patient, 'not-a-parameter:exact', 'x'),
        completes,
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

  group('string search is normalized by case and combining characters', () {
    // R4 3.1.1.4.8: a string search "is insensitive to casing and included
    // combining characters, like accents or other diacritical marks", and a
    // field matches "after both have been normalized by case and combining
    // characters".
    test('case, which already worked', () async {
      expect(
        await ids(R4ResourceType.Patient, 'family', 'FAULKEN'),
        equals(['p1']),
      );
    });

    test('an accented stored value is found by an unaccented query', () async {
      await dao.saveResource(
        Patient.fromJson({
          'resourceType': 'Patient',
          'id': 'accented',
          'name': [
            {'family': 'Mu\u00f1oz'},
          ],
        }),
      );
      // p2 is stored as plain "Munoz" in the fixture above; both fold the same
      // way, so both come back.
      expect(
        await ids(R4ResourceType.Patient, 'family', 'Munoz'),
        equals(['accented', 'p2']),
      );
    });

    test('an unaccented stored value is found by an accented query', () async {
      expect(
        await ids(R4ResourceType.Patient, 'family', 'Mu\u00f1oz'),
        equals(['p2']),
        reason: 'the query is folded the same way the index was',
      );
    });

    test('a prefix search folds too', () async {
      await dao.saveResource(
        Patient.fromJson({
          'resourceType': 'Patient',
          'id': 'accented',
          'name': [
            {'family': 'Mu\u00f1oz'},
          ],
        }),
      );
      // "Mun" is not a prefix of "Mu\u00f1oz" character by character; it is a
      // prefix of the folded form, which is what the default search compares.
      expect(
        await ids(R4ResourceType.Patient, 'family', 'Mun'),
        equals(['accented', 'p2']),
      );
    });

    test(':exact respects casing, because it is exact', () async {
      // "returns results that match the entire supplied parameter, including
      // casing and combining characters".
      expect(
        await ids(R4ResourceType.Patient, 'family:exact', 'Faulkenberry'),
        equals(['p1']),
      );
      expect(
        await ids(R4ResourceType.Patient, 'family:exact', 'faulkenberry'),
        isEmpty,
      );
      expect(
        await ids(R4ResourceType.Patient, 'family:exact', 'FAULKENBERRY'),
        isEmpty,
      );
    });

    test(':exact respects accents too', () async {
      await dao.saveResource(
        Patient.fromJson({
          'resourceType': 'Patient',
          'id': 'accented',
          'name': [
            {'family': 'Mu\u00f1oz'},
          ],
        }),
      );
      expect(
        await ids(R4ResourceType.Patient, 'family:exact', 'Mu\u00f1oz'),
        equals(['accented']),
      );
      expect(
        await ids(R4ResourceType.Patient, 'family:exact', 'Munoz'),
        equals(['p2']),
        reason: 'the unaccented spelling is a different value, and :exact '
            'must not collapse them',
      );
    });
  });

  group('reference and uri modifiers', () {
    setUp(() async {
      await dao.saveResource(
        Observation.fromJson({
          'resourceType': 'Observation',
          'id': 'obs-ref',
          'status': 'final',
          'code': {
            'coding': [
              {'system': 'http://loinc.org', 'code': '1975-2'},
            ],
          },
          'subject': {
            'reference': 'Patient/p1',
            'identifier': {
              'system': 'http://example.org/mrn',
              'value': '12345',
            },
          },
        }),
      );
      await dao.saveResource(
        ValueSet.fromJson({
          'resourceType': 'ValueSet',
          'id': 'vs-deep',
          'url': 'http://acme.org/fhir/ValueSet/123',
          'status': 'active',
        }),
      );
    });

    test('a plain reference search works, so a zero below is the modifier',
        () async {
      expect(
        await ids(R4ResourceType.Observation, 'subject', 'Patient/p1'),
        equals(['obs-ref']),
      );
    });

    test('subject:Patient=p1 has the same effect as subject=Patient/p1',
        () async {
      // R4 3.1.1.4.12 says exactly that of these two forms.
      expect(
        await ids(R4ResourceType.Observation, 'subject:Patient', 'p1'),
        equals(['obs-ref']),
      );
    });

    test('a resource-type modifier that does not match finds nothing',
        () async {
      expect(
        await ids(R4ResourceType.Observation, 'subject:Group', 'p1'),
        isEmpty,
      );
    });

    test(':identifier tests the reference, not the referenced resource',
        () async {
      expect(
        await ids(
          R4ResourceType.Observation,
          'subject:identifier',
          'http://example.org/mrn|12345',
        ),
        equals(['obs-ref']),
      );
    });

    test(':identifier with the wrong system finds nothing', () async {
      expect(
        await ids(
          R4ResourceType.Observation,
          'subject:identifier',
          'http://elsewhere.org/mrn|12345',
        ),
        isEmpty,
      );
    });

    test('uri :below left-matches the stored value', () async {
      // The spec's own example: url:below=http://acme.org/fhir/ returns value
      // sets whose url starts with it.
      expect(
        await ids(
          R4ResourceType.ValueSet,
          'url:below',
          'http://acme.org/fhir/',
        ),
        equals(['vs-deep']),
      );
    });

    test('uri :above matches a stored value that is a prefix of the query',
        () async {
      expect(
        await ids(
          R4ResourceType.ValueSet,
          'url:above',
          'http://acme.org/fhir/ValueSet/123/_history/5',
        ),
        equals(['vs-deep']),
      );
    });

    test('a plain uri search is still exact', () async {
      expect(
        await ids(R4ResourceType.ValueSet, 'url', 'http://acme.org/fhir/'),
        isEmpty,
        reason: 'without :below the whole URI must match',
      );
    });
  });
}
