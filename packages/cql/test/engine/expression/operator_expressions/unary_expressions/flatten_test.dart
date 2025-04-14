import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void flattenTest() {
  group('flatten', () {
    test(
        'define "Flatten": flatten { { 1, 2 }, { 3, 4, 5 } } // { 1, 2, 3, 4, 5 }',
        () async {
      final list1 = ListExpression(element: [
        LiteralInteger(1),
        LiteralInteger(2),
      ]);
      final list2 = ListExpression(element: [
        LiteralInteger(3),
        LiteralInteger(4),
        LiteralInteger(5),
      ]);
      final flatten = Flatten(operand: ListExpression(element: [list1, list2]));
      final result = await flatten.execute({});
      expect(
          result,
          equals([
            FhirInteger(1),
            FhirInteger(2),
            FhirInteger(3),
            FhirInteger(4),
            FhirInteger(5)
          ]));
    });
    test('define "FlattenIsNull": flatten null', () async {
      final flatten = Flatten(operand: LiteralNull());
      final result = await flatten.execute({});
      expect(result, isNull);
    });
  });
}
