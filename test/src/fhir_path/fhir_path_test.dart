import 'fhir_path_parser_test.dart';
import 'test_basic_operators.dart';
import 'test_paths.dart';

Future<void> main() async {
  fhirPathParserTest();
  testPaths();
  testBasicOperators();
}
