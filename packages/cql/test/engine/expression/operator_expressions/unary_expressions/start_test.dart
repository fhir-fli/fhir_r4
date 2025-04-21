import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void startTest() {
  group('Start', () {
    test("""define "StartOfInterval": start of Interval[1, 5] // 1""",
        () async {
      final interval = IntervalExpression(
          lowClosed: true,
          low: LiteralInteger(1),
          highClosed: true,
          high: LiteralInteger(5));
      final start = Start(operand: interval);
      final result = await start.execute({});
      expect(result, FhirInteger(1));
    });
    test("""define "StartIsNull": start of (null as Interval<Integer>)""",
        () async {
      final interval =
          As(operand: LiteralNull(), asType: QName.fromDataType('Interval'));
      final start = Start(operand: interval);
      final result = await start.execute({});
      expect(result, isNull);
    });
  });
}
