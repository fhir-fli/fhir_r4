import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void ceilingTest() {
  group('Ceiling', () {
    test("""define "IntegerCeiling": Ceiling(1) // 1""", () {
      final input = LiteralInteger(1);
      final result = Ceiling(operand: input);
      expect(result.execute({}), equals(FhirInteger(1)));
    });
    test("""define "DecimalCeiling": Ceiling(1.1) // 2""", () {
      final input = LiteralDecimal(1.1);
      final result = Ceiling(operand: input);
      expect(result.execute({}), equals(FhirInteger(2)));
    });
    test("""define "QuantityCeilingIsNull": Ceiling(null as Decimal)""", () {
      final input = LiteralNull();
      final result = Ceiling(operand: input);
      expect(result.execute({}), equals(null));
    });
  });
}
