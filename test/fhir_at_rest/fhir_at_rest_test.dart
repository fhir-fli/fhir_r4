import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  final baseUri = Uri.parse('http://hapi.fhir.org/baseR4');
  const headers = <String, String>{'Accept': 'application/fhir+json'};

  group('FHIR URI - READ:', () {
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
}
