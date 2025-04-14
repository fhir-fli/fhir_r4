import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void greaterOrEqualTest() {
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
      final right = Add(operand: [
        LiteralInteger(2),
        LiteralInteger(2),
      ]);
      final greaterOrEqual = GreaterOrEqual(operand: [left, right]);
      final result = await greaterOrEqual.execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "LongGreaterOrEqualIsTrue": 4L >= (2L + 2L)""", () async {
      final left = LiteralLong(BigInt.from(4));
      final right = Add(operand: [
        LiteralLong(BigInt.from(2)),
        LiteralLong(BigInt.from(2)),
      ]);
      final greaterOrEqual = GreaterOrEqual(operand: [left, right]);
      final result = await greaterOrEqual.execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "DecimalGreaterOrEqualIsFalse": 3.5 >= (3.5 + 0.1)""", () async {
      final left = LiteralDecimal(3.5);
      final right = Add(operand: [
        LiteralDecimal(3.5),
        LiteralDecimal(0.1),
      ]);
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
}
