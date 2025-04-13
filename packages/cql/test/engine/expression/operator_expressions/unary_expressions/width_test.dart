import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void widthTest() {
  group('Width', () {
    test("""define "Width": width of Interval[3, 7] // 4""", () {
      final interval =
          IntervalExpression(low: LiteralInteger(3), high: LiteralInteger(7));
      final width = Width(operand: interval);
      final result = width.execute({});
      expect(result, equals(FhirInteger(4)));
    });
    test(
        """define "WidthIsNull": width of (null as Interval<Integer>) // null""",
        () {
      final interval =
          As(operand: LiteralNull(), asType: QName.fromDataType('Interval'));
      final width = Width(operand: interval);
      final result = width.execute({});
      expect(result, equals(null));
    });
    test("""define "NullInterval": width of Interval[0, null) //null""", () {
      final interval = IntervalExpression(
          low: LiteralInteger(0), high: LiteralNull(), highClosed: false);
      final width = Width(operand: interval);
      final result = width.execute({});
      expect(result, equals(null));
    });
  });
}
