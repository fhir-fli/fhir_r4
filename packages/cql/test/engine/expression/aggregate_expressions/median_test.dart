import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ucum/ucum.dart';

void medianTest() {
  group('median', () {
    test('define "DecimalMedian": Median({ 2.0, 4.0, 8.0, 6.0 }) // 5.0', () {
      final list = ListExpression(
        element: [
          LiteralDecimal(2.0),
          LiteralDecimal(4.0),
          LiteralDecimal(8.0),
          LiteralDecimal(6.0)
        ],
      );
      final median = Median(source: list);
      final result = median.execute({});
      expect(result, equals(FhirDecimal(5.0)));
    });
    test(
        """define "QuantityMedian": Median({ 1.0 'mg', 2.0 'mg', 3.0 'mg' }) // 2.0 'mg'""",
        () {
      final list = ListExpression(
        element: [
          LiteralQuantity(LiteralDecimal(1.0), unit: 'mg'),
          LiteralQuantity(LiteralDecimal(2.0), unit: 'mg'),
          LiteralQuantity(LiteralDecimal(3.0), unit: 'mg'),
        ],
      );
      final median = Median(source: list);
      final result = median.execute({});
      expect(
          result,
          equals(
              ValidatedQuantity(value: UcumDecimal.fromNum(2.0), unit: 'mg')));
    });
    test(
        'define "MedianIsNull": Median({ null as Quantity, null as Quantity, null as Quantity })',
        () {
      final list = ListExpression(
        element: [
          LiteralNull(),
          LiteralNull(),
          LiteralNull(),
        ],
      );
      final median = Median(source: list);
      final result = median.execute({});
      expect(result, equals(null));
    });
    test('define "MedianIsAlsoNull": Median(null as List<Decimal>)', () {
      final median = Median(source: LiteralNull());
      final result = median.execute({});
      expect(result, equals(null));
    });
  });
}
