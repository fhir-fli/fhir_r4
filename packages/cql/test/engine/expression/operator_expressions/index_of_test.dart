import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void indexOfTest() {
  group('indexof', () {
    test('define "IndexOfFound": IndexOf({ 1, 3, 5, 7 }, 5) // 2', () async {
      final indexof = IndexOf(
        source: ListExpression(
          element: [
            LiteralInteger(1),
            LiteralInteger(3),
            LiteralInteger(5),
            LiteralInteger(7),
          ],
        ),
        element: LiteralInteger(5),
      );
      final result = await indexof.execute({});
      expect(result, FhirInteger(2));
    });
    test('define "IndexOfNotFound": IndexOf({ 1, 3, 5, 7 }, 4) // -1', () async {
      final indexof = IndexOf(
        source: ListExpression(
          element: [
            LiteralInteger(1),
            LiteralInteger(3),
            LiteralInteger(5),
            LiteralInteger(7),
          ],
        ),
        element: LiteralInteger(4),
      );
      final result = await indexof.execute({});
      expect(result, FhirInteger(-1));
    });
    test('define "IndexOfIsNull": IndexOf(null, 4)', () async {
      final indexof = IndexOf(
        source: LiteralNull(),
        element: LiteralInteger(4),
      );
      final result = await indexof.execute({});
      expect(result, isNull);
    });
  });
}
