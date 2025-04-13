import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ucum/ucum.dart';

void varianceTest() {
  group('variance', () {
    test(
        'define "DecimalVariance": Variance({ 1.0, 2.0, 3.0, 4.0, 5.0 }) // 2.0',
        () {
      final list = ListExpression(
        element: [
          LiteralDecimal(1.0),
          LiteralDecimal(2.0),
          LiteralDecimal(3.0),
          LiteralDecimal(4.0),
          LiteralDecimal(5.0),
        ],
      );
      final variance = Variance(source: list);
      final result = variance.execute({});
      expect(result, equals(FhirDecimal(2.0)));
    });
    test(
        """define "QuantityVariance": Variance({ 1.0 'mg', 2.0 'mg', 3.0 'mg', 4.0 'mg', 5.0 'mg' }) // 2.0 'mg'""",
        () {
      final list = ListExpression(
        element: [
          LiteralQuantity(LiteralDecimal(1.0), unit: 'mg'),
          LiteralQuantity(LiteralDecimal(2.0), unit: 'mg'),
          LiteralQuantity(LiteralDecimal(3.0), unit: 'mg'),
          LiteralQuantity(LiteralDecimal(4.0), unit: 'mg'),
          LiteralQuantity(LiteralDecimal(5.0), unit: 'mg'),
        ],
      );
      final variance = Variance(source: list);
      final result = variance.execute({});
      expect(result, equals(ValidatedQuantity.fromNumber(2.0, unit: 'mg')));
    });
    test(
        'define "VarianceIsNull": Variance({ null as Quantity, null as Quantity, null as Quantity })',
        () {
      final list = ListExpression(
        element: [
          LiteralNull(),
          LiteralNull(),
          LiteralNull(),
        ],
      );
      final variance = Variance(source: list);
      final result = variance.execute({});
      expect(result, equals(null));
    });
    test('define "VarianceIsAlsoNull": Variance(null as List<Decimal>)', () {
      final variance = Variance(source: LiteralNull());
      final result = variance.execute({});
      expect(result, equals(null));
    });
  });
}
