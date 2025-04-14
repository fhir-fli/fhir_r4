import 'package:cql/engine/engine.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void overlapsAfterTest() {
  group('OverlapsAfter', () {
    test(
        """define "OverlapsAfterIsFalse": Interval[0, 4] overlaps after Interval[1, 4] // false""",
        () async {
      final left = LiteralIntegerInterval(
          low: LiteralInteger(0), high: LiteralInteger(4));
      final right = LiteralIntegerInterval(
          low: LiteralInteger(1), high: LiteralInteger(4));
      final result = OverlapsAfter(operand: [left, right]);
      expect(await result.execute({}), equals(FhirBoolean(false)));
    });
  });
}
