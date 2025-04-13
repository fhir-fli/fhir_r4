import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:flutter_test/flutter_test.dart';
import 'package:ucum/ucum.dart';

void modeTest() {
  group('mode', () {
    test('define "DecimalMode": Mode({ 2.0, 2.0, 8.0, 6.0, 8.0, 8.0 }) // 8.0',
        () {
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
      final result = mode.execute({});
      expect(result, equals(fhir.FhirDecimal(8.0)));
    });
    test(
        """define "QuantityMode": Mode({ 1.0 'mg', 2.0 'mg', 3.0 'mg', 2.0 'mg' }) // 2.0 'mg'""",
        () {
      final list = ListExpression(
        element: [
          LiteralQuantity(LiteralDecimal(1.0), unit: 'mg'),
          LiteralQuantity(LiteralDecimal(2.0), unit: 'mg'),
          LiteralQuantity(LiteralDecimal(3.0), unit: 'mg'),
          LiteralQuantity(LiteralDecimal(2.0), unit: 'mg'),
        ],
      );
      final mode = Mode(source: list);
      final result = mode.execute({});
      expect(
          result,
          equals(
              ValidatedQuantity(value: UcumDecimal.fromNum(2.0), unit: 'mg')));
    });
    test(
        'define "ModeIsNull": Mode({ null as Quantity, null as Quantity, null as Quantity })',
        () {
      final list = ListExpression(
        element: [
          LiteralNull(),
          LiteralNull(),
          LiteralNull(),
        ],
      );
      final mode = Mode(source: list);
      final result = mode.execute({});
      expect(result, equals(null));
    });
    test('define "ModeIsAlsoNull": Mode(null as List<Decimal>)', () {
      final mode = Mode(source: LiteralNull());
      final result = mode.execute({});
      expect(result, equals(null));
    });
  });
}
