import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void roundTest() {
  group('Round', () {
    test("""define "IntegerRound": Round(1) // 1""", () async {
      final input = LiteralDecimal(1);
      final result = Round(operand: input);
      expect(await result.execute({}), FhirDecimal(1));
    });
    test("""define "DecimalRound": Round(3.14159, 3) // 3.142""", () async {
      final input = LiteralDecimal(3.14159);
      final precision = LiteralInteger(3);
      final result = Round(operand: input, precision: precision);
      expect(await result.execute({}), FhirDecimal(3.142));
    });
    test("""define "RoundIsNull": Round(null)""", () async {
      final input = LiteralNull();
      final result = Round(operand: input);
      expect(await result.execute({}), isNull);
    });
  });
}
