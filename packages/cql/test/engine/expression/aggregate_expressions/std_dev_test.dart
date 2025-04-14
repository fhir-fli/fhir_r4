import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ucum/ucum.dart';

void stddevTest() {
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
      final result =await  stddev.execute({});
      expect(result, equals(FhirDecimal(1.4142135623730951)));
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
      final result =await  stddev.execute({});
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
      final result =await  stddev.execute({});
      expect(result, equals(null));
    });
    test('define "StdDevIsAlsoNull": StdDev(null as List<Decimal>)', () async {
      final stddev = StdDev(source: LiteralNull());
      final result =await  stddev.execute({});
      expect(result, equals(null));
    });
  });
}
