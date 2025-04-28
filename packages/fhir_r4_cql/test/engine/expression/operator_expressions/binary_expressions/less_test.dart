import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void lessTest() {
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
        Add(operand: [LiteralInteger(2), LiteralInteger(2)]),
      ]);
      final less = Less(operand: [left, right]);
      final result = await less.execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "LongLessIsTrue": 4L < (2L + 2L + 2L)""", () async {
      final left = LiteralLong(BigInt.from(4));
      final right = Add(operand: [
        LiteralLong(BigInt.from(2)),
        Add(operand: [
          LiteralLong(BigInt.from(2)),
          LiteralLong(BigInt.from(2))
        ]),
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
}
