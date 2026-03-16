import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_bulk/fhir_r4_bulk.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';

void main() {
  group('WhichResource creation and validation', () {
    test('creates WhichResource with resourceType only', () {
      final wr = WhichResource(R4ResourceType.Patient);
      expect(wr.resourceType, R4ResourceType.Patient);
      expect(wr.id, isNull);
    });

    test('creates WhichResource with resourceType and id', () {
      final wr = WhichResource(R4ResourceType.Observation, FhirId('obs-123'));
      expect(wr.resourceType, R4ResourceType.Observation);
      expect(wr.id, FhirId('obs-123'));
    });

    test('creates WhichResource with null resourceType', () {
      final wr = WhichResource(null);
      expect(wr.resourceType, isNull);
      expect(wr.id, isNull);
    });

    test('creates WhichResource with null resourceType and id', () {
      final wr = WhichResource(null, FhirId('some-id'));
      expect(wr.resourceType, isNull);
      expect(wr.id, FhirId('some-id'));
    });
  });

  group('BulkRequest subclass differences', () {
    test('BulkRequestPatient exports at Patient endpoint', () async {
      String? capturedUrl;
      final mockClient = MockClient((request) async {
        capturedUrl = request.url.toString();
        return http.Response('', 400);
      });

      final req = BulkRequestPatient(
        base: Uri.parse('http://example.com/fhir'),
        client: mockClient,
      );

      await req.request();
      expect(capturedUrl, contains(r'Patient/$export'));
      expect(capturedUrl, isNot(contains('Group')));
    });

    test('BulkRequestGroup exports at Group endpoint with id', () async {
      String? capturedUrl;
      final mockClient = MockClient((request) async {
        capturedUrl = request.url.toString();
        return http.Response('', 400);
      });

      final req = BulkRequestGroup(
        base: Uri.parse('http://example.com/fhir'),
        id: FhirId('my-group-42'),
        client: mockClient,
      );

      await req.request();
      expect(capturedUrl, contains(r'Group/my-group-42/$export'));
    });

    test('BulkRequestSystem exports at system-level endpoint', () async {
      String? capturedUrl;
      final mockClient = MockClient((request) async {
        capturedUrl = request.url.toString();
        return http.Response('', 400);
      });

      final req = BulkRequestSystem(
        base: Uri.parse('http://example.com/fhir'),
        client: mockClient,
      );

      await req.request();
      expect(capturedUrl, endsWith(r'$export'));
      expect(capturedUrl, isNot(contains('Patient')));
      expect(capturedUrl, isNot(contains('Group')));
    });

    test('BulkRequestPatient with trailing slash on base', () async {
      String? capturedUrl;
      final mockClient = MockClient((request) async {
        capturedUrl = request.url.toString();
        return http.Response('', 400);
      });

      final req = BulkRequestPatient(
        base: Uri.parse('http://example.com/fhir/'),
        client: mockClient,
      );

      await req.request();
      // Should not have double slash
      expect(capturedUrl, isNot(contains('fhir//Patient')));
      expect(capturedUrl, contains(r'Patient/$export'));
    });
  });

  group('BulkRequest query parameter building', () {
    test('includes _since parameter in GET request', () async {
      String? capturedUrl;
      final mockClient = MockClient((request) async {
        capturedUrl = request.url.toString();
        return http.Response('', 400);
      });

      final req = BulkRequestSystem(
        base: Uri.parse('http://example.com/fhir'),
        since: '2023-06-01T00:00:00Z'.toFhirDateTime,
        client: mockClient,
      );

      await req.request();
      expect(capturedUrl, contains('_since=2023-06-01'));
    });

    test('includes _type parameter with multiple types', () async {
      String? capturedUrl;
      final mockClient = MockClient((request) async {
        capturedUrl = request.url.toString();
        return http.Response('', 400);
      });

      final req = BulkRequestSystem(
        base: Uri.parse('http://example.com/fhir'),
        types: [
          WhichResource(R4ResourceType.Patient),
          WhichResource(R4ResourceType.Observation),
        ],
        client: mockClient,
      );

      await req.request();
      expect(capturedUrl, contains('_type=Patient,Observation'));
    });

    test('includes _type with resource ID', () async {
      String? capturedUrl;
      final mockClient = MockClient((request) async {
        capturedUrl = request.url.toString();
        return http.Response('', 400);
      });

      final req = BulkRequestSystem(
        base: Uri.parse('http://example.com/fhir'),
        types: [
          WhichResource(R4ResourceType.Patient, FhirId('123')),
        ],
        client: mockClient,
      );

      await req.request();
      expect(capturedUrl, contains('_type=Patient/123'));
    });

    test('includes _outputFormat parameter', () async {
      String? capturedUrl;
      final mockClient = MockClient((request) async {
        capturedUrl = request.url.toString();
        return http.Response('', 400);
      });

      final req = BulkRequestSystem(
        base: Uri.parse('http://example.com/fhir'),
        outputFormat: 'application/fhir+ndjson',
        client: mockClient,
      );

      await req.request();
      expect(capturedUrl, contains('_outputFormat='));
    });

    test('includes _typeFilter parameters', () async {
      String? capturedUrl;
      final mockClient = MockClient((request) async {
        capturedUrl = request.url.toString();
        return http.Response('', 400);
      });

      final req = BulkRequestSystem(
        base: Uri.parse('http://example.com/fhir'),
        typeFilters: [
          'Patient?identifier=foo',
          'Practitioner?name=john',
        ],
        client: mockClient,
      );

      await req.request();
      expect(capturedUrl, contains('_typeFilter='));
    });

    test('merges custom headers with defaults', () async {
      Map<String, String>? capturedHeaders;
      final mockClient = MockClient((request) async {
        capturedHeaders = request.headers;
        return http.Response('', 400);
      });

      final req = BulkRequestSystem(
        base: Uri.parse('http://example.com/fhir'),
        headers: {'Authorization': 'Bearer tok123'},
        client: mockClient,
      );

      await req.request();
      expect(capturedHeaders?['prefer'], 'respond-async');
      expect(capturedHeaders?['Authorization'], 'Bearer tok123');
    });
  });

  group('BulkRequest POST-based export', () {
    test('POST sends Parameters resource in body', () async {
      String? capturedBody;
      String? capturedMethod;
      final mockClient = MockClient((request) async {
        capturedMethod = request.method;
        capturedBody = request.body;
        return http.Response('', 400);
      });

      final req = BulkRequestPatient(
        base: Uri.parse('http://example.com/fhir'),
        useHttpPost: true,
        types: [WhichResource(R4ResourceType.Patient)],
        since: '2024-01-01'.toFhirDateTime,
        client: mockClient,
      );

      await req.request();
      expect(capturedMethod, 'POST');
      expect(capturedBody, isNotNull);

      final decoded = jsonDecode(capturedBody!) as Map<String, dynamic>;
      expect(decoded['resourceType'], 'Parameters');
      final params = decoded['parameter'] as List<dynamic>;
      expect(params, isNotEmpty);

      // Check that _type and _since parameters are present
      final paramNames =
          params.map((p) => (p as Map<String, dynamic>)['name']).toList();
      expect(paramNames, contains('_type'));
      expect(paramNames, contains('_since'));
    });

    test('POST sets content-type to application/fhir+json', () async {
      Map<String, String>? capturedHeaders;
      final mockClient = MockClient((request) async {
        capturedHeaders = request.headers;
        return http.Response('', 400);
      });

      final req = BulkRequestSystem(
        base: Uri.parse('http://example.com/fhir'),
        useHttpPost: true,
        client: mockClient,
      );

      await req.request();
      expect(capturedHeaders?['content-type'], 'application/fhir+json');
    });
  });

  group('Error response handling during polling', () {
    test('returns OperationOutcome on immediate 400 Bad Request', () async {
      final mockClient = MockClient((request) async {
        return http.Response('Bad Request body', 400);
      });

      final req = BulkRequestSystem(
        base: Uri.parse('http://example.com/fhir'),
        client: mockClient,
      );

      final result = await req.request();
      expect(result, hasLength(1));
      expect(result.first, isA<OperationOutcome>());
      final oo = result.first as OperationOutcome;
      expect(oo.issue.first.details?.text?.valueString, contains('400'));
    });

    test('returns OperationOutcome on 401 Unauthorized', () async {
      final mockClient = MockClient((request) async {
        return http.Response('Unauthorized', 401);
      });

      final req = BulkRequestPatient(
        base: Uri.parse('http://example.com/fhir'),
        client: mockClient,
      );

      final result = await req.request();
      expect(result, hasLength(1));
      expect(result.first, isA<OperationOutcome>());
      final oo = result.first as OperationOutcome;
      expect(oo.issue.first.details?.text?.valueString, contains('401'));
    });

    test('returns OperationOutcome on 500 Internal Server Error', () async {
      final mockClient = MockClient((request) async {
        return http.Response('Internal error', 500);
      });

      final req = BulkRequestSystem(
        base: Uri.parse('http://example.com/fhir'),
        client: mockClient,
      );

      final result = await req.request();
      expect(result, hasLength(1));
      expect(result.first, isA<OperationOutcome>());
    });

    test('returns OperationOutcome on unexpected status code (e.g. 301)',
        () async {
      final mockClient = MockClient((request) async {
        return http.Response('Moved', 301);
      });

      final req = BulkRequestSystem(
        base: Uri.parse('http://example.com/fhir'),
        client: mockClient,
      );

      final result = await req.request();
      expect(result, hasLength(1));
      expect(result.first, isA<OperationOutcome>());
    });

    test('returns OperationOutcome when 202 has no Content-Location', () async {
      final mockClient = MockClient((request) async {
        return http.Response('', 202, headers: {});
      });

      final req = BulkRequestSystem(
        base: Uri.parse('http://example.com/fhir'),
        client: mockClient,
      );

      final result = await req.request();
      expect(result, hasLength(1));
      expect(result.first, isA<OperationOutcome>());
      final oo = result.first as OperationOutcome;
      expect(
        oo.issue.first.details?.text?.valueString,
        contains('Content-Location'),
      );
    });

    test('returns OperationOutcome when final response body is empty',
        () async {
      var callCount = 0;
      final mockClient = MockClient((request) async {
        callCount++;
        if (callCount == 1) {
          return http.Response('', 202, headers: {
            'content-location': 'http://fake/poll',
          });
        }
        // Poll returns 200 with empty body
        return http.Response('', 200);
      });

      final req = BulkRequestSystem(
        base: Uri.parse('http://example.com/fhir'),
        client: mockClient,
      );

      final result = await req.request();
      expect(result, hasLength(1));
      expect(result.first, isA<OperationOutcome>());
    });

    test('returns OperationOutcome when final response is not valid JSON',
        () async {
      var callCount = 0;
      final mockClient = MockClient((request) async {
        callCount++;
        if (callCount == 1) {
          return http.Response('', 202, headers: {
            'content-location': 'http://fake/poll',
          });
        }
        return http.Response('this is not json', 200);
      });

      final req = BulkRequestSystem(
        base: Uri.parse('http://example.com/fhir'),
        client: mockClient,
      );

      final result = await req.request();
      expect(result, hasLength(1));
      expect(result.first, isA<OperationOutcome>());
    });

    test('returns empty list when output array is empty', () async {
      final mockClient = MockClient((request) async {
        return http.Response(
          jsonEncode({
            'transactionTime': '2024-01-01T00:00:00Z',
            'output': <dynamic>[],
          }),
          200,
        );
      });

      final req = BulkRequestSystem(
        base: Uri.parse('http://example.com/fhir'),
        client: mockClient,
      );

      final result = await req.request();
      expect(result, isEmpty);
    });

    test('returns OperationOutcome when output item has missing url', () async {
      var callCount = 0;
      final mockClient = MockClient((request) async {
        callCount++;
        if (callCount == 1) {
          return http.Response(
            jsonEncode({
              'transactionTime': '2024-01-01T00:00:00Z',
              'output': [
                {'type': 'Patient'},
              ],
            }),
            200,
          );
        }
        return http.Response('Unexpected', 400);
      });

      final req = BulkRequestSystem(
        base: Uri.parse('http://example.com/fhir'),
        client: mockClient,
      );

      final result = await req.request();
      expect(result, hasLength(1));
      expect(result.first, isA<OperationOutcome>());
    });

    test('returns OperationOutcome when NDJSON download fails', () async {
      var callCount = 0;
      final mockClient = MockClient((request) async {
        callCount++;
        if (callCount == 1) {
          return http.Response(
            jsonEncode({
              'transactionTime': '2024-01-01T00:00:00Z',
              'output': [
                {
                  'type': 'Patient',
                  'url': 'http://fake/patients.ndjson',
                },
              ],
            }),
            200,
          );
        }
        // NDJSON download returns error
        return http.Response('Not Found', 404);
      });

      final req = BulkRequestSystem(
        base: Uri.parse('http://example.com/fhir'),
        client: mockClient,
      );

      final result = await req.request();
      expect(result, hasLength(1));
      expect(result.first, isA<OperationOutcome>());
    });

    test('handles HTTP exception during kick-off gracefully', () async {
      final mockClient = MockClient((request) async {
        throw Exception('Connection refused');
      });

      final req = BulkRequestSystem(
        base: Uri.parse('http://example.com/fhir'),
        client: mockClient,
      );

      final result = await req.request();
      expect(result, hasLength(1));
      expect(result.first, isA<OperationOutcome>());
      final oo = result.first as OperationOutcome;
      expect(
        oo.issue.first.diagnostics?.valueString,
        contains('Connection refused'),
      );
    });

    test('handles HTTP exception during polling gracefully', () async {
      var callCount = 0;
      final mockClient = MockClient((request) async {
        callCount++;
        if (callCount == 1) {
          return http.Response('', 202, headers: {
            'content-location': 'http://fake/poll',
          });
        }
        throw Exception('Network timeout');
      });

      final req = BulkRequestSystem(
        base: Uri.parse('http://example.com/fhir'),
        client: mockClient,
      );

      final result = await req.request();
      expect(result, hasLength(1));
      expect(result.first, isA<OperationOutcome>());
      final oo = result.first as OperationOutcome;
      expect(
        oo.issue.first.diagnostics?.valueString,
        contains('Network timeout'),
      );
    });

    test('handles multiple output files with mixed success and failure',
        () async {
      var callCount = 0;
      final mockClient = MockClient((request) async {
        callCount++;
        if (callCount == 1) {
          return http.Response(
            jsonEncode({
              'transactionTime': '2024-01-01T00:00:00Z',
              'output': [
                {
                  'type': 'Patient',
                  'url': 'http://fake/patients.ndjson',
                },
                {
                  'type': 'Observation',
                  'url': 'http://fake/observations.ndjson',
                },
              ],
            }),
            200,
          );
        }
        if (callCount == 2) {
          // First file succeeds
          return http.Response(
            '{"resourceType":"Patient","id":"p1"}',
            200,
            headers: {'content-type': 'application/fhir+ndjson'},
          );
        }
        if (callCount == 3) {
          // Second file fails
          return http.Response('Server Error', 500);
        }
        return http.Response('Unexpected', 400);
      });

      final req = BulkRequestSystem(
        base: Uri.parse('http://example.com/fhir'),
        client: mockClient,
      );

      final result = await req.request();
      // Should have the Patient plus an OperationOutcome for the failed file
      expect(result, hasLength(2));
      expect(result[0], isA<Patient>());
      expect(result[1], isA<OperationOutcome>());
    });
  });

  group('BulkImportRequest edge cases', () {
    test('assertion fails when files list is empty', () {
      expect(
        () => BulkImportRequest(
          base: Uri.parse('http://example.com/fhir'),
          files: [],
        ),
        throwsA(isA<AssertionError>()),
      );
    });

    test('assertion fails when file URL has no scheme', () {
      expect(
        () => BulkImportRequest(
          base: Uri.parse('http://example.com/fhir'),
          files: [
            ImportFile(
              resourceType: R4ResourceType.Patient,
              url: Uri.parse('just-a-path/patients.ndjson'),
            ),
          ],
        ),
        throwsA(isA<AssertionError>()),
      );
    });

    test('includes additional parameters in POST body', () async {
      String? capturedBody;
      final mockClient = MockClient((request) async {
        capturedBody = request.body;
        return http.Response(
          jsonEncode({
            'resourceType': 'OperationOutcome',
            'issue': [
              {
                'severity': 'information',
                'code': 'informational',
                'diagnostics': 'Job started',
              },
            ],
          }),
          202,
        );
      });

      final req = BulkImportRequest(
        base: Uri.parse('http://example.com/fhir'),
        files: [
          ImportFile(
            resourceType: R4ResourceType.Patient,
            url: Uri.parse('https://data.example.com/patients.ndjson'),
          ),
        ],
        additionalParameters: {'customParam': 'customValue'},
        client: mockClient,
      );

      await req.importData();
      expect(capturedBody, isNotNull);
      expect(capturedBody, contains('customParam'));
      expect(capturedBody, contains('customValue'));
    });

    test('includes inputSource in POST body when provided', () async {
      String? capturedBody;
      final mockClient = MockClient((request) async {
        capturedBody = request.body;
        return http.Response(
          jsonEncode({
            'resourceType': 'OperationOutcome',
            'issue': [
              {
                'severity': 'information',
                'code': 'informational',
                'diagnostics': 'OK',
              },
            ],
          }),
          202,
        );
      });

      final req = BulkImportRequest(
        base: Uri.parse('http://example.com/fhir'),
        files: [
          ImportFile(
            resourceType: R4ResourceType.Patient,
            url: Uri.parse('https://data.example.com/patients.ndjson'),
          ),
        ],
        inputSource: 'https://origin-server.example.com/fhir',
        client: mockClient,
      );

      await req.importData();
      expect(capturedBody, contains('inputSource'));
      expect(capturedBody, contains('origin-server.example.com'));
    });

    test('includes maxBatchResourceCount in POST body', () async {
      String? capturedBody;
      final mockClient = MockClient((request) async {
        capturedBody = request.body;
        return http.Response(
          jsonEncode({
            'resourceType': 'OperationOutcome',
            'issue': [
              {
                'severity': 'information',
                'code': 'informational',
                'diagnostics': 'OK',
              },
            ],
          }),
          202,
        );
      });

      final req = BulkImportRequest(
        base: Uri.parse('http://example.com/fhir'),
        files: [
          ImportFile(
            resourceType: R4ResourceType.Patient,
            url: Uri.parse('https://data.example.com/patients.ndjson'),
          ),
        ],
        maxBatchResourceCount: 1000,
        client: mockClient,
      );

      await req.importData();
      expect(capturedBody, contains('maxBatchResourceCount'));
      expect(capturedBody, contains('1000'));
    });

    test('handles non-JSON response body gracefully', () async {
      final mockClient = MockClient((request) async {
        return http.Response('plain text not json', 200);
      });

      final req = BulkImportRequest(
        base: Uri.parse('http://example.com/fhir'),
        files: [
          ImportFile(
            resourceType: R4ResourceType.Patient,
            url: Uri.parse('https://data.example.com/patients.ndjson'),
          ),
        ],
        client: mockClient,
      );

      final result = await req.importData();
      expect(result.resourceType, R4ResourceType.OperationOutcome);
      expect(result.issue, isNotEmpty);
      expect(result.issue.first.severity, IssueSeverity.error);
    });

    test('handles network exception during import', () async {
      final mockClient = MockClient((request) async {
        throw Exception('DNS resolution failed');
      });

      final req = BulkImportRequest(
        base: Uri.parse('http://example.com/fhir'),
        files: [
          ImportFile(
            resourceType: R4ResourceType.Patient,
            url: Uri.parse('https://data.example.com/patients.ndjson'),
          ),
        ],
        client: mockClient,
      );

      final result = await req.importData();
      expect(result.resourceType, R4ResourceType.OperationOutcome);
      expect(
        result.issue.first.diagnostics?.valueString,
        contains('DNS resolution failed'),
      );
    });

    test('sends Prefer: respond-async header', () async {
      Map<String, String>? capturedHeaders;
      final mockClient = MockClient((request) async {
        capturedHeaders = request.headers;
        return http.Response(
          jsonEncode({
            'resourceType': 'OperationOutcome',
            'issue': [
              {
                'severity': 'information',
                'code': 'informational',
                'diagnostics': 'OK',
              },
            ],
          }),
          202,
        );
      });

      final req = BulkImportRequest(
        base: Uri.parse('http://example.com/fhir'),
        files: [
          ImportFile(
            resourceType: R4ResourceType.Patient,
            url: Uri.parse('https://data.example.com/patients.ndjson'),
          ),
        ],
        client: mockClient,
      );

      await req.importData();
      expect(capturedHeaders?['Prefer'], 'respond-async');
      expect(capturedHeaders?['Content-Type'], 'application/fhir+json');
    });

    test('constructs import URL correctly with trailing slash', () async {
      String? capturedUrl;
      final mockClient = MockClient((request) async {
        capturedUrl = request.url.toString();
        return http.Response(
          jsonEncode({
            'resourceType': 'OperationOutcome',
            'issue': [
              {
                'severity': 'information',
                'code': 'informational',
                'diagnostics': 'OK',
              },
            ],
          }),
          202,
        );
      });

      final req = BulkImportRequest(
        base: Uri.parse('http://example.com/fhir/'),
        files: [
          ImportFile(
            resourceType: R4ResourceType.Patient,
            url: Uri.parse('https://data.example.com/patients.ndjson'),
          ),
        ],
        client: mockClient,
      );

      await req.importData();
      expect(capturedUrl, contains(r'$import'));
      // Should not have double slash before $import
      expect(capturedUrl, isNot(contains(r'//$import')));
    });

    test('constructs import URL correctly without trailing slash', () async {
      String? capturedUrl;
      final mockClient = MockClient((request) async {
        capturedUrl = request.url.toString();
        return http.Response(
          jsonEncode({
            'resourceType': 'OperationOutcome',
            'issue': [
              {
                'severity': 'information',
                'code': 'informational',
                'diagnostics': 'OK',
              },
            ],
          }),
          202,
        );
      });

      final req = BulkImportRequest(
        base: Uri.parse('http://example.com/fhir'),
        files: [
          ImportFile(
            resourceType: R4ResourceType.Patient,
            url: Uri.parse('https://data.example.com/patients.ndjson'),
          ),
        ],
        client: mockClient,
      );

      await req.importData();
      expect(capturedUrl, contains(r'fhir/$import'));
    });

    test('multiple files produce multiple input parameters', () async {
      String? capturedBody;
      final mockClient = MockClient((request) async {
        capturedBody = request.body;
        return http.Response(
          jsonEncode({
            'resourceType': 'OperationOutcome',
            'issue': [
              {
                'severity': 'information',
                'code': 'informational',
                'diagnostics': 'OK',
              },
            ],
          }),
          202,
        );
      });

      final req = BulkImportRequest(
        base: Uri.parse('http://example.com/fhir'),
        files: [
          ImportFile(
            resourceType: R4ResourceType.Patient,
            url: Uri.parse('https://data.example.com/patients.ndjson'),
          ),
          ImportFile(
            resourceType: R4ResourceType.Observation,
            url: Uri.parse('https://data.example.com/observations.ndjson'),
          ),
          ImportFile(
            resourceType: R4ResourceType.Condition,
            url: Uri.parse('https://data.example.com/conditions.ndjson'),
          ),
        ],
        client: mockClient,
      );

      await req.importData();
      final decoded = jsonDecode(capturedBody!) as Map<String, dynamic>;
      final params = decoded['parameter'] as List<dynamic>;

      // Count 'input' parameters
      final inputParams = params
          .where(
            (p) => (p as Map<String, dynamic>)['name'] == 'input',
          )
          .toList();
      expect(inputParams, hasLength(3));
    });
  });
}
