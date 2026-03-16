import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:test/test.dart';
import 'package:ucum/ucum.dart';

void main() {
  // ───────────────────────────────────────────────────────────────────────────
  // Add
  // ───────────────────────────────────────────────────────────────────────────
  group('Add', () {
    test('define "IntegerAdd": 2 + 2 // 4', () async {
      final add = Add(operand: [LiteralInteger(2), LiteralInteger(2)]);
      expect(await add.execute({}), fhir.FhirInteger(4));
    });
    test('define "LongAdd": 25L + 5L // 30L', () async {
      final add = Add(
          operand: [LiteralLong(BigInt.from(25)), LiteralLong(BigInt.from(5))]);
      expect(await add.execute({}), fhir.FhirInteger64.fromNum(30));
    });
    test('define "DecimalAdd": 2.5 + 5.0 // 7.5', () async {
      final add = Add(operand: [LiteralDecimal(2.5), LiteralDecimal(5.0)]);
      expect(await add.execute({}), fhir.FhirDecimal(7.5));
    });
    test('define "QuantityAdd": -5.5 \'mg\' + 2 \'mg\' // -3.5 \'mg\'',
        () async {
      final add = Add(operand: [
        LiteralQuantity(LiteralDecimal(-5.5), unit: 'mg'),
        LiteralQuantity(LiteralDecimal(2), unit: 'mg'),
      ]);
      expect(await add.execute({}), ValidatedQuantity.fromString("-3.5 'mg'"));
    });
    test('define "IntegerAddIsNull": 2 + null', () async {
      final add = Add(operand: [LiteralInteger(2), LiteralNull()]);
      expect(await add.execute({}), isNull);
    });
    test('define "NullAddInteger": null + 2', () async {
      final add = Add(operand: [LiteralNull(), LiteralInteger(2)]);
      expect(await add.execute({}), isNull);
    });
    test('define "MixedIntDecimalAdd": 2 + 3.5 // 5.5', () async {
      final add = Add(operand: [LiteralInteger(2), LiteralDecimal(3.5)]);
      expect(await add.execute({}), fhir.FhirDecimal(5.5));
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // Subtract
  // ───────────────────────────────────────────────────────────────────────────
  group('Subtract', () {
    test('define "IntegerSubtract": 2 - 1 // 1', () async {
      final sub = Subtract(operand: [LiteralInteger(2), LiteralInteger(1)]);
      expect(await sub.execute({}), fhir.FhirInteger(1));
    });
    test('define "LongSubtract": 25L - 5L // 20L', () async {
      final sub = Subtract(
          operand: [LiteralLong(BigInt.from(25)), LiteralLong(BigInt.from(5))]);
      expect(await sub.execute({}), fhir.FhirInteger64.fromNum(20));
    });
    test('define "DecimalSubtract": 3.14 - 3.12 // 0.02', () async {
      final sub =
          Subtract(operand: [LiteralDecimal(3.14), LiteralDecimal(3.12)]);
      final result = await sub.execute({});
      expect(result, isA<fhir.FhirDecimal>());
      expect((result as fhir.FhirDecimal).valueNum!, closeTo(0.02, 0.0001));
    });
    test('define "QuantitySubtract": 3.14 \'mg\' - 3.12 \'mg\' // 0.02 \'mg\'',
        () async {
      final sub = Subtract(operand: [
        LiteralQuantity(LiteralDecimal(3.14), unit: 'mg'),
        LiteralQuantity(LiteralDecimal(3.12), unit: 'mg'),
      ]);
      final result = await sub.execute({});
      expect(result, isA<ValidatedQuantity>());
    });
    test('define "SubtractIsNull": 3 - null', () async {
      final sub = Subtract(operand: [LiteralInteger(3), LiteralNull()]);
      expect(await sub.execute({}), isNull);
    });
    test('define "NullSubtract": null - 3', () async {
      final sub = Subtract(operand: [LiteralNull(), LiteralInteger(3)]);
      expect(await sub.execute({}), isNull);
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // Multiply
  // ───────────────────────────────────────────────────────────────────────────
  group('Multiply', () {
    test('define "IntegerMultiply": 2 * 3 // 6', () async {
      final mul = Multiply(operand: [LiteralInteger(2), LiteralInteger(3)]);
      expect(await mul.execute({}), fhir.FhirInteger(6));
    });
    test('define "LongMultiply": 5L * 3L // 15L', () async {
      final mul = Multiply(
          operand: [LiteralLong(BigInt.from(5)), LiteralLong(BigInt.from(3))]);
      expect(await mul.execute({}), fhir.FhirInteger64.fromNum(15));
    });
    test('define "DecimalMultiply": 2.5 * 4.0 // 10.0', () async {
      final mul = Multiply(operand: [LiteralDecimal(2.5), LiteralDecimal(4.0)]);
      expect(await mul.execute({}), fhir.FhirDecimal(10.0));
    });
    test('define "MultiplyIsNull": 3 * null', () async {
      final mul = Multiply(operand: [LiteralInteger(3), LiteralNull()]);
      expect(await mul.execute({}), isNull);
    });
    test('define "MixedIntDecimalMultiply": 2 * 3.5 // 7.0', () async {
      final mul = Multiply(operand: [LiteralInteger(2), LiteralDecimal(3.5)]);
      expect(await mul.execute({}), fhir.FhirDecimal(7.0));
    });
    test('define "MultiplyByZero": 5 * 0 // 0', () async {
      final mul = Multiply(operand: [LiteralInteger(5), LiteralInteger(0)]);
      expect(await mul.execute({}), fhir.FhirInteger(0));
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // Divide
  // ───────────────────────────────────────────────────────────────────────────
  group('Divide', () {
    test('define "IntegerDivide": 4.0 / 2 // 2.0', () async {
      final div = Divide(operand: [LiteralDecimal(4.0), LiteralInteger(2)]);
      expect(await div.execute({}), fhir.FhirDecimal(2.0));
    });
    test('define "DecimalDivide": 9.9 / 3.0 // 3.3', () async {
      final div = Divide(operand: [LiteralDecimal(9.9), LiteralDecimal(3.0)]);
      final result = await div.execute({});
      expect(result, isA<fhir.FhirDecimal>());
      expect((result as fhir.FhirDecimal).valueNum!, closeTo(3.3, 0.0001));
    });
    test('define "DivideIsNull": 2.2 / null', () async {
      final div = Divide(operand: [LiteralDecimal(2.2), LiteralNull()]);
      expect(await div.execute({}), isNull);
    });
    test('define "IntegerIntegerDivide": 10 / 4 // 2.5', () async {
      final div = Divide(operand: [LiteralInteger(10), LiteralInteger(4)]);
      final result = await div.execute({});
      expect(result, isA<fhir.FhirDecimal>());
      expect((result as fhir.FhirDecimal).valueNum!, closeTo(2.5, 0.0001));
    });
    test('define "NegativeDivide": -10.0 / 3.0', () async {
      final div = Divide(operand: [LiteralDecimal(-10.0), LiteralDecimal(3.0)]);
      final result = await div.execute({});
      expect(result, isA<fhir.FhirDecimal>());
      expect((result as fhir.FhirDecimal).valueNum!, closeTo(-3.33333, 0.001));
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // TruncatedDivide (div)
  // ───────────────────────────────────────────────────────────────────────────
  group('TruncatedDivide', () {
    test('define "IntegerTruncatedDivide": 10 div 3 // 3', () async {
      final div =
          TruncatedDivide(operand: [LiteralInteger(10), LiteralInteger(3)]);
      expect(await div.execute({}), fhir.FhirInteger(3));
    });
    test('define "DecimalTruncatedDivide": 10.1 div 3.1', () async {
      final div =
          TruncatedDivide(operand: [LiteralDecimal(10.1), LiteralDecimal(3.1)]);
      final result = await div.execute({});
      expect(result, isA<fhir.FhirDecimal>());
    });
    test('define "TruncatedDivideIsNull": 10 div null', () async {
      final div = TruncatedDivide(operand: [LiteralInteger(10), LiteralNull()]);
      expect(await div.execute({}), isNull);
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // Modulo (mod)
  // ───────────────────────────────────────────────────────────────────────────
  group('Modulo', () {
    test('define "IntegerModulo": 10 mod 3 // 1', () async {
      final mod = Modulo(operand: [LiteralInteger(10), LiteralInteger(3)]);
      expect(await mod.execute({}), fhir.FhirInteger(1));
    });
    test('define "DecimalModulo": 2.5 mod 2.0 // 0.5', () async {
      final mod = Modulo(operand: [LiteralDecimal(2.5), LiteralDecimal(2.0)]);
      final result = await mod.execute({});
      expect(result, isA<fhir.FhirDecimal>());
      expect((result as fhir.FhirDecimal).valueNum!, closeTo(0.5, 0.0001));
    });
    test('define "ModuloIsNull": 10 mod null', () async {
      final mod = Modulo(operand: [LiteralInteger(10), LiteralNull()]);
      expect(await mod.execute({}), isNull);
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // Power
  // ───────────────────────────────────────────────────────────────────────────
  group('Power', () {
    test('define "IntegerPower": 2 ^ 3 // 8', () async {
      final pow = Power(operand: [LiteralInteger(2), LiteralInteger(3)]);
      expect(await pow.execute({}), fhir.FhirInteger(8));
    });
    test('define "DecimalPower": 2.5 ^ 2.0 // 6.25', () async {
      final pow = Power(operand: [LiteralDecimal(2.5), LiteralDecimal(2.0)]);
      final result = await pow.execute({});
      expect(result, isA<fhir.FhirDecimal>());
      expect((result as fhir.FhirDecimal).valueNum!, closeTo(6.25, 0.0001));
    });
    test('define "PowerIsNull": 2 ^ null', () async {
      final pow = Power(operand: [LiteralInteger(2), LiteralNull()]);
      expect(await pow.execute({}), isNull);
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // Equal
  // ───────────────────────────────────────────────────────────────────────────
  group('Equal', () {
    test('define "IntegerEqualIsTrue": 4 = (2 + 2)', () async {
      final equal = Equal(operand: [LiteralInteger(4), LiteralInteger(4)]);
      expect(await equal.execute({}), fhir.FhirBoolean(true));
    });
    test('define "IntegerEqualIsFalse": 4 = 5', () async {
      final equal = Equal(operand: [LiteralInteger(4), LiteralInteger(5)]);
      expect(await equal.execute({}), fhir.FhirBoolean(false));
    });
    test('define "LongEqualIsTrue": 4L = 4L', () async {
      final equal = Equal(
          operand: [LiteralLong(BigInt.from(4)), LiteralLong(BigInt.from(4))]);
      expect(await equal.execute({}), fhir.FhirBoolean(true));
    });
    test('define "DecimalEqualIsTrue": 3.5 = 3.5', () async {
      final equal = Equal(operand: [LiteralDecimal(3.5), LiteralDecimal(3.5)]);
      expect(await equal.execute({}), fhir.FhirBoolean(true));
    });
    test('define "DecimalEqualIsFalse": 3.5 = 3.4', () async {
      final equal = Equal(operand: [LiteralDecimal(3.5), LiteralDecimal(3.4)]);
      expect(await equal.execute({}), fhir.FhirBoolean(false));
    });
    test('define "StringEqualIsTrue": \'hello\' = \'hello\'', () async {
      final equal =
          Equal(operand: [LiteralString('hello'), LiteralString('hello')]);
      expect(await equal.execute({}), fhir.FhirBoolean(true));
    });
    test('define "StringEqualIsFalse": \'John Doe\' = \'john doe\'', () async {
      final equal = Equal(
          operand: [LiteralString('John Doe'), LiteralString('john doe')]);
      expect(await equal.execute({}), fhir.FhirBoolean(false));
    });
    test('define "NullEqualIsNull": null = null', () async {
      final equal = Equal(operand: [LiteralNull(), LiteralNull()]);
      expect(await equal.execute({}), isNull);
    });
    test('define "IntegerNullIsNull": 4 = null', () async {
      final equal = Equal(operand: [LiteralInteger(4), LiteralNull()]);
      expect(await equal.execute({}), isNull);
    });
    test('define "DateTimeEqualIsTrue": @2012-01-01 = @2012-01-01', () async {
      final equal = Equal(operand: [
        LiteralDateTime('2012-01-01'),
        LiteralDateTime('2012-01-01')
      ]);
      expect(await equal.execute({}), fhir.FhirBoolean(true));
    });
    test('define "DateTimeEqualIsNull": @2012-01-01 = @2012-01-01T12',
        () async {
      final equal = Equal(operand: [
        LiteralDateTime('2012-01-01'),
        LiteralDateTime('2012-01-01T12')
      ]);
      expect(await equal.execute({}), isNull);
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // NotEqual
  // ───────────────────────────────────────────────────────────────────────────
  group('NotEqual', () {
    test('define "IntegerNotEqualIsTrue": 4 != 5', () async {
      final ne = NotEqual(operand: [LiteralInteger(4), LiteralInteger(5)]);
      expect(await ne.execute({}), fhir.FhirBoolean(true));
    });
    test('define "IntegerNotEqualIsFalse": 4 != 4', () async {
      final ne = NotEqual(operand: [LiteralInteger(4), LiteralInteger(4)]);
      expect(await ne.execute({}), fhir.FhirBoolean(false));
    });
    test('define "StringNotEqualIsTrue": \'abc\' != \'xyz\'', () async {
      final ne =
          NotEqual(operand: [LiteralString('abc'), LiteralString('xyz')]);
      expect(await ne.execute({}), fhir.FhirBoolean(true));
    });
    test('define "NullNotEqualIsNull": null != null', () async {
      final ne = NotEqual(operand: [LiteralNull(), LiteralNull()]);
      expect(await ne.execute({}), isNull);
    });
    test('define "IntegerNullNotEqualIsNull": 4 != null', () async {
      final ne = NotEqual(operand: [LiteralInteger(4), LiteralNull()]);
      expect(await ne.execute({}), isNull);
    });
  });
}
