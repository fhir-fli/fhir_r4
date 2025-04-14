import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void afterTest() {
  group('After', () {
    test("""define "AfterIsTrue": @2012-02-01 after month of @2012-01-01""",
        () async {
      final left = LiteralDate('2012-02-01');
      final right = LiteralDate('2012-01-01');
      const precision = CqlDateTimePrecision.month;
      final expression = After(precision: precision, operand: [left, right]);
      expect(await expression.execute({}), equals(FhirBoolean(true)));
    });
    test("""define "AfterIsFalse": @2012-01-01 after month of @2012-01-01""",
        () async {
      final left = LiteralDate('2012-01-01');
      final right = LiteralDate('2012-01-01');
      const precision = CqlDateTimePrecision.month;
      final expression = After(precision: precision, operand: [left, right]);
      expect(await expression.execute({}), equals(FhirBoolean(false)));
    });
    test("""define "AfterUncertainIsNull": @2012-01-01 after month of @2012""",
        () async {
      final left = LiteralDate('2012-01-01');
      final right = LiteralDate('2012');
      const precision = CqlDateTimePrecision.month;
      final expression = After(precision: precision, operand: [left, right]);
      expect(await expression.execute({}), equals(null));
    });
    test("""define "AfterIsNull": @2012-01-01 after month of null""", () async {
      final left = LiteralDate('2012-01-01');
      final right = LiteralNull();
      const precision = CqlDateTimePrecision.month;
      final expression = After(precision: precision, operand: [left, right]);
      expect(await expression.execute({}), equals(null));
    });
    test("""define "AfterIsTrue": 5 after Interval[1, 4]""", () async {
      final left = LiteralInteger(5);
      final low = LiteralInteger(1);
      final high = LiteralInteger(4);
      final interval = IntervalExpression(low: low, high: high);
      final after = After(operand: [left, interval]);
      final result = await after.execute({});
      expect(result, FhirBoolean(true));
    });
    test("""define "AfterIsFalse": Interval[1, 4] after 5""", () async {
      final low = LiteralInteger(1);
      final high = LiteralInteger(4);
      final interval = IntervalExpression(low: low, high: high);
      final left = LiteralInteger(5);
      final after = After(operand: [interval, left]);
      final result = await after.execute({});
      expect(result, FhirBoolean(false));
    });
    test("""define "AfterIsNull": Interval[1, 4] after null""", () async {
      final low = LiteralInteger(1);
      final high = LiteralInteger(4);
      final interval = IntervalExpression(low: low, high: high);
      final left = LiteralNull();
      final after = After(operand: [interval, left]);
      final result = await after.execute({});
      expect(result, isNull);
    });
  });
}
