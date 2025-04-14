import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void lastTest() {
  group('last', () {
    test('define "Last5": Last({ 1, 3, 5 }) // 5', () async {
      final ListExpression source = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(3),
          LiteralInteger(5),
        ],
      );
      final Last last = Last(source: source);
      final result = await last.execute({});
      expect(result, equals(FhirInteger(5)));
    });
    test('define "LastIsNull": Last(null)', () async {
      final Last last = Last(source: LiteralNull());
      final result = await last.execute({});
      expect(result, isNull);
    });
  });
}
