import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:flutter_test/flutter_test.dart';
import 'package:ucum/ucum.dart';

void negateTest() {
  group('Negate', () {
    test("""define "IntegerNegate": 3 // -3""", () {
      final input = LiteralInteger(3);
      final result = Negate(operand: input);
      expect(result.execute({}), fhir.FhirInteger(-3));
    });
    test("""define "LongNegate": 3L // -3L""", () {
      final input = LiteralLong(BigInt.from(3));
      final result = Negate(operand: input);
      expect(result.execute({}), fhir.FhirInteger64.fromNum(-3));
    });
    test("""define "DecimalNegate": -(-3.3) // 3.3""", () {
      final input = LiteralDecimal(-3.3);
      final result = Negate(operand: input);
      expect(result.execute({}), fhir.FhirDecimal(3.3));
    });
    test("""define "QuantityNegate": 3.3 'mg' // -3.3 'mg'""", () {
      final input = LiteralQuantity(LiteralDecimal(3.3), unit: 'mg');
      final result = Negate(operand: input);
      expect(result.execute({}), ValidatedQuantity.fromString("-3.3 'mg'"));
    });
    test("""define "NegateIsNull": -(null as Integer)""", () {
      final input =
          As(asType: QName.fromDataType('Integer'), operand: LiteralNull());
      final result = Negate(operand: input);
      expect(result.execute({}), isNull);
    });
  });
}
