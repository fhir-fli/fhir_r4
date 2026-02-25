// ignore_for_file: avoid_print

import 'dart:io';
import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_db/fhir_r4_db.dart' hide Resource;
import 'package:test/test.dart';

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

    test('Save Observation1 Again', () async {
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

        final testStartTime = DateTime.now();
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
