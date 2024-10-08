import 'package:fhir_r4/fhir_r4.dart';
import 'package:http/http.dart' as http;
import 'package:test/test.dart';

void main() {
  group('FHIR URI - READ:', () {
    test('get patient', () async {
      final FhirReadRequest request = FhirReadRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '12345',
        headers: <String, String>{'Accept': 'application/fhir+json'},
      );

      final String uri = request.buildUri().toString();
      expect(uri, 'http://hapi.fhir.org/baseR4/Patient/12345');

      final http.Response response = await request.sendRequest();
      expect(response.request?.url.toString(),
          'http://hapi.fhir.org/baseR4/Patient/12345');
    });

    test('get patient with pretty and summary true', () async {
      final FhirReadRequest request = FhirReadRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '12345',
        summary: Summary.true_,
        headers: <String, String>{'Accept': 'application/fhir+json'},
      );

      final String uri = request.buildUri().toString();
      expect(uri, 'http://hapi.fhir.org/baseR4/Patient/12345?_summary=true');

      final http.Response response = await request.sendRequest();
      expect(response.request?.url.toString(),
          'http://hapi.fhir.org/baseR4/Patient/12345?_summary=true');
    });

    test('get patient with summary count', () async {
      final FhirReadRequest request = FhirReadRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '12345',
        summary: Summary.count,
        headers: <String, String>{'Accept': 'application/fhir+json'},
      );

      final String uri = request.buildUri().toString();
      expect(uri, 'http://hapi.fhir.org/baseR4/Patient/12345?_summary=count');

      final http.Response response = await request.sendRequest();
      expect(response.request?.url.toString(),
          'http://hapi.fhir.org/baseR4/Patient/12345?_summary=count');
    });

    test('get patient with pretty, only want to return name', () async {
      final FhirReadRequest request = FhirReadRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '1227442',
        headers: <String, String>{'Accept': 'application/fhir+json'},
      );

      final String uri = request.buildUri().toString();
      expect(uri, 'http://hapi.fhir.org/baseR4/Patient/1227442');

      final http.Response response = await request.sendRequest();
      expect(response.request?.url.toString(),
          'http://hapi.fhir.org/baseR4/Patient/1227442');
    });

    test('get patient with pretty, only want to return name and gender',
        () async {
      final FhirReadRequest request = FhirReadRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '1227442',
        headers: <String, String>{'Accept': 'application/fhir+json'},
      );

      final String uri = request.buildUri().toString();
      expect(uri, 'http://hapi.fhir.org/baseR4/Patient/1227442');

      final http.Response response = await request.sendRequest();
      expect(response.request?.url.toString(),
          'http://hapi.fhir.org/baseR4/Patient/1227442');
    });
  });

  group('FHIR URI - VREAD:', () {
    test('get patient version', () async {
      final FhirVReadRequest request = FhirVReadRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '12345',
        vid: '6789',
        headers: <String, String>{'Accept': 'application/fhir+json'},
      );

      final String uri = request.buildUri().toString();
      expect(uri, 'http://hapi.fhir.org/baseR4/Patient/12345/_history/6789');

      final http.Response response = await request.sendRequest();
      expect(response.request?.url.toString(),
          'http://hapi.fhir.org/baseR4/Patient/12345/_history/6789');
    });

    test('get patient version with pretty and summary true', () async {
      final FhirVReadRequest request = FhirVReadRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '12345',
        vid: '6789',
        summary: Summary.true_,
        headers: <String, String>{'Accept': 'application/fhir+json'},
      );

      final String uri = request.buildUri().toString();
      expect(uri,
          'http://hapi.fhir.org/baseR4/Patient/12345/_history/6789?_summary=true');

      final http.Response response = await request.sendRequest();
      expect(response.request?.url.toString(),
          'http://hapi.fhir.org/baseR4/Patient/12345/_history/6789?_summary=true');
    });
  });

  group('FHIR URI - TRANSACTION:', () {
    test('transaction/batch', () async {
      final Map<String, dynamic> bundle = <String, dynamic>{
        'resourceType': 'Bundle',
        'id': '12345',
      };
      final FhirTransactionRequest request = FhirTransactionRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        bundle: bundle,
        headers: <String, String>{'Accept': 'application/fhir+json'},
      );

      final String uri = request.buildUri().toString();
      expect(uri, 'http://hapi.fhir.org/baseR4');

      final http.Response response = await request.sendRequest();
      expect(response.request?.url.toString(), 'http://hapi.fhir.org/baseR4');
    });
  });

  group('FHIR URI - HISTORY:', () {
    test('observation history by type and id', () async {
      final FhirHistoryRequest request = FhirHistoryRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Observation',
        id: '12345',
        headers: <String, String>{'Accept': 'application/fhir+json'},
      );

      final String uri = request.buildUri().toString();
      expect(uri, 'http://hapi.fhir.org/baseR4/Observation/12345/_history');

      final http.Response response = await request.sendRequest();
      expect(response.request?.url.toString(),
          'http://hapi.fhir.org/baseR4/Observation/12345/_history');
    });

    test('observation history by type', () async {
      final FhirHistoryRequest request = FhirHistoryRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        id: '12345',
        resourceType: 'Observation',
        headers: <String, String>{'Accept': 'application/fhir+json'},
      );

      final String uri = request.buildUri().toString();
      expect(uri, 'http://hapi.fhir.org/baseR4/Observation/_history');

      final http.Response response = await request.sendRequest();
      expect(response.request?.url.toString(),
          'http://hapi.fhir.org/baseR4/Observation/12345/_history');
    });
  });

  group('FHIR URI - UPDATE:', () {
    test('update patient by id', () async {
      final Map<String, dynamic> patient = <String, dynamic>{
        'resourceType': 'Patient',
        'id': '12345'
      };
      final FhirUpdateRequest request = FhirUpdateRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '12345',
        resource: patient,
        headers: <String, String>{'Accept': 'application/fhir+json'},
      );

      final String uri = request.buildUri().toString();
      expect(uri, 'http://hapi.fhir.org/baseR4/Patient/12345');

      final http.Response response = await request.sendRequest();
      expect(response.request?.url.toString(),
          'http://hapi.fhir.org/baseR4/Patient/12345');
    });
  });

  group('FHIR URI - PATCH:', () {
    test('patch patient by id', () async {
      final Map<String, dynamic> patchBody = <String, dynamic>{
        'op': 'replace',
        'path': '/active',
        'value': true,
      };
      final FhirPatchRequest request = FhirPatchRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '12345',
        patchBody: patchBody,
        headers: <String, String>{'Accept': 'application/fhir+json'},
      );

      final String uri = request.buildUri().toString();
      expect(uri, 'http://hapi.fhir.org/baseR4/Patient/12345');

      final http.Response response = await request.sendRequest();
      expect(response.request?.url.toString(),
          'http://hapi.fhir.org/baseR4/Patient/12345');
    });
    test('patch patient by id with summary true', () async {
      final Map<String, dynamic> patchBody = <String, dynamic>{
        'op': 'replace',
        'path': '/active',
        'value': true,
      };
      final FhirPatchRequest request = FhirPatchRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '12345',
        patchBody: patchBody,
        summary: Summary.true_,
        headers: <String, String>{'Accept': 'application/fhir+json'},
      );

      final String uri = request.buildUri().toString();
      expect(uri, 'http://hapi.fhir.org/baseR4/Patient/12345');

      final http.Response response = await request.sendRequest();
      expect(response.request?.url.toString(),
          'http://hapi.fhir.org/baseR4/Patient/12345?_summary=true');
    });
  });

  group('FHIR URI - DELETE:', () {
    test('delete patient', () async {
      final FhirDeleteRequest request = FhirDeleteRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '12345',
        headers: <String, String>{'Accept': 'application/fhir+json'},
      );

      final String uri = request.buildUri().toString();
      expect(uri, 'http://hapi.fhir.org/baseR4/Patient/12345');

      final http.Response response = await request.sendRequest();
      expect(response.request?.url.toString(),
          'http://hapi.fhir.org/baseR4/Patient/12345');
    });

    test('delete patient with summary data', () async {
      final FhirDeleteRequest request = FhirDeleteRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '12345',
        summary: Summary.data,
        headers: <String, String>{'Accept': 'application/fhir+json'},
      );

      final String uri = request.buildUri().toString();
      expect(uri, 'http://hapi.fhir.org/baseR4/Patient/12345');

      final http.Response response = await request.sendRequest();
      expect(response.request?.url.toString(),
          'http://hapi.fhir.org/baseR4/Patient/12345?_summary=data');
    });
  });

  group('FHIR URI - CREATE:', () {
    test('create patient', () async {
      final Map<String, dynamic> patient = <String, dynamic>{
        'resourceType': 'Patient',
        'id': '12345'
      };
      final FhirCreateRequest request = FhirCreateRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        resource: patient,
        headers: <String, String>{'Accept': 'application/fhir+json'},
      );

      final String uri = request.buildUri().toString();
      expect(uri, 'http://hapi.fhir.org/baseR4/Patient');

      final http.Response response = await request.sendRequest();
      expect(response.request?.url.toString(),
          'http://hapi.fhir.org/baseR4/Patient');
    });

    test('create patient with summary count', () async {
      final Map<String, dynamic> patient = <String, dynamic>{
        'resourceType': 'Patient',
        'id': '12345',
      };
      final FhirCreateRequest request = FhirCreateRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        resource: patient,
        summary: Summary.count,
        headers: <String, String>{'Accept': 'application/fhir+json'},
      );

      final String uri = request.buildUri().toString();
      expect(uri, 'http://hapi.fhir.org/baseR4/Patient');

      final http.Response response = await request.sendRequest();
      expect(response.request?.url.toString(),
          'http://hapi.fhir.org/baseR4/Patient?_summary=count');
    });
  });
  group('FHIR URI - CAPABILITIES:', () {
    test('get capabilities with mode normative', () async {
      final FhirCapabilitiesRequest request = FhirCapabilitiesRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        mode: Mode.normative,
        headers: <String, String>{'Accept': 'application/fhir+json'},
      );

      final String uri = request.buildUri().toString();
      expect(uri, 'http://hapi.fhir.org/baseR4/metadata?mode=normative');

      final http.Response response = await request.sendRequest();
      expect(response.request?.url.toString(),
          'http://hapi.fhir.org/baseR4/metadata?mode=normative');
    });

    test('get capabilities with summary data', () async {
      final FhirCapabilitiesRequest request = FhirCapabilitiesRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        summary: Summary.data,
        headers: <String, String>{'Accept': 'application/fhir+json'},
      );

      final String uri = request.buildUri().toString();
      expect(uri, 'http://hapi.fhir.org/baseR4/metadata?_summary=data');

      final http.Response response = await request.sendRequest();
      expect(response.request?.url.toString(),
          'http://hapi.fhir.org/baseR4/metadata?_summary=data');
    });
  });

  group('FHIR URI - SEARCH with POST:', () {
    test('patient id search', () async {
      // Use the specific SearchPatient class instead of manually defining parameters
      final SearchPatient searchPatient =
          SearchPatient().id(FhirString('12345')) as SearchPatient;
      final FhirSearchRequest request = FhirSearchRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        search: searchPatient,
      );

      final String uri = request.buildUri().toString();
      expect(uri, 'http://hapi.fhir.org/baseR4/Observation/_search');

      final http.Response response = await request.sendRequest();
      expect(response.request?.url.toString(),
          'http://hapi.fhir.org/baseR4/Observation/_search');
    });

    test('search observations with _lastUpdated using POST', () async {
      final SearchObservation obsSearch = SearchObservation().lastUpdated(
          '2020-01-01'.toFhirDateTime,
          modifier: SearchModifier.gt) as SearchObservation;
      final FhirSearchRequest request = FhirSearchRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Observation',
        usePost: true,
        headers: <String, String>{'Accept': 'application/fhir+json'},
        search: obsSearch,
      );

      final String uri = request.buildUri().toString();
      expect(uri, 'http://hapi.fhir.org/baseR4/Observation/_search');

      final http.Response response = await request.sendRequest();
      expect(response.request?.url.toString(),
          'http://hapi.fhir.org/baseR4/Observation/_search');
    });
  });
  group('FHIR URI - OPERATION:', () {
    test(r'$everything operation for Patient', () async {
      final RestfulParameters search = RestfulParameters()
          .add('start', '2020-01-01')
          .add('end', '2020-08-01');

      SearchPatient().id(FhirString('744742')) as SearchPatient;
      final FhirOperationRequest request = FhirOperationRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '744742',
        operation: 'everything',
        parameters: search,
        headers: <String, String>{'Accept': 'application/fhir+json'},
      );

      final String uri = request.buildUri().toString();
      expect(uri,
          r'http://hapi.fhir.org/baseR4/Patient/744742/$everything?start=2020-01-01&end=2020-08-01');

      final http.Response response = await request.sendRequest();
      expect(response.request?.url.toString(),
          r'http://hapi.fhir.org/baseR4/Patient/744742/$everything?start=2020-01-01&end=2020-08-01');
    });

    test(r'$validate operation for Observation', () async {
      final FhirOperationRequest request = FhirOperationRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Observation',
        operation: 'validate',
        headers: <String, String>{'Accept': 'application/fhir+json'},
      );

      final String uri = request.buildUri().toString();
      expect(uri, r'http://hapi.fhir.org/baseR4/Observation/$validate');

      final http.Response response = await request.sendRequest();
      expect(response.request?.url.toString(),
          r'http://hapi.fhir.org/baseR4/Observation/$validate');
    });
  });
  group('FHIR URI - PATCH Conditional Update:', () {
    test('conditional patch for patient based on identifier', () async {
      final Map<String, dynamic> patchBody = <String, dynamic>{
        'op': 'replace',
        'path': '/active',
        'value': true,
      };
      final FhirPatchRequest request = FhirPatchRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '12345',
        headers: <String, String>{'Accept': 'application/fhir+json'},
        patchBody: patchBody,
        ifMatch: 'W/"12345"',
      );

      final String uri = request.buildUri().toString();
      expect(uri, 'http://hapi.fhir.org/baseR4/Patient/12345');

      final http.Response response = await request.sendRequest();
      expect(response.request?.url.toString(),
          'http://hapi.fhir.org/baseR4/Patient/12345');
    });
  });
}
