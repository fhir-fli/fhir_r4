import 'package:fhir_r4/fhir_r4.dart' hide Count;
import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:test/test.dart';
import 'package:ucum/ucum.dart';

void main() {
  group('count', () {
    test('define "Count5": Count({ 1, 2, 3, 4, 5 }) // 5', () async {
      final list = ListExpression(element: [
        LiteralDecimal(1),
        LiteralDecimal(2),
        LiteralDecimal(3),
        LiteralDecimal(4),
        LiteralDecimal(5),
      ]);
      final count = Count(source: list);
      final result = await count.execute({});
      expect(result, equals(FhirInteger(5)));
    });
    test('define "Count0": Count({ null, null, null }) // 0', () async {
      final list = ListExpression(element: [
        LiteralNull(),
        LiteralNull(),
        LiteralNull(),
      ]);
      final count = Count(source: list);
      final result = await count.execute({});
      expect(result, equals(FhirInteger(0)));
    });
    test('define "CountNull0": Count(null as List<Decimal>) // 0', () async {
      final count = Count(source: LiteralNull());
      final result = await count.execute({});
      expect(result, equals(FhirInteger(0)));
    });
  });

  group('sum', () {
    test('define "DecimalSum": Sum({ 1.0, 2.0, 3.0, 4.0, 5.0 }) // 15.0',
        () async {
      final list = ListExpression(element: [
        LiteralDecimal(1.0),
        LiteralDecimal(2.0),
        LiteralDecimal(3.0),
        LiteralDecimal(4.0),
        LiteralDecimal(5.0),
      ]);
      final sum = Sum(source: list);
      final result = await sum.execute({});
      expect(result, equals(FhirDecimal(15.0)));
    });
    test(
        """define "QuantitySum": Sum({ 1.0 'mg', 2.0 'mg', 3.0 'mg', 4.0 'mg', 5.0 'mg' }) // 15.0 'mg'""",
        () async {
      final list = ListExpression(element: [
        LiteralQuantity(LiteralDecimal(1.0), unit: 'mg'),
        LiteralQuantity(LiteralDecimal(2.0), unit: 'mg'),
        LiteralQuantity(LiteralDecimal(3.0), unit: 'mg'),
        LiteralQuantity(LiteralDecimal(4.0), unit: 'mg'),
        LiteralQuantity(LiteralDecimal(5.0), unit: 'mg'),
      ]);
      final sum = Sum(source: list);
      final result = await sum.execute({});
      expect(
          result,
          equals(
              ValidatedQuantity(value: UcumDecimal.fromNum(15.0), unit: 'mg')));
    });
    test(
        'define "SumIsNull": Sum({ null as Quantity, null as Quantity, null as Quantity })',
        () async {
      final list = ListExpression(element: [
        LiteralNull(),
        LiteralNull(),
        LiteralNull(),
      ]);
      final sum = Sum(source: list);
      final result = await sum.execute({});
      expect(result, equals(null));
    });
    test('define "SumIsAlsoNull": Sum(null as List<Decimal>)', () async {
      final sum = Sum(source: LiteralNull());
      final result = await sum.execute({});
      expect(result, equals(null));
    });
  });

  group('avg', () {
    test('define "DecimalAvg": Avg({ 5.5, 4.7, 4.8 }) // 5.0', () async {
      final list = ListExpression(element: [
        LiteralDecimal(5.5),
        LiteralDecimal(4.7),
        LiteralDecimal(4.8)
      ]);
      final avg = Avg(source: list);
      final result = await avg.execute({});
      expect(result, equals(FhirDecimal(5.0)));
    });
    test(
        """define "QuantityAvg": Avg({ 5.5 'cm', 4.7 'cm', 4.8 'cm' }) // 5.0 'cm'""",
        () async {
      final list = ListExpression(element: [
        LiteralQuantity(LiteralDecimal(5.5), unit: 'cm'),
        LiteralQuantity(LiteralDecimal(4.7), unit: 'cm'),
        LiteralQuantity(LiteralDecimal(4.8), unit: 'cm')
      ]);
      final avg = Avg(source: list);
      final result = await avg.execute({});
      expect(
          result,
          equals(
              ValidatedQuantity(value: UcumDecimal.fromNum(5.0), unit: 'cm')));
    });
    test('define "AvgIsNull": Avg(null as List<Decimal>)', () async {
      final list = ListExpression(element: [LiteralNull()]);
      final avg = Avg(source: list);
      final result = await avg.execute({});
      expect(result, equals(null));
    });
  });

  group('Min', () {
    test('define "IntegerMin": Min({ 2, 4, 8, 6 }) // 2', () async {
      final list = ListExpression(element: [
        LiteralInteger(2),
        LiteralInteger(4),
        LiteralInteger(8),
        LiteralInteger(6)
      ]);
      final min = Min(source: list);
      final result = await min.execute({});
      expect(result, equals(FhirInteger(2)));
    });
    test('define "LongMin": Min({ 2L, 4L, 8L, 6L }) // 2L', () async {
      final list = ListExpression(element: [
        LiteralLong(BigInt.from(2)),
        LiteralLong(BigInt.from(4)),
        LiteralLong(BigInt.from(8)),
        LiteralLong(BigInt.from(6))
      ]);
      final min = Min(source: list);
      final result = await min.execute({});
      expect(result, equals(FhirInteger64(BigInt.from(2))));
    });
    test(
        'define "DateMin": Min({ @2012-12-31, @2013-01-01, @2012-01-01 }) // @2012-01-01',
        () async {
      final list = ListExpression(element: [
        LiteralDate('2012-12-31'),
        LiteralDate('2013-01-01'),
        LiteralDate('2012-01-01')
      ]);
      final min = Min(source: list);
      final result = await min.execute({});
      expect(result, equals(FhirDate.fromString('2012-01-01')));
    });
    test(
        'define "MinIsNull": Min({ null as Quantity, null as Quantity, null as Quantity })',
        () async {
      final list = ListExpression(
          element: [LiteralNull(), LiteralNull(), LiteralNull()]);
      final min = Min(source: list);
      final result = await min.execute({});
      expect(result, equals(null));
    });
    test('define "MinIsAlsoNull": Min(null as List<Decimal>)', () async {
      final min = Min(source: LiteralNull());
      final result = await min.execute({});
      expect(result, equals(null));
    });
  });

  group('max', () {
    test('define "IntegerMax": Max({ 2, 4, 8, 6 }) // 8', () async {
      final list = ListExpression(element: [
        LiteralInteger(2),
        LiteralInteger(4),
        LiteralInteger(8),
        LiteralInteger(6)
      ]);
      final max = Max(source: list);
      final result = await max.execute({});
      expect(result, equals(FhirInteger(8)));
    });
    test('define "LongMax": Max({ 2L, 4L, 8L, 6L }) // 8L', () async {
      final list = ListExpression(element: [
        LiteralLong(BigInt.from(2)),
        LiteralLong(BigInt.from(4)),
        LiteralLong(BigInt.from(8)),
        LiteralLong(BigInt.from(6))
      ]);
      final max = Max(source: list);
      final result = await max.execute({});
      expect(result, equals(FhirInteger64(BigInt.from(8))));
    });
    test(
        'define "DateMax": Max({ @2012-12-31, @2013-01-01, @2012-01-01 }) // @2013-01-01',
        () async {
      final list = ListExpression(element: [
        LiteralDate('2012-12-31'),
        LiteralDate('2013-01-01'),
        LiteralDate('2012-01-01')
      ]);
      final max = Max(source: list);
      final result = await max.execute({});
      expect(result, equals(FhirDate.fromString('2013-01-01')));
    });
    test(
        'define "MaxIsNull": Max({ null as Quantity, null as Quantity, null as Quantity })',
        () async {
      final list = ListExpression(
          element: [LiteralNull(), LiteralNull(), LiteralNull()]);
      final max = Max(source: list);
      final result = await max.execute({});
      expect(result, equals(null));
    });
    test('define "MaxIsAlsoNull": Max(null as List<Decimal>)', () async {
      final max = Max(source: LiteralNull());
      final result = await max.execute({});
      expect(result, equals(null));
    });
  });

  group('median', () {
    test('define "DecimalMedian": Median({ 2.0, 4.0, 8.0, 6.0 }) // 5.0',
        () async {
      final list = ListExpression(
        element: [
          LiteralDecimal(2.0),
          LiteralDecimal(4.0),
          LiteralDecimal(8.0),
          LiteralDecimal(6.0)
        ],
      );
      final median = Median(source: list);
      final result = await median.execute({});
      expect(result, equals(FhirDecimal(5.0)));
    });
    test(
        """define "QuantityMedian": Median({ 1.0 'mg', 2.0 'mg', 3.0 'mg' }) // 2.0 'mg'""",
        () async {
      final list = ListExpression(
        element: [
          LiteralQuantity(LiteralDecimal(1.0), unit: 'mg'),
          LiteralQuantity(LiteralDecimal(2.0), unit: 'mg'),
          LiteralQuantity(LiteralDecimal(3.0), unit: 'mg'),
        ],
      );
      final median = Median(source: list);
      final result = await median.execute({});
      expect(
          result,
          equals(
              ValidatedQuantity(value: UcumDecimal.fromNum(2.0), unit: 'mg')));
    });
    test(
        'define "MedianIsNull": Median({ null as Quantity, null as Quantity, null as Quantity })',
        () async {
      final list = ListExpression(
        element: [
          LiteralNull(),
          LiteralNull(),
          LiteralNull(),
        ],
      );
      final median = Median(source: list);
      final result = await median.execute({});
      expect(result, equals(null));
    });
    test('define "MedianIsAlsoNull": Median(null as List<Decimal>)', () async {
      final median = Median(source: LiteralNull());
      final result = await median.execute({});
      expect(result, equals(null));
    });
  });

  group('mode', () {
    test('define "DecimalMode": Mode({ 2.0, 2.0, 8.0, 6.0, 8.0, 8.0 }) // 8.0',
        () async {
      final list = ListExpression(
        element: [
          LiteralDecimal(2.0),
          LiteralDecimal(2.0),
          LiteralDecimal(8.0),
          LiteralDecimal(6.0),
          LiteralDecimal(8.0),
          LiteralDecimal(8.0),
        ],
      );
      final mode = Mode(source: list);
      final result = await mode.execute({});
      expect(result, equals(FhirDecimal(8.0)));
    });
    test(
        """define "QuantityMode": Mode({ 1.0 'mg', 2.0 'mg', 3.0 'mg', 2.0 'mg' }) // 2.0 'mg'""",
        () async {
      final list = ListExpression(
        element: [
          LiteralQuantity(LiteralDecimal(1.0), unit: 'mg'),
          LiteralQuantity(LiteralDecimal(2.0), unit: 'mg'),
          LiteralQuantity(LiteralDecimal(3.0), unit: 'mg'),
          LiteralQuantity(LiteralDecimal(2.0), unit: 'mg'),
        ],
      );
      final mode = Mode(source: list);
      final result = await mode.execute({});
      expect(
          result,
          equals(
              ValidatedQuantity(value: UcumDecimal.fromNum(2.0), unit: 'mg')));
    });
    test(
        'define "ModeIsNull": Mode({ null as Quantity, null as Quantity, null as Quantity })',
        () async {
      final list = ListExpression(
        element: [
          LiteralNull(),
          LiteralNull(),
          LiteralNull(),
        ],
      );
      final mode = Mode(source: list);
      final result = await mode.execute({});
      expect(result, equals(null));
    });
    test('define "ModeIsAlsoNull": Mode(null as List<Decimal>)', () async {
      final mode = Mode(source: LiteralNull());
      final result = await mode.execute({});
      expect(result, equals(null));
    });
  });

  group('variance', () {
    test(
        'define "DecimalVariance": Variance({ 1.0, 2.0, 3.0, 4.0, 5.0 }) // 2.0',
        () async {
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
      final result = await variance.execute({});
      expect(result, equals(FhirDecimal(2.0)));
    });
    test(
        """define "QuantityVariance": Variance({ 1.0 'mg', 2.0 'mg', 3.0 'mg', 4.0 'mg', 5.0 'mg' }) // 2.0 'mg'""",
        () async {
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
      final result = await variance.execute({});
      expect(result, equals(ValidatedQuantity.fromNumber(2.0, unit: 'mg')));
    });
    test(
        'define "VarianceIsNull": Variance({ null as Quantity, null as Quantity, null as Quantity })',
        () async {
      final list = ListExpression(
        element: [
          LiteralNull(),
          LiteralNull(),
          LiteralNull(),
        ],
      );
      final variance = Variance(source: list);
      final result = await variance.execute({});
      expect(result, equals(null));
    });
    test('define "VarianceIsAlsoNull": Variance(null as List<Decimal>)',
        () async {
      final variance = Variance(source: LiteralNull());
      final result = await variance.execute({});
      expect(result, equals(null));
    });
  });

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
      final result =
          await PopulationVariance(source: LiteralNull()).execute({});
      expect(result, equals(null));
    });
    test('PopulationVariance({ 1, 2, 3, null }) = 0.66666666', () async {
      final list = ListExpression(element: [
        LiteralDecimal(1),
        LiteralDecimal(2),
        LiteralDecimal(3),
        LiteralNull(),
      ]);
      final result = await PopulationVariance(source: list).execute({});
      expect(result, equals(FhirDecimal(0.66666667)));
    });
    test('PopulationStdDev({ 1, 2, 3, null }) = 0.816496580927726', () async {
      final list = ListExpression(element: [
        LiteralDecimal(1),
        LiteralDecimal(2),
        LiteralDecimal(3),
        LiteralNull(),
      ]);
      final result = await PopulationStdDev(source: list).execute({});
      expect(result, equals(FhirDecimal(0.81649658)));
    });
  });

  group('stddev', () {
    test(
        'define "DecimalStdDev": StdDev({ 1.0, 2.0, 3.0, 4.0, 5.0 }) // 1.4142135623730951',
        () async {
      final list = ListExpression(
        element: [
          LiteralDecimal(1.0),
          LiteralDecimal(2.0),
          LiteralDecimal(3.0),
          LiteralDecimal(4.0),
          LiteralDecimal(5.0)
        ],
      );
      final stddev = StdDev(source: list);
      final result = await stddev.execute({});
      expect(result, equals(FhirDecimal(1.41421356)));
    });
    test(
        """define "QuantityStdDev": StdDev({ 1.0 'mg', 2.0 'mg', 3.0 'mg', 4.0 'mg', 5.0 'mg' }) // 1.4142135623730951 'mg'""",
        () async {
      final list = ListExpression(
        element: [
          LiteralQuantity(LiteralDecimal(1.0), unit: 'mg'),
          LiteralQuantity(LiteralDecimal(2.0), unit: 'mg'),
          LiteralQuantity(LiteralDecimal(3.0), unit: 'mg'),
          LiteralQuantity(LiteralDecimal(4.0), unit: 'mg'),
          LiteralQuantity(LiteralDecimal(5.0), unit: 'mg'),
        ],
      );
      final stddev = StdDev(source: list);
      final result = await stddev.execute({});
      expect(
          result,
          equals(ValidatedQuantity(
              value: UcumDecimal.fromNum(1.4142135623730951), unit: 'mg')));
    });
    test(
        'define "StdDevIsNull": StdDev({ null as Quantity, null as Quantity, null as Quantity })',
        () async {
      final list = ListExpression(
        element: [
          LiteralNull(),
          LiteralNull(),
          LiteralNull(),
        ],
      );
      final stddev = StdDev(source: list);
      final result = await stddev.execute({});
      expect(result, equals(null));
    });
    test('define "StdDevIsAlsoNull": StdDev(null as List<Decimal>)', () async {
      final stddev = StdDev(source: LiteralNull());
      final result = await stddev.execute({});
      expect(result, equals(null));
    });
  });

  group('populationStdDev', () {
    test(
        'define "DecimalPopulationStdDev": PopulationStdDev({ 1.0, 2.0, 3.0, 4.0, 5.0 }) // 1.4142135623730951',
        () async {
      final list = ListExpression(element: [
        LiteralDecimal(1.0),
        LiteralDecimal(2.0),
        LiteralDecimal(3.0),
        LiteralDecimal(4.0),
        LiteralDecimal(5.0)
      ]);
      final result = await PopulationStdDev(source: list).execute({});
      expect(result, equals(FhirDecimal(1.41421356)));
    });
    test(
        """define "QuantityPopulationStdDev": PopulationStdDev({ 1.0 'mg', 2.0 'mg', 3.0 'mg', 4.0 'mg', 5.0 'mg' }) // 1.4142135623730951 'mg'""",
        () async {
      final list = ListExpression(element: [
        LiteralQuantity(LiteralDecimal(1.0), unit: 'mg'),
        LiteralQuantity(LiteralDecimal(2.0), unit: 'mg'),
        LiteralQuantity(LiteralDecimal(3.0), unit: 'mg'),
        LiteralQuantity(LiteralDecimal(4.0), unit: 'mg'),
        LiteralQuantity(LiteralDecimal(5.0), unit: 'mg')
      ]);
      final result = await PopulationStdDev(source: list).execute({});
      expect(
          result,
          equals(ValidatedQuantity(
              value: UcumDecimal.fromNum(1.4142135623730951), unit: 'mg')));
    });
    test(
        'define "PopulationStdDevIsNull": PopulationStdDev({ null as Quantity, null as Quantity, null as Quantity })',
        () async {
      final list = ListExpression(element: [
        LiteralNull(),
        LiteralNull(),
        LiteralNull(),
      ]);
      final result = await PopulationStdDev(source: list).execute({});
      expect(result, equals(null));
    });
    test(
        'define "PopulationStdDevIsAlsoNull": PopulationStdDev(null as List<Decimal>)',
        () async {
      final result = await PopulationStdDev(source: LiteralNull()).execute({});
      expect(result, equals(null));
    });
  });

  group('allTrue', () {
    test('define "AllTrueIsTrue": AllTrue({ true, null, true })', () async {
      final list = ListExpression(element: [
        LiteralBoolean(true),
        LiteralNull(),
        LiteralBoolean(true),
      ]);
      final allTrue = AllTrue(source: list);
      final result = await allTrue.execute({});
      expect(result, FhirBoolean(true));
    });
    test('define "AllTrueIsAlsoTrue": AllTrue({ null, null, null })', () async {
      final list = ListExpression(element: [
        LiteralNull(),
        LiteralNull(),
        LiteralNull(),
      ]);
      final allTrue = AllTrue(source: list);
      final result = await allTrue.execute({});
      expect(result, FhirBoolean(true));
    });
    test('define "AllTrueIsTrueWhenNull": AllTrue(null)', () async {
      final allTrue = AllTrue(source: LiteralNull());
      final result = await allTrue.execute({});
      expect(result, FhirBoolean(true));
    });
    test('define "AllTrueIsFalse": AllTrue({ true, false, null })', () async {
      final list = ListExpression(element: [
        LiteralBoolean(true),
        LiteralBoolean(false),
        LiteralNull(),
      ]);
      final allTrue = AllTrue(source: list);
      final result = await allTrue.execute({});
      expect(result, FhirBoolean(false));
    });
  });

  group('anyTrue', () {
    test('define "AnyTrueIsTrue": AnyTrue({ true, false, null })', () async {
      final list = ListExpression(element: [
        LiteralBoolean(true),
        LiteralBoolean(false),
        LiteralNull(),
      ]);
      final anyTrue = AnyTrue(source: list);
      final result = await anyTrue.execute({});
      expect(result, FhirBoolean(true));
    });
    test('define "AnyTrueIsFalse": AnyTrue({ false, false, null })', () async {
      final list = ListExpression(element: [
        LiteralBoolean(false),
        LiteralBoolean(false),
        LiteralNull(),
      ]);
      final anyTrue = AnyTrue(source: list);
      final result = await anyTrue.execute({});
      expect(result, FhirBoolean(false));
    });
    test('define "AnyTrueIsAlsoFalse": AnyTrue({ null, null, null })',
        () async {
      final list = ListExpression(element: [
        LiteralNull(),
        LiteralNull(),
        LiteralNull(),
      ]);
      final anyTrue = AnyTrue(source: list);
      final result = await anyTrue.execute({});
      expect(result, FhirBoolean(false));
    });
    test('define "AnyTrueIsFalseWhenNull": AnyTrue(null)', () async {
      final anyTrue = AnyTrue(source: LiteralNull());
      final result = await anyTrue.execute({});
      expect(result, FhirBoolean(false));
    });
  });

  group('product', () {
    test('define "IntegerProduct": Product({ 2, 3, 4 }) // 24', () async {
      final list = ListExpression(element: [
        LiteralInteger(2),
        LiteralInteger(3),
        LiteralInteger(4),
      ]);
      final product = Product(source: list);
      final result = await product.execute({});
      expect(result, equals(FhirInteger(24)));
    });
    test('define "DecimalProduct": Product({ 2.0, 3.0, 4.0 }) // 24.0',
        () async {
      final list = ListExpression(element: [
        LiteralDecimal(2.0),
        LiteralDecimal(3.0),
        LiteralDecimal(4.0),
      ]);
      final product = Product(source: list);
      final result = await product.execute({});
      expect(result, equals(FhirDecimal(24.0)));
    });
    test('define "ProductEmpty": Product({ }) // null', () async {
      final list = ListExpression(element: []);
      final product = Product(source: list);
      final result = await product.execute({});
      expect(result, isNull);
    });
    test('define "ProductIsNull": Product(null) // null', () async {
      final product = Product(source: LiteralNull());
      final result = await product.execute({});
      expect(result, isNull);
    });
    test('define "ProductSingle": Product({ 7 }) // 7', () async {
      final list = ListExpression(element: [
        LiteralInteger(7),
      ]);
      final product = Product(source: list);
      final result = await product.execute({});
      expect(result, equals(FhirInteger(7)));
    });
  });

  group('geometricMean', () {
    test(
        'define "GeometricMeanTwo": GeometricMean({ 2.0, 8.0 }) // 4.0',
        () async {
      final list = ListExpression(element: [
        LiteralDecimal(2.0),
        LiteralDecimal(8.0),
      ]);
      final gm = GeometricMean(source: list);
      final result = await gm.execute({});
      expect(result, equals(FhirDecimal(4.0)));
    });
    test(
        'define "GeometricMeanFourNine": GeometricMean({ 4.0, 9.0 }) // 6.0',
        () async {
      final list = ListExpression(element: [
        LiteralDecimal(4.0),
        LiteralDecimal(9.0),
      ]);
      final gm = GeometricMean(source: list);
      final result = await gm.execute({});
      expect(result, equals(FhirDecimal(6.0)));
    });
    test('define "GeometricMeanSingle": GeometricMean({ 5.0 }) // 5.0',
        () async {
      final list = ListExpression(element: [
        LiteralDecimal(5.0),
      ]);
      final gm = GeometricMean(source: list);
      final result = await gm.execute({});
      expect(result, equals(FhirDecimal(5.0)));
    });
    test('define "GeometricMeanIsNull": GeometricMean(null) // null', () async {
      final gm = GeometricMean(source: LiteralNull());
      final result = await gm.execute({});
      expect(result, isNull);
    });
    test('define "GeometricMeanEmpty": GeometricMean({ }) // null', () async {
      final list = ListExpression(element: []);
      final gm = GeometricMean(source: list);
      final result = await gm.execute({});
      expect(result, isNull);
    });
  });
}
