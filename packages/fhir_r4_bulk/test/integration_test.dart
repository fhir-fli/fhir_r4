import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_bulk/fhir_r4_bulk.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';

void main() {
  group('Unit Tests for Bulk Export (Mock)', () {
    test('GET-based export handles 202 + polling to 200 + NDJSON download',
        () async {
      // 1) We'll simulate a 202 response with content-location
      //    Then a 200 response with final output
      //    Then NDJSON download
      var callCount = 0;
      final mockClient = MockClient((request) async {
        callCount++;
        if (callCount == 1) {
          // Kick-off -> 202
          return http.Response(
            '',
            202,
            headers: {
              'content-location': 'http://fake-server/poll',
            },
          );
        } else if (callCount == 2) {
          // Poll -> 200 final
          final bodyJson = jsonEncode(
            {
              'transactionTime': '2023-01-01T00:00:00Z',
              'output': [
                {
                  'type': 'Patient',
                  'url': 'http://fake-server/exported/patients.ndjson',
                },
              ],
            },
          );
          return http.Response(bodyJson, 200);
        } else if (callCount == 3) {
          // NDJSON download
          const ndjson = '''
{"resourceType":"Patient","id":"123"}
{"resourceType":"Patient","id":"456"}
''';
          return http.Response(
            ndjson,
            200,
            headers: {
              'content-type': 'application/fhir+ndjson',
            },
          );
        }
        return http.Response('Unexpected', 400);
      });

      final req = BulkRequestPatient(
        base: Uri.parse('http://fake-server/fhir'),
        client: mockClient,
      );

      final result = await req.request();
      expect(result, hasLength(2));
      expect(result.first, isA<Patient>());
      expect((result.first! as Patient).id, FhirString('123'));
    });

    test('POST-based export handles 202 + polling', () async {
      var callCount = 0;
      final mockClient = MockClient((request) async {
        callCount++;
        if (callCount == 1) {
          // Kick-off -> 202
          return http.Response(
            '',
            202,
            headers: {
              'content-location': 'http://fake-server/poll',
            },
          );
        } else if (callCount == 2) {
          // Poll -> 200 final
          final bodyJson = jsonEncode(
            {
              'transactionTime': '2023-02-02T00:00:00Z',
              'output': [
                {
                  'type': 'Patient',
                  'url': 'http://fake-server/export/patients.ndjson',
                },
              ],
            },
          );
          return http.Response(bodyJson, 200);
        } else if (callCount == 3) {
          // NDJSON
          const ndjson = '''
{"resourceType":"Patient","id":"abc"}
''';
          return http.Response(
            ndjson,
            200,
            headers: {
              'content-type': 'application/fhir+ndjson',
            },
          );
        }
        return http.Response('Unexpected', 400);
      });

      final req = BulkRequestGroup(
        base: Uri.parse('http://fake-server/fhir'),
        id: FhirId('MyGroup'),
        client: mockClient,
        useHttpPost: true, // <--- we do POST-based approach
        types: [
          WhichResource(R4ResourceType.Patient),
        ],
      );

      final result = await req.request();
      expect(result, hasLength(1));
      expect(result.first, isA<Patient>());
      expect((result.first! as Patient).id, FhirString('abc'));
    });
  });

  group('Unit Tests for Bulk Import (Mock)', () {
    test('Import returns OperationOutcome with job ID', () async {
      final mockClient = MockClient((request) async {
        final outcome = {
          'resourceType': 'OperationOutcome',
          'issue': [
            {
              'severity': 'information',
              'code': 'informational',
              'diagnostics': 'Bulk import job started with ID: 1234',
            },
          ],
        };
        return http.Response(jsonEncode(outcome), 202);
      });

      final req = BulkImportRequest(
        base: Uri.parse('http://fake-server/fhir'),
        files: [
          ImportFile(
            resourceType: R4ResourceType.Patient,
            url: Uri.parse('http://fake/patients.ndjson'),
          ),
        ],
        client: mockClient,
      );

      final outcome = await req.importData();
      expect(outcome.issue, isNotEmpty);
      expect(
        outcome.issue.first.diagnostics?.valueString,
        contains('ID: 1234'),
      );
    });
  });

  group('Integration Test Example (REAL)', () {
    // This is just a template. Adjust the URLs and any needed auth tokens
    // for whichever server you want to test (e.g. SMART Bulk Data sandbox).
    //
    // Because the public SMART sandbox might require ephemeral JWKS for auth,
    // you can skip if you have no token or do open endpoints. Or you might try
    // a local HAPI instance where you enabled $export.

    test(
        'Real-world POST-based Group Export (point to a real Bulk Data server)',
        () async {
      // For example, the ephemeral SMART Bulk Data server URL:
      final baseUrl = Uri.parse(
        r'https://bulk-data.smarthealthit.org/eyJlcnIiOiIiLCJwYWdlIjoxMDAwMCwidGx0IjoxNSwibSI6MSwiZGVsIjowLCJzZWN1cmUiOjB9/fhir/Group/HarvardPilgrimHealthCare/$export?_type=AllergyIntolerance%2CDevice%2CDocumentReference%2CImagingStudy%2CPatient',
      );

      // If the server needs auth (JWT), you'd get a token here, e.g.:
      // final token = await getSmartBulkDataToken(...);
      // final headers = {
      //   'Authorization': 'Bearer $token',
      //   'content-type': 'application/fhir+json',
      // };
      // If no auth needed, do minimal headers:
      final headers = {
        'content-type': 'application/fhir+json',
        'accept': 'application/fhir+json',
      };

      final req = BulkRequestGroup(
        base: baseUrl,
        id: FhirId('HarvardPilgrimHealthCare'),
        headers: headers,
        useHttpPost: true, // do POST
        // Optionally specify resource types
        types: [
          WhichResource(R4ResourceType.AllergyIntolerance),
          WhichResource(R4ResourceType.Device),
          WhichResource(R4ResourceType.ImagingStudy),
          WhichResource(R4ResourceType.Patient),
          WhichResource(R4ResourceType.DocumentReference),
          WhichResource(R4ResourceType.Immunization),
        ],
      );

      final resources = await req.request();
      // ignore: avoid_print
      print('Got ${resources.length} resources from real server '
          '(or OperationOutcome).');
      for (final r in resources) {
        if (r is OperationOutcome) {
          print('OperationOutcome: ${r.issue.first.diagnostics?.valueString}');
        } else {
          print(
            'Resource: ${r?.resourceType}, id=${(r as DomainResource?)?.id}',
          );
        }
      }

      // Just check that it's a list of Resource?
      //(including possibly OperationOutcomes)
      expect(resources, isA<List<Resource?>>());
    });
  });
}
