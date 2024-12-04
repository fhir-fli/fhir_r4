import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  group('FhirRequest - READ:', () {
    test('get patient', () {
      final request = FhirReadRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '12345',
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient/12345?_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });

    test('get patient with pretty', () {
      final request = FhirReadRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '12345',
        parameters: RestfulParameters().requestPretty(),
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient/12345?_pretty=true&_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });

    test('get patient with pretty and summary true', () {
      final request = FhirReadRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '12345',
        parameters: RestfulParameters()
            .requestPretty()
            .requestSummary(Summary.true_),
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient/12345?_pretty=true&_summary=true&_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });

    test('get patient with summary count', () {
      final request = FhirReadRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '12345',
        parameters: RestfulParameters().requestSummary(Summary.count),
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient/12345?_summary=count&_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });

    test('get patient with pretty, only want to return name', () {
      final request = FhirReadRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '1227442',
        parameters: RestfulParameters()
            .requestPretty()
            .add('_elements', 'name'),
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient/1227442?_pretty=true&_elements=name&_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });

    test('get patient with pretty, only want to return name and gender', () {
      final request = FhirReadRequest(
        base: Uri.parse('http://hapi.fhir.org/baseR4'),
        resourceType: 'Patient',
        id: '1227442',
        parameters: RestfulParameters()
            .requestPretty()
            .add('_elements', 'name,gender'),
        headers: {'test': 'headers'},
      );

      expect(
        request.buildUri().toString(),
        'http://hapi.fhir.org/baseR4/Patient/1227442?_pretty=true&_elements=name,gender&_format=json',
      );

      expect(
        request.buildHeaders(),
        {
          'Content-Type': 'application/fhir+json',
          'Accept': 'application/fhir+json',
          'test': 'headers',
        },
      );

      expect(request.buildBody(), isNull);
    });
  });
}
