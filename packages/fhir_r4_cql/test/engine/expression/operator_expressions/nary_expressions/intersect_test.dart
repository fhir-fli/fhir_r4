import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void intersectTest() {
  group('Intersect', () {
    test(
        """define "Intersect": Interval[1, 5] intersect Interval[3, 7] // Interval[3, 5]""",
        () async {
      final left = LiteralIntegerInterval(
        low: LiteralInteger(1),
        lowClosed: LiteralBoolean(true),
        high: LiteralInteger(5),
        highClosed: LiteralBoolean(true),
      );
      final right = LiteralIntegerInterval(
        low: LiteralInteger(3),
        lowClosed: LiteralBoolean(true),
        high: LiteralInteger(7),
        highClosed: LiteralBoolean(true),
      );
      final result = Intersect(operand: [left, right]);
      expect(
          await result.execute({}),
          equals(CqlInterval<FhirInteger>(
            low: FhirInteger(3),
            lowClosed: true,
            high: FhirInteger(5),
            highClosed: true,
          )));
    });

    test(
        """define "IntersectIsNull": Interval[3, 5] intersect (null as Interval<Integer>)""",
        () async {
      final left = LiteralIntegerInterval(
        low: LiteralInteger(3),
        lowClosed: LiteralBoolean(true),
        high: LiteralInteger(5),
        highClosed: LiteralBoolean(true),
      );
      final right =
          As(operand: LiteralNull(), resultTypeName: 'Interval<Integer>');
      final result = Intersect(operand: [left, right]);
      expect(await result.execute({}), equals(null));
    });
  });
}
