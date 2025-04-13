import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:flutter_test/flutter_test.dart';

void predecessorTest() {
  group('Predecessor', () {
    test("""define "IntegerPredecessor": predecessor of 100 // 99""", () {
      final input = LiteralInteger(100);
      final output = Predecessor(operand: input);
      expect(output.execute({}), equals(fhir.FhirInteger(99)));
    });
    test("""define "LongPredecessor": predecessor of 100L // 99L""", () {
      final input = LiteralLong(BigInt.from(100));
      final output = Predecessor(operand: input);
      expect(output.execute({}), equals(fhir.FhirInteger64.fromNum(99)));
    });
    test("""define "DecimalPredecessor": predecessor of 1.0 // 0.99999999""",
        () {
      final input = LiteralDecimal(1.0);
      final output = Predecessor(operand: input);
      expect(output.execute({}), equals(fhir.FhirDecimal(0.99999999)));
    });
    test(
        """define "DatePredecessor": predecessor of @2014-01-01 // @2013-12-31""",
        () {
      final input = LiteralDate('2014-01-01');
      final output = Predecessor(operand: input);
      expect(
          output.execute({}), equals(fhir.FhirDate.fromString('2013-12-31')));
    });
    test("""define "PredecessorIsNull": predecessor of (null as Quantity)""",
        () {
      final input = As(resultTypeName: 'Quantity', operand: LiteralNull());
      final output = Predecessor(operand: input);
      expect(output.execute({}), equals(null));
    });
  });
}
