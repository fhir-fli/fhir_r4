import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';
import 'package:test/test.dart';

void main() {
  const baseUrl = 'http://hapi.fhir.org/baseR4';

  group('FhirHistoryAllRequest', () {
    test('builds correct URL with no parameters', () {
      final request = FhirHistoryAllRequest(
        base: Uri.parse(baseUrl),
      );
      expect(
        request.buildUri().toString(),
        '$baseUrl/_history?_format=json',
      );
    });

    test('builds correct URL with _count parameter', () {
      final request = FhirHistoryAllRequest(
        base: Uri.parse(baseUrl),
        parameters: RestfulParameters().addCount(50),
      );
      expect(
        request.buildUri().toString(),
        '$baseUrl/_history?_count=50&_format=json',
      );
    });

    test('builds correct URL with multiple parameters', () {
      final request = FhirHistoryAllRequest(
        base: Uri.parse(baseUrl),
        parameters:
            RestfulParameters().addCount(10).add('_since', '2024-01-01'),
      );
      final uri = request.buildUri().toString();
      expect(uri, contains('_count=10'));
      expect(uri, contains('_since=2024-01-01'));
      expect(uri, contains('_format=json'));
    });

    test('has null body', () {
      final request = FhirHistoryAllRequest(
        base: Uri.parse(baseUrl),
      );
      expect(request.buildBody(), isNull);
    });

    test('builds standard FHIR headers', () {
      final request = FhirHistoryAllRequest(
        base: Uri.parse(baseUrl),
        headers: {'Authorization': 'Bearer token123'},
      );
      final headers = request.buildHeaders();
      expect(headers['Content-Type'], 'application/fhir+json');
      expect(headers['Accept'], 'application/fhir+json');
      expect(headers['Authorization'], 'Bearer token123');
    });
  });

  group('FhirCapabilitiesRequest', () {
    test('builds correct URL with no mode', () {
      final request = FhirCapabilitiesRequest(
        base: Uri.parse(baseUrl),
      );
      expect(
        request.buildUri().toString(),
        '$baseUrl/metadata?_format=json',
      );
    });

    test('builds correct URL with Mode.full', () {
      final request = FhirCapabilitiesRequest(
        base: Uri.parse(baseUrl),
        mode: Mode.full,
      );
      expect(
        request.buildUri().toString(),
        '$baseUrl/metadata?mode=full&_format=json',
      );
    });

    test('builds correct URL with Mode.normative', () {
      final request = FhirCapabilitiesRequest(
        base: Uri.parse(baseUrl),
        mode: Mode.normative,
      );
      expect(
        request.buildUri().toString(),
        '$baseUrl/metadata?mode=normative&_format=json',
      );
    });

    test('builds correct URL with Mode.terminology', () {
      final request = FhirCapabilitiesRequest(
        base: Uri.parse(baseUrl),
        mode: Mode.terminology,
      );
      expect(
        request.buildUri().toString(),
        '$baseUrl/metadata?mode=terminology&_format=json',
      );
    });

    test('builds correct URL with mode and additional parameters', () {
      final request = FhirCapabilitiesRequest(
        base: Uri.parse(baseUrl),
        mode: Mode.full,
        parameters: RestfulParameters().requestPretty(),
      );
      final uri = request.buildUri().toString();
      expect(uri, contains('mode=full'));
      expect(uri, contains('_pretty=true'));
      expect(uri, contains('_format=json'));
    });

    test('has null body', () {
      final request = FhirCapabilitiesRequest(
        base: Uri.parse(baseUrl),
      );
      expect(request.buildBody(), isNull);
    });
  });
}
