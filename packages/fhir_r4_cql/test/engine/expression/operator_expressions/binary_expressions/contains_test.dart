import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void containsTest() {
  group('Contains', () {
    test("""define "ContainsIsTrue": Interval[1, 5] contains 4""", () async {
      final interval = IntervalExpression(
        low: LiteralInteger(1),
        high: LiteralInteger(5),
      );
      final value = LiteralInteger(4);
      final contains = Contains(
        operand: [interval, value],
      );
      final result = await contains.execute({});
      expect(result, FhirBoolean(true));
    });
    test("""define "ContainsIsFalse": Interval[1, 5] contains 6""", () async {
      final interval = IntervalExpression(
        low: LiteralInteger(1),
        high: LiteralInteger(5),
      );
      final value = LiteralInteger(6);
      final contains = Contains(
        operand: [interval, value],
      );
      final result = await contains.execute({});
      expect(result, FhirBoolean(false));
    });
    test("""define "ContainsIsNull": Interval[1, 5] contains null""", () async {
      final interval = IntervalExpression(
        low: LiteralInteger(1),
        high: LiteralInteger(5),
      );
      final value = LiteralNull();
      final contains = Contains(
        operand: [interval, value],
      );
      final result = await contains.execute({});
      expect(result, null);
    });
    test("""define "ContainsIsTrue": { 1, 3, 5, 7 } contains 5""", () async {
      final list = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(3),
          LiteralInteger(5),
          LiteralInteger(7),
        ],
      );
      final value = LiteralInteger(5);
      final contains = Contains(
        operand: [list, value],
      );
      final result = await contains.execute({});
      expect(result, FhirBoolean(true));
    });
    test("""define "ContainsIsFalse": { 1, 3, 5, 7 } contains 4""", () async {
      final list = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(3),
          LiteralInteger(5),
          LiteralInteger(7),
        ],
      );
      final value = LiteralInteger(4);
      final contains = Contains(
        operand: [list, value],
      );
      final result = await contains.execute({});
      expect(result, FhirBoolean(false));
    });
    test("""define "ContainsIsAlsoFalse": null contains 4""", () async {
      final list = LiteralNull();
      final value = LiteralInteger(4);
      final contains = Contains(
        operand: [list, value],
      );
      final result = await contains.execute({});
      expect(result, FhirBoolean(false));
    });
    test("""define "ContainsNullIsFalse": { 1, 3, 5, 7 } contains null""",
        () async {
      final list = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(3),
          LiteralInteger(5),
          LiteralInteger(7),
        ],
      );
      final value = LiteralNull();
      final contains = Contains(
        operand: [list, value],
      );
      final result = await contains.execute({});
      expect(result, FhirBoolean(false));
    });
  });
}
