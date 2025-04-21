import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void anyTrue() {
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
}
