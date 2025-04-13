import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:flutter_test/flutter_test.dart';

void countTest() {
  group('count', () {
    test('define "Count5": Count({ 1, 2, 3, 4, 5 }) // 5', () {
      final list = ListExpression(element: [
        LiteralDecimal(1),
        LiteralDecimal(2),
        LiteralDecimal(3),
        LiteralDecimal(4),
        LiteralDecimal(5),
      ]);
      final count = Count(source: list);
      final result = count.execute({});
      expect(result, equals(fhir.FhirInteger(5)));
    });
    test('define "Count0": Count({ null, null, null }) // 0', () {
      final list = ListExpression(element: [
        LiteralNull(),
        LiteralNull(),
        LiteralNull(),
      ]);
      final count = Count(source: list);
      final result = count.execute({});
      expect(result, equals(fhir.FhirInteger(0)));
    });
    test('define "CountNull0": Count(null as List<Decimal>) // 0', () {
      final count = Count(source: LiteralNull());
      final result = count.execute({});
      expect(result, equals(fhir.FhirInteger(0)));
    });
  });
}
