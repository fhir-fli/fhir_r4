import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:test/test.dart';

void main() {
  group('Greater', () {
    test("""define "DateTimeGreaterIsNull": @2012-01-01 > @2012-01-01T12""",
        () async {
      final left = LiteralDateTime('2012-01-01');
      final right = LiteralDateTime('2012-01-01T12');
      final greater = Greater(operand: [left, right]);
      final result = await greater.execute({});
      expect(result, equals(null));
    });
    test("""define "IntegerGreaterIsTrue": 4 > 3""", () async {
      final left = LiteralInteger(4);
      final right = LiteralInteger(3);
      final greater = Greater(operand: [left, right]);
      final result = await greater.execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "LongGreaterIsTrue": 4L > 3L""", () async {
      final left = LiteralLong(BigInt.from(4));
      final right = LiteralLong(BigInt.from(3));
      final greater = Greater(operand: [left, right]);
      final result = await greater.execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "DecimalGreaterIsFalse": 3.5 > 3.5""", () async {
      final left = LiteralDecimal(3.5);
      final right = LiteralDecimal(3.5);
      final greater = Greater(operand: [left, right]);
      final result = await greater.execute({});
      expect(result, equals(FhirBoolean(false)));
    });
    test("""define "QuantityGreaterIsNull": 3.6 'cm2' > 3.5 'cm'""", () async {
      final left = LiteralQuantity(LiteralDecimal(3.6), unit: 'cm2');
      final right = LiteralQuantity(LiteralDecimal(3.5), unit: 'cm');
      final greater = Greater(operand: [left, right]);
      final result = await greater.execute({});
      expect(result, equals(null));
    });
    test("""define "NullGreaterIsNull": null > 5""", () async {
      final left = LiteralNull();
      final right = LiteralInteger(5);
      final greater = Greater(operand: [left, right]);
      final result = await greater.execute({});
      expect(result, equals(null));
    });
  });

  group('GreaterOrEqual', () {
    test(
        """define "DateTimeGreaterOrEqualIsNull": @2012-01-01 >= @2012-01-01T12""",
        () async {
      final left = LiteralDateTime('2012-01-01');
      final right = LiteralDateTime('2012-01-01T12');
      final greaterOrEqual = GreaterOrEqual(operand: [left, right]);
      final result = await greaterOrEqual.execute({});
      expect(result, equals(null));
    });
    test("""define "IntegerGreaterOrEqualIsTrue": 4 >= (2 + 2)""", () async {
      final left = LiteralInteger(4);
      final right = Add(operand: [LiteralInteger(2), LiteralInteger(2)]);
      final greaterOrEqual = GreaterOrEqual(operand: [left, right]);
      final result = await greaterOrEqual.execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "LongGreaterOrEqualIsTrue": 4L >= (2L + 2L)""", () async {
      final left = LiteralLong(BigInt.from(4));
      final right = Add(
          operand: [LiteralLong(BigInt.from(2)), LiteralLong(BigInt.from(2))]);
      final greaterOrEqual = GreaterOrEqual(operand: [left, right]);
      final result = await greaterOrEqual.execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "DecimalGreaterOrEqualIsFalse": 3.5 >= (3.5 + 0.1)""",
        () async {
      final left = LiteralDecimal(3.5);
      final right = Add(operand: [LiteralDecimal(3.5), LiteralDecimal(0.1)]);
      final greaterOrEqual = GreaterOrEqual(operand: [left, right]);
      final result = await greaterOrEqual.execute({});
      expect(result, equals(FhirBoolean(false)));
    });
    test("""define "QuantityGreaterOrEqualIsNull": 3.6 'cm2' >= 3.5 'cm'""",
        () async {
      final left = LiteralQuantity(LiteralDecimal(3.6), unit: 'cm2');
      final right = LiteralQuantity(LiteralDecimal(3.5), unit: 'cm');
      final greaterOrEqual = GreaterOrEqual(operand: [left, right]);
      final result = await greaterOrEqual.execute({});
      expect(result, equals(null));
    });
    test("""define "NullGreaterOrEqualIsNull": null >= 5""", () async {
      final left = LiteralNull();
      final right = LiteralInteger(5);
      final greaterOrEqual = GreaterOrEqual(operand: [left, right]);
      final result = await greaterOrEqual.execute({});
      expect(result, equals(null));
    });
  });

  group('Less', () {
    test("""define "DateTimeLessIsNull": @2012-01-01 < @2012-01-01T12""",
        () async {
      final left = LiteralDateTime('2012-01-01');
      final right = LiteralDateTime('2012-01-01T12');
      final less = Less(operand: [left, right]);
      final result = await less.execute({});
      expect(result, equals(null));
    });
    test("""define "IntegerLessIsTrue": 4 < (2 + 2 + 2)""", () async {
      final left = LiteralInteger(4);
      final right = Add(operand: [
        LiteralInteger(2),
        Add(operand: [LiteralInteger(2), LiteralInteger(2)])
      ]);
      final less = Less(operand: [left, right]);
      final result = await less.execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "LongLessIsTrue": 4L < (2L + 2L + 2L)""", () async {
      final left = LiteralLong(BigInt.from(4));
      final right = Add(operand: [
        LiteralLong(BigInt.from(2)),
        Add(operand: [LiteralLong(BigInt.from(2)), LiteralLong(BigInt.from(2))])
      ]);
      final less = Less(operand: [left, right]);
      final result = await less.execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "DecimalLessIsFalse": 3.5 < 3.5""", () async {
      final left = LiteralDecimal(3.5);
      final right = LiteralDecimal(3.5);
      final less = Less(operand: [left, right]);
      final result = await less.execute({});
      expect(result, equals(FhirBoolean(false)));
    });
    test("""define "QuantityLessIsNull": 3.6 'cm2' < 3.5 'cm'""", () async {
      final left = LiteralQuantity(LiteralDecimal(3.6), unit: 'cm2');
      final right = LiteralQuantity(LiteralDecimal(3.5), unit: 'cm');
      final less = Less(operand: [left, right]);
      final result = await less.execute({});
      expect(result, equals(null));
    });
    test("""define "DateTimeLessIsNull": @2012-01-01 < @2012-01-01T12""",
        () async {
      final left = LiteralDateTime('2012-01-01');
      final right = LiteralDateTime('2012-01-01T12');
      final less = Less(operand: [left, right]);
      final result = await less.execute({});
      expect(result, equals(null));
    });
    test("""define "NullLessIsNull": null < 5""", () async {
      final left = LiteralNull();
      final right = LiteralInteger(5);
      final less = Less(operand: [left, right]);
      final result = await less.execute({});
      expect(result, equals(null));
    });
  });

  group('LessOrEqual', () {
    test(
        """define "DateTimeLessOrEqualIsNull": @2012-01-01 <= @2012-01-01T12""",
        () async {
      final left = LiteralDateTime('2012-01-01');
      final right = LiteralDateTime('2012-01-01T12');
      final lessOrEqual = LessOrEqual(operand: [left, right]);
      final result = await lessOrEqual.execute({});
      expect(result, equals(null));
    });
    test("""define "IntegerLessOrEqualIsTrue": 4 <= (2 + 2)""", () async {
      final left = LiteralInteger(4);
      final right = Add(operand: [LiteralInteger(2), LiteralInteger(2)]);
      final lessOrEqual = LessOrEqual(operand: [left, right]);
      final result = await lessOrEqual.execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "LongLessOrEqualIsTrue": 4L <= (2L + 2L)""", () async {
      final left = LiteralLong(BigInt.from(4));
      final right = Add(
          operand: [LiteralLong(BigInt.from(2)), LiteralLong(BigInt.from(2))]);
      final lessOrEqual = LessOrEqual(operand: [left, right]);
      final result = await lessOrEqual.execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "DecimalLessOrEqualIsFalse": 3.5 <= (3.5 - 0.1)""",
        () async {
      final left = LiteralDecimal(3.5);
      final right =
          Subtract(operand: [LiteralDecimal(3.5), LiteralDecimal(0.1)]);
      final lessOrEqual = LessOrEqual(operand: [left, right]);
      final result = await lessOrEqual.execute({});
      expect(result, equals(FhirBoolean(false)));
    });
    test("""define "QuantityLessOrEqualIsNull": 3.6 'cm2' <= 3.6 'cm'""",
        () async {
      final left = LiteralQuantity(LiteralDecimal(3.6), unit: 'cm2');
      final right = LiteralQuantity(LiteralDecimal(3.6), unit: 'cm');
      final lessOrEqual = LessOrEqual(operand: [left, right]);
      final result = await lessOrEqual.execute({});
      expect(result, equals(null));
    });
    test("""define "NullLessOrEqualIsNull": null <= 5""", () async {
      final left = LiteralNull();
      final right = LiteralInteger(5);
      final lessOrEqual = LessOrEqual(operand: [left, right]);
      final result = await lessOrEqual.execute({});
      expect(result, equals(null));
    });
  });

  group('Equivalent', () {
    test("""define "IntegerEquivalentIsTrue": 4 ~ (2 + 2)""", () async {
      final left = LiteralInteger(4);
      final right = Add(operand: [LiteralInteger(2), LiteralInteger(2)]);
      final result = await Equivalent(operand: [left, right]).execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "LongEquivalentIsTrue": 4L ~ (2L + 2L)""", () async {
      final left = LiteralLong(BigInt.from(4));
      final right = Add(
          operand: [LiteralLong(BigInt.from(2)), LiteralLong(BigInt.from(2))]);
      final result = await Equivalent(operand: [left, right]).execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "DecimalEquivalentIsFalse": 3.5 ~ (3.5 - 0.1)""", () async {
      final left = LiteralDecimal(3.5);
      final right =
          Subtract(operand: [LiteralDecimal(3.5), LiteralDecimal(0.1)]);
      final result = await Equivalent(operand: [left, right]).execute({});
      expect(result, equals(FhirBoolean(false)));
    });
    test("""define "StringEquivalentIsTrue": 'John Doe' ~ 'john doe'""",
        () async {
      final left = LiteralString('John Doe');
      final right = LiteralString('john doe');
      final result = await Equivalent(operand: [left, right]).execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "QuantityEquivalentIsFalse": 3.5 'cm2' ~ 3.5 'cm'""",
        () async {
      final left = LiteralQuantity(LiteralDecimal(3.5), unit: 'cm2');
      final right = LiteralQuantity(LiteralDecimal(3.5), unit: 'cm');
      final result = await Equivalent(operand: [left, right]).execute({});
      expect(result, equals(FhirBoolean(false)));
    });
    test("""define "RatioEquivalentIsTrue": 1:8 ~ 2:16""", () async {
      final left = LiteralRatio(LiteralQuantity(LiteralDecimal(1)),
          LiteralQuantity(LiteralDecimal(8)));
      final right = LiteralRatio(LiteralQuantity(LiteralDecimal(2)),
          LiteralQuantity(LiteralDecimal(16)));
      final result = await Equivalent(operand: [left, right]).execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test(
        """define "ListEquivalentIsTrue": { null, 1, 2, 3 } ~ { null, 1, 2, 3 }""",
        () async {
      final left = ListExpression(element: [
        LiteralNull(),
        LiteralInteger(1),
        LiteralInteger(2),
        LiteralInteger(3)
      ]);
      final right = ListExpression(element: [
        LiteralNull(),
        LiteralInteger(1),
        LiteralInteger(2),
        LiteralInteger(3)
      ]);
      final result = await Equivalent(operand: [left, right]).execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "DateTimeEquivalentIsFalse": @2012-01-01 ~ @2012-01-01T12""",
        () async {
      final left = LiteralDateTime('2012-01-01');
      final right = LiteralDateTime('2012-01-01T12');
      final result = await Equivalent(operand: [left, right]).execute({});
      expect(result, equals(FhirBoolean(false)));
    });
    test("""define "NullEquivalentIsTrue": null ~ null""", () async {
      final left = LiteralNull();
      final right = LiteralNull();
      final result = await Equivalent(operand: [left, right]).execute({});
      expect(result, equals(FhirBoolean(true)));
    });
  });
}
