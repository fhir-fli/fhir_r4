import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:test/test.dart';

Map<String, dynamic> _ctx() =>
    {ContextKey.modelResolver: const R4ModelResolver()};

/// Helper to build a Query with an aggregate clause.
///
/// [elements] - the source list elements
/// [alias] - alias for the source (default 'N')
/// [identifier] - accumulator name
/// [starting] - optional starting expression
/// [expression] - the fold expression
/// [where] - optional WHERE filter
/// [distinct] - whether to deduplicate before aggregating
Query _aggregateQuery({
  required List<CqlExpression> elements,
  String alias = 'N',
  required String identifier,
  CqlExpression? starting,
  required CqlExpression expression,
  CqlExpression? where,
  bool distinct = false,
}) {
  return Query(
    source: [
      AliasedQuerySource(
        alias: alias,
        expression: ListExpression(element: elements),
      ),
    ],
    where: where,
    aggregate: AggregateClause(
      identifier: identifier,
      distinct: distinct,
      starting: starting,
      expression: expression,
    ),
  );
}

void main() {
  group('Query.aggregate', () {
    test('basic sum: aggregate s starting 0 : s + N over {1,2,3} => 6',
        () async {
      // from {1,2,3} N aggregate s starting 0 : s + N
      final query = _aggregateQuery(
        elements: [LiteralInteger(1), LiteralInteger(2), LiteralInteger(3)],
        identifier: 's',
        starting: LiteralInteger(0),
        expression: Add(operand: [AliasRef(name: 's'), AliasRef(name: 'N')]),
      );
      final result = await query.execute(_ctx());
      expect(result, equals(CqlInteger(6)));
    });

    test('product: aggregate p starting 1 : p * N over {2,3,4} => 24',
        () async {
      final query = _aggregateQuery(
        elements: [LiteralInteger(2), LiteralInteger(3), LiteralInteger(4)],
        identifier: 'p',
        starting: LiteralInteger(1),
        expression:
            Multiply(operand: [AliasRef(name: 'p'), AliasRef(name: 'N')]),
      );
      final result = await query.execute(_ctx());
      expect(result, equals(CqlInteger(24)));
    });

    test('count via aggregate: aggregate c starting 0 : c + 1 => 3', () async {
      final query = _aggregateQuery(
        elements: [LiteralInteger(10), LiteralInteger(20), LiteralInteger(30)],
        identifier: 'c',
        starting: LiteralInteger(0),
        expression: Add(operand: [AliasRef(name: 'c'), LiteralInteger(1)]),
      );
      final result = await query.execute(_ctx());
      expect(result, equals(CqlInteger(3)));
    });

    test('string concatenation: aggregate acc starting "" : acc + N', () async {
      final query = _aggregateQuery(
        elements: [
          LiteralString('a'),
          LiteralString('b'),
          LiteralString('c'),
        ],
        identifier: 'acc',
        starting: LiteralString(''),
        expression:
            Concatenate(operand: [AliasRef(name: 'acc'), AliasRef(name: 'N')]),
      );
      final result = await query.execute(_ctx());
      expect(result, equals(CqlString('abc')));
    });

    test('no starting clause: accumulator starts as null', () async {
      // When there's no starting clause, the accumulator begins as null.
      // The first iteration evaluates the expression with acc = null.
      // Coalesce(acc, N) should return N on the first iteration, then
      // Add(acc, N) thereafter. We use Coalesce to demonstrate null start.
      final query = _aggregateQuery(
        elements: [LiteralInteger(5)],
        identifier: 'acc',
        // no starting
        expression:
            Coalesce(operand: [AliasRef(name: 'acc'), AliasRef(name: 'N')]),
      );
      final result = await query.execute(_ctx());
      // First (and only) iteration: Coalesce(null, 5) = 5
      expect(result, equals(CqlInteger(5)));
    });

    test('with WHERE filter: aggregate only applies to filtered rows',
        () async {
      // from {1,2,3,4,5} N where N > 3 aggregate s starting 0 : s + N
      // filtered rows: {4, 5}, sum = 9
      final query = _aggregateQuery(
        elements: [
          LiteralInteger(1),
          LiteralInteger(2),
          LiteralInteger(3),
          LiteralInteger(4),
          LiteralInteger(5),
        ],
        identifier: 's',
        starting: LiteralInteger(0),
        expression: Add(operand: [AliasRef(name: 's'), AliasRef(name: 'N')]),
        where: Greater(operand: [AliasRef(name: 'N'), LiteralInteger(3)]),
      );
      final result = await query.execute(_ctx());
      expect(result, equals(CqlInteger(9)));
    });

    test('distinct aggregate: deduplicates before aggregating', () async {
      // from {1,2,2,3,3,3} N aggregate distinct s starting 0 : s + N
      // distinct rows: {1, 2, 3}, sum = 6
      final query = _aggregateQuery(
        elements: [
          LiteralInteger(1),
          LiteralInteger(2),
          LiteralInteger(2),
          LiteralInteger(3),
          LiteralInteger(3),
          LiteralInteger(3),
        ],
        identifier: 's',
        starting: LiteralInteger(0),
        expression: Add(operand: [AliasRef(name: 's'), AliasRef(name: 'N')]),
        distinct: true,
      );
      final result = await query.execute(_ctx());
      expect(result, equals(CqlInteger(6)));
    });

    test('empty source after filter: returns starting value', () async {
      // from {1,2,3} N where N > 10 aggregate s starting 42 : s + N
      // no rows pass filter, so accumulator stays at starting value
      final query = _aggregateQuery(
        elements: [LiteralInteger(1), LiteralInteger(2), LiteralInteger(3)],
        identifier: 's',
        starting: LiteralInteger(42),
        expression: Add(operand: [AliasRef(name: 's'), AliasRef(name: 'N')]),
        where: Greater(operand: [AliasRef(name: 'N'), LiteralInteger(10)]),
      );
      final result = await query.execute(_ctx());
      expect(result, equals(CqlInteger(42)));
    });

    test('null source: returns null', () async {
      // Query with a source expression that evaluates to null
      final query = Query(
        source: [
          AliasedQuerySource(
            alias: 'N',
            expression: LiteralNull(),
          ),
        ],
        aggregate: AggregateClause(
          identifier: 's',
          distinct: false,
          starting: LiteralInteger(0),
          expression: Add(operand: [AliasRef(name: 's'), AliasRef(name: 'N')]),
        ),
      );
      final result = await query.execute(_ctx());
      expect(result, isNull);
    });

    test('single element: fold over one row', () async {
      // from {7} N aggregate s starting 0 : s + N => 7
      final query = _aggregateQuery(
        elements: [LiteralInteger(7)],
        identifier: 's',
        starting: LiteralInteger(0),
        expression: Add(operand: [AliasRef(name: 's'), AliasRef(name: 'N')]),
      );
      final result = await query.execute(_ctx());
      expect(result, equals(CqlInteger(7)));
    });
  });
}
