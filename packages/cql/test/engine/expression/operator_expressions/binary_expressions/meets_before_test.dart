import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void meetsBeforeTest() {
  group('MeetsBefore', () {
    test(
        """define "MeetsBeforeIsTrue": Interval[-5, -1] meets before Interval[0, 5]""",
        () async {
      final low1 = LiteralInteger(-5);
      final high1 = LiteralInteger(-1);
      final interval1 = IntervalExpression(low: low1, high: high1);
      final low2 = LiteralInteger(0);
      final high2 = LiteralInteger(5);
      final interval2 = IntervalExpression(low: low2, high: high2);
      final meetsBefore = MeetsBefore(operand: [interval1, interval2]);
      final result = await meetsBefore.execute({});
      expect(result, FhirBoolean(true));
    });
  });
}
