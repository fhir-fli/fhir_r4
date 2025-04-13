import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:flutter_test/flutter_test.dart';
import 'package:ucum/ucum.dart';

void absTest() {
  group('Abs', () {
    test("""define "IntegerAbs": Abs(-5) // 5""", () {
      final input = LiteralInteger(-5);
      final result = Abs(operand: input);
      expect(result.execute({}), fhir.FhirInteger(5));
    });
    test("""define "IntegerAbsIsNull": Abs(null as Integer)""", () {
      final input =
          As(asType: QName.fromDataType('Integer'), operand: LiteralNull());
      final result = Abs(operand: input);
      expect(result.execute({}), isNull);
    });
    test("""define "LongAbs": Abs(-5000000L) // 5000000L""", () {
      final input = LiteralLong(BigInt.from(-5000000));
      final result = Abs(operand: input);
      expect(result.execute({}), fhir.FhirInteger64.fromNum(5000000));
    });
    test("""define "DecimalAbs": Abs(-5.5) // 5.5""", () {
      final input = LiteralDecimal(-5.5);
      final result = Abs(operand: input);
      expect(result.execute({}), fhir.FhirDecimal(5.5));
    });
    test("""define "QuantityAbs": Abs(-5.5 'mg') // 5.5 'mg'""", () {
      final input = LiteralQuantity(LiteralDecimal(-5.5), unit: 'mg');
      final result = Abs(operand: input);
      expect(result.execute({}), ValidatedQuantity.fromString("5.5 'mg'"));
    });
  });
}
