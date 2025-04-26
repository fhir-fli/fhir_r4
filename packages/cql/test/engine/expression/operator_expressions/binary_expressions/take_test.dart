// test/take_test.dart

import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void takeTest() {
  group('Take', () {
    test('define "Take2": Take({ 1, 2, 3, 4 }, 2) // { 1, 2 }', () async {
      final list = ListExpression(element: [
        LiteralInteger(1),
        LiteralInteger(2),
        LiteralInteger(3),
        LiteralInteger(4),
      ]);

      // Now using the Take class directly
      final takeExpr = Take(operand: [
        list,
        LiteralInteger(2),
      ]);

      final result = await takeExpr.execute({});
      expect(result, equals([FhirInteger(1), FhirInteger(2)]));
    });

    test('define "TakeTooMany": Take({ 1, 2 }, 3) // { 1, 2 }', () async {
      final list = ListExpression(element: [
        LiteralInteger(1),
        LiteralInteger(2),
      ]);

      final takeExpr = Take(operand: [
        list,
        LiteralInteger(3),
      ]);

      final result = await takeExpr.execute({});
      expect(result, equals([FhirInteger(1), FhirInteger(2)]));
    });

    test('define "TakeEmpty": Take({ 1, 2, 3, 4 }, null) // { }', () async {
      final list = ListExpression(element: [
        LiteralInteger(1),
        LiteralInteger(2),
        LiteralInteger(3),
        LiteralInteger(4),
      ]);

      final takeExpr = Take(operand: [
        list,
        LiteralNull(),
      ]);

      final result = await takeExpr.execute({});
      expect(result, equals([]));
    });

    test('define "TakeIsNull": Take(null, 2)', () async {
      final takeExpr = Take(operand: [
        LiteralNull(),
        LiteralInteger(2),
      ]);

      final result = await takeExpr.execute({});
      expect(result, equals(null));
    });
  });
}
