import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void distinctTest() {
  group('distinct', () {
    test('define "Distinct": distinct { 1, 3, 3, 5, 5 } // { 1, 3, 5 }', () {
      final list = ListExpression(element: [
        LiteralInteger(1),
        LiteralInteger(3),
        LiteralInteger(3),
        LiteralInteger(5),
        LiteralInteger(5)
      ]);
      final distinct = Distinct(operand: list);
      final result = distinct.execute({});
      expect(result, [
        FhirInteger(1),
        FhirInteger(3),
        FhirInteger(5),
      ]);
    });
    test('define "DistinctIsNull": distinct null // null', () {
      final distinct = Distinct(operand: LiteralNull());
      final result = distinct.execute({});
      expect(result, isNull);
    });
  });
}
