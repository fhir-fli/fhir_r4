// test/tail_test.dart

import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void tailTest() {
  group('Tail', () {
    test('define "Tail234": Tail({ 1, 2, 3, 4 }) // { 2, 3, 4 }', () async {
      final list = ListExpression(element: [
        LiteralInteger(1),
        LiteralInteger(2),
        LiteralInteger(3),
        LiteralInteger(4),
      ]);

      final tailExpr = Tail(operand: list);
      final result = await tailExpr.execute({});
      expect(
          result,
          equals([
            FhirInteger(2),
            FhirInteger(3),
            FhirInteger(4),
          ]));
    });

    test('define "TailEmpty": Tail({ }) // { }', () async {
      final list = ListExpression(element: []);

      final tailExpr = Tail(operand: list);
      final result = await tailExpr.execute({});
      expect(result, equals(<dynamic>[]));
    });

    test('define "TailIsNull": Tail(null)', () async {
      final tailExpr = Tail(operand: LiteralNull());
      final result = await tailExpr.execute({});
      expect(result, equals(null));
    });
  });
}
