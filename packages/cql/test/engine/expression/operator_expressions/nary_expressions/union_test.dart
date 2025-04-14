import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void unionTest() {
  group('union', () {
    test(
        'define "Union": Interval[1, 5] union Interval[3, 7] // Interval[1, 7]',
        () async {
      final interval1 = LiteralIntegerInterval(
          low: LiteralInteger(1), high: LiteralInteger(5));
      final interval2 = LiteralIntegerInterval(
          low: LiteralInteger(3), high: LiteralInteger(7));
      final union = Union(operand: [interval1, interval2]);
      final result = await union.execute({});
      expect(result,
          equals(CqlInterval(low: FhirInteger(1), high: FhirInteger(7))));
    });
    test(
        'define "UnionIsNull": Interval[3, 5] union (null as Interval<Integer>)',
        () async {
      final interval1 = LiteralIntegerInterval(
          low: LiteralInteger(3), high: LiteralInteger(5));
      final interval2 = LiteralNull();
      final union = Union(operand: [interval1, interval2]);
      final result = await union.execute({});
      expect(result, equals(null));
    });
    test('define "Union": { 1, 2, 3 } union { 4, 5 } // { 1, 2, 3, 4, 5 }', () async {
      final set1 = ListExpression(element: [
        LiteralInteger(1),
        LiteralInteger(2),
        LiteralInteger(3),
      ]);
      final set2 = ListExpression(element: [
        LiteralInteger(4),
        LiteralInteger(5),
      ]);
      final union = Union(operand: [set1, set2]);
      final result = await union.execute({});
      expect(
          result,
          equals([
            FhirInteger(1),
            FhirInteger(2),
            FhirInteger(3),
            FhirInteger(4),
            FhirInteger(5),
          ]));
    });
    test(
        'define "UnionAlternateSyntax": { 1, 2, 3 } | { 4, 5 } // { 1, 2, 3, 4, 5 }',
        () async {
      final set1 = ListExpression(element: [
        LiteralInteger(1),
        LiteralInteger(2),
        LiteralInteger(3),
      ]);
      final set2 = ListExpression(element: [
        LiteralInteger(4),
        LiteralInteger(5),
      ]);
      final union = Union(operand: [set1, set2]);
      final result = await union.execute({});
      expect(
          result,
          equals([
            FhirInteger(1),
            FhirInteger(2),
            FhirInteger(3),
            FhirInteger(4),
            FhirInteger(5),
          ]));
    });
    test('define "UnionWithNull": null union { 4, 5 } // { 4, 5 }', () async {
      final set1 = LiteralNull();
      final set2 = ListExpression(element: [
        LiteralInteger(4),
        LiteralInteger(5),
      ]);
      final union = Union(operand: [set1, set2]);
      final result = await union.execute({});
      expect(
          result,
          equals([
            FhirInteger(4),
            FhirInteger(5),
          ]));
    });
  });
}
