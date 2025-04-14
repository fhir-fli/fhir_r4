import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void allTrue() {
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
}
