import 'dart:convert';

import 'package:archive/archive.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_bulk/fhir_r4_bulk.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';

void main() {
  group('FhirBulk.toZipFile', () {
    test('creates ZIP containing named .ndjson files', () async {
      final ndjson = FhirBulk.toNdJson([
        Patient(id: 'p1'.toFhirString),
        Patient(id: 'p2'.toFhirString),
      ]);
      final zipBytes = await FhirBulk.toZipFile({'patients': ndjson});
      expect(zipBytes, isNotNull);
      expect(zipBytes, isNotEmpty);

      // Decode ZIP and verify file names
      final archive = ZipDecoder().decodeBytes(zipBytes!);
      expect(archive.files, hasLength(1));
      expect(archive.files.first.name, 'patients.ndjson');

      // Verify content is valid NDJSON
      final content = utf8.decode(archive.files.first.content as List<int>);
      final resources = FhirBulk.fromNdJson(content);
      expect(resources, hasLength(2));
      expect((resources[0] as Patient).id, FhirString('p1'));
      expect((resources[1] as Patient).id, FhirString('p2'));
    });

    test('creates ZIP with multiple NDJSON files', () async {
      final patientsNdjson = FhirBulk.toNdJson([
        Patient(id: 'p1'.toFhirString),
      ]);
      final obsNdjson = FhirBulk.toNdJson([
        Observation(
          id: 'o1'.toFhirString,
          status: ObservationStatus.final_,
          code: CodeableConcept(text: 'test'.toFhirString),
        ),
      ]);

      final zipBytes = await FhirBulk.toZipFile({
        'patients': patientsNdjson,
        'observations': obsNdjson,
      });
      expect(zipBytes, isNotNull);

      final archive = ZipDecoder().decodeBytes(zipBytes!);
      expect(archive.files, hasLength(2));
      final names = archive.files.map((f) => f.name).toSet();
      expect(names, contains('patients.ndjson'));
      expect(names, contains('observations.ndjson'));
    });

    test('round-trips through fromCompressedData', () async {
      final resources = <Resource>[
        Patient(id: 'rt1'.toFhirString),
        Patient(id: 'rt2'.toFhirString),
        Patient(id: 'rt3'.toFhirString),
      ];

      final ndjson = FhirBulk.toNdJson(resources);
      final zipBytes = await FhirBulk.toZipFile({'data': ndjson});
      final decoded = await FhirBulk.fromCompressedData(
        'application/zip',
        zipBytes!,
      );

      expect(decoded, hasLength(3));
      for (var i = 0; i < 3; i++) {
        expect((decoded[i] as Patient).id, FhirString('rt${i + 1}'));
      }
    });

    test('handles empty NDJSON map', () async {
      final zipBytes = await FhirBulk.toZipFile({});
      expect(zipBytes, isNotNull);
      // Empty archive should still be valid ZIP bytes
      final archive = ZipDecoder().decodeBytes(zipBytes!);
      expect(archive.files, isEmpty);
    });
  });

  group('FhirBulk.toGZipFile', () {
    test('creates GZIP that decompresses to valid NDJSON', () {
      final ndjson = FhirBulk.toNdJson([
        Patient(id: 'gz-p1'.toFhirString),
      ]);
      final gzBytes = FhirBulk.toGZipFile({'patients': ndjson});
      expect(gzBytes, isNotNull);
      expect(gzBytes, isNotEmpty);

      // Decompress and verify
      final decompressed = utf8.decode(
        const GZipDecoder().decodeBytes(gzBytes!),
      );
      final resources = FhirBulk.fromNdJson(decompressed);
      expect(resources, hasLength(1));
      expect((resources.first as Patient).id, FhirString('gz-p1'));
    });

    test('concatenates multiple NDJSON values with newline', () {
      final gzBytes = FhirBulk.toGZipFile({
        'patients': '{"resourceType":"Patient","id":"1"}',
        'more': '{"resourceType":"Patient","id":"2"}',
      });
      expect(gzBytes, isNotNull);

      final decompressed = utf8.decode(
        const GZipDecoder().decodeBytes(gzBytes!),
      );
      final resources = FhirBulk.fromNdJson(decompressed);
      expect(resources, hasLength(2));
    });

    test('round-trips through fromCompressedData', () async {
      final resources = [Patient(id: 'gz-rt'.toFhirString)];
      final ndjson = FhirBulk.toNdJson(resources);
      final gzBytes = FhirBulk.toGZipFile({'data': ndjson});

      final decoded = await FhirBulk.fromCompressedData(
        'application/gzip',
        gzBytes!,
      );
      expect(decoded, hasLength(1));
      expect((decoded.first as Patient).id, FhirString('gz-rt'));
    });
  });

  group('FhirBulk.toTarGzFile', () {
    test('creates tar.gz with named .ndjson files', () async {
      final ndjson = FhirBulk.toNdJson([
        Patient(id: 'tar-p1'.toFhirString),
      ]);
      final tarGzBytes = await FhirBulk.toTarGzFile({'patients': ndjson});
      expect(tarGzBytes, isNotNull);
      expect(tarGzBytes, isNotEmpty);

      // Decompress and untar
      final unzipped = const GZipDecoder().decodeBytes(tarGzBytes!);
      final archive = TarDecoder().decodeBytes(unzipped);
      expect(archive.files, hasLength(1));
      expect(archive.files.first.name, 'patients.ndjson');
    });

    test('round-trips through fromCompressedData as application/x-tar',
        () async {
      final resources = <Resource>[
        Patient(id: 'trt1'.toFhirString),
        Observation(
          id: 'trt2'.toFhirString,
          status: ObservationStatus.final_,
          code: CodeableConcept(text: 'test'.toFhirString),
        ),
      ];

      final patientNdjson = FhirBulk.toNdJson([resources[0]]);
      final obsNdjson = FhirBulk.toNdJson([resources[1]]);
      final tarGzBytes = await FhirBulk.toTarGzFile({
        'patients': patientNdjson,
        'observations': obsNdjson,
      });

      final decoded = await FhirBulk.fromCompressedData(
        'application/x-tar',
        tarGzBytes!,
      );
      expect(decoded, hasLength(2));
      expect(decoded[0], isA<Patient>());
      expect(decoded[1], isA<Observation>());
    });
  });

  group('BulkRequestGroup URL building', () {
    test('includes Group/<id> in export URL', () async {
      String? capturedUrl;
      final mockClient = MockClient((request) async {
        capturedUrl = request.url.toString();
        return http.Response('', 400);
      });

      final req = BulkRequestGroup(
        base: Uri.parse('http://example.com/fhir'),
        id: FhirId('group-42'),
        client: mockClient,
      );

      await req.request();
      expect(capturedUrl, contains(r'Group/group-42/$export'));
    });

    test('includes query params along with group endpoint', () async {
      String? capturedUrl;
      final mockClient = MockClient((request) async {
        capturedUrl = request.url.toString();
        return http.Response('', 400);
      });

      final req = BulkRequestGroup(
        base: Uri.parse('http://example.com/fhir'),
        id: FhirId('grp-99'),
        types: [WhichResource(R4ResourceType.Patient)],
        since: '2024-06-01'.toFhirDateTime,
        client: mockClient,
      );

      await req.request();
      expect(capturedUrl, contains(r'Group/grp-99/$export'));
      expect(capturedUrl, contains('_type=Patient'));
      expect(capturedUrl, contains('_since=2024-06-01'));
    });
  });
}
