import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void equivalentTest() {
  group('Equivalent', () {
    test("""define "IntegerEquivalentIsTrue": 4 ~ (2 + 2)""", () async {
      final left = LiteralInteger(4);
      final right = Add(
        operand: [
          LiteralInteger(2),
          LiteralInteger(2),
        ],
      );
      final result = await Equivalent(
        operand: [left, right],
      ).execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "LongEquivalentIsTrue": 4L ~ (2L + 2L)""", () async {
      final left = LiteralLong(BigInt.from(4));
      final right = Add(
        operand: [
          LiteralLong(BigInt.from(2)),
          LiteralLong(BigInt.from(2)),
        ],
      );
      final result = await Equivalent(
        operand: [left, right],
      ).execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "DecimalEquivalentIsFalse": 3.5 ~ (3.5 - 0.1)""", () async {
      final left = LiteralDecimal(3.5);
      final right = Subtract(
        operand: [
          LiteralDecimal(3.5),
          LiteralDecimal(0.1),
        ],
      );
      final result = await Equivalent(
        operand: [left, right],
      ).execute({});
      expect(result, equals(FhirBoolean(false)));
    });
    test("""define "StringEquivalentIsTrue": 'John Doe' ~ 'john doe'""", () async {
      final left = LiteralString('John Doe');
      final right = LiteralString('john doe');
      final result = await Equivalent(
        operand: [left, right],
      ).execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "QuantityEquivalentIsFalse": 3.5 'cm2' ~ 3.5 'cm'""", () async {
      final left = LiteralQuantity(
        LiteralDecimal(3.5),
        unit: 'cm2',
      );
      final right = LiteralQuantity(
        LiteralDecimal(3.5),
        unit: 'cm',
      );
      final result = await Equivalent(
        operand: [left, right],
      ).execute({});
      expect(result, equals(FhirBoolean(false)));
    });
    test("""define "RatioEquivalentIsTrue": 1:8 ~ 2:16""", () async {
      final left = LiteralRatio(
        LiteralQuantity(LiteralDecimal(1)),
        LiteralQuantity(LiteralDecimal(8)),
      );
      final right = LiteralRatio(
        LiteralQuantity(LiteralDecimal(2)),
        LiteralQuantity(LiteralDecimal(16)),
      );
      final result = await Equivalent(
        operand: [left, right],
      ).execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test(
        """define "ListEquivalentIsTrue": { null, 1, 2, 3 } ~ { null, 1, 2, 3 }""",
        () async{
      final left = ListExpression(element: [
        LiteralNull(),
        LiteralInteger(1),
        LiteralInteger(2),
        LiteralInteger(3),
      ]);
      final right = ListExpression(element: [
        LiteralNull(),
        LiteralInteger(1),
        LiteralInteger(2),
        LiteralInteger(3),
      ]);
      final result = await Equivalent(
        operand: [left, right],
      ).execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "DateTimeEquivalentIsFalse": @2012-01-01 ~ @2012-01-01T12""",
        () async{
      final left = LiteralDateTime('2012-01-01');
      final right = LiteralDateTime('2012-01-01T12');
      final result = await Equivalent(
        operand: [left, right],
      ).execute({});
      expect(result, equals(FhirBoolean(false)));
    });
    test("""define "NullEquivalentIsTrue": null ~ null""", () async {
      final left = LiteralNull();
      final right = LiteralNull();
      final result = await Equivalent(
        operand: [left, right],
      ).execute({});
      expect(result, equals(FhirBoolean(true)));
    });
  });
}
