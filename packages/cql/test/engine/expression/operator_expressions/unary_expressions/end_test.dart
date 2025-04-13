import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void endTest() {
  group('End', () {
    test("""define "EndOfInterval": end of Interval[1, 5] // 5""", () {
      final interval =
          IntervalExpression(low: LiteralInteger(1), high: LiteralInteger(5));
      final end = End(operand: interval);
      final result = end.execute({});
      expect(result, equals(FhirInteger(5)));
    });
    test("""define "EndIsNull": end of (null as Interval<Integer>)""", () {
      final interval =
          As(operand: LiteralNull(), asType: QName.fromDataType('Interval'));
      final end = End(operand: interval);
      final result = end.execute({});
      expect(result, equals(null));
    });
  });
}
