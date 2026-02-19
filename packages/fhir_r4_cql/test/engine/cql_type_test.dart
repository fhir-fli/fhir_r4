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

  // ───────────────────────────────────────────────────────────────────────────
  // ToDate
  // ───────────────────────────────────────────────────────────────────────────
  group('ToDate', () {
    test('define "StringToDate": ToDate(\'2023-06-15\') // @2023-06-15',
        () async {
      final toDate = ToDate(operand: LiteralString('2023-06-15'));
      final result = await toDate.execute({});
      expect(result, FhirDate.fromString('2023-06-15'));
    });
    test('define "DateToDate": ToDate(@2023-06-15) // @2023-06-15', () async {
      final toDate = ToDate(operand: LiteralDate('2023-06-15'));
      final result = await toDate.execute({});
      expect(result, FhirDate.fromString('2023-06-15'));
    });
    test(
        'define "DateTimeToDate": ToDate(@2023-06-15T10:30:00) // @2023-06-15',
        () async {
      final toDate = ToDate(operand: LiteralDateTime('2023-06-15T10:30:00'));
      final result = await toDate.execute({});
      expect(result, FhirDate.fromString('2023-06-15'));
    });
    test('define "ToDateIsNull": ToDate(null)', () async {
      final toDate = ToDate(operand: LiteralNull());
      expect(await toDate.execute({}), isNull);
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // ToTime
  // ───────────────────────────────────────────────────────────────────────────
  group('ToTime', () {
    test('define "StringToTime": ToTime(\'14:30:00\') // @T14:30:00',
        () async {
      final toTime = ToTime(operand: LiteralString('14:30:00'));
      final result = await toTime.execute({});
      expect(result, FhirTime('14:30:00'));
    });
    test('define "StringWithTToTime": ToTime(\'T14:30:00\') // @T14:30:00',
        () async {
      final toTime = ToTime(operand: LiteralString('T14:30:00'));
      final result = await toTime.execute({});
      expect(result, FhirTime('14:30:00'));
    });
    test('define "TimeToTime": ToTime(@T10:00:00) // @T10:00:00', () async {
      final toTime = ToTime(operand: LiteralTime('@T10:00:00'));
      final result = await toTime.execute({});
      expect(result, FhirTime('10:00:00'));
    });
    test('define "ToTimeIsNull": ToTime(null)', () async {
      final toTime = ToTime(operand: LiteralNull());
      expect(await toTime.execute({}), isNull);
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // ToRatio
  // ───────────────────────────────────────────────────────────────────────────
  group('ToRatio', () {
    test(
        'define "StringToRatio": ToRatio(\'1.0 \'\'mg\'\':2.0 \'\'mg\'\'\')',
        () async {
      final toRatio = ToRatio(operand: LiteralString('1.0 \'mg\':2.0 \'mg\''));
      final result = await toRatio.execute({});
      expect(result, isNotNull);
    });
    test('define "ToRatioIsNull": ToRatio(null)', () async {
      final toRatio = ToRatio(operand: LiteralNull());
      expect(await toRatio.execute({}), isNull);
    });
    test('define "ToRatioInvalid": ToRatio(\'not a ratio\')', () async {
      final toRatio = ToRatio(operand: LiteralString('not a ratio'));
      expect(await toRatio.execute({}), isNull);
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // Convert
  // ───────────────────────────────────────────────────────────────────────────
  group('Convert', () {
    test('define "ConvertStringToInt": Convert(\'5\', Integer) // 5',
        () async {
      final convert = Convert(
        operand: LiteralString('5'),
        toType: QName(localPart: 'Integer'),
      );
      final result = await convert.execute({});
      expect(result, FhirInteger(5));
    });
    test('define "ConvertIntToString": Convert(5, String) // \'5\'', () async {
      final convert = Convert(
        operand: LiteralInteger(5),
        toType: QName(localPart: 'String'),
      );
      final result = await convert.execute({});
      expect(result, FhirString('5'));
    });
    test(
        'define "ConvertStringToBool": Convert(\'true\', Boolean) // true',
        () async {
      final convert = Convert(
        operand: LiteralString('true'),
        toType: QName(localPart: 'Boolean'),
      );
      final result = await convert.execute({});
      expect(result, FhirBoolean(true));
    });
    test(
        'define "ConvertStringToDecimal": Convert(\'3.5\', Decimal) // 3.5',
        () async {
      final convert = Convert(
        operand: LiteralString('3.5'),
        toType: QName(localPart: 'Decimal'),
      );
      final result = await convert.execute({});
      expect(result, FhirDecimal(3.5));
    });
    test('define "ConvertIsNull": Convert(null, Integer)', () async {
      final convert = Convert(
        operand: LiteralNull(),
        toType: QName(localPart: 'Integer'),
      );
      expect(await convert.execute({}), isNull);
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // CanConvert
  // ───────────────────────────────────────────────────────────────────────────
  group('CanConvert', () {
    test(
        'define "CanConvertTrue": CanConvert(\'5\', Integer) // true',
        () async {
      final canConvert = CanConvert(
        operand: LiteralString('5'),
        toType: QName(localPart: 'Integer'),
      );
      final result = await canConvert.execute({});
      expect(result, FhirBoolean(true));
    });
    test(
        'define "CanConvertFalse": CanConvert(\'hello\', Integer) // false',
        () async {
      final canConvert = CanConvert(
        operand: LiteralString('hello'),
        toType: QName(localPart: 'Integer'),
      );
      final result = await canConvert.execute({});
      expect(result, FhirBoolean(false));
    });
    test('define "CanConvertIsNull": CanConvert(null, Integer)', () async {
      final canConvert = CanConvert(
        operand: LiteralNull(),
        toType: QName(localPart: 'Integer'),
      );
      expect(await canConvert.execute({}), isNull);
    });
    test(
        'define "CanConvertStringToBoolean": CanConvert(\'true\', Boolean) // true',
        () async {
      final canConvert = CanConvert(
        operand: LiteralString('true'),
        toType: QName(localPart: 'Boolean'),
      );
      final result = await canConvert.execute({});
      expect(result, FhirBoolean(true));
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // ConvertsToBoolean
  // ───────────────────────────────────────────────────────────────────────────
  group('ConvertsToBoolean', () {
    test('define "ConvertsToBooleanTrue": ConvertsToBoolean(\'true\') // true',
        () async {
      final op = ConvertsToBoolean(operand: LiteralString('true'));
      expect(await op.execute({}), FhirBoolean(true));
    });
    test('define "ConvertsToBooleanFalse": ConvertsToBoolean(\'xyz\') // false',
        () async {
      final op = ConvertsToBoolean(operand: LiteralString('xyz'));
      expect(await op.execute({}), FhirBoolean(false));
    });
    test('define "ConvertsToBooleanNull": ConvertsToBoolean(null) // null',
        () async {
      final op = ConvertsToBoolean(operand: LiteralNull());
      expect(await op.execute({}), isNull);
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // ConvertsToDate
  // ───────────────────────────────────────────────────────────────────────────
  group('ConvertsToDate', () {
    test(
        'define "ConvertsToDateTrue": ConvertsToDate(\'2023-01-15\') // true',
        () async {
      final op = ConvertsToDate(operand: LiteralString('2023-01-15'));
      expect(await op.execute({}), FhirBoolean(true));
    });
    test(
        'define "ConvertsToDateFalse": ConvertsToDate(5) // false',
        () async {
      final op = ConvertsToDate(operand: LiteralInteger(5));
      expect(await op.execute({}), FhirBoolean(false));
    });
    test('define "ConvertsToDateNull": ConvertsToDate(null) // null', () async {
      final op = ConvertsToDate(operand: LiteralNull());
      expect(await op.execute({}), isNull);
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // ConvertsToDateTime
  // ───────────────────────────────────────────────────────────────────────────
  group('ConvertsToDateTime', () {
    test(
        'define "ConvertsToDateTimeTrue": ConvertsToDateTime(\'2023-01-15T10:30:00\') // true',
        () async {
      final op =
          ConvertsToDateTime(operand: LiteralString('2023-01-15T10:30:00'));
      expect(await op.execute({}), FhirBoolean(true));
    });
    test(
        'define "ConvertsToDateTimeFalse": ConvertsToDateTime(5) // false',
        () async {
      final op = ConvertsToDateTime(operand: LiteralInteger(5));
      expect(await op.execute({}), FhirBoolean(false));
    });
    test('define "ConvertsToDateTimeNull": ConvertsToDateTime(null) // null',
        () async {
      final op = ConvertsToDateTime(operand: LiteralNull());
      expect(await op.execute({}), isNull);
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // ConvertsToDecimal
  // ───────────────────────────────────────────────────────────────────────────
  group('ConvertsToDecimal', () {
    test('define "ConvertsToDecimalTrue": ConvertsToDecimal(\'3.5\') // true',
        () async {
      final op = ConvertsToDecimal(operand: LiteralString('3.5'));
      expect(await op.execute({}), FhirBoolean(true));
    });
    test(
        'define "ConvertsToDecimalFalse": ConvertsToDecimal(\'abc\') // false',
        () async {
      final op = ConvertsToDecimal(operand: LiteralString('abc'));
      expect(await op.execute({}), FhirBoolean(false));
    });
    test('define "ConvertsToDecimalNull": ConvertsToDecimal(null) // null',
        () async {
      final op = ConvertsToDecimal(operand: LiteralNull());
      expect(await op.execute({}), isNull);
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // ConvertsToInteger
  // ───────────────────────────────────────────────────────────────────────────
  group('ConvertsToInteger', () {
    test('define "ConvertsToIntegerTrue": ConvertsToInteger(\'42\') // true',
        () async {
      final op = ConvertsToInteger(operand: LiteralString('42'));
      expect(await op.execute({}), FhirBoolean(true));
    });
    test(
        'define "ConvertsToIntegerFalse": ConvertsToInteger(\'abc\') // false',
        () async {
      final op = ConvertsToInteger(operand: LiteralString('abc'));
      expect(await op.execute({}), FhirBoolean(false));
    });
    test('define "ConvertsToIntegerNull": ConvertsToInteger(null) // null',
        () async {
      final op = ConvertsToInteger(operand: LiteralNull());
      expect(await op.execute({}), isNull);
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // ConvertsToLong
  // ───────────────────────────────────────────────────────────────────────────
  group('ConvertsToLong', () {
    test('define "ConvertsToLongTrue": ConvertsToLong(\'12345\') // true',
        () async {
      final op = ConvertsToLong(operand: LiteralString('12345'));
      expect(await op.execute({}), FhirBoolean(true));
    });
    test('define "ConvertsToLongFalse": ConvertsToLong(\'abc\') // false',
        () async {
      final op = ConvertsToLong(operand: LiteralString('abc'));
      expect(await op.execute({}), FhirBoolean(false));
    });
    test('define "ConvertsToLongNull": ConvertsToLong(null) // null', () async {
      final op = ConvertsToLong(operand: LiteralNull());
      expect(await op.execute({}), isNull);
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // ConvertsToQuantity
  // ───────────────────────────────────────────────────────────────────────────
  group('ConvertsToQuantity', () {
    test(
        'define "ConvertsToQuantityTrue": ConvertsToQuantity(5) // true',
        () async {
      final op = ConvertsToQuantity(operand: LiteralInteger(5));
      expect(await op.execute({}), FhirBoolean(true));
    });
    test(
        'define "ConvertsToQuantityFalse": ConvertsToQuantity(true) // false',
        () async {
      final op = ConvertsToQuantity(operand: LiteralBoolean(true));
      expect(await op.execute({}), FhirBoolean(false));
    });
    test('define "ConvertsToQuantityNull": ConvertsToQuantity(null) // null',
        () async {
      final op = ConvertsToQuantity(operand: LiteralNull());
      expect(await op.execute({}), isNull);
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // ConvertsToRatio
  // ───────────────────────────────────────────────────────────────────────────
  group('ConvertsToRatio', () {
    test(
        'define "ConvertsToRatioTrue": ConvertsToRatio(\'1.0 \'\'mg\'\':2.0 \'\'mg\'\'\') // true',
        () async {
      final op =
          ConvertsToRatio(operand: LiteralString('1.0 \'mg\':2.0 \'mg\''));
      expect(await op.execute({}), FhirBoolean(true));
    });
    test(
        'define "ConvertsToRatioFalse": ConvertsToRatio(\'abc\') // false',
        () async {
      final op = ConvertsToRatio(operand: LiteralString('abc'));
      expect(await op.execute({}), FhirBoolean(false));
    });
    test('define "ConvertsToRatioNull": ConvertsToRatio(null) // null',
        () async {
      final op = ConvertsToRatio(operand: LiteralNull());
      expect(await op.execute({}), isNull);
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // ConvertsToString
  // ───────────────────────────────────────────────────────────────────────────
  group('ConvertsToString', () {
    test('define "ConvertsToStringTrue": ConvertsToString(5) // true',
        () async {
      final op = ConvertsToString(operand: LiteralInteger(5));
      expect(await op.execute({}), FhirBoolean(true));
    });
    test(
        'define "ConvertsToStringAlsoTrue": ConvertsToString(true) // true',
        () async {
      final op = ConvertsToString(operand: LiteralBoolean(true));
      expect(await op.execute({}), FhirBoolean(true));
    });
    test('define "ConvertsToStringNull": ConvertsToString(null) // null',
        () async {
      final op = ConvertsToString(operand: LiteralNull());
      expect(await op.execute({}), isNull);
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // ConvertsToTime
  // ───────────────────────────────────────────────────────────────────────────
  group('ConvertsToTime', () {
    test(
        'define "ConvertsToTimeTrue": ConvertsToTime(\'14:30:00\') // true',
        () async {
      final op = ConvertsToTime(operand: LiteralString('14:30:00'));
      expect(await op.execute({}), FhirBoolean(true));
    });
    test(
        'define "ConvertsToTimeFalse": ConvertsToTime(5) // false',
        () async {
      final op = ConvertsToTime(operand: LiteralInteger(5));
      expect(await op.execute({}), FhirBoolean(false));
    });
    test('define "ConvertsToTimeNull": ConvertsToTime(null) // null', () async {
      final op = ConvertsToTime(operand: LiteralNull());
      expect(await op.execute({}), isNull);
    });
  });
}
