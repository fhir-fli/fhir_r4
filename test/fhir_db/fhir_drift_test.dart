import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  final FhirDriftDb fhirDb = FhirDriftDb();
  const String password1 = 'password1';
  const String password2 = 'password2';

  setUpAll(() async {
    await fhirDb.init(pw: password1);
    await fhirDb.deleteAllResources();
    await fhirDb.deleteAllHistory();
  });

  tearDownAll(() async {
    await fhirDb.deleteAllResources();
    await fhirDb.deleteAllHistory();
  });

  test('All Operations in a Single Test', () async {
    // Basic CRUD Operations
    print('Saving patient1...');
    const Patient patient1 = Patient(id: '1');
    final Resource saved1 = await fhirDb.save(patient1);
    print('Saved patient1: ${saved1.toJson()}');
    final List<Resource> search1 =
        await fhirDb.find(resourceType: R4ResourceType.Patient, id: '1');
    print('Found patient1: ${search1[0].toJson()}');
    expect(saved1.toJson(), search1[0].toJson());

    final List<Resource> search2 =
        await fhirDb.find(resourceType: R4ResourceType.Patient, id: '1');
    print('Found patient1 again: ${search2[0].toJson()}');
    expect(saved1.toJson(), search2[0].toJson());

    // Changing password
    print('Changing password from $password1 to $password2...');
    await fhirDb.changePassword(oldPassword: password1, newPassword: password2);

    // Verify data is unchanged after password change
    final List<Resource> search3 =
        await fhirDb.find(resourceType: R4ResourceType.Patient, id: '1');
    print('Found patient1 after password change: ${search3[0].toJson()}');
    expect(
        (saved1 as Patient)
            .copyWith(meta: saved1.meta?.copyWith(lastUpdated: null))
            .toJson(),
        (search3[0] as Patient)
            .copyWith(meta: search3[0].meta?.copyWith(lastUpdated: null))
            .toJson());

    // Resetting password to the original
    await fhirDb.changePassword(oldPassword: password2, newPassword: password1);

    // Saving different resources
    const String id = '12345';
    const HumanName humanName =
        HumanName(family: 'Atreides', given: <String>['Duke']);
    const Patient patient = Patient(id: id, name: <HumanName>[humanName]);
    final Resource savedPatient = await fhirDb.save(patient);
    print('Saved patient: ${savedPatient.toJson()}');
    expect(savedPatient.id, id);
    expect((savedPatient as Patient).name?[0], humanName);

    const Organization organization = Organization(id: id, name: 'FhirFli');
    final Resource savedOrganization = await fhirDb.save(organization);
    print('Saved organization: ${savedOrganization.toJson()}');
    expect(savedOrganization.id, id);
    expect((savedOrganization as Organization).name, 'FhirFli');

    final Observation observation1 = Observation(
      id: 'obs1',
      code: const CodeableConcept(text: 'Observation #1'),
      effectiveDateTime: FhirDateTime(DateTime(1981, 09, 18)),
    );
    final Resource savedObservation1 = await fhirDb.save(observation1);
    print('Saved observation1: ${savedObservation1.toJson()}');
    expect(savedObservation1.id, 'obs1');
    expect((savedObservation1 as Observation).code.text, 'Observation #1');

    const Observation observation1_1 = Observation(
        id: 'obs1', code: CodeableConcept(text: 'Observation #1 - Updated'));
    final Resource savedObservation1_1 = await fhirDb.save(observation1_1);
    print('Saved observation1_1: ${savedObservation1_1.toJson()}');
    expect(savedObservation1_1.id, 'obs1');
    expect((savedObservation1_1 as Observation).code.text,
        'Observation #1 - Updated');
    expect(savedObservation1_1.meta?.versionId, FhirId('2'));

    final Observation observation2 = Observation(
      id: 'obs2',
      code: const CodeableConcept(text: 'Observation #2'),
      effectiveDateTime: FhirDateTime(DateTime(1981, 09, 18)),
    );
    final Resource savedObservation2 = await fhirDb.save(observation2);
    print('Saved observation2: ${savedObservation2.toJson()}');
    expect(savedObservation2.id, 'obs2');
    expect((savedObservation2 as Observation).code.text, 'Observation #2');

    final Observation observation3 = Observation(
      id: 'obs3',
      code: const CodeableConcept(text: 'Observation #3'),
      effectiveDateTime: FhirDateTime(DateTime(1981, 09, 18)),
    );
    final Resource savedObservation3 = await fhirDb.save(observation3);
    print('Saved observation3: ${savedObservation3.toJson()}');
    expect(savedObservation3.id, 'obs3');
    expect((savedObservation3 as Observation).code.text, 'Observation #3');

    // Finding things
    final List<Resource> search6 =
        await fhirDb.find(resourceType: R4ResourceType.Patient, id: id);
    print('Found patient with id $id: ${search6[0].toJson()}');
    expect(search6.length, 1);
    expect((search6[0] as Patient).name?[0], humanName);

    final List<Resource> search7 =
        await fhirDb.find(resourceType: R4ResourceType.Observation, id: 'obs3');
    print('Found observation with id obs3: ${search7[0].toJson()}');
    expect(search7.length, 1);
    expect(search7[0].id, 'obs3');
    expect((search7[0] as Observation).code.text, 'Observation #3');

    final List<Resource> search8 = await fhirDb.getActiveResourcesOfType(
      resourceType: R4ResourceType.Observation,
    );
    print(
        'Found active observations: ${search8.map((r) => r.toJson()).toList()}');
    expect(search8.length, 3);
    final List<String> idList = search8.map((r) => r.id.toString()).toList();
    expect(idList.contains('obs1'), true);
    expect(idList.contains('obs2'), true);
    expect(idList.contains('obs3'), true);

    final List<Resource> search9 = await fhirDb.getAllActiveResources();
    print(
        'Found all active resources: ${search9.map((r) => r.toJson()).toList()}');
    expect(search9.length, 5);
    final List<Resource> patList =
        search9.where((r) => r.resourceType == R4ResourceType.Patient).toList();
    final List<Resource> orgList = search9
        .where((r) => r.resourceType == R4ResourceType.Organization)
        .toList();
    final List<Resource> obsList = search9
        .where((r) => r.resourceType == R4ResourceType.Observation)
        .toList();
    expect(patList.length, 1);
    expect(orgList.length, 1);
    expect(obsList.length, 3);

    // Deleting things
    await fhirDb.deleteResource(
        resourceType: R4ResourceType.Observation, id: 'obs2');
    final List<Resource> search10 = await fhirDb.getActiveResourcesOfType(
      resourceType: R4ResourceType.Observation,
    );
    print(
        'Found active observations after deleting obs2: ${search10.map((r) => r.toJson()).toList()}');
    expect(search10.length, 2);
    final List<String> idList2 = search10.map((r) => r.id.toString()).toList();
    expect(idList2.contains('obs1'), true);
    expect(idList2.contains('obs2'), false);
    expect(idList2.contains('obs3'), true);

    await fhirDb.deleteSingleType(R4ResourceType.Observation);
    final List<Resource> search11 = await fhirDb.getAllActiveResources();
    print(
        'Found all active resources after deleting all observations: ${search11.map((r) => r.toJson()).toList()}');
    expect(search11.length, 2);
    final List<Resource> patList2 = search11
        .where((r) => r.resourceType == R4ResourceType.Patient)
        .toList();
    final List<Resource> orgList2 = search11
        .where((r) => r.resourceType == R4ResourceType.Organization)
        .toList();
    expect(patList2.length, 1);
    expect(orgList2.length, 1);

    await fhirDb.deleteAllResources();
    final List<Resource> search12 = await fhirDb.getAllActiveResources();
    print(
        'Found all active resources after deleting all resources: ${search12.map((r) => r.toJson()).toList()}');
    expect(search12.length, 0);

    await fhirDb.changePassword(oldPassword: password1, newPassword: password2);

    // Password - Saving things
    const HumanName humanName2 =
        HumanName(family: 'Atreides', given: <String>['Duke']);
    const Patient patient2 = Patient(id: id, name: <HumanName>[humanName2]);
    final Resource savedPatient2 = await fhirDb.save(patient2);
    print('Saved patient2: ${savedPatient2.toJson()}');
    expect(savedPatient2.id, id);
    expect((savedPatient2 as Patient).name?[0], humanName2);

    const Organization organization2 = Organization(id: id, name: 'FhirFli');
    final Resource savedOrganization2 = await fhirDb.save(organization2);
    print('Saved organization2: ${savedOrganization2.toJson()}');
    expect(savedOrganization2.id, id);
    expect((savedOrganization2 as Organization).name, 'FhirFli');

    final Observation observation4 = Observation(
      id: 'obs1',
      code: const CodeableConcept(text: 'Observation #1'),
      effectiveDateTime: FhirDateTime(DateTime(1981, 09, 18)),
    );
    final Resource savedObservation4 = await fhirDb.save(observation4);
    print('Saved observation4: ${savedObservation4.toJson()}');
    expect(savedObservation4.id, 'obs1');
    expect((savedObservation4 as Observation).code.text, 'Observation #1');

    const Observation observation4_1 = Observation(
        id: 'obs1', code: CodeableConcept(text: 'Observation #1 - Updated'));
    final Resource savedObservation4_1 = await fhirDb.save(observation4_1);
    print('Saved observation4_1: ${savedObservation4_1.toJson()}');
    expect(savedObservation4_1.id, 'obs1');
    expect((savedObservation4_1 as Observation).code.text,
        'Observation #1 - Updated');
    expect(savedObservation4_1.meta?.versionId, FhirId('1'));

    final Observation observation5 = Observation(
      id: 'obs2',
      code: const CodeableConcept(text: 'Observation #2'),
      effectiveDateTime: FhirDateTime(DateTime(1981, 09, 18)),
    );
    final Resource savedObservation5 = await fhirDb.save(observation5);
    print('Saved observation5: ${savedObservation5.toJson()}');
    expect(savedObservation5.id, 'obs2');
    expect((savedObservation5 as Observation).code.text, 'Observation #2');

    final Observation observation6 = Observation(
      id: 'obs3',
      code: const CodeableConcept(text: 'Observation #3'),
      effectiveDateTime: FhirDateTime(DateTime(1981, 09, 18)),
    );
    final Resource savedObservation6 = await fhirDb.save(observation6);
    print('Saved observation6: ${savedObservation6.toJson()}');
    expect(savedObservation6.id, 'obs3');
    expect((savedObservation6 as Observation).code.text, 'Observation #3');

    // Password - Finding things
    final List<Resource> search13 = await fhirDb.find(
      resourceType: R4ResourceType.Patient,
      id: id,
    );
    print(
        'Found patient with id $id after password change: ${search13[0].toJson()}');
    expect(search13.length, 1);
    expect((search13[0] as Patient).name?[0], humanName2);

    final List<Resource> search14 = await fhirDb.find(
      resourceType: R4ResourceType.Observation,
      id: 'obs3',
    );
    print(
        'Found observation with id obs3 after password change: ${search14[0].toJson()}');
    expect(search14.length, 1);
    expect(search14[0].id, 'obs3');
    expect((search14[0] as Observation).code.text, 'Observation #3');

    final List<Resource> search15 = await fhirDb.getActiveResourcesOfType(
      resourceType: R4ResourceType.Observation,
    );
    print(
        'Found active observations after password change: ${search15.map((r) => r.toJson()).toList()}');
    expect(search15.length, 3);
    final List<String> idList3 = search15.map((r) => r.id.toString()).toList();
    expect(idList3.contains('obs1'), true);
    expect(idList3.contains('obs2'), true);
    expect(idList3.contains('obs3'), true);

    final List<Resource> search16 = await fhirDb.getAllActiveResources();
    print(
        'Found all active resources after password change: ${search16.map((r) => r.toJson()).toList()}');
    expect(search16.length, 5);
    final List<Resource> patList3 = search16
        .where((r) => r.resourceType == R4ResourceType.Patient)
        .toList();
    final List<Resource> orgList3 = search16
        .where((r) => r.resourceType == R4ResourceType.Organization)
        .toList();
    final List<Resource> obsList2 = search16
        .where((r) => r.resourceType == R4ResourceType.Observation)
        .toList();
    expect(patList3.length, 1);
    expect(orgList3.length, 1);
    expect(obsList2.length, 3);

    // Password - Deleting things
    await fhirDb.deleteResource(
      resourceType: R4ResourceType.Observation,
      id: 'obs2',
    );
    final List<Resource> search17 = await fhirDb.getActiveResourcesOfType(
      resourceType: R4ResourceType.Observation,
    );
    print(
        'Found active observations after deleting obs2 after password change: ${search17.map((r) => r.toJson()).toList()}');
    expect(search17.length, 2);
    final List<String> idList4 = search17.map((r) => r.id.toString()).toList();
    expect(idList4.contains('obs1'), true);
    expect(idList4.contains('obs2'), false);
    expect(idList4.contains('obs3'), true);

    await fhirDb.deleteSingleType(
      R4ResourceType.Observation,
    );
    final List<Resource> search18 = await fhirDb.getAllActiveResources();
    print(
        'Found all active resources after deleting all observations after password change: ${search18.map((r) => r.toJson()).toList()}');
    expect(search18.length, 2);
    final List<Resource> patList4 = search18
        .where((r) => r.resourceType == R4ResourceType.Patient)
        .toList();
    final List<Resource> orgList4 = search18
        .where((r) => r.resourceType == R4ResourceType.Organization)
        .toList();
    expect(patList4.length, 1);
    expect(orgList4.length, 1);

    await fhirDb.deleteAllResources();
    final List<Resource> search19 = await fhirDb.getAllActiveResources();
    print(
        'Found all active resources after deleting all resources after password change: ${search19.map((r) => r.toJson()).toList()}');
    expect(search19.length, 0);
  });
}
