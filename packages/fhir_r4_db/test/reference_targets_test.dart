import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_db/fhir_r4_db.dart' hide Resource;
import 'package:test/test.dart';

/// `referenceTargets`: what `_include` reads.
///
/// R4B search.html 3.1.1.5.4, read whole 2026-09-06: "Both _include and
/// _revinclude are based on search parameters, rather than paths in the
/// resource". So `_include=Observation:patient` follows the `patient` search
/// parameter, whose element is `Observation.subject`, and finds the Patient.
Future<void> main() async {
  late FhirDb db;
  late FhirDao dao;

  Map<String, dynamic> observation(
    String id, {
    String? subject,
    List<String> performers = const [],
    Map<String, dynamic>? subjectIdentifier,
  }) =>
      {
        'resourceType': 'Observation',
        'id': id,
        'status': 'final',
        'code': {
          'coding': [
            {'system': 'http://example.org', 'code': 'A'},
          ],
        },
        if (subject != null) 'subject': {'reference': subject},
        if (subjectIdentifier != null)
          'subject': {'identifier': subjectIdentifier},
        if (performers.isNotEmpty)
          'performer': [
            for (final p in performers) {'reference': p},
          ],
      };

  setUp(() async {
    db = FhirDb(NativeDatabase.memory());
    dao = db.fhirDao;
    await dao.saveResource(
      Observation.fromJson(
        observation(
          'o1',
          subject: 'Patient/p1',
          performers: ['Practitioner/dr1', 'Organization/org1'],
        ),
      ),
    );
    await dao.saveResource(
      Observation.fromJson(observation('o2', subject: 'Patient/p2')),
    );
    await dao.saveResource(
      Observation.fromJson(
        observation('o3', subject: 'http://other.example.org/fhir/Patient/p9'),
      ),
    );
    await dao.saveResource(
      Observation.fromJson(
        observation(
          'o4',
          subjectIdentifier: {'system': 'http://mrn', 'value': '42'},
        ),
      ),
    );
  });

  tearDown(() async {
    await db.close();
  });

  test('follows the search parameter, not the element name', () async {
    // `patient` is Observation.subject.where(resolve() is Patient); a JSON walk
    // by the key "patient" finds nothing.
    expect(
      await dao.referenceTargets('Observation', ['o1'], parameter: 'patient'),
      {('Patient', 'p1')},
    );
    expect(
      await dao.referenceTargets('Observation', ['o1'], parameter: 'subject'),
      {('Patient', 'p1')},
    );
    expect(
      await dao.referenceTargets('Observation', ['o1'], parameter: 'performer'),
      {('Practitioner', 'dr1'), ('Organization', 'org1')},
    );
  });

  test('the wildcard takes every reference parameter', () async {
    expect(
      await dao.referenceTargets('Observation', ['o1']),
      {('Patient', 'p1'), ('Practitioner', 'dr1'), ('Organization', 'org1')},
    );
  });

  test('a target type narrows a parameter with several target types', () async {
    expect(
      await dao.referenceTargets(
        'Observation',
        ['o1'],
        parameter: 'performer',
        targetType: 'Practitioner',
      ),
      {('Practitioner', 'dr1')},
    );
  });

  test('several sources at once, deduplicated', () async {
    expect(
      await dao.referenceTargets(
        'Observation',
        ['o1', 'o2', 'o1'],
        parameter: 'subject',
      ),
      {('Patient', 'p1'), ('Patient', 'p2')},
    );
  });

  test('an identifier-only reference has no target', () async {
    expect(
      await dao.referenceTargets('Observation', ['o4'], parameter: 'subject'),
      isEmpty,
    );
  });

  test(
      'an absolute reference to another server is not ours once the base '
      'is known', () async {
    // With no base configured the store cannot tell, and admits it (the
    // reference search does the same).
    expect(
      await dao.referenceTargets('Observation', ['o3'], parameter: 'subject'),
      {('Patient', 'p9')},
    );
    dao.serverBaseUrl = 'http://this.example.org/fhir';
    expect(
      await dao.referenceTargets('Observation', ['o3'], parameter: 'subject'),
      isEmpty,
    );
    // And an absolute reference under our own base is ours.
    await dao.saveResource(
      Observation.fromJson(
        observation('o5', subject: 'http://this.example.org/fhir/Patient/p5'),
      ),
    );
    expect(
      await dao.referenceTargets('Observation', ['o5'], parameter: 'subject'),
      {('Patient', 'p5')},
    );
  });

  test('a parameter that is not a reference, or unknown, finds nothing',
      () async {
    expect(
      await dao.referenceTargets('Observation', ['o1'], parameter: 'code'),
      isEmpty,
    );
    expect(
      await dao.referenceTargets('Observation', ['o1'], parameter: 'nope'),
      isEmpty,
    );
  });

  test('more ids than one statement holds', () async {
    for (var i = 0; i < 1200; i++) {
      await dao.saveResource(
        Observation.fromJson(observation('bulk$i', subject: 'Patient/p1')),
      );
    }
    final ids = [for (var i = 0; i < 1200; i++) 'bulk$i'];
    expect(
      await dao.referenceTargets('Observation', ids, parameter: 'subject'),
      {('Patient', 'p1')},
    );
  });
}
