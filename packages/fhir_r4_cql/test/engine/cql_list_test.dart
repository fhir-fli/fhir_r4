import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart' as cql;
import 'package:test/test.dart';

void main() {
  group('union', () {
    test(
        'define "Union": Interval[1, 5] union Interval[3, 7] // Interval[1, 7]',
        () async {
      final interval1 = cql.LiteralIntegerInterval(
          low: cql.LiteralInteger(1), high: cql.LiteralInteger(5));
      final interval2 = cql.LiteralIntegerInterval(
          low: cql.LiteralInteger(3), high: cql.LiteralInteger(7));
      final union = cql.Union(operand: [interval1, interval2]);
      final result = await union.execute({});
      expect(result,
          equals(cql.CqlInterval(low: FhirInteger(1), high: FhirInteger(7))));
    });
    test(
        'define "UnionIsNull": Interval[3, 5] union (null as Interval<Integer>)',
        () async {
      final interval1 = cql.LiteralIntegerInterval(
          low: cql.LiteralInteger(3), high: cql.LiteralInteger(5));
      final interval2 = cql.LiteralNull();
      final union = cql.Union(operand: [interval1, interval2]);
      final result = await union.execute({});
      expect(result, equals(null));
    });
    test('define "Union": { 1, 2, 3 } union { 4, 5 } // { 1, 2, 3, 4, 5 }',
        () async {
      final set1 = cql.ListExpression(element: [
        cql.LiteralInteger(1),
        cql.LiteralInteger(2),
        cql.LiteralInteger(3),
      ]);
      final set2 = cql.ListExpression(element: [
        cql.LiteralInteger(4),
        cql.LiteralInteger(5),
      ]);
      final union = cql.Union(operand: [set1, set2]);
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
      final set1 = cql.ListExpression(element: [
        cql.LiteralInteger(1),
        cql.LiteralInteger(2),
        cql.LiteralInteger(3),
      ]);
      final set2 = cql.ListExpression(element: [
        cql.LiteralInteger(4),
        cql.LiteralInteger(5),
      ]);
      final union = cql.Union(operand: [set1, set2]);
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
      final set1 = cql.LiteralNull();
      final set2 = cql.ListExpression(element: [
        cql.LiteralInteger(4),
        cql.LiteralInteger(5),
      ]);
      final union = cql.Union(operand: [set1, set2]);
      final result = await union.execute({});
      expect(
          result,
          equals([
            FhirInteger(4),
            FhirInteger(5),
          ]));
    });
  });

  group('Intersect', () {
    test(
        """define "Intersect": Interval[1, 5] intersect Interval[3, 7] // Interval[3, 5]""",
        () async {
      final left = cql.LiteralIntegerInterval(
        low: cql.LiteralInteger(1),
        lowClosed: cql.LiteralBoolean(true),
        high: cql.LiteralInteger(5),
        highClosed: cql.LiteralBoolean(true),
      );
      final right = cql.LiteralIntegerInterval(
        low: cql.LiteralInteger(3),
        lowClosed: cql.LiteralBoolean(true),
        high: cql.LiteralInteger(7),
        highClosed: cql.LiteralBoolean(true),
      );
      final result = cql.Intersect(operand: [left, right]);
      expect(
          await result.execute({}),
          equals(cql.CqlInterval<FhirInteger>(
            low: FhirInteger(3),
            lowClosed: true,
            high: FhirInteger(5),
            highClosed: true,
          )));
    });

    test(
        """define "IntersectIsNull": Interval[3, 5] intersect (null as Interval<Integer>)""",
        () async {
      final left = cql.LiteralIntegerInterval(
        low: cql.LiteralInteger(3),
        lowClosed: cql.LiteralBoolean(true),
        high: cql.LiteralInteger(5),
        highClosed: cql.LiteralBoolean(true),
      );
      final right = cql.As(
          operand: cql.LiteralNull(), resultTypeName: 'Interval<Integer>');
      final result = cql.Intersect(operand: [left, right]);
      expect(await result.execute({}), equals(null));
    });
  });

  group('except', () {
    test(
        'define "Except": Interval[0, 5] except Interval[3, 7] // Interval[0, 2]',
        () async {
      final left = cql.LiteralIntegerInterval(
        low: cql.LiteralInteger(0),
        high: cql.LiteralInteger(5),
      );
      final right = cql.LiteralIntegerInterval(
        low: cql.LiteralInteger(3),
        high: cql.LiteralInteger(7),
      );
      final except = cql.Except(operand: [left, right]);
      final result = await except.execute({});
      expect(result,
          equals(cql.CqlInterval(low: FhirInteger(0), high: FhirInteger(2))));
    });
    test('define "ExceptIsNull": null except Interval[-1, 7]', () async {
      final left = cql.LiteralNull();
      final right = cql.LiteralIntegerInterval(
        low: cql.LiteralInteger(-1),
        high: cql.LiteralInteger(7),
      );
      final except = cql.Except(operand: [left, right]);
      final result = await except.execute({});
      expect(result, equals(null));
    });
    test('define "Except": { 1, 3, 5, 7 } except { 1, 3 } // { 5, 7 }',
        () async {
      final left = cql.ListExpression(element: [
        cql.LiteralInteger(1),
        cql.LiteralInteger(3),
        cql.LiteralInteger(5),
        cql.LiteralInteger(7),
      ]);
      final right = cql.ListExpression(element: [
        cql.LiteralInteger(1),
        cql.LiteralInteger(3),
      ]);
      final except = cql.Except(operand: [left, right]);
      final result = await except.execute({});
      expect(
          result,
          equals([
            FhirInteger(5),
            FhirInteger(7),
          ]));
    });
    test('define "ExceptLeft": { 1, 3, 5, 7 } except null // { 1, 3, 5, 7 }',
        () async {
      final left = cql.ListExpression(element: [
        cql.LiteralInteger(1),
        cql.LiteralInteger(3),
        cql.LiteralInteger(5),
        cql.LiteralInteger(7),
      ]);
      final right = cql.LiteralNull();
      final except = cql.Except(operand: [left, right]);
      final result = await except.execute({});
      expect(
          result,
          equals([
            FhirInteger(1),
            FhirInteger(3),
            FhirInteger(5),
            FhirInteger(7),
          ]));
    });
    test(
        'define "ExceptWithNull": { 1, 3, 5, 7, null } except { 1, 3, null } // { 5, 7 }',
        () async {
      final left = cql.ListExpression(element: [
        cql.LiteralInteger(1),
        cql.LiteralInteger(3),
        cql.LiteralInteger(5),
        cql.LiteralInteger(7),
        cql.LiteralNull(),
      ]);
      final right = cql.ListExpression(element: [
        cql.LiteralInteger(1),
        cql.LiteralInteger(3),
        cql.LiteralNull(),
      ]);
      final except = cql.Except(operand: [left, right]);
      final result = await except.execute({});
      expect(
          result,
          equals([
            FhirInteger(5),
            FhirInteger(7),
          ]));
    });
    test('define "ExceptIsNull": null except { 1, 3, 5 }', () async {
      final left = cql.LiteralNull();
      final right = cql.ListExpression(element: [
        cql.LiteralInteger(1),
        cql.LiteralInteger(3),
        cql.LiteralInteger(5),
      ]);
      final except = cql.Except(operand: [left, right]);
      final result = await except.execute({});
      expect(result, equals(null));
    });
  });

  group('distinct', () {
    test('define "Distinct": distinct { 1, 3, 3, 5, 5 } // { 1, 3, 5 }',
        () async {
      final list = cql.ListExpression(element: [
        cql.LiteralInteger(1),
        cql.LiteralInteger(3),
        cql.LiteralInteger(3),
        cql.LiteralInteger(5),
        cql.LiteralInteger(5)
      ]);
      final distinct = cql.Distinct(operand: list);
      final result = await distinct.execute({});
      expect(result, [
        FhirInteger(1),
        FhirInteger(3),
        FhirInteger(5),
      ]);
    });
    test('define "DistinctIsNull": distinct null // null', () async {
      final distinct = cql.Distinct(operand: cql.LiteralNull());
      final result = await distinct.execute({});
      expect(result, isNull);
    });
  });

  group('flatten', () {
    test(
        'define "Flatten": flatten { { 1, 2 }, { 3, 4, 5 } } // { 1, 2, 3, 4, 5 }',
        () async {
      final list1 = cql.ListExpression(element: [
        cql.LiteralInteger(1),
        cql.LiteralInteger(2),
      ]);
      final list2 = cql.ListExpression(element: [
        cql.LiteralInteger(3),
        cql.LiteralInteger(4),
        cql.LiteralInteger(5),
      ]);
      final flatten =
          cql.Flatten(operand: cql.ListExpression(element: [list1, list2]));
      final result = await flatten.execute({});
      expect(
          result,
          equals([
            FhirInteger(1),
            FhirInteger(2),
            FhirInteger(3),
            FhirInteger(4),
            FhirInteger(5)
          ]));
    });
    test('define "FlattenIsNull": flatten null', () async {
      final flatten = cql.Flatten(operand: cql.LiteralNull());
      final result = await flatten.execute({});
      expect(result, isNull);
    });
  });

  group('SingletonFrom', () {
    test('define "SingletonFrom": singleton from { 1 } // 1', () async {
      final list = cql.ListExpression(element: [cql.LiteralInteger(1)]);
      final singletonFrom = cql.SingletonFrom(operand: list);
      final result = await singletonFrom.execute({});
      expect(result, equals(FhirInteger(1)));
    });
    test('define "SingletonFromError": singleton from { 1, 3, 5 }', () async {
      final list = cql.ListExpression(element: [
        cql.LiteralInteger(1),
        cql.LiteralInteger(3),
        cql.LiteralInteger(5)
      ]);
      final singletonFrom = cql.SingletonFrom(operand: list);
      expect(() => singletonFrom.execute({}), throwsA(isA<cql.CqlException>()));
    });
    test('define "SingletonFromIsNull": singleton from (null as List<Integer>)',
        () async {
      final singletonFrom = cql.SingletonFrom(operand: cql.LiteralNull());
      final result = await singletonFrom.execute({});
      expect(result, isNull);
    });
  });

  group('Tail', () {
    test('define "Tail234": Tail({ 1, 2, 3, 4 }) // { 2, 3, 4 }', () async {
      final list = cql.ListExpression(element: [
        cql.LiteralInteger(1),
        cql.LiteralInteger(2),
        cql.LiteralInteger(3),
        cql.LiteralInteger(4),
      ]);

      final tailExpr = cql.Tail(operand: list);
      final result = await tailExpr.execute({});
      expect(
          result,
          equals([
            FhirInteger(2),
            FhirInteger(3),
            FhirInteger(4),
          ]));
    });

    test('define "TailEmpty": Tail({ }) // { }', () async {
      final list = cql.ListExpression(element: []);

      final tailExpr = cql.Tail(operand: list);
      final result = await tailExpr.execute({});
      expect(result, equals(<dynamic>[]));
    });

    test('define "TailIsNull": Tail(null)', () async {
      final tailExpr = cql.Tail(operand: cql.LiteralNull());
      final result = await tailExpr.execute({});
      expect(result, equals(null));
    });
  });

  group('first', () {
    test('define "First1": First({ 1, 2, 5 }) // 1', () async {
      final list = cql.ListExpression(element: [
        cql.LiteralInteger(1),
        cql.LiteralInteger(2),
        cql.LiteralInteger(5),
      ]);
      final first = cql.First(source: list);
      final result = await first.execute({});
      expect(result, equals(FhirInteger(1)));
    });
    test('define "FirstIsNull": First(null)', () async {
      final first = cql.First(source: cql.LiteralNull());
      final result = await first.execute({});
      expect(result, isNull);
    });
  });

  group('last', () {
    test('define "Last5": Last({ 1, 3, 5 }) // 5', () async {
      final cql.ListExpression source = cql.ListExpression(
        element: [
          cql.LiteralInteger(1),
          cql.LiteralInteger(3),
          cql.LiteralInteger(5),
        ],
      );
      final cql.Last last = cql.Last(source: source);
      final result = await last.execute({});
      expect(result, equals(FhirInteger(5)));
    });
    test('define "LastIsNull": Last(null)', () async {
      final cql.Last last = cql.Last(source: cql.LiteralNull());
      final result = await last.execute({});
      expect(result, isNull);
    });
  });

  group('Skip', () {
    test('define "Skip2": Skip({ 1, 2, 3, 4, 5 }, 2) // { 3, 4, 5 }', () async {
      final list = cql.ListExpression(element: [
        cql.LiteralInteger(1),
        cql.LiteralInteger(2),
        cql.LiteralInteger(3),
        cql.LiteralInteger(4),
        cql.LiteralInteger(5),
      ]);

      final skipExpr = cql.Skip(operand: [
        list,
        cql.LiteralInteger(2),
      ]);

      final result = await skipExpr.execute({});
      expect(result, equals([FhirInteger(3), FhirInteger(4), FhirInteger(5)]));
    });

    test('define "SkipNull": Skip({ 1, 3, 5 }, null) // { 1, 3, 5 }', () async {
      final list = cql.ListExpression(element: [
        cql.LiteralInteger(1),
        cql.LiteralInteger(3),
        cql.LiteralInteger(5),
      ]);

      final skipExpr = cql.Skip(operand: [
        list,
        cql.LiteralNull(),
      ]);

      final result = await skipExpr.execute({});
      expect(result, equals([FhirInteger(1), FhirInteger(3), FhirInteger(5)]));
    });

    test('define "SkipEmpty": Skip({ 1, 3, 5 }, -1) // { }', () async {
      final list = cql.ListExpression(element: [
        cql.LiteralInteger(1),
        cql.LiteralInteger(3),
        cql.LiteralInteger(5),
      ]);

      final skipExpr = cql.Skip(operand: [
        list,
        cql.LiteralInteger(-1),
      ]);

      final result = await skipExpr.execute({});
      expect(result, equals([]));
    });

    test('define "SkipIsNull": Skip(null, 2)', () async {
      final skipExpr = cql.Skip(operand: [
        cql.LiteralNull(),
        cql.LiteralInteger(2),
      ]);

      final result = await skipExpr.execute({});
      expect(result, equals(null));
    });
  });

  group('Take', () {
    test('define "Take2": Take({ 1, 2, 3, 4 }, 2) // { 1, 2 }', () async {
      final list = cql.ListExpression(element: [
        cql.LiteralInteger(1),
        cql.LiteralInteger(2),
        cql.LiteralInteger(3),
        cql.LiteralInteger(4),
      ]);

      final takeExpr = cql.Take(operand: [
        list,
        cql.LiteralInteger(2),
      ]);

      final result = await takeExpr.execute({});
      expect(result, equals([FhirInteger(1), FhirInteger(2)]));
    });

    test('define "TakeTooMany": Take({ 1, 2 }, 3) // { 1, 2 }', () async {
      final list = cql.ListExpression(element: [
        cql.LiteralInteger(1),
        cql.LiteralInteger(2),
      ]);

      final takeExpr = cql.Take(operand: [
        list,
        cql.LiteralInteger(3),
      ]);

      final result = await takeExpr.execute({});
      expect(result, equals([FhirInteger(1), FhirInteger(2)]));
    });

    test('define "TakeEmpty": Take({ 1, 2, 3, 4 }, null) // { }', () async {
      final list = cql.ListExpression(element: [
        cql.LiteralInteger(1),
        cql.LiteralInteger(2),
        cql.LiteralInteger(3),
        cql.LiteralInteger(4),
      ]);

      final takeExpr = cql.Take(operand: [
        list,
        cql.LiteralNull(),
      ]);

      final result = await takeExpr.execute({});
      expect(result, equals([]));
    });

    test('define "TakeIsNull": Take(null, 2)', () async {
      final takeExpr = cql.Take(operand: [
        cql.LiteralNull(),
        cql.LiteralInteger(2),
      ]);

      final result = await takeExpr.execute({});
      expect(result, equals(null));
    });
  });
}
