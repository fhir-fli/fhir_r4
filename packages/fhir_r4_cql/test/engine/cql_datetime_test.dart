import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:test/test.dart';

void main() {
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

  group('Before', () {
    test("""define "BeforeIsTrue": @2012-01-01 before month of @2012-02-01""",
        () async {
      final left = LiteralDate('2012-01-01');
      final right = LiteralDate('2012-02-01');
      const precision = CqlDateTimePrecision.month;
      final expression = Before(precision: precision, operand: [left, right]);
      expect(await expression.execute({}), equals(FhirBoolean(true)));
    });
    test("""define "BeforeIsFalse": @2012-01-01 before month of @2012-01-01""",
        () async {
      final left = LiteralDate('2012-01-01');
      final right = LiteralDate('2012-01-01');
      const precision = CqlDateTimePrecision.month;
      final expression = Before(precision: precision, operand: [left, right]);
      expect(await expression.execute({}), equals(FhirBoolean(false)));
    });
    test(
        """define "BeforeUncertainIsNull": @2012 before month of @2012-02-01""",
        () async {
      final left = LiteralDate('2012');
      final right = LiteralDate('2012-02-01');
      const precision = CqlDateTimePrecision.month;
      final expression = Before(precision: precision, operand: [left, right]);
      expect(await expression.execute({}), equals(null));
    });
    test("""define "BeforeIsNull": @2012-01-01 before month of null""",
        () async {
      final left = LiteralDate('2012-01-01');
      final right = LiteralNull();
      const precision = CqlDateTimePrecision.month;
      final expression = Before(precision: precision, operand: [left, right]);
      expect(await expression.execute({}), equals(null));
    });
    test("""define "BeforeIsTrue": 0 before Interval[1, 4]""", () async {
      final left = LiteralInteger(0);
      final right =
          IntervalExpression(low: LiteralInteger(1), high: LiteralInteger(4));
      final expression = Before(operand: [left, right]);
      expect(await expression.execute({}), equals(FhirBoolean(true)));
    });
    test("""define "BeforeIsFalse": Interval[1, 4] before 0""", () async {
      final left =
          IntervalExpression(low: LiteralInteger(1), high: LiteralInteger(4));
      final right = LiteralInteger(0);
      final expression = Before(operand: [left, right]);
      expect(await expression.execute({}), equals(FhirBoolean(false)));
    });
    test("""define "BeforeIsNull": Interval[1, 4] before null""", () async {
      final left =
          IntervalExpression(low: LiteralInteger(1), high: LiteralInteger(4));
      final right = LiteralNull();
      final expression = Before(operand: [left, right]);
      expect(await expression.execute({}), equals(null));
    });
  });

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
    test("""define "SameAsIsTrue": Interval[1, 4] SameAs Interval[1, 4]""",
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
    test("""define "SameAsIsTrue": Interval[4, 4] SameAs 4""", () async {
      final low1 = LiteralInteger(4);
      final high1 = LiteralInteger(4);
      final interval1 = IntervalExpression(low: low1, high: high1);
      final right = LiteralInteger(4);
      final after = SameAs(operand: [interval1, right]);
      final result = await after.execute({});
      expect(result, FhirBoolean(true));
    });
  });

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

  group('DurationBetween', () {
    test(
        """define "DurationInMonths": months between @2012-01-01 and @2012-02-01 // 1""",
        () async {
      final low = LiteralDate('2012-01-01');
      final high = LiteralDate('2012-02-01');
      final duration = DurationBetween(
          precision: CqlDateTimePrecision.month, operand: [low, high]);
      expect(await duration.execute({}), FhirInteger(1));
    });
    test(
        """define "DurationInMonths": months between @2012-01-01T01:01:01 and @2012-02-01T01:01:01 // 1""",
        () async {
      final low = LiteralDateTime('2012-01-01T01:01:01');
      final high = LiteralDateTime('2012-02-01T01:01:01');
      final duration = DurationBetween(
          precision: CqlDateTimePrecision.month, operand: [low, high]);
      expect(await duration.execute({}), FhirInteger(1));
    });
    test(
        """define "DurationInHours": hours between @2012-01-01T23:00:00 and @2012-01-02T02:00:00 // 3""",
        () async {
      final low = LiteralDateTime('2012-01-01T23:00:00');
      final high = LiteralDateTime('2012-01-02T02:00:00');
      final duration = DurationBetween(
          precision: CqlDateTimePrecision.hour, operand: [low, high]);
      expect(await duration.execute({}), FhirInteger(3));
    });
    test(
        """define "UncertainDurationInMonths": months between @2012-01-02 and @2012 // [0, 11]""",
        () async {
      final low = LiteralDate('2012-01-02');
      final high = LiteralDate('2012');
      final duration = DurationBetween(
          precision: CqlDateTimePrecision.month, operand: [low, high]);
      final result = await duration.execute({});
      expect(result, isA<CqlInterval>());
      final interval = result as CqlInterval;
      expect(interval.isUncertain(), isTrue);
      expect(interval.low, equals(FhirInteger(0)));
      expect(interval.high, equals(FhirInteger(11)));
    });
    test("""define "DurationIsNull": months between @2012-01-01 and null""",
        () async {
      final low = LiteralDate('2012-01-01');
      final high = LiteralNull();
      final duration = DurationBetween(
          precision: CqlDateTimePrecision.month, operand: [low, high]);
      expect(await duration.execute({}), null);
    });
    test(
        """define "UncertainDurationInDays": days between @2024-01 and @2024-03""",
        () async {
      final low = LiteralDate('2024-01');
      final high = LiteralDate('2024-03');
      final duration = DurationBetween(
          precision: CqlDateTimePrecision.day, operand: [low, high]);
      final result = await duration.execute({});
      expect(result, isA<CqlInterval>());
      final interval = result as CqlInterval;
      expect(interval.isUncertain(), isTrue);
      // min: from Jan 31 to Mar 1 = 30 days; max: from Jan 1 to Mar 31 = 90 days
      expect((interval.low as FhirInteger).valueInt! > 0, isTrue);
      expect((interval.high as FhirInteger).valueInt! > 0, isTrue);
      expect((interval.low as FhirInteger).valueInt!,
          lessThanOrEqualTo((interval.high as FhirInteger).valueInt!));
    });
    test(
        """define "DurationInYears": years between @2012-01-01 and @2014-01-01 // 2""",
        () async {
      final low = LiteralDate('2012-01-01');
      final high = LiteralDate('2014-01-01');
      final duration = DurationBetween(
          precision: CqlDateTimePrecision.year, operand: [low, high]);
      expect(await duration.execute({}), FhirInteger(2));
    });
    test(
        """define "DurationInMonthsCalendar": months between @2012-01-01 and @2012-04-01 // 3""",
        () async {
      final low = LiteralDate('2012-01-01');
      final high = LiteralDate('2012-04-01');
      final duration = DurationBetween(
          precision: CqlDateTimePrecision.month, operand: [low, high]);
      expect(await duration.execute({}), FhirInteger(3));
    });
  });

  group('DifferenceBetween', () {
    test(
        """define "DifferenceInMonths": months between @2012-01-01 and @2012-02-01 // 1""",
        () async {
      final low = LiteralDate('2012-01-01');
      final high = LiteralDate('2012-02-01');
      final duration = DifferenceBetween(
          precision: CqlDateTimePrecision.month, operand: [low, high]);
      expect(await duration.execute({}), FhirInteger(1));
    });
    test("""define "DifferenceIsNull": months between @2012-01-01 and null""",
        () async {
      final low = LiteralDate('2012-01-01');
      final high = LiteralNull();
      final duration = DifferenceBetween(
          precision: CqlDateTimePrecision.month, operand: [low, high]);
      expect(await duration.execute({}), null);
    });
    test(
        """define "UncertainDifferenceInMonths": difference in months between @2012-01-02 and @2012 // [0, 11]""",
        () async {
      final low = LiteralDate('2012-01-02');
      final high = LiteralDate('2012');
      final diff = DifferenceBetween(
          precision: CqlDateTimePrecision.month, operand: [low, high]);
      final result = await diff.execute({});
      expect(result, isA<CqlInterval>());
      final interval = result as CqlInterval;
      expect(interval.isUncertain(), isTrue);
      expect(interval.low, equals(FhirInteger(0)));
      expect(interval.high, equals(FhirInteger(11)));
    });
    test(
        """define "UncertainDifferenceInDays": difference in days between @2024-01 and @2024-03""",
        () async {
      final low = LiteralDate('2024-01');
      final high = LiteralDate('2024-03');
      final diff = DifferenceBetween(
          precision: CqlDateTimePrecision.day, operand: [low, high]);
      final result = await diff.execute({});
      expect(result, isA<CqlInterval>());
      final interval = result as CqlInterval;
      expect(interval.isUncertain(), isTrue);
      expect((interval.low as FhirInteger).valueInt!,
          lessThanOrEqualTo((interval.high as FhirInteger).valueInt!));
    });
    test(
        """define "DifferenceInYearsNoUncertainty": difference in years between @2012-01-02 and @2012 // 0""",
        () async {
      final low = LiteralDate('2012-01-02');
      final high = LiteralDate('2012');
      final diff = DifferenceBetween(
          precision: CqlDateTimePrecision.year, operand: [low, high]);
      expect(await diff.execute({}), FhirInteger(0));
    });
  });
}
