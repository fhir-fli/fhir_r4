import 'fhir_uri_test.dart';
import 'http_request_tests.dart';
import 'requests_test.dart';

Future<void> main() async {
  fhirUriTest();
  httpRequestTests();
  await requestsTest();
}
