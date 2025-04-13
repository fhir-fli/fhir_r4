import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void durationBetweenTest() {
  group('DurationBetween', () {
    test(
        """define "DurationInMonths": months between @2012-01-01 and @2012-02-01 // 1""",
        () {
      final low = LiteralDate('2012-01-01');
      final high = LiteralDate('2012-02-01');
      final duration = DurationBetween(
          precision: CqlDateTimePrecision.month, operand: [low, high]);
      expect(duration.execute({}), FhirInteger(1));
    });
    test(
        """define "DurationInMonths": months between @2012-01-01T01:01:01 and @2012-02-01:01:01:01 // 1""",
        () {
      final low = LiteralDateTime('2012-01-01T01:01:01');
      final high = LiteralDateTime('2012-02-01T01:01:01');
      final duration = DurationBetween(
          precision: CqlDateTimePrecision.month, operand: [low, high]);
      expect(duration.execute({}), FhirInteger(1));
    });
    // TODO(Dokotela): Add test for UncertainDurationInMonths
    test(
        """define "DurationInHours": hours between @2012-01-01T23:00:00 and @2012-01-02T02:00:00 // 3""",
        () {
      final low = LiteralDateTime('2012-01-01T23:00:00');
      final high = LiteralDateTime('2012-01-02T02:00:00');
      final duration = DurationBetween(
          precision: CqlDateTimePrecision.hour, operand: [low, high]);
      expect(duration.execute({}), FhirInteger(3));
    });
    test(
        """define "UncertainDurationInMonths": months between @2012-01-02 and @2012 // [0, 10]""",
        () {});
    test("""define "DurationIsNull": months between @2012-01-01 and null""",
        () {
      final low = LiteralDate('2012-01-01');
      final high = LiteralNull();
      final duration = DurationBetween(
          precision: CqlDateTimePrecision.month, operand: [low, high]);
      expect(duration.execute({}), null);
    });
  });
}
