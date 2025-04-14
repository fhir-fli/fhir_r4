import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:flutter_test/flutter_test.dart';

void maxTest() {
  group('max', () {
    test('define "IntegerMax": Max({ 2, 4, 8, 6 }) // 8', () async {
      final list = ListExpression(element: [
        LiteralInteger(2),
        LiteralInteger(4),
        LiteralInteger(8),
        LiteralInteger(6)
      ]);
      final max = Max(source: list);
      final result =await  max.execute({});
      expect(result, equals(fhir.FhirInteger(8)));
    });
    test('define "LongMax": Max({ 2L, 4L, 8L, 6L }) // 8L', () async {
      final list = ListExpression(element: [
        LiteralLong(BigInt.from(2)),
        LiteralLong(BigInt.from(4)),
        LiteralLong(BigInt.from(8)),
        LiteralLong(BigInt.from(6))
      ]);
      final max = Max(source: list);
      final result =await  max.execute({});
      expect(result, equals(fhir.FhirInteger64(BigInt.from(8))));
    });
    test(
        'define "DateMax": Max({ @2012-12-31, @2013-01-01, @2012-01-01 }) // @2013-01-01',
        () async{
      final list = ListExpression(element: [
        LiteralDate('2012-12-31'),
        LiteralDate('2013-01-01'),
        LiteralDate('2012-01-01')
      ]);
      final max = Max(source: list);
      final result =await  max.execute({});
      expect(result, equals(fhir.FhirDate.fromString('2013-01-01')));
    });
    test(
        'define "MaxIsNull": Max({ null as Quantity, null as Quantity, null as Quantity })',
        ()async {
      final list = ListExpression(
          element: [LiteralNull(), LiteralNull(), LiteralNull()]);
      final max = Max(source: list);
      final result =await  max.execute({});
      expect(result, equals(null));
    });
    test('define "MaxIsAlsoNull": Max(null as List<Decimal>)', () async {
      final max = Max(source: LiteralNull());
      final result =await  max.execute({});
      expect(result, equals(null));
    });
  });
}
