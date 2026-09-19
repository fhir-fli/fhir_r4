import 'package:drift/drift.dart' show Variable;
import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_db/fhir_r4_db.dart' hide Resource;
import 'package:test/test.dart';

/// `purgeResourcesLastUpdatedBefore`: retention for one type (fhirant
/// REVIEW-2026-09-17 A16, AuditEvent). The current row, every history row
/// of the id and its index rows go; no tombstone; other types and newer
/// resources of the same type stay.
Future<void> main() async {
  late FhirDb db;
  late FhirDao dao;

  Map<String, dynamic> observation(String id) => {
        'resourceType': 'Observation',
        'id': id,
        'status': 'final',
        'code': {
          'coding': [
            {'system': 'http://example.org', 'code': 'A'},
          ],
        },
      };

  setUp(() async {
    db = FhirDb(NativeDatabase.memory());
    dao = db.fhirDao;
    await dao.saveResource(Observation.fromJson(observation('old')));
    // A second version, so the history has two rows to remove.
    await dao.saveResource(Observation.fromJson(observation('old')));
    await dao.saveResource(Observation.fromJson(observation('recent')));
    await dao.saveResource(
      Patient.fromJson({'resourceType': 'Patient', 'id': 'p-old'}),
    );
  });

  tearDown(() async {
    await db.close();
  });

  /// The store stamps `last_updated` at save; a row is aged by hand.
  Future<void> age(String type, String id, Duration by) async {
    final at = DateTime.now().toUtc().subtract(by).millisecondsSinceEpoch;
    for (final table in ['resources', 'resources_history']) {
      await db.customStatement(
        'UPDATE $table SET last_updated = ? WHERE resource_type = ? '
        'AND id = ?',
        [at, type, id],
      );
    }
  }

  Future<int> count(String table, String type, String id) async =>
      (await db.customSelect(
        'SELECT count(*) AS n FROM $table WHERE resource_type = ? AND id = ?',
        variables: [Variable.withString(type), Variable.withString(id)],
      ).getSingle())
          .read<int>('n');

  test('removes the old resource, its history and its index rows', () async {
    await age('Observation', 'old', const Duration(days: 40));
    await age('Observation', 'recent', const Duration(days: 20));
    await age('Patient', 'p-old', const Duration(days: 40));
    expect(
      await count('resources_history', 'Observation', 'old'),
      greaterThan(0),
    );
    expect(
      await count('token_search_parameters', 'Observation', 'old'),
      greaterThan(0),
    );

    final cutoff = DateTime.now().toUtc().subtract(const Duration(days: 30));
    final removed = await dao.purgeResourcesLastUpdatedBefore(
      R4ResourceType.Observation,
      cutoff,
    );
    expect(removed, 1);

    expect(await dao.getResource(R4ResourceType.Observation, 'old'), isNull);
    expect(await count('resources_history', 'Observation', 'old'), 0);
    expect(await count('token_search_parameters', 'Observation', 'old'), 0);
    expect(await count('string_search_parameters', 'Observation', 'old'), 0);
    expect(await count('date_search_parameters', 'Observation', 'old'), 0);
    // No tombstone: a vread of the old id finds nothing at all.
    expect(await dao.getHistory(R4ResourceType.Observation, 'old'), isEmpty);

    // The recent one and the other type stay, index included.
    expect(
      await dao.getResource(R4ResourceType.Observation, 'recent'),
      isNotNull,
    );
    expect(
      await count('token_search_parameters', 'Observation', 'recent'),
      greaterThan(0),
    );
    expect(await dao.getResource(R4ResourceType.Patient, 'p-old'), isNotNull);
    // And the search index still finds the survivor only.
    final found = await dao.search(
      resourceType: R4ResourceType.Observation,
      searchParameters: {
        'code': ['http://example.org|A'],
      },
    );
    expect(found.map((r) => r.id!.valueString), ['recent']);
  });

  test('nothing old: nothing removed', () async {
    expect(
      await dao.purgeResourcesLastUpdatedBefore(
        R4ResourceType.Observation,
        DateTime.now().toUtc().subtract(const Duration(days: 1)),
      ),
      0,
    );
    expect(await count('resources', 'Observation', 'old'), 1);
  });
}
