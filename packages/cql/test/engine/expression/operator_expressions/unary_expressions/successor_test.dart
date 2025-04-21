import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:flutter_test/flutter_test.dart';

void successorTest() {
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
}
