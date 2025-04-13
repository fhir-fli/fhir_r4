import 'package:cql/cql.dart' as cql;
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void skipTest() {
  group('skip', () {
    test('define "Skip2": Skip({ 1, 2, 3, 4, 5 }, 2) // { 3, 4, 5 }', () {
      final list = cql.ListExpression(element: [
        cql.LiteralInteger(1),
        cql.LiteralInteger(2),
        cql.LiteralInteger(3),
        cql.LiteralInteger(4),
        cql.LiteralInteger(5),
      ]);
      final skip = cql.Slice(
          source: list,
          startIndex: cql.LiteralInteger(2),
          endIndex: cql.NamedTypeSpecifier(
              namespace: cql.QName.fromDataType('Null')));
      final result = skip.execute({});
      expect(result, equals([FhirInteger(3), FhirInteger(4), FhirInteger(5)]));
    });

    test('define "SkipNull": Skip({ 1, 3, 5 }, null) // { 1, 3, 5 }', () {
      final list = cql.ListExpression(element: [
        cql.LiteralInteger(1),
        cql.LiteralInteger(3),
        cql.LiteralInteger(5),
      ]);
      final skip = cql.Slice(
          source: list,
          startIndex: cql.LiteralNull(),
          endIndex: cql.NamedTypeSpecifier(
              namespace: cql.QName.fromDataType('Null')));
      final result = skip.execute({});
      expect(result, equals([FhirInteger(1), FhirInteger(3), FhirInteger(5)]));
    });
    test('define "SkipEmpty": Skip({ 1, 3, 5 }, -1) // { }', () {
      final list = cql.ListExpression(element: [
        cql.LiteralInteger(1),
        cql.LiteralInteger(3),
        cql.LiteralInteger(5),
      ]);
      final skip = cql.Slice(
          source: list,
          startIndex: cql.LiteralInteger(-1),
          endIndex: cql.NamedTypeSpecifier(
              namespace: cql.QName.fromDataType('Null')));
      final result = skip.execute({});
      expect(result, equals([]));
    });
    test('define "SkipIsNull": Skip(null, 2)', () {
      final skip = cql.Slice(
          source: cql.LiteralNull(),
          startIndex: cql.LiteralInteger(2),
          endIndex: cql.NamedTypeSpecifier(
              namespace: cql.QName.fromDataType('Null')));
      final result = skip.execute({});
      expect(result, equals(null));
    });
  });
}
