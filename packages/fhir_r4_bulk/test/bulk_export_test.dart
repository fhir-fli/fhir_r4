import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_bulk/fhir_r4_bulk.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';

void main() {
  group('Bulk Export - Mock Tests', () {
    test('Should handle 202 + polling to 200', () async {
      // Steps:
      // 1) GET -> 202 (with content-location + retry-after)
      // 2) GET poll -> 202 (still processing)
      // 3) GET poll -> 200 (with final output JSON)
      // 4) GET NDJSON links -> returns NDJSON

      final calls = <String>[];
      final mockClient = MockClient((request) async {
        calls.add(request.url.toString());

        if (calls.length == 1) {
          // Step 1: Kick-off
          return http.Response(
            '',
            202,
            headers: {
              'content-location': r'http://fake-server/fhir/$export-poll',
              'retry-after': '1',
            },
          );
        } else if (calls.length == 2) {
          // Step 2: Poll -> still in progress
          return http.Response(
            'In progress',
            202,
            headers: {'retry-after': '1'},
          );
        } else if (calls.length == 3) {
          // Step 3: Poll -> done
          final finalJson = jsonEncode({
            'transactionTime': '2023-10-10T00:00:00Z',
            'output': [
              {
                'type': 'Patient',
                'url': 'http://fake-server/fhir/exported/patients.ndjson',
              },
            ],
          });
          return http.Response(finalJson, 200);
        } else if (calls.length == 4) {
          // Step 4: NDJSON link
          const ndjson = '''
{"resourceType":"Patient","id":"123"}
{"resourceType":"Patient","id":"456"}''';
          return http.Response(
            ndjson,
            200,
            headers: {
              'content-type': 'application/fhir+ndjson',
            },
          );
        }

        // Otherwise
        return http.Response('Unexpected call', 400);
      });

      final request = BulkRequestPatient(
        base: Uri.parse('http://fake-server/fhir'),
        client: mockClient,
      );

      final result = await request.request();
      expect(result, hasLength(2));
      expect(result.first, isA<Patient>());
      expect((result.first as Patient?)?.id, FhirString('123'));
      expect((result.last as Patient?)?.id, FhirString('456'));
    });

    test('Should handle immediate 200 (no polling)', () async {
      // Some servers might skip 202 if the dataset is small
      final mockClient = MockClient((request) async {
        final finalJson = jsonEncode({
          'transactionTime': '2023-10-10T00:00:00Z',
          'output': <dynamic>[],
        });
        return http.Response(finalJson, 200);
      });

      final request = BulkRequestSystem(
        base: Uri.parse('http://fake-server/fhir'),
        client: mockClient,
      );

      final result = await request.request();
      // No resources, but no error either
      expect(result, isEmpty);
    });

    test('Should handle error code on poll', () async {
      final mockClient = MockClient((request) async {
        if (request.url.path.endsWith(r'$export')) {
          // Kick-off returns 202
          return http.Response(
            '',
            202,
            headers: {'content-location': 'http://fake-server/fhir/poll'},
          );
        } else {
          // Poll returns 404
          return http.Response('Not Found', 404);
        }
      });

      final request = BulkRequestPatient(
        base: Uri.parse('http://fake-server/fhir'),
        client: mockClient,
      );

      final result = await request.request();
      // Should return [OperationOutcome]
      expect(result, hasLength(1));
      expect(result.first, isA<OperationOutcome>());
      final outcome = result.first as OperationOutcome?;
      expect(
        outcome?.issue.first.diagnostics?.valueString?.contains('Not Found'),
        isTrue,
      );
    });
  });
}
