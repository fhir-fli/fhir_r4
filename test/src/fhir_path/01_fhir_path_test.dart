import '02_test_basic_types.dart';
import '03_fhir_path_parser_test.dart';
import '05_test_basic_operators.dart';
import '04_test_paths.dart';
import '06_test_date_times.dart';

Future<void> main() async {
  testBasicTypes();
  fhirPathParserTest();
  testPaths();
  testBasicOperators();
  testDateTimes();
}
