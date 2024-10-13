import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  final baseUri = Uri.parse('http://hapi.fhir.org/baseR4');
  const headers = <String, String>{'Accept': 'application/fhir+json'};

  group('FHIR READ:', () {
    test('get patient with pretty, only want to return name', () async {
      final request = FhirReadRequest(
        base: baseUri,
        resourceType: 'Patient',
        id: '1227442',
        pretty: true,
        elements: <String>['name'],
        headers: headers,
      );

      // Test URI construction
      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient/1227442?_pretty=true&_elements=name',
      );

      // Test headers
      final generatedHeaders = request.buildHeaders();
      expect(generatedHeaders['Accept'], 'application/fhir+json');
    });

    test('get patient with pretty, only want to return name and gender',
        () async {
      final request = FhirReadRequest(
        base: baseUri,
        resourceType: 'Patient',
        id: '1227442',
        pretty: true,
        elements: <String>['name', 'gender'],
        headers: headers,
      );

      // Test URI construction
      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient/1227442?_pretty=true&_elements=name,gender',
      );

      // Test headers
      final generatedHeaders = request.buildHeaders();
      expect(generatedHeaders['Accept'], 'application/fhir+json');
    });
  });

  group(
    'FHIR - VREAD:',
    () {
      test('get patient version', () async {
        final request = FhirVReadRequest(
          base: Uri.parse('http://hapi.fhir.org/baseR4'),
          resourceType: 'Patient',
          id: '12345',
          vid: '6789',
          headers: {'Accept': 'application/fhir+json'},
        );
        expect(
          request.buildUri().toString(),
          'http://hapi.fhir.org/baseR4/Patient/12345/_history/6789',
        );
      });

      test('get patient version with pretty', () async {
        final request = FhirVReadRequest(
          base: Uri.parse('http://hapi.fhir.org/baseR4'),
          resourceType: 'Patient',
          id: '12345',
          vid: '6789',
          headers: {'Accept': 'application/fhir+json'},
        );

        final uriWithPretty = request.buildUriWithParams(
          request.buildUri(),
          {'_pretty': 'true'},
        );

        expect(
          uriWithPretty.toString(),
          'http://hapi.fhir.org/baseR4/Patient/12345/_history/6789?_pretty=true',
        );
      });

      test('get patient version with pretty and summary true', () async {
        final request = FhirVReadRequest(
          base: Uri.parse('http://hapi.fhir.org/baseR4'),
          resourceType: 'Patient',
          id: '12345',
          vid: '6789',
          summary: Summary.true_,
          headers: {'Accept': 'application/fhir+json'},
        );

        expect(
          request.buildUri().toString(),
          'http://hapi.fhir.org/baseR4/Patient/12345/_history/6789?_summary=true',
        );
      });

      test('get patient version with summary count', () async {
        final request = FhirVReadRequest(
          base: Uri.parse('http://hapi.fhir.org/baseR4'),
          resourceType: 'Patient',
          id: '12345',
          vid: '6789',
          summary: Summary.count,
          headers: {'Accept': 'application/fhir+json'},
        );

        expect(
          request.buildUri().toString(),
          'http://hapi.fhir.org/baseR4/Patient/12345/_history/6789?_summary=count',
        );
      });
    },
    tags: <String>['uri', 'vread'],
  );

  group(
    'FHIR - TRANSACTION:',
    () {
      test('transaction/batch', () async {
        final bundle = {'resourceType': 'Bundle', 'id': '12345'};
        final request = FhirTransactionRequest(
          base: Uri.parse('http://hapi.fhir.org/baseR4'),
          bundle: bundle,
          headers: {'Accept': 'application/fhir+json'},
        );

        expect(
          request.buildUri().toString(),
          'http://hapi.fhir.org/baseR4',
        );
        expect(request.buildBody(), jsonEncode(bundle));
      });
    },
    tags: <String>['uri', 'transaction'],
  );

  group(
    'FHIR - HISTORY:',
    () {
      test('observation history by type and id', () async {
        final request = FhirHistoryRequest(
          base: Uri.parse('http://hapi.fhir.org/baseR4'),
          resourceType: 'Observation',
          id: '12345',
          headers: {'Accept': 'application/fhir+json'},
        );

        expect(
          request.buildUri().toString(),
          'http://hapi.fhir.org/baseR4/Observation/12345/_history',
        );
      });

      test('observation history by type', () async {
        final request = FhirHistoryRequest(
          base: Uri.parse('http://hapi.fhir.org/baseR4'),
          resourceType: 'Observation',
          id: '',
          headers: {'Accept': 'application/fhir+json'},
        );

        expect(
          request.buildUri().toString(),
          'http://hapi.fhir.org/baseR4/Observation/_history',
        );
      });

      test('history for everything', () async {
        final request = FhirHistoryAllRequest(
          base: Uri.parse('http://hapi.fhir.org/baseR4'),
          headers: {'Accept': 'application/fhir+json'},
        );

        expect(
          request.buildUri().toString(),
          'http://hapi.fhir.org/baseR4/_history',
        );
      });

      test(
          'history resource by type and id, count of 10, after a specified '
          'date', () async {
        final parameters = <String, String>{
          '_count': '10',
          '_since': '2020-10-08T16:58:07.241117Z',
        };
        final request = FhirHistoryRequest(
          base: Uri.parse('http://hapi.fhir.org/baseR4'),
          resourceType: 'Observation',
          id: '12345',
          headers: {'Accept': 'application/fhir+json'},
        );

        final uriWithParams = request.buildUriWithParams(
          request.buildUri(),
          parameters,
        );

        expect(
          uriWithParams.toString(),
          'http://hapi.fhir.org/baseR4/Observation/12345/_history?_count=10&_since=2020-10-08T16:58:07.241117Z',
        );
      });
    },
    tags: <String>['uri', 'history'],
  );
  group(
    'FHIR - UPDATE:',
    () {
      test('update patient by id', () async {
        final patient = {'resourceType': 'Patient', 'id': '12345'};
        final request = FhirUpdateRequest(
          base: Uri.parse('http://hapi.fhir.org/baseR4'),
          resourceType: 'Patient',
          id: '12345',
          resource: patient,
          headers: {'Accept': 'application/fhir+json'},
        );

        expect(
          request.buildUri().toString(),
          'http://hapi.fhir.org/baseR4/Patient/12345',
        );
        expect(request.buildBody(), jsonEncode(patient));
      });
    },
    tags: <String>['uri', 'update'],
  );

  group(
    'FHIR - PATCH:',
    () {
      test('patch patient by id', () async {
        final patchBody = {
          'op': 'replace',
          'path': '/active',
          'value': true,
        };
        final request = FhirPatchRequest(
          base: Uri.parse('http://hapi.fhir.org/baseR4'),
          resourceType: 'Patient',
          id: '12345',
          patchBody: patchBody,
          headers: {'Accept': 'application/fhir+json'},
        );

        expect(
          request.buildUri().toString(),
          'http://hapi.fhir.org/baseR4/Patient/12345',
        );
        expect(request.buildBody(), jsonEncode(patchBody));
      });
    },
    tags: <String>['uri', 'patch'],
  );

  group(
    'FHIR - DELETE:',
    () {
      test('delete patient', () async {
        final request = FhirDeleteRequest(
          base: Uri.parse('http://hapi.fhir.org/baseR4'),
          resourceType: 'Patient',
          id: '12345',
          headers: {'Accept': 'application/fhir+json'},
        );

        expect(
          request.buildUri().toString(),
          'http://hapi.fhir.org/baseR4/Patient/12345',
        );
      });
    },
    tags: <String>['uri', 'delete'],
  );

  group(
    'FHIR - CREATE:',
    () {
      test('create patient', () async {
        final patient = {'resourceType': 'Patient', 'id': '12345'};
        final request = FhirCreateRequest(
          base: Uri.parse('http://hapi.fhir.org/baseR4'),
          resourceType: 'Patient',
          resource: patient,
          headers: {'Accept': 'application/fhir+json'},
        );

        expect(
          request.buildUri().toString(),
          'http://hapi.fhir.org/baseR4/Patient',
        );
        expect(request.buildBody(), jsonEncode(patient));
      });
    },
    tags: <String>['uri', 'create'],
  );

  group(
    'FHIR - CAPABILITIES:',
    () {
      test('capabilities with mode normative', () async {
        final request = FhirCapabilitiesRequest(
          base: Uri.parse('http://hapi.fhir.org/baseR4'),
          mode: Mode.normative,
          headers: {'Accept': 'application/fhir+json'},
        );

        expect(
          request.buildUri().toString(),
          'http://hapi.fhir.org/baseR4/metadata?mode=normative',
        );
      });
    },
    tags: <String>['uri', 'capabilities'],
  );
  group(
    'FHIR URI - OPERATION:',
    () {
      test(r'$everything operation', () async {
        final parameters = RestfulParameters()
            .add('start', '2020-01-01')
            .add('end', '2020-08-01');

        final request = FhirOperationRequest(
          base: Uri.parse('http://hapi.fhir.org/baseR4'),
          operation: 'everything',
          parameters: parameters,
          headers: {'Accept': 'application/fhir+json'},
        );

        expect(
          request.buildUri().toString(),
          r'http://hapi.fhir.org/baseR4/$everything?start=2020-01-01&end=2020-08-01',
        );
      });

      test(r'$everything operation for Patient 744742', () async {
        final parameters = RestfulParameters()
            .add('start', '2020-01-01')
            .add('end', '2020-08-01');

        final request = FhirOperationRequest(
          base: Uri.parse('http://hapi.fhir.org/baseR4'),
          operation: 'everything',
          resourceType: 'Patient',
          id: '744742',
          parameters: parameters,
          headers: {'Accept': 'application/fhir+json'},
        );

        expect(
          request.buildUri().toString(),
          r'http://hapi.fhir.org/baseR4/Patient/744742/$everything?start=2020-01-01&end=2020-08-01',
        );
      });
    },
    tags: <String>['uri', 'operation'],
  );
}
