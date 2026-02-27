// ignore_for_file: avoid_print

import 'dart:io';
import 'package:collection/collection.dart';
import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_db/fhir_r4_db.dart' hide Resource;
import 'package:test/test.dart';

import 'test_resources.dart';

Future<void> main() async {
  late FhirDb fhirDb;
  late FhirDao dao;
  late Patient saved1;
  const id = '12345';

  setUpAll(() async {
    fhirDb = FhirDb(NativeDatabase.memory());
    dao = fhirDb.fhirDao;
    print('Database initialized');
  });

  tearDownAll(() async {
    await fhirDb.close();
  });

  group('Saving Things:', () {
    test('Saved A Patient, Found A Patient', () async {
      final patient1 = Patient(id: '1'.toFhirString);
      saved1 = await dao.saveResource(patient1) as Patient;

      final search1 = await dao.getResource(R4ResourceType.Patient, '1');

      expect(search1, isNotNull);
      expect(saved1.toJson(), search1!.toJson());
    });

    test('Found Patient Again (no password needed with Drift)', () async {
      final search2 = await dao.getResource(R4ResourceType.Patient, '1');
      expect(search2, isNotNull);
      expect(saved1.toJson(), search2!.toJson());
    });

    test('Save Patient', () async {
      final humanName = HumanName(
        family: 'Atreides'.toFhirString,
        given: <FhirString>['Duke'.toFhirString],
      );
      final patient =
          Patient(id: id.toFhirString, name: <HumanName>[humanName]);
      final saved = await dao.saveResource(patient);

      expect(saved.id?.toString(), id);
      expect((saved as Patient).name?[0].toJson(), humanName.toJson());
    });

    test('Save Organization', () async {
      final organization =
          Organization(id: id.toFhirString, name: 'FhirFli'.toFhirString);
      final saved = await dao.saveResource(organization);

      expect(saved.id?.toString(), id);
      expect((saved as Organization).name?.toString(), 'FhirFli');
    });

    test('Save Observation1', () async {
      final observation1 = Observation(
        status: ObservationStatus.final_,
        id: 'obs1'.toFhirString,
        code: CodeableConcept(text: 'Observation #1'.toFhirString),
        effectiveX: FhirDateTime.fromDateTime(DateTime(1981, 09, 18)),
      );
      final saved = await dao.saveResource(observation1);

      expect(saved.id?.toString(), 'obs1');
      expect((saved as Observation).code.text?.valueString, 'Observation #1');
    });

    test('Save Observation1 Again (integer versioning)', () async {
      final observation1 = Observation(
        status: ObservationStatus.final_,
        id: 'obs1'.toFhirString,
        code: CodeableConcept(text: 'Observation #1 - Updated'.toFhirString),
      );
      final saved = await dao.saveResource(observation1);

      expect(saved.id?.toString(), 'obs1');
      expect(
        (saved as Observation).code.text?.valueString,
        'Observation #1 - Updated',
      );
      expect(saved.meta?.versionId, FhirId('2'));
    });

    test('Save Observation2', () async {
      final observation2 = Observation(
        status: ObservationStatus.final_,
        id: 'obs2'.toFhirString,
        code: CodeableConcept(text: 'Observation #2'.toFhirString),
        effectiveX: FhirDateTime.fromDateTime(DateTime(1981, 09, 18)),
      );
      final saved = await dao.saveResource(observation2);

      expect(saved.id?.toString(), 'obs2');
      expect((saved as Observation).code.text?.valueString, 'Observation #2');
    });

    test('Save Observation3', () async {
      final observation3 = Observation(
        status: ObservationStatus.final_,
        id: 'obs3'.toFhirString,
        code: CodeableConcept(text: 'Observation #3'.toFhirString),
        effectiveX: FhirDateTime.fromDateTime(DateTime(1981, 09, 18)),
      );
      final saved = await dao.saveResource(observation3);

      expect(saved.id?.toString(), 'obs3');
      expect((saved as Observation).code.text?.valueString, 'Observation #3');
    });
  });

  group('Finding Things:', () {
    test('Find 1st Patient', () async {
      final search = await dao.getResource(R4ResourceType.Patient, id);
      final humanName = HumanName(
        family: 'Atreides'.toFhirString,
        given: <FhirString>['Duke'.toFhirString],
      );

      expect(search, isNotNull);
      expect((search! as Patient).name?[0].toJson(), humanName.toJson());
    });

    test('Find 3rd Observation', () async {
      final search = await dao.getResource(R4ResourceType.Observation, 'obs3');
      expect(search, isNotNull);
      expect(search!.id?.toString(), 'obs3');
      expect(
        (search as Observation).code.text?.valueString,
        'Observation #3',
      );
    });

    test('Find All Observations', () async {
      final search = await dao.getResourcesByType(R4ResourceType.Observation);
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
      final types = await dao.getResourceTypes();
      final allResources = <Resource>[];
      for (final type in types) {
        allResources.addAll(await dao.getResourcesByType(type));
      }

      expect(allResources.length, 6);
      final patList = allResources
          .where((r) => r.resourceType == R4ResourceType.Patient)
          .toList();
      final orgList = allResources
          .where((r) => r.resourceType == R4ResourceType.Organization)
          .toList();
      final obsList = allResources
          .where((r) => r.resourceType == R4ResourceType.Observation)
          .toList();

      expect(patList.length, 2);
      expect(orgList.length, 1);
      expect(obsList.length, 3);
    });
  });

  group('Deleting Things:', () {
    test('Delete 2nd Observation', () async {
      await dao.deleteResource(R4ResourceType.Observation, 'obs2');

      final search = await dao.getResourcesByType(R4ResourceType.Observation);

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
      final observations =
          await dao.getResourcesByType(R4ResourceType.Observation);
      for (final obs in observations) {
        await dao.deleteResource(
          R4ResourceType.Observation,
          obs.id!.valueString!,
        );
      }

      final types = await dao.getResourceTypes();
      final allResources = <Resource>[];
      for (final type in types) {
        allResources.addAll(await dao.getResourcesByType(type));
      }

      expect(allResources.length, 3);

      final patList = allResources
          .where((r) => r.resourceType == R4ResourceType.Patient)
          .toList();
      final orgList = allResources
          .where((r) => r.resourceType == R4ResourceType.Organization)
          .toList();

      expect(patList.length, 2);
      expect(orgList.length, 1);
    });

    test('Delete All Resources', () async {
      final types = await dao.getResourceTypes();
      for (final type in types) {
        final resources = await dao.getResourcesByType(type);
        for (final r in resources) {
          await dao.deleteResource(type, r.id!.valueString!);
        }
      }

      final remaining = await dao.getResourceTypes();
      expect(remaining.length, 0);
    });
  });

  group('Encrypted Database:', () {
    test('CRUD with cipherSetup()', () async {
      final hexKey = 'a' * 64; // 32-byte key as hex
      final setup = cipherSetup(hexKey);
      expect(setup, isNotNull);

      final dbFile = File('${Directory.systemTemp.path}/fhir_r4_enc_test.db');
      if (dbFile.existsSync()) {
        dbFile.deleteSync();
      }

      final encDb = FhirDb(NativeDatabase(dbFile, setup: setup!));
      final encDao = encDb.fhirDao;

      try {
        // Create
        final patient = Patient(
          id: 'enc1'.toFhirString,
          name: <HumanName>[
            HumanName(family: 'Encrypted'.toFhirString),
          ],
        );
        final saved = await encDao.saveResource(patient);
        expect(saved.id?.toString(), 'enc1');

        // Read
        final found =
            await encDao.getResource(R4ResourceType.Patient, 'enc1');
        expect(found, isNotNull);
        expect(
          (found! as Patient).name?[0].family?.valueString,
          'Encrypted',
        );

        // Update
        final updated = Patient(
          id: 'enc1'.toFhirString,
          name: <HumanName>[
            HumanName(family: 'Updated'.toFhirString),
          ],
        );
        final savedUpdated = await encDao.saveResource(updated);
        expect((savedUpdated as Patient).meta?.versionId, FhirId('2'));

        // Delete
        await encDao.deleteResource(R4ResourceType.Patient, 'enc1');
        final deleted =
            await encDao.getResource(R4ResourceType.Patient, 'enc1');
        expect(deleted, isNull);
      } finally {
        await encDb.close();
        if (dbFile.existsSync()) {
          dbFile.deleteSync();
        }
      }
    });

    test('cipherSetup() returns null for null/empty key', () {
      expect(cipherSetup(null), isNull);
      expect(cipherSetup(''), isNull);
    });
  });

  group('More Complicated Searching', () {
    test(
      '(& Resources)',
      () async {
        final dir = Directory('test/assets');

        if (dir.existsSync()) {
          final fileList = await dir
              .list()
              .map((FileSystemEntity event) => event.path)
              .toList();
          var total = 0;
          final buffer = StringBuffer();
          final startTime = DateTime.now();
          for (final file in fileList) {
            print(file);

            final resources = <Resource>[];
            final fileContents = File(file).readAsStringSync();
            for (final content in fileContents.split('\n')) {
              if (content.isNotEmpty) {
                final resource = Resource.fromJsonString(content);
                resources.add(resource);
              }
            }

            var i = 0;
            for (final resource in resources) {
              i++;
              await dao.saveResource(resource);
            }
            total += i;
          }
          final endTime = DateTime.now();
          final duration = endTime.difference(startTime);
          buffer
            ..writeln('Total Resources: $total\n')
            ..writeln('Total time: ${duration.inSeconds} seconds');
          print(buffer);
        }

        await dao.saveResource(testPatient1);
        await dao.saveResource(testPatient2);
        await dao.saveResource(testObservation1);
        await dao.saveResource(testObservation2);
        await dao.saveResource(testObservation3);
        await dao.saveResource(testObservation4);
        await dao.saveResource(testObservation5);
        await dao.saveResource(testObservation6);
        await dao.saveResource(testConceptMap1);
        await dao.saveResource(testCondition1);

        final testStartTime = DateTime.now();
        expect(true, await compareTwoResources(testPatient1, dao));
        expect(true, await compareTwoResources(testPatient2, dao));
        expect(true, await compareTwoResources(testObservation1, dao));
        expect(true, await compareTwoResources(testObservation2, dao));
        expect(true, await compareTwoResources(testObservation3, dao));
        expect(true, await compareTwoResources(testObservation4, dao));
        expect(true, await compareTwoResources(testObservation5, dao));
        expect(true, await compareTwoResources(testObservation6, dao));
        expect(true, await compareTwoResources(testConceptMap1, dao));
        expect(true, await compareTwoResources(testCondition1, dao));
        final testEndTime = DateTime.now();
        print(
          'Found 10 resources in total of '
          '${testEndTime.difference(testStartTime).inMilliseconds} ms',
        );
      },
      timeout: const Timeout(Duration(minutes: 60)),
    );
  });
}

Future<bool> compareTwoResources(
  Resource originalResource,
  FhirDao dao,
) async {
  final dbResource = await dao.getResource(
    originalResource.resourceType,
    originalResource.id!.valueString!,
  );
  final resource1Json = originalResource.toJson();
  final resource2json = dbResource?.toJson();
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
