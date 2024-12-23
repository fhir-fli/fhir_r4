// ignore_for_file: depend_on_referenced_packages, prefer_const_constructors, no_adjacent_strings_in_list
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes, unnecessary_string_escapes
// ignore_for_file: leading_newlines_in_multiline_strings
// ignore_for_file: unnecessary_statements, directives_ordering
// ignore_for_file: always_specify_types, inference_failure_on_collection_literal

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4/src/fhir_path/java/java.dart';
import 'package:test/test.dart';

import 'test_data.dart';

final worker = SimpleWorkerContext();
final engine = FHIRPathEngine(worker);

List<dynamic> parseAndEvaluate(String expression, [FhirBase? context]) {
  final node = engine.parse(expression);
  if (context != null) {
    final result = engine.evaluate(context, node);
    return result;
  }
  return [];
}

void main() {
  group('Path Test', () {
    final node = engine.parse('Patient.name');
    final result = engine.evaluate(patient, node);
    print(result);
  });
}
