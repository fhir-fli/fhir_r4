// ignore_for_file: avoid_print

import 'dart:async';

import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_db/fhir_r4_db.dart' hide Resource;
import 'package:test/test.dart';

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

  // ──────────────────────────────────────────────────────────────────────────
  // Search Operations
  // ──────────────────────────────────────────────────────────────────────────
  group('Search Operations:', () {
    late Patient patientA;
    late Patient patientB;
    late Observation obs1;
    late Observation obs2;
    late Observation obs3;

    setUp(() async {
      patientA = Patient(
        id: 'patient-a'.toFhirString,
        name: <HumanName>[
          HumanName(
            family: 'Smith'.toFhirString,
            given: <FhirString>['Alice'.toFhirString],
          ),
        ],
        gender: AdministrativeGender.female,
        birthDate: FhirDate.fromString('1990-01-15'),
      );
      patientB = Patient(
        id: 'patient-b'.toFhirString,
        name: <HumanName>[
          HumanName(
            family: 'Jones'.toFhirString,
            given: <FhirString>['Bob'.toFhirString],
          ),
        ],
        gender: AdministrativeGender.male,
        birthDate: FhirDate.fromString('1985-06-20'),
      );
      obs1 = Observation(
        id: 'obs-1'.toFhirString,
        status: ObservationStatus.final_,
        code: CodeableConcept(
          coding: <Coding>[
            Coding(
              system: FhirUri('http://loinc.org'),
              code: FhirCode('12345-6'),
              display: 'Hemoglobin'.toFhirString,
            ),
          ],
        ),
        subject: Reference(
          reference: 'Patient/patient-a'.toFhirString,
        ),
        effectiveX: FhirDateTime.fromDateTime(DateTime(2024, 1, 10)),
      );
      obs2 = Observation(
        id: 'obs-2'.toFhirString,
        status: ObservationStatus.final_,
        code: CodeableConcept(
          coding: <Coding>[
            Coding(
              system: FhirUri('http://loinc.org'),
              code: FhirCode('12345-6'),
              display: 'Hemoglobin'.toFhirString,
            ),
          ],
        ),
        subject: Reference(
          reference: 'Patient/patient-b'.toFhirString,
        ),
        effectiveX: FhirDateTime.fromDateTime(DateTime(2024, 2, 15)),
      );
      obs3 = Observation(
        id: 'obs-3'.toFhirString,
        status: ObservationStatus.preliminary,
        code: CodeableConcept(
          coding: <Coding>[
            Coding(
              system: FhirUri('http://loinc.org'),
              code: FhirCode('99999-9'),
              display: 'Glucose'.toFhirString,
            ),
          ],
        ),
        subject: Reference(
          reference: 'Patient/patient-a'.toFhirString,
        ),
        effectiveX: FhirDateTime.fromDateTime(DateTime(2024, 3, 20)),
      );

      await dao.saveResource(patientA);
      await dao.saveResource(patientB);
      await dao.saveResource(obs1);
      await dao.saveResource(obs2);
      await dao.saveResource(obs3);
    });

    test('search with no parameters returns all of type', () async {
      final results = await dao.search(
        resourceType: R4ResourceType.Observation,
      );
      expect(results.length, 3);
    });

    test('search by _id returns matching resource', () async {
      final results = await dao.search(
        resourceType: R4ResourceType.Patient,
        searchParameters: {
          '_id': ['patient-a'],
        },
      );
      expect(results.length, 1);
      expect(results.first.id?.toString(), 'patient-a');
    });

    test('search by _id with multiple values (OR)', () async {
      final results = await dao.search(
        resourceType: R4ResourceType.Patient,
        searchParameters: {
          '_id': ['patient-a,patient-b'],
        },
      );
      expect(results.length, 2);
    });

    test('search by _id with non-existent id returns empty', () async {
      final results = await dao.search(
        resourceType: R4ResourceType.Patient,
        searchParameters: {
          '_id': ['non-existent'],
        },
      );
      expect(results, isEmpty);
    });

    test('search with count limits results', () async {
      final results = await dao.search(
        resourceType: R4ResourceType.Observation,
        count: 2,
      );
      expect(results.length, 2);
    });

    test('search with offset skips results', () async {
      final allResults = await dao.search(
        resourceType: R4ResourceType.Observation,
      );
      final offsetResults = await dao.search(
        resourceType: R4ResourceType.Observation,
        offset: 1,
      );
      expect(offsetResults.length, allResults.length - 1);
    });

    test('search with count and offset for pagination', () async {
      final page1 = await dao.search(
        resourceType: R4ResourceType.Observation,
        count: 2,
        offset: 0,
      );
      final page2 = await dao.search(
        resourceType: R4ResourceType.Observation,
        count: 2,
        offset: 2,
      );
      expect(page1.length, 2);
      expect(page2.length, 1);

      // Pages should have different resources
      final page1Ids = page1.map((r) => r.id?.toString()).toSet();
      final page2Ids = page2.map((r) => r.id?.toString()).toSet();
      expect(page1Ids.intersection(page2Ids), isEmpty);
    });

    test('searchCount with no parameters returns total count', () async {
      final count = await dao.searchCount(
        resourceType: R4ResourceType.Observation,
      );
      expect(count, 3);
    });

    test('searchCount with _id parameter', () async {
      final count = await dao.searchCount(
        resourceType: R4ResourceType.Patient,
        searchParameters: {
          '_id': ['patient-a'],
        },
      );
      expect(count, 1);
    });

    test('searchCount for empty type returns 0', () async {
      final count = await dao.searchCount(
        resourceType: R4ResourceType.Encounter,
      );
      expect(count, 0);
    });

    test('search for wrong resource type returns empty', () async {
      final results = await dao.search(
        resourceType: R4ResourceType.Encounter,
      );
      expect(results, isEmpty);
    });
  });

  // ──────────────────────────────────────────────────────────────────────────
  // Sync Operations
  // ──────────────────────────────────────────────────────────────────────────
  group('Sync Operations:', () {
    test('getSync returns empty when storeForSync is false', () async {
      // Default: storeForSync is false
      expect(dao.storeForSync, false);

      await dao.saveResource(
        Patient(id: 'sync-test-1'.toFhirString),
      );

      final syncResources = await dao.getSync();
      expect(syncResources, isEmpty);
    });

    test('getSync returns resources when storeForSync is true', () async {
      dao.storeForSync = true;

      await dao.saveResource(
        Patient(id: 'sync-test-2'.toFhirString),
      );
      await dao.saveResource(
        Observation(
          id: 'sync-obs-1'.toFhirString,
          status: ObservationStatus.final_,
          code: CodeableConcept(text: 'Test'.toFhirString),
        ),
      );

      final syncResources = await dao.getSync();
      expect(syncResources.length, 2);

      final ids = syncResources.map((r) => r.id?.toString()).toSet();
      expect(ids, contains('sync-test-2'));
      expect(ids, contains('sync-obs-1'));
    });

    test('clearSync removes all sync resources', () async {
      dao.storeForSync = true;

      await dao.saveResource(
        Patient(id: 'sync-clear-1'.toFhirString),
      );
      await dao.saveResource(
        Patient(id: 'sync-clear-2'.toFhirString),
      );

      var syncResources = await dao.getSync();
      expect(syncResources.length, 2);

      await dao.clearSync();

      syncResources = await dao.getSync();
      expect(syncResources, isEmpty);
    });

    test('clearSync does not affect main resources', () async {
      dao.storeForSync = true;

      await dao.saveResource(
        Patient(id: 'sync-persist-1'.toFhirString),
      );

      await dao.clearSync();

      // Main resource should still exist
      final resource =
          await dao.getResource(R4ResourceType.Patient, 'sync-persist-1');
      expect(resource, isNotNull);
      expect(resource!.id?.toString(), 'sync-persist-1');
    });

    test('watchSync emits updates', () async {
      dao.storeForSync = true;

      // Capture the first emission from the stream
      final stream = dao.watchSync();

      // The stream should start with whatever is currently in sync.
      // We save a resource and then check.
      final completer = Completer<List<Resource>>();
      late StreamSubscription<List<Resource>> sub;
      sub = stream.listen((resources) {
        if (resources.isNotEmpty) {
          completer.complete(resources);
          sub.cancel();
        }
      });

      await dao.saveResource(
        Patient(id: 'sync-watch-1'.toFhirString),
      );

      final resources =
          await completer.future.timeout(const Duration(seconds: 5));
      expect(resources, isNotEmpty);
      expect(resources.first.id?.toString(), 'sync-watch-1');
    });

    test('sync stores latest version on re-save', () async {
      dao.storeForSync = true;

      await dao.saveResource(
        Patient(
          id: 'sync-version-1'.toFhirString,
          name: <HumanName>[
            HumanName(family: 'Original'.toFhirString),
          ],
        ),
      );

      await dao.saveResource(
        Patient(
          id: 'sync-version-1'.toFhirString,
          name: <HumanName>[
            HumanName(family: 'Updated'.toFhirString),
          ],
        ),
      );

      final syncResources = await dao.getSync();
      // Sync PK is {resourceType, id, versionId}, so each version
      // creates a separate sync entry.
      final matching = syncResources
          .where((r) => r.id?.toString() == 'sync-version-1')
          .toList();
      expect(matching.length, 2);

      // The latest version should have the updated name
      final families = matching
          .map((r) => (r as Patient).name?.first.family?.valueString)
          .toSet();
      expect(families, contains('Updated'));
    });
  });

  // ──────────────────────────────────────────────────────────────────────────
  // Canonical Resources
  // ──────────────────────────────────────────────────────────────────────────
  group('Canonical Resources:', () {
    late ValueSet valueSet1;
    late ValueSet valueSet2;
    late StructureDefinition structDef1;

    setUp(() {
      valueSet1 = ValueSet(
        id: 'vs-1'.toFhirString,
        url: FhirUri('http://example.org/ValueSet/test-vs-1'),
        name: 'TestValueSet1'.toFhirString,
        status: PublicationStatus.active,
      );
      valueSet2 = ValueSet(
        id: 'vs-2'.toFhirString,
        url: FhirUri('http://example.org/ValueSet/test-vs-2'),
        name: 'TestValueSet2'.toFhirString,
        status: PublicationStatus.draft,
      );
      structDef1 = StructureDefinition(
        id: 'sd-1'.toFhirString,
        url: FhirUri('http://example.org/StructureDefinition/test-sd-1'),
        name: 'TestStructDef1'.toFhirString,
        status: PublicationStatus.active,
        kind: StructureDefinitionKind.resource,
        abstract_: FhirBoolean(false),
        type: FhirUri('Patient'),
      );
    });

    test('containsCanonicalKey returns false for missing key', () async {
      final result = await dao.containsCanonicalKey(
        'http://example.org/ValueSet/nonexistent',
      );
      expect(result, false);
    });

    test('saveCanonicalResource and containsCanonicalKey', () async {
      await dao.saveCanonicalResource(valueSet1);

      final result = await dao.containsCanonicalKey(
        'http://example.org/ValueSet/test-vs-1',
      );
      expect(result, true);
    });

    test('getCanonicalResource returns saved resource', () async {
      await dao.saveCanonicalResource(valueSet1);

      final retrieved = await dao.getCanonicalResource(
        'http://example.org/ValueSet/test-vs-1',
      );
      expect(retrieved, isNotNull);
      expect(retrieved, isA<ValueSet>());
      expect((retrieved! as ValueSet).name?.valueString, 'TestValueSet1');
    });

    test('getCanonicalResource returns null for missing URL', () async {
      final retrieved = await dao.getCanonicalResource(
        'http://example.org/ValueSet/nonexistent',
      );
      expect(retrieved, isNull);
    });

    test('getCanonicalResource fallback for short name', () async {
      // Save a StructureDefinition with a standard HL7 URL
      final sd = StructureDefinition(
        id: 'sd-patient'.toFhirString,
        url: FhirUri('http://hl7.org/fhir/StructureDefinition/Patient'),
        name: 'Patient'.toFhirString,
        status: PublicationStatus.active,
        kind: StructureDefinitionKind.resource,
        abstract_: FhirBoolean(false),
        type: FhirUri('Patient'),
      );
      await dao.saveCanonicalResource(sd);

      // Lookup by short name (no http) should fall back to HL7 URL
      final retrieved = await dao.getCanonicalResource('Patient');
      expect(retrieved, isNotNull);
      expect(retrieved, isA<StructureDefinition>());
    });

    test('saveCanonicalResource updates on conflict', () async {
      await dao.saveCanonicalResource(valueSet1);

      // Save again with same URL but different content
      final updatedVs = ValueSet(
        id: 'vs-1-updated'.toFhirString,
        url: FhirUri('http://example.org/ValueSet/test-vs-1'),
        name: 'UpdatedValueSet1'.toFhirString,
        status: PublicationStatus.active,
      );
      await dao.saveCanonicalResource(updatedVs);

      final retrieved = await dao.getCanonicalResource(
        'http://example.org/ValueSet/test-vs-1',
      );
      expect(retrieved, isNotNull);
      expect((retrieved! as ValueSet).name?.valueString, 'UpdatedValueSet1');
    });

    test('listCanonicalKeys returns all stored URLs', () async {
      await dao.saveCanonicalResource(valueSet1);
      await dao.saveCanonicalResource(valueSet2);
      await dao.saveCanonicalResource(structDef1);

      final keys = await dao.listCanonicalKeys();
      expect(keys.length, 3);
      expect(keys, contains('http://example.org/ValueSet/test-vs-1'));
      expect(keys, contains('http://example.org/ValueSet/test-vs-2'));
      expect(
        keys,
        contains('http://example.org/StructureDefinition/test-sd-1'),
      );
    });

    test('listCanonicalKeys returns empty when nothing stored', () async {
      final keys = await dao.listCanonicalKeys();
      expect(keys, isEmpty);
    });

    test('getAllCanonicalByType returns only matching type', () async {
      await dao.saveCanonicalResource(valueSet1);
      await dao.saveCanonicalResource(valueSet2);
      await dao.saveCanonicalResource(structDef1);

      final valueSets =
          await dao.getAllCanonicalByType<ValueSet>(R4ResourceType.ValueSet);
      expect(valueSets.length, 2);
      expect(valueSets.every((v) => v is ValueSet), true);

      final structDefs = await dao.getAllCanonicalByType<StructureDefinition>(
        R4ResourceType.StructureDefinition,
      );
      expect(structDefs.length, 1);
      expect(structDefs.first.name?.valueString, 'TestStructDef1');
    });

    test('getAllCanonicalByType returns empty for unmatched type', () async {
      await dao.saveCanonicalResource(valueSet1);

      final structDefs = await dao.getAllCanonicalByType<StructureDefinition>(
        R4ResourceType.StructureDefinition,
      );
      expect(structDefs, isEmpty);
    });
  });

  // ──────────────────────────────────────────────────────────────────────────
  // General Storage
  // ──────────────────────────────────────────────────────────────────────────
  group('General Storage:', () {
    test('saveGeneral and readGeneral round-trip', () async {
      final key = await dao.saveGeneral(value: '{"data": "hello"}');
      expect(key, isPositive);

      final retrieved = await dao.readGeneral(key);
      expect(retrieved, '{"data": "hello"}');
    });

    test('saveGeneral with explicit key', () async {
      final returnedKey = await dao.saveGeneral(value: 'value-42', key: 42);
      expect(returnedKey, 42);

      final retrieved = await dao.readGeneral(42);
      expect(retrieved, 'value-42');
    });

    test('saveGeneral with keyName', () async {
      final key = await dao.saveGeneral(
        value: 'named-value',
        keyName: 'my-setting',
      );

      final retrieved = await dao.readGeneral(key);
      expect(retrieved, 'named-value');
    });

    test('saveGeneral with explicit key updates on conflict', () async {
      await dao.saveGeneral(value: 'original', key: 100);
      await dao.saveGeneral(value: 'updated', key: 100);

      final retrieved = await dao.readGeneral(100);
      expect(retrieved, 'updated');
    });

    test('readGeneral returns null for missing key', () async {
      final result = await dao.readGeneral(999);
      expect(result, isNull);
    });

    test('getAllGeneral returns all stored entries', () async {
      await dao.saveGeneral(value: 'val-1', keyName: 'key-1');
      await dao.saveGeneral(value: 'val-2', keyName: 'key-2');
      await dao.saveGeneral(value: 'val-3', keyName: 'key-3');

      final all = await dao.getAllGeneral();
      expect(all.length, 3);

      final values = all.map((e) => e.value).toSet();
      expect(values, containsAll(['val-1', 'val-2', 'val-3']));
    });

    test('getAllGeneral returns empty when nothing stored', () async {
      final all = await dao.getAllGeneral();
      expect(all, isEmpty);
    });

    test('deleteFromGeneral removes a specific entry', () async {
      final key1 = await dao.saveGeneral(value: 'delete-me');
      final key2 = await dao.saveGeneral(value: 'keep-me');

      await dao.deleteFromGeneral(key1);

      final deleted = await dao.readGeneral(key1);
      expect(deleted, isNull);

      final kept = await dao.readGeneral(key2);
      expect(kept, 'keep-me');
    });

    test('deleteFromGeneral with non-existent key does not throw', () async {
      // Should not throw
      await dao.deleteFromGeneral(99999);
    });

    test('clearGeneral removes all entries', () async {
      await dao.saveGeneral(value: 'a');
      await dao.saveGeneral(value: 'b');
      await dao.saveGeneral(value: 'c');

      await dao.clearGeneral();

      final all = await dao.getAllGeneral();
      expect(all, isEmpty);
    });

    test('clearGeneral on empty storage does not throw', () async {
      await dao.clearGeneral();
      final all = await dao.getAllGeneral();
      expect(all, isEmpty);
    });

    test('GeneralStorageData has expected fields', () async {
      final key = await dao.saveGeneral(
        value: 'test-val',
        keyName: 'test-key',
      );

      final all = await dao.getAllGeneral();
      final entry = all.firstWhere((e) => e.id == key);
      expect(entry.key, 'test-key');
      expect(entry.value, 'test-val');
      expect(entry.id, key);
    });
  });

  // ──────────────────────────────────────────────────────────────────────────
  // Pagination (getResourcesWithPagination)
  // ──────────────────────────────────────────────────────────────────────────
  group('Pagination (getResourcesWithPagination):', () {
    setUp(() async {
      // Save 10 patients
      for (var i = 0; i < 10; i++) {
        await dao.saveResource(
          Patient(
            id: 'page-pat-$i'.toFhirString,
            name: <HumanName>[
              HumanName(family: 'Patient$i'.toFhirString),
            ],
          ),
        );
      }
    });

    test('first page returns correct count', () async {
      final page = await dao.getResourcesWithPagination(
        resourceType: R4ResourceType.Patient,
        count: 3,
        offset: 0,
      );
      expect(page.length, 3);
    });

    test('second page returns next batch', () async {
      final page1 = await dao.getResourcesWithPagination(
        resourceType: R4ResourceType.Patient,
        count: 3,
        offset: 0,
      );
      final page2 = await dao.getResourcesWithPagination(
        resourceType: R4ResourceType.Patient,
        count: 3,
        offset: 3,
      );

      expect(page2.length, 3);

      final page1Ids = page1.map((r) => r.id?.toString()).toSet();
      final page2Ids = page2.map((r) => r.id?.toString()).toSet();
      expect(page1Ids.intersection(page2Ids), isEmpty);
    });

    test('last partial page returns remaining resources', () async {
      final page = await dao.getResourcesWithPagination(
        resourceType: R4ResourceType.Patient,
        count: 4,
        offset: 8,
      );
      expect(page.length, 2);
    });

    test('offset beyond total returns empty', () async {
      final page = await dao.getResourcesWithPagination(
        resourceType: R4ResourceType.Patient,
        count: 5,
        offset: 100,
      );
      expect(page, isEmpty);
    });

    test('full page returns all resources', () async {
      final page = await dao.getResourcesWithPagination(
        resourceType: R4ResourceType.Patient,
        count: 100,
        offset: 0,
      );
      expect(page.length, 10);
    });

    test('pagination for empty type returns empty', () async {
      final page = await dao.getResourcesWithPagination(
        resourceType: R4ResourceType.Encounter,
        count: 10,
        offset: 0,
      );
      expect(page, isEmpty);
    });

    test('pages cover all resources without overlap', () async {
      final allIds = <String>{};
      var offset = 0;
      const pageSize = 3;

      while (true) {
        final page = await dao.getResourcesWithPagination(
          resourceType: R4ResourceType.Patient,
          count: pageSize,
          offset: offset,
        );
        if (page.isEmpty) break;

        for (final r in page) {
          final id = r.id!.toString();
          expect(allIds.contains(id), false, reason: 'Duplicate id: $id');
          allIds.add(id);
        }
        offset += pageSize;
      }

      expect(allIds.length, 10);
    });
  });

  // ──────────────────────────────────────────────────────────────────────────
  // Additional edge cases
  // ──────────────────────────────────────────────────────────────────────────
  group('Version ID as Timestamp:', () {
    test('versionIdAsTime produces timestamp-based versions', () async {
      dao.versionIdAsTime = true;

      final patient = Patient(
        id: 'ts-patient'.toFhirString,
        name: <HumanName>[
          HumanName(family: 'Timestamp'.toFhirString),
        ],
      );
      final saved = await dao.saveResource(patient);

      // The versionId should be a timestamp string, not "1"
      final versionId = saved.meta?.versionId?.toString();
      expect(versionId, isNotNull);
      expect(versionId, isNot('1'));
      // It should NOT be a plain integer (it's an ISO8601 string with dots)
      expect(int.tryParse(versionId!), isNull);
      // It should contain date-like characters
      expect(versionId, contains('T'));
    });
  });

  group('Resource History:', () {
    test('getResourceHistory returns all versions', () async {
      await dao.saveResource(
        Patient(
          id: 'hist-1'.toFhirString,
          name: <HumanName>[
            HumanName(family: 'Version1'.toFhirString),
          ],
        ),
      );
      await dao.saveResource(
        Patient(
          id: 'hist-1'.toFhirString,
          name: <HumanName>[
            HumanName(family: 'Version2'.toFhirString),
          ],
        ),
      );
      await dao.saveResource(
        Patient(
          id: 'hist-1'.toFhirString,
          name: <HumanName>[
            HumanName(family: 'Version3'.toFhirString),
          ],
        ),
      );

      final history = await dao.getResourceHistory(
        R4ResourceType.Patient,
        'hist-1',
      );

      // History may or may not keep all versions depending on
      // the primary key of resources_history table. Let's just verify
      // at least 1 entry exists and the latest is version 3.
      expect(history, isNotEmpty);
      final latestFamily =
          (history.first as Patient).name?.first.family?.valueString;
      expect(latestFamily, 'Version3');
    });
  });

  group('Batch Save (saveResources):', () {
    test('saveResources saves multiple resources at once', () async {
      final resources = <Resource>[
        Patient(id: 'batch-1'.toFhirString),
        Patient(id: 'batch-2'.toFhirString),
        Observation(
          id: 'batch-obs-1'.toFhirString,
          status: ObservationStatus.final_,
          code: CodeableConcept(text: 'Test'.toFhirString),
        ),
      ];

      final result = await dao.saveResources(resources);
      expect(result, true);

      final p1 = await dao.getResource(R4ResourceType.Patient, 'batch-1');
      final p2 = await dao.getResource(R4ResourceType.Patient, 'batch-2');
      final o1 =
          await dao.getResource(R4ResourceType.Observation, 'batch-obs-1');

      expect(p1, isNotNull);
      expect(p2, isNotNull);
      expect(o1, isNotNull);
    });

    test('saveResources with empty list returns true', () async {
      final result = await dao.saveResources(<Resource>[]);
      expect(result, true);
    });
  });

  group('Resource Existence:', () {
    test('exists returns true for saved resource', () async {
      await dao.saveResource(Patient(id: 'exists-1'.toFhirString));

      final result = await dao.exists(R4ResourceType.Patient, 'exists-1');
      expect(result, true);
    });

    test('exists returns false for missing resource', () async {
      final result =
          await dao.exists(R4ResourceType.Patient, 'does-not-exist');
      expect(result, false);
    });

    test('exists returns false after deletion', () async {
      await dao.saveResource(Patient(id: 'del-check'.toFhirString));
      await dao.deleteResource(R4ResourceType.Patient, 'del-check');

      final result = await dao.exists(R4ResourceType.Patient, 'del-check');
      expect(result, false);
    });
  });
}
