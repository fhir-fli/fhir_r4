import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void overlapsBeforeTest() {
  group('OverlapsAfter', () {
    test(
        """define "OverlapsBeforeIsTrue": Interval[0, 4] overlaps before Interval[1, 4] // true""",
        () async {
      final left = LiteralIntegerInterval(
          low: LiteralInteger(0), high: LiteralInteger(4));
      final right = LiteralIntegerInterval(
          low: LiteralInteger(1), high: LiteralInteger(4));
      final result = OverlapsBefore(operand: [left, right]);
      expect(await result.execute({}), equals(FhirBoolean(true)));
    });
  });
}
