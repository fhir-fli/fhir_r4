import '02_test_basic_types.dart';
import '03_fhir_path_parser_test.dart';
import '04_test_paths.dart';
import '05_test_basic_operators.dart';
import '06_test_date_times.dart';
import '07_test_no_arg_fxns.dart';
import '08_test_arg_fxns.dart';

void main() {
  testBasicTypes();
  fhirPathParserTest();
  testPaths();
  // testBasicOperators();
  // testDateTimes();
  // testNoArgFxns();
  // testArgFxns();
}
