// The writer half of date_zone_independence_test.dart: builds the store in
// whatever TZ it was started with.
import 'dart:io';

import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart';

Future<void> main() async {
  final db =
      FhirDb(NativeDatabase(File(Platform.environment['ZONE_PROBE_DB']!)));
  final dao = FhirDao(db);
  await dao.saveResource(
    fhir.Resource.fromJson({
      'resourceType': 'Patient',
      'id': 'p',
      'birthDate': '1990-01-15',
    }),
  );
  for (final (id, written) in [
    ('zoneless', '2013-01-14T10:00:00'),
    ('zoned', '2013-01-14T10:00:00+02:00'),
  ]) {
    await dao.saveResource(
      fhir.Resource.fromJson({
        'resourceType': 'Observation',
        'id': id,
        'status': 'final',
        'code': {
          'coding': [
            {'system': 'http://loinc.org', 'code': '8867-4'},
          ],
        },
        'effectiveDateTime': written,
      }),
    );
  }
  await db.close();
}
