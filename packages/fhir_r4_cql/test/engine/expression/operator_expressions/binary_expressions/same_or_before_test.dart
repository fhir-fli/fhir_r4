import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void sameOrBeforeTest() {
  group('SameOrBefore', () {
    test(
        """define "SameOrBeforeTrue": @2012-01-01 same day or before @2012-01-02""",
        () async {
      final left = LiteralDate('2012-01-01');
      final right = LiteralDate('2012-01-02');
      const precision = CqlDateTimePrecision.day;
      final expression = SameOrBefore(
        precision: precision,
        operand: [left, right],
      );
      expect(await expression.execute({}), FhirBoolean(true));
    });
    test(
        """define "SameOrBeforeFalse": @2012-01-02 same day or before @2012-01-01""",
        () async {
      final left = LiteralDate('2012-01-02');
      final right = LiteralDate('2012-01-01');
      const precision = CqlDateTimePrecision.day;
      final expression = SameOrBefore(
        precision: precision,
        operand: [left, right],
      );
      expect(await expression.execute({}), FhirBoolean(false));
    });
    test(
        """define "UncertainSameOrBeforeIsNull": @2012-01-02 same day or before @2012-01""",
        () async {
      final left = LiteralDate('2012-01-02');
      final right = LiteralDate('2012-01');
      const precision = CqlDateTimePrecision.day;
      final expression = SameOrBefore(
        precision: precision,
        operand: [left, right],
      );
      expect(await expression.execute({}), null);
    });
    test("""define "SameOrBeforeIsNull": @2012-01-01 same day or before null""",
        () async {
      final left = LiteralDate('2012-01-01');
      final right = LiteralNull();
      const precision = CqlDateTimePrecision.day;
      final expression = SameOrBefore(
        precision: precision,
        operand: [left, right],
      );
      expect(await expression.execute({}), null);
    });
    test("""define "SameOrBeforeIsTrue": 0 before Interval[1, 4]""", () async {
      final left = LiteralInteger(0);
      final right =
          IntervalExpression(low: LiteralInteger(1), high: LiteralInteger(4));
      final expression = SameOrBefore(operand: [left, right]);
      expect(await expression.execute({}), equals(FhirBoolean(true)));
    });
    test("""define "SameOrBeforeIsFalse": Interval[1, 4] before 0""", () async {
      final left =
          IntervalExpression(low: LiteralInteger(1), high: LiteralInteger(4));
      final right = LiteralInteger(0);
      final expression = SameOrBefore(operand: [left, right]);
      expect(await expression.execute({}), equals(FhirBoolean(false)));
    });
    test("""define "SameOrBeforeIsNull": Interval[1, 4] before null""",
        () async {
      final left =
          IntervalExpression(low: LiteralInteger(1), high: LiteralInteger(4));
      final right = LiteralNull();
      final expression = SameOrBefore(operand: [left, right]);
      expect(await expression.execute({}), equals(null));
    });
  });
}
