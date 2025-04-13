import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void floorTest() {
  group('floor', () {
    test("""define "IntegerFloor": Floor(1) // 1""", () {
      final input = LiteralInteger(1);
      final result = Floor(operand: input);
      expect(result.execute({}), equals(FhirInteger(1)));
    });
    test("""define "DecimalFloor": Floor(2.1) // 2""", () {
      final input = LiteralDecimal(2.1);
      final result = Floor(operand: input);
      expect(result.execute({}), equals(FhirInteger(2)));
    });
    test("""define "DecimalFloor": Floor(-2.1) // -3""", () {
      final input = LiteralDecimal(-2.1);
      final result = Floor(operand: input);
      expect(result.execute({}), equals(FhirInteger(-3)));
    });

    test("""define "QuantityFloorIsNull": Floor(null as Decimal)""", () {
      final input = LiteralNull();
      final result = Floor(operand: input);
      expect(result.execute({}), equals(null));
    });
  });
}
