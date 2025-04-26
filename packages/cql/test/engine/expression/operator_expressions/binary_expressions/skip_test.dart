// test/skip_test.dart

import 'package:cql/cql.dart' as cql;
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void skipTest() {
  group('Skip', () {
    test('define "Skip2": Skip({ 1, 2, 3, 4, 5 }, 2) // { 3, 4, 5 }', () async {
      final list = cql.ListExpression(element: [
        cql.LiteralInteger(1),
        cql.LiteralInteger(2),
        cql.LiteralInteger(3),
        cql.LiteralInteger(4),
        cql.LiteralInteger(5),
      ]);

      final skipExpr = cql.Skip(operand: [
        list,
        cql.LiteralInteger(2),
      ]);

      final result = await skipExpr.execute({});
      expect(result, equals([FhirInteger(3), FhirInteger(4), FhirInteger(5)]));
    });

    test('define "SkipNull": Skip({ 1, 3, 5 }, null) // { 1, 3, 5 }', () async {
      final list = cql.ListExpression(element: [
        cql.LiteralInteger(1),
        cql.LiteralInteger(3),
        cql.LiteralInteger(5),
      ]);

      final skipExpr = cql.Skip(operand: [
        list,
        cql.LiteralNull(),
      ]);

      final result = await skipExpr.execute({});
      expect(result, equals([FhirInteger(1), FhirInteger(3), FhirInteger(5)]));
    });

    test('define "SkipEmpty": Skip({ 1, 3, 5 }, -1) // { }', () async {
      final list = cql.ListExpression(element: [
        cql.LiteralInteger(1),
        cql.LiteralInteger(3),
        cql.LiteralInteger(5),
      ]);

      final skipExpr = cql.Skip(operand: [
        list,
        cql.LiteralInteger(-1),
      ]);

      final result = await skipExpr.execute({});
      expect(result, equals([]));
    });

    test('define "SkipIsNull": Skip(null, 2)', () async {
      final skipExpr = cql.Skip(operand: [
        cql.LiteralNull(),
        cql.LiteralInteger(2),
      ]);

      final result = await skipExpr.execute({});
      expect(result, equals(null));
    });
  });
}
