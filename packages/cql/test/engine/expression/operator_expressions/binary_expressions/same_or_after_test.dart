import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void sameOrAfterTest() {
  group('SameOrAfter', () {
    test(
        """define "SameOrAfterTrue": @2012-01-02 same day or after @2012-01-01""",
        () async {
      final left = LiteralDate('2012-01-02');
      final right = LiteralDate('2012-01-01');
      const precision = CqlDateTimePrecision.day;
      final expression =
          SameOrAfter(precision: precision, operand: [left, right]);
      expect(await expression.execute({}), FhirBoolean(true));
    });
    test(
        """define "SameOrAfterFalse": @2012-01-01 same day or after @2012-01-02""",
        () async {
      final left = LiteralDate('2012-01-01');
      final right = LiteralDate('2012-01-02');
      const precision = CqlDateTimePrecision.day;
      final expression =
          SameOrAfter(precision: precision, operand: [left, right]);
      expect(await expression.execute({}), FhirBoolean(false));
    });
    test(
        """define "UncertainSameOrAfterIsNull": @2012-01-02 same day or after @2012-01""",
        () async {
      final left = LiteralDate('2012-01-02');
      final right = LiteralDate('2012-01');
      const precision = CqlDateTimePrecision.day;
      final expression =
          SameOrAfter(precision: precision, operand: [left, right]);
      expect(await expression.execute({}), null);
    });
    test("""define "SameOrAfterIsNull": @2012-01-01 same day or after null""",
        () async {
      final left = LiteralDate('2012-01-01');
      final right = LiteralNull();
      const precision = CqlDateTimePrecision.day;
      final expression =
          SameOrAfter(precision: precision, operand: [left, right]);
      expect(await expression.execute({}), null);
    });
    test("""define "SameOrAfterIsTrue": 5 after Interval[1, 4]""", () async {
      final left = LiteralInteger(5);
      final low = LiteralInteger(1);
      final high = LiteralInteger(4);
      final interval = IntervalExpression(low: low, high: high);
      final after = SameOrAfter(operand: [left, interval]);
      final result = await after.execute({});
      expect(result, FhirBoolean(true));
    });
    test("""define "SameOrAfterIsFalse": Interval[1, 4] after 5""", () async {
      final low = LiteralInteger(1);
      final high = LiteralInteger(4);
      final interval = IntervalExpression(low: low, high: high);
      final left = LiteralInteger(5);
      final after = SameOrAfter(operand: [interval, left]);
      final result = await after.execute({});
      expect(result, FhirBoolean(false));
    });
    test("""define "SameOrAfterIsNull": Interval[1, 4] after null""", () async {
      final low = LiteralInteger(1);
      final high = LiteralInteger(4);
      final interval = IntervalExpression(low: low, high: high);
      final left = LiteralNull();
      final after = SameOrAfter(operand: [interval, left]);
      final result = await after.execute({});
      expect(result, isNull);
    });
  });
}
