import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:test/test.dart';

void main() {
  // ───────────────────────────────────────────────────────────────────────────
  // As
  // ───────────────────────────────────────────────────────────────────────────
  group('As', () {
    test('define "AsNull": null as Integer // null', () async {
      final asOp =
          As(asType: QName.fromElmType('Integer'), operand: LiteralNull());
      expect(await asOp.execute({}), isNull);
    });
    test('define "IntegerAsInteger": 5 as Integer // 5', () async {
      final asOp =
          As(asType: QName.fromElmType('Integer'), operand: LiteralInteger(5));
      final result = await asOp.execute({});
      expect(result, FhirInteger(5));
    });
    test('define "IntegerAsString": 5 as String // null (wrong type)', () async {
      final asOp =
          As(asType: QName.fromElmType('String'), operand: LiteralInteger(5));
      final result = await asOp.execute({});
      // Non-strict As returns null when type doesn't match
      expect(result, isNull);
    });
    test('define "StringAsString": \'hello\' as String // \'hello\'', () async {
      final asOp = As(
          asType: QName.fromElmType('String'),
          operand: LiteralString('hello'));
      final result = await asOp.execute({});
      expect(result, 'hello');
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // Is
  // ───────────────────────────────────────────────────────────────────────────
  group('Is', () {
    test('define "IntegerIsInteger": 5 is Integer // true', () async {
      final isOp =
          Is(isType: QName.fromElmType('Integer'), operand: LiteralInteger(5));
      expect(await isOp.execute({}), FhirBoolean(true));
    });
    test('define "IntegerIsString": 5 is String // false', () async {
      final isOp =
          Is(isType: QName.fromElmType('String'), operand: LiteralInteger(5));
      expect(await isOp.execute({}), FhirBoolean(false));
    });
    test('define "StringIsString": \'hello\' is String // true', () async {
      final isOp = Is(
          isType: QName.fromElmType('String'),
          operand: LiteralString('hello'));
      expect(await isOp.execute({}), FhirBoolean(true));
    });
    test('define "NullIsAnything": null is Integer // false', () async {
      final isOp =
          Is(isType: QName.fromElmType('Integer'), operand: LiteralNull());
      expect(await isOp.execute({}), FhirBoolean(false));
    });
    test('define "BooleanIsBoolean": true is Boolean // true', () async {
      final isOp = Is(
          isType: QName.fromElmType('Boolean'),
          operand: LiteralBoolean(true));
      expect(await isOp.execute({}), FhirBoolean(true));
    });
    test('define "DecimalIsDecimal": 3.5 is Decimal // true', () async {
      final isOp =
          Is(isType: QName.fromElmType('Decimal'), operand: LiteralDecimal(3.5));
      expect(await isOp.execute({}), FhirBoolean(true));
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // ToBoolean
  // ───────────────────────────────────────────────────────────────────────────
  group('ToBoolean', () {
    test('define "TrueFromString": ToBoolean(\'true\') // true', () async {
      final toBoolean = ToBoolean(operand: LiteralString('true'));
      expect(await toBoolean.execute({}), FhirBoolean(true));
    });
    test('define "FalseFromString": ToBoolean(\'false\') // false', () async {
      final toBoolean = ToBoolean(operand: LiteralString('false'));
      expect(await toBoolean.execute({}), FhirBoolean(false));
    });
    test('define "TrueFromBoolean": ToBoolean(true) // true', () async {
      final toBoolean =
          ToBoolean(operand: LiteralBoolean(true));
      expect(await toBoolean.execute({}), FhirBoolean(true));
    });
    test('define "ToBooleanIsNull": ToBoolean(null)', () async {
      final toBoolean = ToBoolean(operand: LiteralNull());
      expect(await toBoolean.execute({}), isNull);
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // ToString
  // ───────────────────────────────────────────────────────────────────────────
  group('ToString', () {
    test('define "IntegerToString": ToString(5) // \'5\'', () async {
      final toString = ToString(operand: LiteralInteger(5));
      expect(await toString.execute({}), FhirString('5'));
    });
    test('define "BooleanToString": ToString(true) // \'true\'', () async {
      final toString =
          ToString(operand: LiteralBoolean(true));
      expect(await toString.execute({}), FhirString('true'));
    });
    test('define "DecimalToString": ToString(3.5) // \'3.5\'', () async {
      final toString = ToString(operand: LiteralDecimal(3.5));
      final result = await toString.execute({});
      expect(result, isA<FhirString>());
      expect((result as FhirString).primitiveValue, contains('3.5'));
    });
    test('define "ToStringIsNull": ToString(null)', () async {
      final toString = ToString(operand: LiteralNull());
      expect(await toString.execute({}), isNull);
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // ToInteger
  // ───────────────────────────────────────────────────────────────────────────
  group('ToInteger', () {
    test('define "StringToInteger": ToInteger(\'5\') // 5', () async {
      final toInteger = ToInteger(operand: LiteralString('5'));
      expect(await toInteger.execute({}), FhirInteger(5));
    });
    test('define "IntegerToInteger": ToInteger(5) // 5', () async {
      final toInteger = ToInteger(operand: LiteralInteger(5));
      expect(await toInteger.execute({}), FhirInteger(5));
    });
    test('define "BooleanTrueToInteger": ToInteger(true) // 1', () async {
      final toInteger = ToInteger(operand: LiteralBoolean(true));
      expect(await toInteger.execute({}), FhirInteger(1));
    });
    test('define "BooleanFalseToInteger": ToInteger(false) // 0', () async {
      final toInteger = ToInteger(operand: LiteralBoolean(false));
      expect(await toInteger.execute({}), FhirInteger(0));
    });
    test('define "ToIntegerIsNull": ToInteger(null)', () async {
      final toInteger = ToInteger(operand: LiteralNull());
      expect(await toInteger.execute({}), isNull);
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // ToDecimal
  // ───────────────────────────────────────────────────────────────────────────
  group('ToDecimal', () {
    test('define "StringToDecimal": ToDecimal(\'3.5\') // 3.5', () async {
      final toDecimal = ToDecimal(operand: LiteralString('3.5'));
      expect(await toDecimal.execute({}), FhirDecimal(3.5));
    });
    test('define "IntegerToDecimal": ToDecimal(5) // 5.0', () async {
      final toDecimal = ToDecimal(operand: LiteralInteger(5));
      expect(await toDecimal.execute({}), FhirDecimal(5));
    });
    test('define "BooleanTrueToDecimal": ToDecimal(true) // 1.0', () async {
      final toDecimal = ToDecimal(operand: LiteralBoolean(true));
      expect(await toDecimal.execute({}), FhirDecimal(1.0));
    });
    test('define "ToDecimalIsNull": ToDecimal(null)', () async {
      final toDecimal = ToDecimal(operand: LiteralNull());
      expect(await toDecimal.execute({}), isNull);
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // IsTrue / IsFalse
  // ───────────────────────────────────────────────────────────────────────────
  group('IsTrue', () {
    test('define "IsTrueTrue": IsTrue(true)', () async {
      final isTrue = IsTrue(operand: LiteralBoolean(true));
      expect(await isTrue.execute({}), FhirBoolean(true));
    });
    test('define "IsTrueFalse": IsTrue(false)', () async {
      final isTrue = IsTrue(operand: LiteralBoolean(false));
      expect(await isTrue.execute({}), FhirBoolean(false));
    });
    test('define "IsTrueNull": IsTrue(null)', () async {
      final isTrue = IsTrue(operand: LiteralNull());
      expect(await isTrue.execute({}), FhirBoolean(false));
    });
  });

  group('IsFalse', () {
    test('define "IsFalseTrue": IsFalse(true)', () async {
      final isFalse = IsFalse(operand: LiteralBoolean(true));
      expect(await isFalse.execute({}), FhirBoolean(false));
    });
    test('define "IsFalseFalse": IsFalse(false)', () async {
      final isFalse = IsFalse(operand: LiteralBoolean(false));
      expect(await isFalse.execute({}), FhirBoolean(true));
    });
    test('define "IsFalseNull": IsFalse(null)', () async {
      final isFalse = IsFalse(operand: LiteralNull());
      expect(await isFalse.execute({}), FhirBoolean(false));
    });
  });
}
