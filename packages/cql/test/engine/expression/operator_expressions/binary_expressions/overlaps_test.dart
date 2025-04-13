import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void overlapsTest() {
  group('Overlaps', () {
    test(
        """define "OverlapsIsTrue": Interval[0, 4] overlaps Interval[1, 4] // true""",
        () {
      final left = LiteralIntegerInterval(
          low: LiteralInteger(0), high: LiteralInteger(4));
      final right = LiteralIntegerInterval(
          low: LiteralInteger(1), high: LiteralInteger(4));
      final result = Overlaps(operand: [left, right]);
      expect(result.execute({}), equals(FhirBoolean(true)));
    });
    test(
        """define "OverlapsIsNull": Interval[6, 10] overlaps (null as Interval<Integer>) // null""",
        () {
      final left = LiteralIntegerInterval(
          low: LiteralInteger(6), high: LiteralInteger(10));
      final right =
          As(operand: LiteralNull(), resultTypeName: 'Interval<Integer>');
      final result = Overlaps(operand: [left, right]);
      expect(result.execute({}), equals(null));
    });
  });
}
