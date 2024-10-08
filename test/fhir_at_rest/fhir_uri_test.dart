import 'package:fhir_r4/src/fhir_at_rest/r4.dart';
import 'package:http/http.dart' as http;
import 'package:test/test.dart';

void main() {
  const String mimeType = 'json';

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

    test('get patient with pretty', () async {
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
        headers: <String, String>{'Accept': 'application/fhir+json'},
      );

      final String uri = request.buildUri().toString();
      expect(uri, 'http://hapi.fhir.org/baseR4/Patient/12345');

      final http.Response response = await request.sendRequest();
      expect(response.request?.url.toString(),
          'http://hapi.fhir.org/baseR4/Patient/12345');
    });

    test('get patient with summary count', () async {
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
}
