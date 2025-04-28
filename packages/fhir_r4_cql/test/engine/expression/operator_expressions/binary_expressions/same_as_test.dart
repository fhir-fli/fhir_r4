import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void sameAsTest() {
  group('SameAs', () {
    test("""define "SameAsTrue": @2012-01-01 same day as @2012-01-01""",
        () async {
      final left = LiteralDate('2012-01-01');
      final right = LiteralDate('2012-01-01');
      const precision = CqlDateTimePrecision.day;
      final expression = SameAs(
        precision: precision,
        operand: [left, right],
      );
      expect(await expression.execute({}), FhirBoolean(true));
    });
    test("""define "SameAsFalse": @2012-01-01 same day as @2012-01-02""",
        () async {
      final left = LiteralDate('2012-01-01');
      final right = LiteralDate('2012-01-02');
      const precision = CqlDateTimePrecision.day;
      final expression = SameAs(
        precision: precision,
        operand: [left, right],
      );
      expect(await expression.execute({}), FhirBoolean(false));
    });
    test("""define "UncertainSameAsIsNull": @2012-01-01 same day as @2012-01""",
        () async {
      final left = LiteralDate('2012-01-01');
      final right = LiteralDate('2012-01');
      const precision = CqlDateTimePrecision.day;
      final expression = SameAs(
        precision: precision,
        operand: [left, right],
      );
      expect(await expression.execute({}), null);
    });
    test("""define "SameAsIsNull": @2012-01-01 same day as null""", () async {
      final left = LiteralDate('2012-01-01');
      final right = LiteralNull();
      const precision = CqlDateTimePrecision.day;
      final expression = SameAs(
        precision: precision,
        operand: [left, right],
      );
      expect(await expression.execute({}), null);
    });
    test("""define "SameAsIsFalse": Interval[1, 4] SameAs 5""", () async {
      final low = LiteralInteger(1);
      final high = LiteralInteger(4);
      final interval = IntervalExpression(low: low, high: high);
      final right = LiteralInteger(5);
      final sameAs = SameAs(operand: [interval, right]);
      final result = await sameAs.execute({});
      expect(result, FhirBoolean(false));
    });
    test("""define "SameAsIsFalse": Interval[1, 4] SameAs Interval[1, 4]""",
        () async {
      final low1 = LiteralInteger(1);
      final high1 = LiteralInteger(4);
      final interval1 = IntervalExpression(low: low1, high: high1);
      final low2 = LiteralInteger(1);
      final high2 = LiteralInteger(4);
      final interval2 = IntervalExpression(low: low2, high: high2);
      final after = SameAs(operand: [interval1, interval2]);
      final result = await after.execute({});
      expect(result, FhirBoolean(true));
    });
    test("""define "SameAsIsFalse": Interval[4, 4] SameAs 4""", () async {
      final low1 = LiteralInteger(4);
      final high1 = LiteralInteger(4);
      final interval1 = IntervalExpression(low: low1, high: high1);
      final right = LiteralInteger(4);
      final after = SameAs(operand: [interval1, right]);
      final result = await after.execute({});
      expect(result, FhirBoolean(true));
    });
  });
}
