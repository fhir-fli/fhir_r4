import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void sizeTest() {
  group('Size', () {
    test(
        """define "SizeTest": Size(Interval[3, 7]) // 5, i.e. the interval contains 5 points""",
        () async {
      final interval = IntervalExpression(
          lowClosed: true,
          low: LiteralInteger(3),
          highClosed: true,
          high: LiteralInteger(7));
      final size = Size(operand: interval);
      final result = await size.execute({});
      expect(result, equals(FhirInteger(5)));
    });
    test(
        """define "SizeTestEquivalent": Size(Interval[3, 8)) // 5, i.e. the interval contains 5 points""",
        () async {
      final interval = IntervalExpression(
          lowClosed: true,
          low: LiteralInteger(3),
          highClosed: false,
          high: LiteralInteger(8));
      final size = Size(operand: interval);
      final result = await size.execute({});
      expect(result, equals(FhirInteger(5)));
    });
    test("""define "SizeIsNull": Size(null as Interval<Integer>) // null""",
        () async {
      final size = Size(
          operand: As(
              operand: LiteralNull(), asType: QName.fromDataType('Interval')));
      final result = await size.execute({});
      expect(result, equals(null));
    });
  });
}
