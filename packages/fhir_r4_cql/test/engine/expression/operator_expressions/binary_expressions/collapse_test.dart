import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void collapseTest() {
  group('collapse', () {
    test(
        'define "Collapse1To9": collapse { Interval[1, 4], Interval[4, 8], Interval[7, 9] } // { Interval[1, 9] }',
        () async {
      final interval1 = IntervalExpression(
          lowClosed: true,
          low: LiteralInteger(1),
          highClosed: true,
          high: LiteralInteger(4));
      final interval2 = IntervalExpression(
          lowClosed: true,
          low: LiteralInteger(4),
          highClosed: true,
          high: LiteralInteger(8));
      final interval3 = IntervalExpression(
          lowClosed: true,
          low: LiteralInteger(7),
          highClosed: true,
          high: LiteralInteger(9));
      final list = ListExpression(element: [interval1, interval2, interval3]);
      final collapse = Collapse(operand: [list]);
      final result = await collapse.execute({});
      expect(result, [CqlInterval(low: FhirInteger(1), high: FhirInteger(9))]);
    });
    test('define "CollapseIsNull": collapse null', () async {
      final collapse = Collapse(operand: [LiteralNull()]);
      final result = await collapse.execute({});
      expect(result, null);
    });
  });
}
