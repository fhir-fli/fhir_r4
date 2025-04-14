import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void meetsAfterTest() {
  group('MeetsAfter', () {
    test(
        """define "MeetsAfterIsFalse": Interval[6, 10] meets after Interval[0, 7]""",
        () async {
      final low1 = LiteralInteger(6);
      final high1 = LiteralInteger(10);
      final interval1 = IntervalExpression(low: low1, high: high1);
      final low2 = LiteralInteger(0);
      final high2 = LiteralInteger(7);
      final interval2 = IntervalExpression(low: low2, high: high2);
      final meetsBefore = MeetsAfter(operand: [interval1, interval2]);
      final result = await meetsBefore.execute({});
      expect(result, FhirBoolean(false));
    });
  });
}
