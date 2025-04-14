import 'package:cql/engine/engine.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:flutter_test/flutter_test.dart';

void expandTest() {
  group('expand', () {
    test('expand { Interval[@2018-01-01, @2018-01-04] } per day', () async {
      final interval1 = LiteralDateInterval(
        low: LiteralDate('2018-01-01'),
        high: LiteralDate('2018-01-04'),
      );
      final list = ListExpression(element: [interval1]);
      final expand = Expand(operand: [list]);
      final result = await expand.execute({});
      final interval2 = CqlInterval(
          low: fhir.FhirDate.fromString('2018-01-01'),
          high: fhir.FhirDate.fromString('2018-01-01'));
      final interval3 = CqlInterval(
          low: fhir.FhirDate.fromString('2018-01-02'),
          high: fhir.FhirDate.fromString('2018-01-02'));
      final interval4 = CqlInterval(
          low: fhir.FhirDate.fromString('2018-01-03'),
          high: fhir.FhirDate.fromString('2018-01-03'));
      final interval5 = CqlInterval(
          low: fhir.FhirDate.fromString('2018-01-04'),
          high: fhir.FhirDate.fromString('2018-01-04'));
      expect(result, [interval2, interval3, interval4, interval5]);
    });
    test('// expand { Interval[@T10:00, @T12:30] } per hour', () async {
      final interval1 = LiteralIntegerInterval(
        low: LiteralInteger(1),
        high: LiteralInteger(10),
      );
      final expand = Expand(operand: [interval1]);
      final result = await expand.execute({});
      expect(result, [
        fhir.FhirInteger(1),
        fhir.FhirInteger(2),
        fhir.FhirInteger(3),
        fhir.FhirInteger(4),
        fhir.FhirInteger(5),
        fhir.FhirInteger(6),
        fhir.FhirInteger(7),
        fhir.FhirInteger(8),
        fhir.FhirInteger(9),
        fhir.FhirInteger(10)
      ]);
    });
  });
}
