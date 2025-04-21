import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void meetsTest() {
  group('Meets', () {
    test(
        """define "MeetsAtHours": Interval[@T03, @T04] meets Interval[@T05, @T06]""",
        () async {
      final low1 = LiteralTime('@T03');
      final high1 = LiteralTime('@T04');
      final interval1 = IntervalExpression(low: low1, high: high1);
      final low2 = LiteralTime('@T05');
      final high2 = LiteralTime('@T06');
      final interval2 = IntervalExpression(low: low2, high: high2);
      final meets = Meets(operand: [interval1, interval2]);
      final result = await meets.execute({});
      expect(result, FhirBoolean(true));
    });
    test("""define "MeetsIsTrue": Interval[6, 10] meets Interval[0, 5]""",
        () async {
      final low1 = LiteralInteger(6);
      final high1 = LiteralInteger(10);
      final interval1 = IntervalExpression(low: low1, high: high1);
      final low2 = LiteralInteger(0);
      final high2 = LiteralInteger(5);
      final interval2 = IntervalExpression(low: low2, high: high2);
      final meets = Meets(operand: [interval1, interval2]);
      final result = await meets.execute({});
      expect(result, FhirBoolean(true));
    });
    test(
        """define "MeetsIsNull": Interval[6, 10] meets (null as Interval<Integer>)""",
        () async {
      final low1 = LiteralInteger(6);
      final high1 = LiteralInteger(10);
      final interval1 = IntervalExpression(low: low1, high: high1);
      final interval2 =
          As(operand: LiteralNull(), asType: QName.fromDataType('Interval'));
      final meets = Meets(operand: [interval1, interval2]);
      final result = await meets.execute({});
      expect(result, isNull);
    });
  });
}
