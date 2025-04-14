import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void startsTest() {
  group('Starts', () {
    test("""define "StartsIsTrue": Interval[0, 5] starts Interval[0, 7]""", () async {
      final low1 = LiteralInteger(0);
      final high1 = LiteralInteger(5);
      final interval1 = IntervalExpression(low: low1, high: high1);
      final low2 = LiteralInteger(0);
      final high2 = LiteralInteger(7);
      final interval2 = IntervalExpression(low: low2, high: high2);
      final starts = Starts(operand: [interval1, interval2]);
      final result = await starts.execute({});
      expect(result, FhirBoolean(true));
    });
    test("""define "StartsIsFalse": Interval[0, 7] starts Interval[0, 6]""",
        () async {
      final low1 = LiteralInteger(0);
      final high1 = LiteralInteger(7);
      final interval1 = IntervalExpression(low: low1, high: high1);
      final low2 = LiteralInteger(0);
      final high2 = LiteralInteger(6);
      final interval2 = IntervalExpression(low: low2, high: high2);
      final starts = Starts(operand: [interval1, interval2]);
      final result = await starts.execute({});
      expect(result, FhirBoolean(false));
    });
    test("""define "StartsIsNull": Interval[1, 5] starts null""", () async {
      final low1 = LiteralInteger(0);
      final high1 = LiteralInteger(5);
      final interval1 = IntervalExpression(low: low1, high: high1);
      final interval2 =
          As(operand: LiteralNull(), asType: QName.fromDataType('Interval'));
      final starts = Starts(operand: [interval1, interval2]);
      final result = await starts.execute({});
      expect(result, isNull);
    });
  });
}
