import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_db/fhir_r4_db.dart' hide Resource;
import 'package:test/test.dart';

/// The compartment context, R4B search.html 3.1.1.2:
/// `GET [base]/Patient/[id]/Observation?…` searches the Observations in that
/// Patient's compartment, ANDed with the rest of the query.
/// compartmentdefinition-patient puts an Observation there through `subject`
/// or `performer`, an Encounter through `patient`, a Patient through `link`.
Future<void> main() async {
  late FhirDb db;
  late FhirDao dao;

  Map<String, dynamic> observation(
    String id, {
    String? subject,
    String? performer,
    String code = 'A',
  }) =>
      {
        'resourceType': 'Observation',
        'id': id,
        'status': 'final',
        'code': {
          'coding': [
            {'system': 'http://example.org', 'code': code},
          ],
        },
        if (subject != null) 'subject': {'reference': subject},
        if (performer != null)
          'performer': [
            {'reference': performer},
          ],
      };

  setUp(() async {
    db = FhirDb(NativeDatabase.memory());
    dao = db.fhirDao;
    await dao.saveResource(
      Patient.fromJson({'resourceType': 'Patient', 'id': 'p1'}),
    );
    await dao.saveResource(
      Patient.fromJson({'resourceType': 'Patient', 'id': 'p2'}),
    );
    // A Patient in p1's compartment through `link` (Patient.link.other).
    await dao.saveResource(
      Patient.fromJson({
        'resourceType': 'Patient',
        'id': 'p1-linked',
        'link': [
          {
            'other': {'reference': 'Patient/p1'},
            'type': 'seealso'
          },
        ],
      }),
    );
    await dao.saveResource(
      Observation.fromJson(observation('o-subject', subject: 'Patient/p1')),
    );
    await dao.saveResource(
      Observation.fromJson(
        observation('o-performer', performer: 'Patient/p1', code: 'B'),
      ),
    );
    await dao.saveResource(
      Observation.fromJson(
        observation('o-both', subject: 'Patient/p1', performer: 'Patient/p1'),
      ),
    );
    await dao.saveResource(
      Observation.fromJson(observation('o-other', subject: 'Patient/p2')),
    );
    await dao.saveResource(
      Observation.fromJson(observation('o-none')),
    );
    await dao.saveResource(
      Encounter.fromJson({
        'resourceType': 'Encounter',
        'id': 'e1',
        'status': 'finished',
        'class': {
          'system': 'http://terminology.hl7.org/CodeSystem/v3-ActCode',
          'code': 'AMB',
        },
        'subject': {'reference': 'Patient/p1'},
      }),
    );
  });

  tearDown(() async {
    await db.close();
  });

  const p1 = CompartmentScope('Patient', 'p1');

  Future<List<String>> ids(
    R4ResourceType type, {
    Map<String, List<String>>? params,
    CompartmentScope compartment = p1,
    int? count,
    int? offset,
    List<String>? sort,
  }) async {
    final found = await dao.search(
      resourceType: type,
      searchParameters: params,
      compartment: compartment,
      count: count,
      offset: offset,
      sort: sort,
    );
    return found.map((r) => r.id!.valueString!).toList()..sort();
  }

  test('every parameter the definition names puts a resource in', () async {
    // Observation: subject OR performer (compartmentdefinition-patient).
    expect(
      await ids(R4ResourceType.Observation),
      ['o-both', 'o-performer', 'o-subject'],
    );
    expect(dao.lastSearchPagedInSql, isTrue, reason: 'one SQL condition');
  });

  test('a resource pointing at another patient, or at none, is out', () async {
    final found = await ids(R4ResourceType.Observation);
    expect(found, isNot(contains('o-other')));
    expect(found, isNot(contains('o-none')));
  });

  test('the compartment ANDs with the query', () async {
    expect(
      await ids(R4ResourceType.Observation, params: {
        'code': ['B']
      }),
      ['o-performer'],
    );
    expect(dao.lastSearchPagedInSql, isTrue);
    // A parameter that matches outside the compartment finds nothing inside.
    expect(
      await ids(R4ResourceType.Observation, params: {
        '_id': ['o-other']
      }),
      isEmpty,
    );
  });

  test('a comma, which takes the general path, is still scoped', () async {
    expect(
      await ids(R4ResourceType.Observation, params: {
        'code': ['A,B']
      }),
      ['o-both', 'o-performer', 'o-subject'],
    );
    expect(
      await ids(
        R4ResourceType.Observation,
        params: {
          'code:not': ['B']
        },
      ),
      ['o-both', 'o-subject'],
    );
  });

  test('the focal type: the focal resource and any linked to it', () async {
    expect(await ids(R4ResourceType.Patient), ['p1', 'p1-linked']);
    expect(
      await ids(R4ResourceType.Patient, params: {
        '_id': ['p1-linked']
      }),
      ['p1-linked'],
    );
  });

  test('another compartment, another parameter', () async {
    expect(
      await ids(
        R4ResourceType.Observation,
        compartment: const CompartmentScope('Encounter', 'e1'),
      ),
      isEmpty,
      reason: 'no Observation names e1 as its encounter',
    );
    expect(await ids(R4ResourceType.Encounter), ['e1']);
  });

  test('a type the compartment does not include is empty, and counts 0',
      () async {
    // No Patient-compartment entry names ValueSet.
    expect(await ids(R4ResourceType.ValueSet), isEmpty);
    expect(
      await dao.searchCount(
        resourceType: R4ResourceType.ValueSet,
        compartment: p1,
      ),
      0,
    );
    // An unknown compartment type is nothing, not everything.
    expect(
      await ids(
        R4ResourceType.Observation,
        compartment: const CompartmentScope('ValueSet', 'x'),
      ),
      isEmpty,
    );
  });

  test('searchCount is scoped, with and without a query', () async {
    expect(
      await dao.searchCount(
        resourceType: R4ResourceType.Observation,
        compartment: p1,
      ),
      3,
    );
    expect(
      await dao.searchCount(
        resourceType: R4ResourceType.Observation,
        searchParameters: {
          'code': ['B']
        },
        compartment: p1,
      ),
      1,
    );
    expect(
      await dao.searchCount(
        resourceType: R4ResourceType.Observation,
        searchParameters: {
          'code': ['A,B']
        },
        compartment: p1,
      ),
      3,
      reason: 'the general path counts the scoped set too',
    );
  });

  test('pages and sorts inside the compartment', () async {
    final first = await ids(R4ResourceType.Observation, count: 2);
    final second = await ids(R4ResourceType.Observation, count: 2, offset: 2);
    expect(first.length, 2);
    expect(second.length, 1);
    expect({...first, ...second}, {'o-both', 'o-performer', 'o-subject'});
    final sorted = await dao.search(
      resourceType: R4ResourceType.Observation,
      compartment: p1,
      sort: ['-_id'],
    );
    expect(
      sorted.map((r) => r.id!.valueString).toList(),
      ['o-subject', 'o-performer', 'o-both'],
    );
  });

  test('compartmentMembers lists every type, the focal resource included',
      () async {
    final members = await dao.compartmentMembers(p1);
    expect(members['Patient'], {'p1', 'p1-linked'});
    expect(members['Observation'], {'o-both', 'o-performer', 'o-subject'});
    expect(members['Encounter'], {'e1'});
    expect(members.keys, isNot(contains('ValueSet')));
  });

  test('compartmentMembers honours types and since', () async {
    final only = await dao.compartmentMembers(p1, types: ['Encounter']);
    expect(only.keys, ['Encounter']);
    final future = await dao.compartmentMembers(p1, since: DateTime(2200));
    expect(future, isEmpty, reason: 'nothing was updated after 2200');
    final past = await dao.compartmentMembers(p1, since: DateTime(2000));
    expect(past['Observation'], hasLength(3));
  });

  test('an empty compartment: the focal resource does not exist', () async {
    expect(
      await ids(
        R4ResourceType.Observation,
        compartment: const CompartmentScope('Patient', 'nobody'),
      ),
      isEmpty,
    );
    expect(
      await dao.compartmentMembers(const CompartmentScope('Patient', 'nobody')),
      isEmpty,
    );
  });
}
