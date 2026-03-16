import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:test/test.dart';

/// Helper that returns a constant value from execute().
class _ConstExpr extends CqlExpression {
  final dynamic value;
  _ConstExpr(this.value);

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async => value;

  @override
  Map<String, dynamic> toJson() => {'type': 'ConstExpr'};
}

void main() {
  group('OperandRef', () {
    test('returns value found in context by name', () async {
      final ref = OperandRef(name: 'x');
      final result = await ref.execute({'x': fhir.FhirInteger(42)});
      expect(result, equals(fhir.FhirInteger(42)));
    });

    test('returns null when key is missing from context', () async {
      final ref = OperandRef(name: 'missing');
      final result = await ref.execute({'other': 10});
      expect(result, isNull);
    });

    test('returns string value from context', () async {
      final ref = OperandRef(name: 'greeting');
      final result = await ref.execute({'greeting': 'hello'});
      expect(result, equals('hello'));
    });
  });

  group('Current', () {
    test('reads from scope key in context', () async {
      final current = Current(scope: 'X');
      final result = await current.execute({'X': fhir.FhirInteger(7)});
      expect(result, equals(fhir.FhirInteger(7)));
    });

    test('reads from \$current when scope is empty', () async {
      final current = Current(scope: '');
      final result = await current.execute({'\$current': 'hello'});
      expect(result, equals('hello'));
    });

    test('returns null when scope key is missing', () async {
      final current = Current(scope: 'missing');
      final result = await current.execute({});
      expect(result, isNull);
    });
  });

  group('Total', () {
    test('reads from scope key in context', () async {
      final total = Total(scope: 'X');
      final result = await total.execute({'X': fhir.FhirDecimal(100.0)});
      expect(result, equals(fhir.FhirDecimal(100.0)));
    });

    test('reads from \$total when scope is empty', () async {
      final total = Total(scope: '');
      final result = await total.execute({'\$total': fhir.FhirInteger(50)});
      expect(result, equals(fhir.FhirInteger(50)));
    });

    test('returns null when scope key is missing', () async {
      final total = Total(scope: 'absent');
      final result = await total.execute({});
      expect(result, isNull);
    });
  });

  group('Iteration', () {
    test('reads from scope key in context', () async {
      final iteration = Iteration(scope: 'idx');
      final result = await iteration.execute({'idx': fhir.FhirInteger(3)});
      expect(result, equals(fhir.FhirInteger(3)));
    });

    test('reads from \$iteration when scope is empty', () async {
      final iteration = Iteration(scope: '');
      final result =
          await iteration.execute({'\$iteration': fhir.FhirInteger(0)});
      expect(result, equals(fhir.FhirInteger(0)));
    });

    test('returns null when scope key is missing', () async {
      final iteration = Iteration(scope: 'nope');
      final result = await iteration.execute({});
      expect(result, isNull);
    });
  });

  group('ForEach', () {
    test('identity map returns same elements', () async {
      final source = ListExpression(element: [
        LiteralInteger(1),
        LiteralInteger(2),
        LiteralInteger(3),
      ]);
      // The element expression reads the current scope variable
      final element = Current(scope: '\$this');
      final forEach =
          ForEach(source: source, element: element, scope: '\$this');
      final result = await forEach.execute({});
      expect(
          result,
          equals([
            fhir.FhirInteger(1),
            fhir.FhirInteger(2),
            fhir.FhirInteger(3),
          ]));
    });

    test('null source returns null', () async {
      final forEach = ForEach(
        source: LiteralNull(),
        element: Current(scope: '\$this'),
        scope: '\$this',
      );
      final result = await forEach.execute({});
      expect(result, isNull);
    });

    test('empty list source returns empty list', () async {
      final forEach = ForEach(
        source: ListExpression(element: []),
        element: Current(scope: '\$this'),
        scope: '\$this',
      );
      final result = await forEach.execute({});
      expect(result, equals([]));
    });

    test('maps transformation over list elements', () async {
      // ForEach with a constant element expression to verify iteration
      final source = ListExpression(element: [
        LiteralInteger(10),
        LiteralInteger(20),
      ]);
      // Element expression always returns a fixed value
      final element = LiteralString('mapped');
      final forEach =
          ForEach(source: source, element: element, scope: '\$this');
      final result = await forEach.execute({});
      expect(result, equals(['mapped', 'mapped']));
    });

    test('non-list source is wrapped in a list', () async {
      // When source evaluates to a non-list, it gets wrapped as [source]
      final forEach = ForEach(
        source: LiteralInteger(42),
        element: Current(scope: 'item'),
        scope: 'item',
      );
      final result = await forEach.execute({});
      expect(result, equals([fhir.FhirInteger(42)]));
    });
  });

  group('Filter', () {
    test('filters elements where condition is true', () async {
      // Source: [1, 2, 3, 4, 5], condition always true -> all pass
      final source = ListExpression(element: [
        LiteralInteger(1),
        LiteralInteger(2),
        LiteralInteger(3),
      ]);
      final condition = LiteralBoolean(true);
      final filter =
          Filter(source: source, condition: condition, scope: '\$this');
      final result = await filter.execute({});
      expect(
          result,
          equals([
            fhir.FhirInteger(1),
            fhir.FhirInteger(2),
            fhir.FhirInteger(3),
          ]));
    });

    test('null source returns null', () async {
      final filter = Filter(
        source: LiteralNull(),
        condition: LiteralBoolean(true),
        scope: '\$this',
      );
      final result = await filter.execute({});
      expect(result, isNull);
    });

    test('condition false filters out all elements', () async {
      final source = ListExpression(element: [
        LiteralInteger(1),
        LiteralInteger(2),
      ]);
      final condition = LiteralBoolean(false);
      final filter =
          Filter(source: source, condition: condition, scope: '\$this');
      final result = await filter.execute({});
      expect(result, equals([]));
    });

    test('empty list returns empty list', () async {
      final filter = Filter(
        source: ListExpression(element: []),
        condition: LiteralBoolean(true),
        scope: '\$this',
      );
      final result = await filter.execute({});
      expect(result, equals([]));
    });

    test('condition with FhirBoolean true keeps element', () async {
      final source = ListExpression(element: [
        LiteralInteger(10),
      ]);
      // Use a _ConstExpr that returns FhirBoolean(true)
      final condition = _ConstExpr(fhir.FhirBoolean(true));
      final filter =
          Filter(source: source, condition: condition, scope: '\$this');
      final result = await filter.execute({});
      expect(result, equals([fhir.FhirInteger(10)]));
    });
  });

  group('Repeat', () {
    test('null source returns null', () async {
      final repeat = Repeat(
        source: LiteralNull(),
        element: Current(scope: '\$this'),
        scope: '\$this',
      );
      final result = await repeat.execute({});
      expect(result, isNull);
    });

    test('empty source returns empty list', () async {
      final repeat = Repeat(
        source: ListExpression(element: []),
        element: Current(scope: '\$this'),
        scope: '\$this',
      );
      final result = await repeat.execute({});
      expect(result, equals([]));
    });

    test('terminates when no new elements produced', () async {
      // Source: [1, 2], element expression returns null (no new elements)
      // The repeat should terminate immediately since null results are not added
      final repeat = Repeat(
        source: ListExpression(element: [
          LiteralInteger(1),
          LiteralInteger(2),
        ]),
        element: LiteralNull(),
        scope: '\$this',
      );
      final result = await repeat.execute({});
      expect(result, equals([]));
    });
  });

  group('Children', () {
    test('returns children of a map', () async {
      final source = _ConstExpr({'a': 1, 'b': 2, 'c': 3});
      final children = Children(source: source);
      final result = await children.execute({});
      expect(result, equals([1, 2, 3]));
    });

    test('null source returns null', () async {
      final children = Children(source: LiteralNull());
      final result = await children.execute({});
      expect(result, isNull);
    });

    test('returns list elements flattened for list input', () async {
      // For list types, Children returns children of each element flattened
      // Each primitive non-structured value returns [value] as its children
      final source = _ConstExpr([1, 2, 3]);
      final children = Children(source: source);
      final result = await children.execute({});
      // Primitives: _getChildren returns [value] for each
      expect(result, equals([1, 2, 3]));
    });

    test('filters out null values from map children', () async {
      final source = _ConstExpr({'a': 1, 'b': null, 'c': 3});
      final children = Children(source: source);
      final result = await children.execute({});
      expect(result, equals([1, 3]));
    });
  });

  group('Descendents', () {
    test('recursively collects descendants of a map', () async {
      final source = _ConstExpr({
        'a': 1,
        'b': {'c': 2}
      });
      final descendents = Descendents(source: source);
      final result = await descendents.execute({});
      // Map values added then recursed: 1 added + recurse(1)→1, {'c':2} added + recurse→2 added + recurse(2)→2
      expect(
          result,
          equals([
            1,
            1,
            {'c': 2},
            2,
            2
          ]));
    });

    test('null source returns null', () async {
      final descendents = Descendents(source: LiteralNull());
      final result = await descendents.execute({});
      expect(result, isNull);
    });

    test('primitive value returns the value itself', () async {
      final source = _ConstExpr(42);
      final descendents = Descendents(source: source);
      final result = await descendents.execute({});
      // Non-structured value: results.add(value)
      expect(result, equals([42]));
    });
  });
}
