import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_auth/fhir_r4_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import '../test_helpers/test_data.dart';

void main() {
  test('Check URL', () {
    print('Epic base URL: ${TestServers.epicBaseUrl}');
    final uri = TestServers.epicBaseUrl.toFhirUri;
    print('FhirUri: $uri');
    print('Metadata URL: $uri/metadata');
    final parsed = Uri.parse('$uri/metadata');
    print('Parsed: $parsed');
  });
}
