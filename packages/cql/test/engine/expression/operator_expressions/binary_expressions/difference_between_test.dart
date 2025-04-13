import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void differenceBetweenTest() {
  group('DifferenceBetween', () {
    test(
        """define "DifferenceInMonths": months between @2012-01-01 and @2012-02-01 // 1""",
        () {
      final low = LiteralDate('2012-01-01');
      final high = LiteralDate('2012-02-01');
      final duration = DifferenceBetween(
          precision: CqlDateTimePrecision.month, operand: [low, high]);
      expect(duration.execute({}), FhirInteger(1));
    });

    // TODO(Dokotela): Fix this test - uncertainties
    // test(
    //     """define "UncertainDifferenceInMonths": months between @2012-01-02 and @2012 // [0, 11]""",
    //     () {
    //   final low = LiteralDate( '2012-01-02');
    //   final high = LiteralDate( '2012');
    //   final duration = DifferenceBetween(
    //       precision: CqlDateTimePrecision.month, operand: [low, high]);
    //   expect(duration.execute({}), FhirInteger(3));
    // });
    test("""define "DifferenceIsNull": months between @2012-01-01 and null""",
        () {
      final low = LiteralDate('2012-01-01');
      final high = LiteralNull();
      final duration = DifferenceBetween(
          precision: CqlDateTimePrecision.month, operand: [low, high]);
      expect(duration.execute({}), null);
    });
  });
}
