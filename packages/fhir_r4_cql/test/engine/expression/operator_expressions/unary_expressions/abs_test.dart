import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:flutter_test/flutter_test.dart';
import 'package:ucum/ucum.dart';

void absTest() {
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
}
