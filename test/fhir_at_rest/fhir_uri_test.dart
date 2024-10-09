import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  group('FHIR URI - READ:', () {
    final List<Map<String, dynamic>> readTestCases = <Map<String, dynamic>>[
      <String, dynamic>{
        'id': '12345',
        'expectedUri': 'http://hapi.fhir.org/baseR4/Patient/12345',
        'summary': Summary.none,
        'description': 'get patient',
      },
      <String, dynamic>{
        'id': '12345',
        'expectedUri':
            'http://hapi.fhir.org/baseR4/Patient/12345?_summary=true',
        'summary': Summary.true_,
        'description': 'get patient with summary true',
      },
      <String, dynamic>{
        'id': '12345',
        'expectedUri':
            'http://hapi.fhir.org/baseR4/Patient/12345?_summary=count',
        'summary': Summary.count,
        'description': 'get patient with summary count',
      }
    ];

    for (final Map<String, dynamic> testCase in readTestCases) {
      test(testCase['description'] as String, () async {
        final FhirReadRequest request = FhirReadRequest(
          base: Uri.parse('http://hapi.fhir.org/baseR4'),
          resourceType: 'Patient',
          id: testCase['id'] as String,
          summary: testCase['summary'] as Summary,
          headers: <String, String>{'Accept': 'application/fhir+json'},
        );

        // Test the generated URI
        final String uri = request.buildUri().toString();
        expect(uri, testCase['expectedUri'] as String);

        // Test the headers
        final Map<String, String> headers = request.buildHeaders();
        expect(headers['Accept'], 'application/fhir+json');

        final String? body = request.buildBody();
        print(body);
      });
    }
  });

  group('FHIR URI - UPDATE:', () {
    test('update patient by id', () async {
      final Map<String, dynamic> patient = <String, dynamic>{
        'resourceType': 'Patient',
        'id': '12345',
      };
      final FhirUpdateRequest request = FhirUpdateRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '12345',
        resource: patient,
        headers: <String, String>{'Accept': 'application/fhir+json'},
      );

      // Test the generated URI
      final String uri = request.buildUri().toString();
      expect(uri, 'http://hapi.fhir.org/baseR4/Patient/12345');

      // Test the headers
      final Map<String, String> headers = request.buildHeaders();
      expect(headers['Accept'], 'application/fhir+json');

      // Test the body
      final String body = request.buildBody();
      expect(body, jsonEncode(patient));
    });
  });

  group('FHIR URI - PATCH:', () {
    final List<Map<String, dynamic>> patchTestCases = <Map<String, dynamic>>[
      <String, dynamic>{
        'id': '12345',
        'patchBody': <String, dynamic>{
          'op': 'replace',
          'path': '/active',
          'value': true
        },
        'expectedUri': 'http://hapi.fhir.org/baseR4/Patient/12345',
        'summary': Summary.none,
        'description': 'patch patient by id',
      },
      <String, dynamic>{
        'id': '12345',
        'patchBody': <String, dynamic>{
          'op': 'replace',
          'path': '/active',
          'value': true
        },
        'expectedUri':
            'http://hapi.fhir.org/baseR4/Patient/12345?_summary=true',
        'summary': Summary.true_,
        'description': 'patch patient by id with summary true',
      }
    ];

    for (final Map<String, dynamic> testCase in patchTestCases) {
      test(testCase['description'] as String, () async {
        final FhirPatchRequest request = FhirPatchRequest(
          base: Uri.parse('http://hapi.fhir.org/baseR4'),
          resourceType: 'Patient',
          id: testCase['id'] as String,
          patchBody: testCase['patchBody'] as Map<String, dynamic>,
          summary: testCase['summary'] as Summary,
          headers: <String, String>{'Accept': 'application/fhir+json'},
        );

        // Test the generated URI
        final String uri = request.buildUri().toString();
        expect(uri, testCase['expectedUri'] as String);

        // Test the headers
        final Map<String, String> headers = request.buildHeaders();
        expect(headers['Accept'], 'application/fhir+json');

        // Test the body
        final String body = request.buildBody();
        expect(body, jsonEncode(testCase['patchBody']));
      });
    }
  });
}
