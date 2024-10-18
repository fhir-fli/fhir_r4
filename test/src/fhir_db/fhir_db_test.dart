// ignore_for_file: avoid_print

import 'dart:async';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:hive/hive.dart';
import 'package:test/test.dart';

import 'test_resources.dart';

Future<void> main() async {
  const directory = 'db';
  if (Directory(directory).existsSync()) {
    await Directory(directory).delete(recursive: true);
  }

  /// Initialize Hive & Clear Current Hive DB
  final fhirDb = FhirDb();
  const password1 = 'password1';
  const password2 = 'password2';
  await fhirDb.init(path: directory, pw: password1);
  final patient1 = Patient(id: '1'.toFhirString);
  final saved1 = await fhirDb.save(resource: patient1, pw: password1);
  group('', () {
    test('Saved A Patient, Found A Patient', () async {
      final search1 = await fhirDb.find(
        resourceType: R4ResourceType.Patient,
        id: '1',
        pw: password1,
      );
      expect(saved1, search1[0]);
    });

    test('Found Patient With New Password Because Box Was Already Opened',
        () async {
      final search2 = await fhirDb.find(
        resourceType: R4ResourceType.Patient,
        id: '1',
        pw: password1,
      );
      expect(saved1, search2[0]);
    });

    test('Password Changed', () async {
      await fhirDb.updatePw(oldPw: password1, newPw: password2);
      // final List<Resource> search3 = await fhirDb.find(password1,
      //     resourceType: R4ResourceType.Patient, id: '1');
      // expect(true, search3.isEmpty);
      // await fhirDb.closeAllBoxes();
      final search4 = await fhirDb.find(
        resourceType: R4ResourceType.Patient,
        id: '1',
        pw: password2,
      );
      expect(saved1, search4[0]);
      await fhirDb.updatePw(oldPw: password2);
    });
  });

  const id = '12345';
  group('Saving Things:', () {
    test('Save Patient', () async {
      final humanName = HumanName(
        family: 'Atreides'.toFhirString,
        given: <FhirString>['Duke'.toFhirString],
      );
      final patient =
          Patient(id: id.toFhirString, name: <HumanName>[humanName]);
      final saved = await fhirDb.save(resource: patient);

      expect(saved.id, id);
      expect((saved as Patient).name?[0], humanName);
    });

    test('Save Organization', () async {
      final organization =
          Organization(id: id.toFhirString, name: 'FhirFli'.toFhirString);
      final saved = await fhirDb.save(resource: organization);

      expect(saved.id, id);

      expect((saved as Organization).name, 'FhirFli');
    });

    test('Save Observation1', () async {
      final observation1 = Observation(
        status: ObservationStatus.final_,
        id: 'obs1'.toFhirString,
        code: CodeableConcept(text: 'Observation #1'.toFhirString),
        effectiveDateTime: FhirDateTime.fromDateTime(DateTime(1981, 09, 18)),
      );
      final saved = await fhirDb.save(resource: observation1);

      expect(saved.id, 'obs1');

      expect((saved as Observation).code.text, 'Observation #1');
    });

    test('Save Observation1 Again', () async {
      final observation1 = Observation(
        status: ObservationStatus.final_,
        id: 'obs1'.toFhirString,
        code: CodeableConcept(text: 'Observation #1 - Updated'.toFhirString),
      );
      final saved = await fhirDb.save(resource: observation1);

      expect(saved.id, 'obs1');

      expect((saved as Observation).code.text, 'Observation #1 - Updated');

      expect(saved.meta?.versionId, FhirId('2'));
    });

    test('Save Observation2', () async {
      final observation2 = Observation(
        status: ObservationStatus.final_,
        id: 'obs2'.toFhirString,
        code: CodeableConcept(text: 'Observation #2'.toFhirString),
        effectiveDateTime: FhirDateTime.fromDateTime(DateTime(1981, 09, 18)),
      );
      final saved = await fhirDb.save(resource: observation2);

      expect(saved.id, 'obs2');

      expect((saved as Observation).code.text, 'Observation #2');
    });

    test('Save Observation3', () async {
      final observation3 = Observation(
        status: ObservationStatus.final_,
        id: 'obs3'.toFhirString,
        code: CodeableConcept(text: 'Observation #3'.toFhirString),
        effectiveDateTime: FhirDateTime.fromDateTime(DateTime(1981, 09, 18)),
      );
      final saved = await fhirDb.save(resource: observation3);

      expect(saved.id, 'obs3');

      expect((saved as Observation).code.text, 'Observation #3');
    });
  });

  group('Finding Things:', () {
    test('Find 1st Patient', () async {
      final search =
          await fhirDb.find(resourceType: R4ResourceType.Patient, id: id);
      final humanName = HumanName(
        family: 'Atreides'.toFhirString,
        given: <FhirString>['Duke'.toFhirString],
      );

      expect(search.length, 1);

      expect((search[0] as Patient).name?[0], humanName);
    });

    test('Find 3rd Observation', () async {
      final search = await fhirDb.find(
        resourceType: R4ResourceType.Observation,
        id: 'obs3',
      );

      expect(search.length, 1);

      expect(search[0].id, 'obs3');

      expect((search[0] as Observation).code.text, 'Observation #3');
    });

    test('Find All Observations', () async {
      final search = await fhirDb.getActiveResourcesOfType(
        resourceTypes: <R4ResourceType>[R4ResourceType.Observation],
      );

      expect(search.length, 3);

      final idList = <String>[];
      for (final obs in search) {
        idList.add(obs.id.toString());
      }

      expect(idList.contains('obs1'), true);

      expect(idList.contains('obs2'), true);

      expect(idList.contains('obs3'), true);
    });

    test('Find All (non-historical) Resources', () async {
      final search = await fhirDb.getAllActiveResources();

      expect(search.length, 6);
      final patList = search.toList();
      final orgList = search.toList();
      final obsList = search.toList();
      patList.retainWhere(
        (Resource resource) => resource.resourceType == R4ResourceType.Patient,
      );
      orgList.retainWhere(
        (Resource resource) =>
            resource.resourceType == R4ResourceType.Organization,
      );
      obsList.retainWhere(
        (Resource resource) =>
            resource.resourceType == R4ResourceType.Observation,
      );

      expect(patList.length, 2);

      expect(orgList.length, 1);

      expect(obsList.length, 3);
    });
  });

  group('Deleting Things:', () {
    test('Delete 2nd Observation', () async {
      await fhirDb.delete(
        resourceType: R4ResourceType.Observation,
        id: 'obs2',
      );

      final search = await fhirDb.getActiveResourcesOfType(
        resourceTypes: <R4ResourceType>[R4ResourceType.Observation],
      );

      expect(search.length, 2);

      final idList = <String>[];
      for (final obs in search) {
        idList.add(obs.id.toString());
      }

      expect(idList.contains('obs1'), true);

      expect(idList.contains('obs2'), false);

      expect(idList.contains('obs3'), true);
    });

    test('Delete All Observations', () async {
      await fhirDb.deleteSingleType(resourceType: R4ResourceType.Observation);

      final search = await fhirDb.getAllActiveResources();

      expect(search.length, 3);

      final patList = search.toList();
      final orgList = search.toList();
      patList.retainWhere(
        (Resource resource) => resource.resourceType == R4ResourceType.Patient,
      );
      orgList.retainWhere(
        (Resource resource) =>
            resource.resourceType == R4ResourceType.Organization,
      );

      expect(patList.length, 2);
    });

    test('Delete All Resources', () async {
      await fhirDb.deleteAllResources();

      final search = await fhirDb.getAllActiveResources();

      expect(search.length, 0);
    });
  });

  group('Password - Saving Things:', () {
    test('Save Patient', () async {
      await fhirDb.updatePw(newPw: password2);
      final humanName = HumanName(
        family: 'Atreides'.toFhirString,
        given: <FhirString>['Duke'.toFhirString],
      );
      final patient =
          Patient(id: id.toFhirString, name: <HumanName>[humanName]);
      final saved = await fhirDb.save(resource: patient, pw: password2);

      expect(saved.id, id);

      expect((saved as Patient).name?[0], humanName);
    });

    test('Save Organization', () async {
      final organization =
          Organization(id: id.toFhirString, name: 'FhirFli'.toFhirString);
      final saved = await fhirDb.save(resource: organization, pw: password2);

      expect(saved.id, id);

      expect((saved as Organization).name, 'FhirFli');
    });

    test('Save Observation1', () async {
      final observation1 = Observation(
        status: ObservationStatus.final_,
        id: 'obs1'.toFhirString,
        code: CodeableConcept(text: 'Observation #1'.toFhirString),
        effectiveDateTime: FhirDateTime.fromDateTime(DateTime(1981, 09, 18)),
      );
      final saved = await fhirDb.save(resource: observation1, pw: password2);

      expect(saved.id, 'obs1');

      expect((saved as Observation).code.text, 'Observation #1');
    });

    test('Save Observation1 Again', () async {
      final observation1 = Observation(
        status: ObservationStatus.final_,
        id: 'obs1'.toFhirString,
        code: CodeableConcept(text: 'Observation #1 - Updated'.toFhirString),
      );
      final saved = await fhirDb.save(resource: observation1, pw: password2);

      expect(saved.id, 'obs1');

      expect((saved as Observation).code.text, 'Observation #1 - Updated');

      expect(saved.meta?.versionId, FhirId('2'));
    });

    test('Save Observation2', () async {
      final observation2 = Observation(
        status: ObservationStatus.final_,
        id: 'obs2'.toFhirString,
        code: CodeableConcept(text: 'Observation #2'.toFhirString),
        effectiveDateTime: FhirDateTime.fromDateTime(DateTime(1981, 09, 18)),
      );
      final saved = await fhirDb.save(resource: observation2, pw: password2);

      expect(saved.id, 'obs2');

      expect((saved as Observation).code.text, 'Observation #2');
    });

    test('Save Observation3', () async {
      final observation3 = Observation(
        status: ObservationStatus.final_,
        id: 'obs3'.toFhirString,
        code: CodeableConcept(text: 'Observation #3'.toFhirString),
        effectiveDateTime: FhirDateTime.fromDateTime(DateTime(1981, 09, 18)),
      );
      final saved = await fhirDb.save(resource: observation3, pw: password2);

      expect(saved.id, 'obs3');

      expect((saved as Observation).code.text, 'Observation #3');
    });
  });

  group('Password - Finding Things:', () {
    test('Find 1st Patient', () async {
      final search = await fhirDb.find(
        resourceType: R4ResourceType.Patient,
        id: id,
        pw: password2,
      );
      final humanName = HumanName(
        family: 'Atreides'.toFhirString,
        given: <FhirString>['Duke'.toFhirString],
      );

      expect(search.length, 1);

      expect((search[0] as Patient).name?[0], humanName);
    });

    test('Find 3rd Observation', () async {
      final search = await fhirDb.find(
        resourceType: R4ResourceType.Observation,
        id: 'obs3',
        pw: password2,
      );

      expect(search.length, 1);

      expect(search[0].id, 'obs3');

      expect((search[0] as Observation).code.text, 'Observation #3');
    });

    test('Find All Observations', () async {
      final search = await fhirDb.getActiveResourcesOfType(
        resourceTypes: <R4ResourceType>[R4ResourceType.Observation],
        pw: password2,
      );

      expect(search.length, 3);

      final idList = <String>[];
      for (final obs in search) {
        idList.add(obs.id.toString());
      }

      expect(idList.contains('obs1'), true);

      expect(idList.contains('obs2'), true);

      expect(idList.contains('obs3'), true);
    });

    test('Find All (non-historical) Resources', () async {
      final search = await fhirDb.getAllActiveResources(pw: password2);

      expect(search.length, 5);
      final patList = search.toList();
      final orgList = search.toList();
      final obsList = search.toList();
      patList.retainWhere(
        (Resource resource) => resource.resourceType == R4ResourceType.Patient,
      );
      orgList.retainWhere(
        (Resource resource) =>
            resource.resourceType == R4ResourceType.Organization,
      );
      obsList.retainWhere(
        (Resource resource) =>
            resource.resourceType == R4ResourceType.Observation,
      );

      expect(patList.length, 1);

      expect(orgList.length, 1);

      expect(obsList.length, 3);
    });
  });

  group('Password - Deleting Things:', () {
    test('Delete 2nd Observation', () async {
      await fhirDb.delete(resourceType: R4ResourceType.Observation, id: 'obs2');

      final search = await fhirDb.getActiveResourcesOfType(
        resourceTypes: <R4ResourceType>[R4ResourceType.Observation],
        pw: password2,
      );

      expect(search.length, 2);

      final idList = <String>[];
      for (final obs in search) {
        idList.add(obs.id.toString());
      }

      expect(idList.contains('obs1'), true);

      expect(idList.contains('obs2'), false);

      expect(idList.contains('obs3'), true);
    });

    test('Delete All Observations', () async {
      await fhirDb.deleteSingleType(resourceType: R4ResourceType.Observation);

      final search = await fhirDb.getAllActiveResources(pw: password2);

      expect(search.length, 2);

      final patList = search.toList();
      final orgList = search.toList();
      patList.retainWhere(
        (Resource resource) => resource.resourceType == R4ResourceType.Patient,
      );
      orgList.retainWhere(
        (Resource resource) =>
            resource.resourceType == R4ResourceType.Organization,
      );

      expect(patList.length, 1);

      expect(patList.length, 1);
    });

    test('Delete All Resources', () async {
      await fhirDb.deleteAllResources(pw: password2);

      final search = await fhirDb.getAllActiveResources(pw: password2);

      expect(search.length, 0);

      await fhirDb.updatePw(newPw: password2);
    });
  });

  group('More Complicated Searching', () {
    test(
      '(& Resources)',
      () async {
        var output = '';
        final dir = Directory('test/src/fhir_db/assets');
        final subscription =
            fhirDb.subject(resourceType: R4ResourceType.Observation).listen(
          (Resource? resource) {
            // This block is where you handle each emitted item
            print('Received resource: ${resource?.path}');
          },
          onError: (dynamic error) {
            // Handle any errors
            print('Error: $error');
          },
          onDone: () {
            // Handle stream completion
            print('Stream completed.');
          },
        );

        final fileList = await dir
            .list()
            .map((FileSystemEntity event) => event.path)
            .toList();
        var total = 0;
        const numberOfTimes = 1;
        for (var i = 0; i < numberOfTimes; i++) {
          final startTime = DateTime.now();
          for (final file in fileList) {
            // print(file);
            var i = 0;

            final resources = file.contains('ndjson')
                ? await FhirBulk.fromFile(file)
                : <Resource>[];

            for (final resource in resources) {
              i++;
              await fhirDb.save(resource: resource);
            }
            total += i;
          }
          final endTime = DateTime.now();
          final duration = endTime.difference(startTime);
          output += 'Total Resources: $total\n';
          output += 'Total time: ${duration.inSeconds} seconds';
        }

        await fhirDb.save(resource: testPatient1);
        await fhirDb.save(resource: testPatient2);
        await fhirDb.save(resource: testObservation1);
        await fhirDb.save(resource: testObservation2);
        await fhirDb.save(resource: testObservation3);
        await fhirDb.save(resource: testObservation4);
        await fhirDb.save(resource: testObservation5);
        await fhirDb.save(resource: testObservation6);
        await fhirDb.save(resource: testConceptMap1);
        await fhirDb.save(resource: testCondition1);

        print(output);
        final testStartTime = DateTime.now();
        expect(true, await compareTwoResources(testPatient1, fhirDb, null));
        expect(true, await compareTwoResources(testPatient2, fhirDb, null));
        expect(true, await compareTwoResources(testObservation1, fhirDb, null));
        expect(true, await compareTwoResources(testObservation2, fhirDb, null));
        expect(true, await compareTwoResources(testObservation3, fhirDb, null));
        expect(true, await compareTwoResources(testObservation4, fhirDb, null));
        expect(true, await compareTwoResources(testObservation5, fhirDb, null));
        expect(true, await compareTwoResources(testObservation6, fhirDb, null));
        expect(true, await compareTwoResources(testConceptMap1, fhirDb, null));
        expect(true, await compareTwoResources(testCondition1, fhirDb, null));
        final testEndTime = DateTime.now();
        print(
          'Found 10 resources in total of ${testEndTime.difference(testStartTime).inMilliseconds} ms',
        );
        await subscription.cancel();
      },
      timeout: const Timeout(Duration(minutes: 10)),
    );
  });
  await Hive.close();
  if (Directory(directory).existsSync()) {
    await Directory(directory).delete(recursive: true);
  }
}

Future<bool> compareTwoResources(
  Resource originalResource,
  FhirDb fhirDb,
  String? pw,
) async {
  final dbResource = await fhirDb.get(
    pw: pw,
    resourceType: originalResource.resourceType,
    id: originalResource.id!.value!,
  );
  final Map<String, dynamic> resource1Json = originalResource.toJson();
  final Map<String, dynamic>? resource2json = dbResource?.toJson();
  resource1Json.remove('meta');
  resource2json?.remove('meta');
  if (!(const DeepCollectionEquality()).equals(resource1Json, resource2json)) {
    return false;
  }
  if (!(const DeepCollectionEquality()).equals(resource2json, resource1Json)) {
    return false;
  }
  return true;
}
