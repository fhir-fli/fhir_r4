import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void truncateTest() {
  group('Truncate', () {
    test("""define "IntegerTruncate": Truncate(101) // 101""", () {
      final input = LiteralInteger(101);
      final result = Truncate(operand: input);
      expect(result.execute({}), equals(FhirInteger(101)));
    });
    test("""define "DecimalTruncate": Truncate(1.00000001) // 1""", () {
      final input = LiteralDecimal(1.00000001);
      final result = Truncate(operand: input);
      expect(result.execute({}), equals(FhirInteger(1)));
    });

    test("""define "DecimalTruncate": Truncate(1987.00000871) // 1""", () {
      final input = LiteralDecimal(1987.00000871);
      final result = Truncate(operand: input);
      expect(result.execute({}), equals(FhirInteger(1987)));
    });
    test("""define "TruncateIsNull": Truncate(null)""", () {
      final input = LiteralNull();
      final result = Truncate(operand: input);
      expect(result.execute({}), equals(null));
    });
  });
}
