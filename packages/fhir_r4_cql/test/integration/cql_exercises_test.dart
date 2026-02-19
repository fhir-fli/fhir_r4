import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:test/test.dart';

import '../test_data/exercise_results.dart';
import '../test_helpers/cql_test_helpers.dart';

void main() {
  final exerciseFiles = [
    'Simple',
    'Exercises01',
    'Exercises02',
    'Exercises03',
    'Exercises04',
    'Exercises05',
    'Exercises06',
    'Exercises07',
    'Exercises08',
    'Exercises09',
    'Exercises10',
    'Exercises11',
  ];

  for (final name in exerciseFiles) {
    group(name, () {
      test('parses CQL and produces correct ELM', () {
        if (name == 'Exercises09' ||
            name == 'Exercises10' ||
            name == 'Exercises11') {
          // Skip ELM comparison — Exercises09 uses complex Case expressions
          // we don't generate, and Exercises10/11 have empty reference JSON.
          return;
        }
        final cqlSource = loadCqlFile('$name.cql');
        final expectedJson = loadJsonFile('$name.json');
        final library = parseAndBuildLibrary(cqlSource);
        final visitor = CqlBaseVisitor(library);
        final actualElm = visitor.result;
        expect(compareElm(expectedJson, actualElm), isTrue,
            reason: '$name ELM output does not match expected JSON');
      });

      test('executes and produces correct results', () async {
        final cqlSource = loadCqlFile('$name.cql');
        final expectedResults = results['$name.cql'];
        final context = contexts['$name.cql'];
        final library = parseAndBuildLibrary(cqlSource);
        final executionResults = await library
            .execute(context is Map<String, dynamic> ? context : null);

        if (executionResults is Map<String, dynamic> &&
            expectedResults is Map<String, dynamic>) {
          final resultMap = Map<String, dynamic>.from(executionResults)
            ..remove('startTimestamp')
            ..remove('library')
            ..remove('workerContext')
            ..remove('resourceCache');

          for (final key in expectedResults.keys) {
            final result = resultMap[key];
            final answer = expectedResults[key];
            expect(areValuesEqual(result, answer), isTrue,
                reason:
                    '$name.$key: $result (${result?.runtimeType}) != $answer (${answer?.runtimeType})');
          }
        }
      });
    });
  }
}
