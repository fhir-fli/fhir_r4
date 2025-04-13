import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ucum/ucum.dart';

void main() {
  group('populationStdDev', () {
    test(
        'define "DecimalPopulationStdDev": PopulationStdDev({ 1.0, 2.0, 3.0, 4.0, 5.0 }) // 1.4142135623730951',
        () {
      final list = ListExpression(element: [
        LiteralDecimal(1.0),
        LiteralDecimal(2.0),
        LiteralDecimal(3.0),
        LiteralDecimal(4.0),
        LiteralDecimal(5.0)
      ]);
      final result = PopulationStdDev(source: list).execute({});
      expect(result, equals(FhirDecimal(1.4142135623730951)));
    });
    test(
        """define "QuantityPopulationStdDev": PopulationStdDev({ 1.0 'mg', 2.0 'mg', 3.0 'mg', 4.0 'mg', 5.0 'mg' }) // 1.4142135623730951 'mg'""",
        () {
      final list = ListExpression(element: [
        LiteralQuantity(LiteralDecimal(1.0), unit: 'mg'),
        LiteralQuantity(LiteralDecimal(2.0), unit: 'mg'),
        LiteralQuantity(LiteralDecimal(3.0), unit: 'mg'),
        LiteralQuantity(LiteralDecimal(4.0), unit: 'mg'),
        LiteralQuantity(LiteralDecimal(5.0), unit: 'mg')
      ]);
      final result = PopulationStdDev(source: list).execute({});
      expect(
          result,
          equals(ValidatedQuantity(
              value: UcumDecimal.fromNum(1.4142135623730951), unit: 'mg')));
    });
    test(
        'define "PopulationStdDevIsNull": PopulationStdDev({ null as Quantity, null as Quantity, null as Quantity })',
        () {
      final list = ListExpression(element: [
        LiteralNull(),
        LiteralNull(),
        LiteralNull(),
      ]);
      final result = PopulationStdDev(source: list).execute({});
      expect(result, equals(null));
    });
    test(
        'define "PopulationStdDevIsAlsoNull": PopulationStdDev(null as List<Decimal>)',
        () {
      final result = PopulationStdDev(source: LiteralNull()).execute({});
      expect(result, equals(null));
    });
  });
}
