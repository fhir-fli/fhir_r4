import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_db/fhir_r4_db.dart' hide Resource;
import 'package:test/test.dart';

/// Tests for `FhirDao.subjectOfCare`, which answers "whose record is this?"
/// for an arbitrary resource.
///
/// An audit trail has to name the subject of care, and the resource in the
/// request is usually not that person: reading an Observation is an access to
/// a patient's record, but nothing in the Observation's identity says whose.
Future<void> main() async {
  late FhirDb fhirDb;
  late FhirDao dao;

  setUp(() async {
    fhirDb = FhirDb(NativeDatabase.memory());
    dao = fhirDb.fhirDao;
  });

  tearDown(() async {
    await fhirDb.close();
  });

  test('a Patient is its own subject', () async {
    await dao.saveResource(Patient(id: 'pat-1'.toFhirString));
    expect(await dao.subjectOfCare('Patient', 'pat-1'), equals('pat-1'));
  });

  test('a Patient that is not stored is still its own subject', () async {
    // The answer follows from the type, not from a lookup: a read of a
    // nonexistent patient is still an access aimed at that person's record,
    // and the audit trail should say so.
    expect(await dao.subjectOfCare('Patient', 'absent'), equals('absent'));
  });

  test('an Observation resolves through subject', () async {
    await dao.saveResource(
      Observation(
        id: 'obs-1'.toFhirString,
        status: ObservationStatus.final_,
        code: CodeableConcept(text: 'weight'.toFhirString),
        subject: Reference(reference: 'Patient/pat-2'.toFhirString),
      ),
    );
    expect(await dao.subjectOfCare('Observation', 'obs-1'), equals('pat-2'));
  });

  test('a Condition resolves through subject', () async {
    await dao.saveResource(
      Condition(
        id: 'con-1'.toFhirString,
        subject: Reference(reference: 'Patient/pat-3'.toFhirString),
      ),
    );
    expect(await dao.subjectOfCare('Condition', 'con-1'), equals('pat-3'));
  });

  test('an Encounter resolves through subject', () async {
    await dao.saveResource(
      Encounter(
        id: 'enc-1'.toFhirString,
        status: EncounterStatus.finished,
        class_: Coding(code: 'AMB'.toFhirCode),
        subject: Reference(reference: 'Patient/pat-4'.toFhirString),
      ),
    );
    expect(await dao.subjectOfCare('Encounter', 'enc-1'), equals('pat-4'));
  });

  test('a resource with no patient link resolves to nothing', () async {
    await dao.saveResource(
      Organization(
        id: 'org-1'.toFhirString,
        name: 'Camp Clinic'.toFhirString,
      ),
    );
    expect(await dao.subjectOfCare('Organization', 'org-1'), isNull);
  });

  test('a subject that is not a Patient is not returned', () async {
    // `Observation.subject` also admits Group, Device and Location. None of
    // them is a person whose record was accessed.
    await dao.saveResource(
      Observation(
        id: 'obs-dev'.toFhirString,
        status: ObservationStatus.final_,
        code: CodeableConcept(text: 'room temperature'.toFhirString),
        subject: Reference(reference: 'Device/dev-1'.toFhirString),
      ),
    );
    expect(await dao.subjectOfCare('Observation', 'obs-dev'), isNull);
  });

  test('someone merely mentioned is not named as the subject', () async {
    // A performer, recorder or author is a participant, not the subject of
    // care. Naming one would answer "who accessed this person's record" with
    // a person who was only referenced by it, which is worse in a legal
    // record than answering nothing.
    await dao.saveResource(
      Observation(
        id: 'obs-perf'.toFhirString,
        status: ObservationStatus.final_,
        code: CodeableConcept(text: 'weight'.toFhirString),
        performer: [Reference(reference: 'Patient/pat-5'.toFhirString)],
      ),
    );
    expect(await dao.subjectOfCare('Observation', 'obs-perf'), isNull);
  });
}
