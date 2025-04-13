import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void beforeTest() {
  group('Before', () {
    test("""define "BeforeIsTrue": @2012-01-01 before month of @2012-02-01""",
        () {
      final left = LiteralDate('2012-01-01');
      final right = LiteralDate('2012-02-01');
      const precision = CqlDateTimePrecision.month;
      final expression = Before(precision: precision, operand: [left, right]);
      expect(expression.execute({}), equals(FhirBoolean(true)));
    });
    test("""define "BeforeIsFalse": @2012-01-01 before month of @2012-01-01""",
        () {
      final left = LiteralDate('2012-01-01');
      final right = LiteralDate('2012-01-01');
      const precision = CqlDateTimePrecision.month;
      final expression = Before(precision: precision, operand: [left, right]);
      expect(expression.execute({}), equals(FhirBoolean(false)));
    });
    test(
        """define "BeforeUncertainIsNull": @2012 before month of @2012-02-01""",
        () {
      final left = LiteralDate('2012');
      final right = LiteralDate('2012-02-01');
      const precision = CqlDateTimePrecision.month;
      final expression = Before(precision: precision, operand: [left, right]);
      expect(expression.execute({}), equals(null));
    });
    test("""define "BeforeIsNull": @2012-01-01 before month of null""", () {
      final left = LiteralDate('2012-01-01');
      final right = LiteralNull();
      const precision = CqlDateTimePrecision.month;
      final expression = Before(precision: precision, operand: [left, right]);
      expect(expression.execute({}), equals(null));
    });
    test("""define "BeforeIsTrue": 0 before Interval[1, 4]""", () {
      final left = LiteralInteger(0);
      final right =
          IntervalExpression(low: LiteralInteger(1), high: LiteralInteger(4));
      final expression = Before(operand: [left, right]);
      expect(expression.execute({}), equals(FhirBoolean(true)));
    });
    test("""define "BeforeIsFalse": Interval[1, 4] before 0""", () {
      final left =
          IntervalExpression(low: LiteralInteger(1), high: LiteralInteger(4));
      final right = LiteralInteger(0);
      final expression = Before(operand: [left, right]);
      expect(expression.execute({}), equals(FhirBoolean(false)));
    });
    test("""define "BeforeIsNull": Interval[1, 4] before null""", () {
      final left =
          IntervalExpression(low: LiteralInteger(1), high: LiteralInteger(4));
      final right = LiteralNull();
      final expression = Before(operand: [left, right]);
      expect(expression.execute({}), equals(null));
    });
  });
}
