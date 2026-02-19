import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:test/test.dart';
import 'package:ucum/ucum.dart';

void main() {
  group('Abs', () {
    test("""define "IntegerAbs": Abs(-5) // 5""", () async {
      final input = LiteralInteger(-5);
      final result = Abs(operand: input);
      expect(await result.execute({}), fhir.FhirInteger(5));
    });
    test("""define "IntegerAbsIsNull": Abs(null as Integer)""", () async {
      final input =
          As(asType: QName.fromElmType('Integer'), operand: LiteralNull());
      final result = Abs(operand: input);
      expect(await result.execute({}), isNull);
    });
    test("""define "LongAbs": Abs(-5000000L) // 5000000L""", () async {
      final input = LiteralLong(BigInt.from(-5000000));
      final result = Abs(operand: input);
      expect(await result.execute({}), fhir.FhirInteger64.fromNum(5000000));
    });
    test("""define "DecimalAbs": Abs(-5.5) // 5.5""", () async {
      final input = LiteralDecimal(-5.5);
      final result = Abs(operand: input);
      expect(await result.execute({}), fhir.FhirDecimal(5.5));
    });
    test("""define "QuantityAbs": Abs(-5.5 'mg') // 5.5 'mg'""", () async {
      final input = LiteralQuantity(LiteralDecimal(-5.5), unit: 'mg');
      final result = Abs(operand: input);
      expect(
          await result.execute({}), ValidatedQuantity.fromString("5.5 'mg'"));
    });
  });

  group('Ceiling', () {
    test("""define "IntegerCeiling": Ceiling(1) // 1""", () async {
      final input = LiteralInteger(1);
      final result = Ceiling(operand: input);
      expect(await result.execute({}), equals(fhir.FhirInteger(1)));
    });
    test("""define "DecimalCeiling": Ceiling(1.1) // 2""", () async {
      final input = LiteralDecimal(1.1);
      final result = Ceiling(operand: input);
      expect(await result.execute({}), equals(fhir.FhirInteger(2)));
    });
    test("""define "QuantityCeilingIsNull": Ceiling(null as Decimal)""",
        () async {
      final input = LiteralNull();
      final result = Ceiling(operand: input);
      expect(await result.execute({}), equals(null));
    });
  });

  group('floor', () {
    test("""define "IntegerFloor": Floor(1) // 1""", () async {
      final input = LiteralInteger(1);
      final result = Floor(operand: input);
      expect(await result.execute({}), equals(fhir.FhirInteger(1)));
    });
    test("""define "DecimalFloor": Floor(2.1) // 2""", () async {
      final input = LiteralDecimal(2.1);
      final result = Floor(operand: input);
      expect(await result.execute({}), equals(fhir.FhirInteger(2)));
    });
    test("""define "DecimalFloor": Floor(-2.1) // -3""", () async {
      final input = LiteralDecimal(-2.1);
      final result = Floor(operand: input);
      expect(await result.execute({}), equals(fhir.FhirInteger(-3)));
    });
    test("""define "QuantityFloorIsNull": Floor(null as Decimal)""", () async {
      final input = LiteralNull();
      final result = Floor(operand: input);
      expect(await result.execute({}), equals(null));
    });
  });

  group('Truncate', () {
    test("""define "IntegerTruncate": Truncate(101) // 101""", () async {
      final input = LiteralInteger(101);
      final result = Truncate(operand: input);
      expect(await result.execute({}), equals(fhir.FhirInteger(101)));
    });
    test("""define "DecimalTruncate": Truncate(1.00000001) // 1""", () async {
      final input = LiteralDecimal(1.00000001);
      final result = Truncate(operand: input);
      expect(await result.execute({}), equals(fhir.FhirInteger(1)));
    });
    test("""define "DecimalTruncate": Truncate(1987.00000871) // 1""",
        () async {
      final input = LiteralDecimal(1987.00000871);
      final result = Truncate(operand: input);
      expect(await result.execute({}), equals(fhir.FhirInteger(1987)));
    });
    test("""define "TruncateIsNull": Truncate(null)""", () async {
      final input = LiteralNull();
      final result = Truncate(operand: input);
      expect(await result.execute({}), equals(null));
    });
  });

  group('Negate', () {
    test("""define "IntegerNegate": 3 // -3""", () async {
      final input = LiteralInteger(3);
      final result = Negate(operand: input);
      expect(await result.execute({}), fhir.FhirInteger(-3));
    });
    test("""define "LongNegate": 3L // -3L""", () async {
      final input = LiteralLong(BigInt.from(3));
      final result = Negate(operand: input);
      expect(await result.execute({}), fhir.FhirInteger64.fromNum(-3));
    });
    test("""define "DecimalNegate": -(-3.3) // 3.3""", () async {
      final input = LiteralDecimal(-3.3);
      final result = Negate(operand: input);
      expect(await result.execute({}), fhir.FhirDecimal(3.3));
    });
    test("""define "QuantityNegate": 3.3 'mg' // -3.3 'mg'""", () async {
      final input = LiteralQuantity(LiteralDecimal(3.3), unit: 'mg');
      final result = Negate(operand: input);
      expect(
          await result.execute({}), ValidatedQuantity.fromString("-3.3 'mg'"));
    });
    test("""define "NegateIsNull": -(null as Integer)""", () async {
      final input =
          As(asType: QName.fromElmType('Integer'), operand: LiteralNull());
      final result = Negate(operand: input);
      expect(await result.execute({}), isNull);
    });
  });

  group('Round', () {
    test("""define "IntegerRound": Round(1) // 1""", () async {
      final input = LiteralDecimal(1);
      final result = Round(operand: input);
      expect(await result.execute({}), fhir.FhirDecimal(1));
    });
    test("""define "DecimalRound": Round(3.14159, 3) // 3.142""", () async {
      final input = LiteralDecimal(3.14159);
      final precision = LiteralInteger(3);
      final result = Round(operand: input, precision: precision);
      expect(await result.execute({}), fhir.FhirDecimal(3.142));
    });
    test("""define "RoundIsNull": Round(null)""", () async {
      final input = LiteralNull();
      final result = Round(operand: input);
      expect(await result.execute({}), isNull);
    });
  });

  group('Predecessor', () {
    test("""define "IntegerPredecessor": predecessor of 100 // 99""", () async {
      final input = LiteralInteger(100);
      final output = Predecessor(operand: input);
      expect(await output.execute({}), equals(fhir.FhirInteger(99)));
    });
    test("""define "LongPredecessor": predecessor of 100L // 99L""", () async {
      final input = LiteralLong(BigInt.from(100));
      final output = Predecessor(operand: input);
      expect(await output.execute({}), equals(fhir.FhirInteger64.fromNum(99)));
    });
    test("""define "DecimalPredecessor": predecessor of 1.0 // 0.99999999""",
        () async {
      final input = LiteralDecimal(1.0);
      final output = Predecessor(operand: input);
      expect(await output.execute({}), equals(fhir.FhirDecimal(0.99999999)));
    });
    test(
        """define "DatePredecessor": predecessor of @2014-01-01 // @2013-12-31""",
        () async {
      final input = LiteralDate('2014-01-01');
      final output = Predecessor(operand: input);
      expect(await output.execute({}),
          equals(fhir.FhirDate.fromString('2013-12-31')));
    });
    test("""define "PredecessorIsNull": predecessor of (null as Quantity)""",
        () async {
      final input = As(resultTypeName: 'Quantity', operand: LiteralNull());
      final output = Predecessor(operand: input);
      expect(await output.execute({}), equals(null));
    });
  });

  group('Successor', () {
    test("""define "IntegerSuccessor": successor of 100 // 101""", () async {
      final input = LiteralInteger(100);
      final result = Successor(operand: input);
      expect(await result.execute({}), fhir.FhirInteger(101));
    });
    test("""define "LongSuccessor": successor of 100L // 101L""", () async {
      final input = LiteralLong(BigInt.from(100));
      final result = Successor(operand: input);
      expect(await result.execute({}), fhir.FhirInteger64.fromNum(101));
    });
    test("""define "DecimalSuccessor": successor of 1.0 // 1.00000001""",
        () async {
      final input = LiteralDecimal(1.0);
      final result = Successor(operand: input);
      expect(await result.execute({}), fhir.FhirDecimal(1.00000001));
    });
    test("""define "DateSuccessor": successor of @2014-01-01 // @2014-01-02""",
        () async {
      final input = LiteralDate('2014-01-01');
      final result = Successor(operand: input);
      expect(await result.execute({}), fhir.FhirDate.fromString('2014-01-02'));
    });
    test("""define "SuccessorIsNull": successor of (null as Quantity)""",
        () async {
      final input = As(resultTypeName: 'Quantity', operand: LiteralNull());
      final result = Successor(operand: input);
      expect(await result.execute({}), null);
    });
  });

  group('MinValue', () {
    test("""define "IntegerMinimum": minimum Integer // -2147483648""",
        () async {
      final QName valueType = QName.parse('Integer');
      final MinValue minValue = MinValue(valueType: valueType);
      expect(await minValue.execute({}), equals(fhir.FhirInteger(-2147483648)));
    });
    test("""define "LongMinimum": minimum Long // -9223372036854775808""",
        () async {
      final QName valueType = QName.parse('Long');
      final MinValue minValue = MinValue(valueType: valueType);
      expect(await minValue.execute({}),
          equals(fhir.FhirInteger64.fromString('-9223372036854775808')));
    });
    test(
        """define "DateTimeMinimum": minimum DateTime // @0001-01-01T00:00:00.000""",
        () async {
      final QName valueType = QName.parse('DateTime');
      final MinValue minValue = MinValue(valueType: valueType);
      final minValueExecute = await minValue.execute({});
      print(
          'minValueExecute: $minValueExecute (${minValueExecute.runtimeType})');
      final fromString =
          fhir.FhirDateTime.fromString('0001-01-01T00:00:00.000');
      print('fromString: $fromString (${fromString.runtimeType})');
      expect(minValueExecute, equals(fromString));
    });
  });

  group('MaxValue', () {
    test("""define "IntegerMaximum": maximum Integer // 2147483647""",
        () async {
      final QName valueType = QName.parse('Integer');
      final maxValue = MaxValue(valueType: valueType);
      expect(await maxValue.execute({}), equals(fhir.FhirInteger(2147483647)));
    });
    test("""define "LongMaximum": maximum Long // 9223372036854775807""",
        () async {
      final QName valueType = QName.parse('Long');
      final maxValue = MaxValue(valueType: valueType);
      expect(await maxValue.execute({}),
          equals(fhir.FhirInteger64.fromString('9223372036854775807')));
    });
    test(
        """define "DateTimeMaximum": maximum DateTime // @9999-12-31T23:59:59.999""",
        () async {
      final QName valueType = QName.parse('DateTime');
      final maxValue = MaxValue(valueType: valueType);
      expect(await maxValue.execute({}),
          equals(fhir.FhirDateTime.fromString('9999-12-31T23:59:59.999')));
    });
  });
}
