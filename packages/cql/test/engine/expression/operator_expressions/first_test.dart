import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void firstTest() {
  group('first', () {
    test('define "First1": First({ 1, 2, 5 }) // 1', () async {
      final list = ListExpression(element: [
        LiteralInteger(1),
        LiteralInteger(2),
        LiteralInteger(5),
      ]);
      final first = First(source: list);
      final result = await first.execute({});
      expect(result, equals(FhirInteger(1)));
    });
    test('define "FirstIsNull": First(null)', () async {
      final first = First(source: LiteralNull());
      final result = await first.execute({});
      expect(result, isNull);
    });
  });
}
