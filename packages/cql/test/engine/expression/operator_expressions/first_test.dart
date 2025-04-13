import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void firstTest() {
  group('first', () {
    test('define "First1": First({ 1, 2, 5 }) // 1', () {
      final list = ListExpression(element: [
        LiteralInteger(1),
        LiteralInteger(2),
        LiteralInteger(5),
      ]);
      final first = First(source: list);
      final result = first.execute({});
      expect(result, equals(FhirInteger(1)));
    });
    test('define "FirstIsNull": First(null)', () {
      final first = First(source: LiteralNull());
      final result = first.execute({});
      expect(result, isNull);
    });
  });
}
