import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ucum/ucum.dart';

void populationVarianceTest() {
  group('populationVariance', () {
    test(
        'define "DecimalPopulationVariance": PopulationVariance({ 1.0, 2.0, 3.0, 4.0, 5.0 }) // 2.0',
        () async {
      final list = ListExpression(element: [
        LiteralDecimal(1.0),
        LiteralDecimal(2.0),
        LiteralDecimal(3.0),
        LiteralDecimal(4.0),
        LiteralDecimal(5.0)
      ]);
      final result = await PopulationVariance(source: list).execute({});
      expect(result, equals(FhirDecimal(2.0)));
    });
    test(
        """define "QuantityPopulationVariance": PopulationVariance({ 1.0 'mg', 2.0 'mg', 3.0 'mg', 4.0 'mg', 5.0 'mg' }) // 2.0 'mg'""",
        () async {
      final list = ListExpression(element: [
        LiteralQuantity(LiteralDecimal(1.0), unit: 'mg'),
        LiteralQuantity(LiteralDecimal(2.0), unit: 'mg'),
        LiteralQuantity(LiteralDecimal(3.0), unit: 'mg'),
        LiteralQuantity(LiteralDecimal(4.0), unit: 'mg'),
        LiteralQuantity(LiteralDecimal(5.0), unit: 'mg')
      ]);
      final result = await PopulationVariance(source: list).execute({});
      expect(
          result,
          equals(
              ValidatedQuantity(value: UcumDecimal.fromNum(2.0), unit: 'mg')));
    });
    test(
        'define "PopulationVarianceIsNull": PopulationVariance({ null as Quantity, null as Quantity, null as Quantity })',
        () async {
      final list = ListExpression(element: [
        LiteralNull(),
        LiteralNull(),
        LiteralNull(),
      ]);
      final result = await PopulationVariance(source: list).execute({});
      expect(result, equals(null));
    });
    test(
        'define "PopulationVarianceIsAlsoNull": PopulationVariance(null as List<Decimal>)',
        () async {
      final result =await  PopulationVariance(source: LiteralNull()).execute({});
      expect(result, equals(null));
    });
    test('PopulationVariance({ 1, 2, 3, null }) = 0.66666666', () async {
      final list = ListExpression(element: [
        LiteralDecimal(1),
        LiteralDecimal(2),
        LiteralDecimal(3),
        LiteralNull(),
      ]);
      final result =await  PopulationVariance(source: list).execute({});
      expect(result, equals(FhirDecimal(0.6666666666666666)));
    });
    test('PopulationStdDev({ 1, 2, 3, null }) = 0.816496580927726', () async {
      final list = ListExpression(element: [
        LiteralDecimal(1),
        LiteralDecimal(2),
        LiteralDecimal(3),
        LiteralNull(),
      ]);
      final result =await  PopulationStdDev(source: list).execute({});
      expect(result, equals(FhirDecimal(0.816496580927726)));
    });
  });
}
