import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlQueryVisitor extends CqlBaseVisitor<Query> {
  CqlQueryVisitor(super.library);

  @override
  Query visitQuery(QueryContext ctx) {
    printIf(ctx);
    List<AliasedQuerySource> source = [];
    List<LetClause> let = [];
    List<RelationshipClause> relationship = [];
    CqlExpression? where;
    AggregateClause? aggregateClause;
    ReturnClause? returnClause;
    SortClause? sort;

    // First pass: collect source aliases so they're available for scope
    // tracking during the rest of the query processing.
    final aliases = <String>{};
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is SourceClauseContext) {
        source.addAll(visitSourceClause(child));
        for (final s in source) {
          aliases.add(s.alias);
        }
      }
    }

    // Push aliases into scope before processing the rest of the query
    CqlBaseVisitor.pushQueryScope(aliases);
    try {
      for (final child in ctx.children ?? <ParseTree>[]) {
        if (child is SourceClauseContext) {
          // Already processed above
        } else if (child is LetClauseContext) {
          // visitLetClause registers each let identifier incrementally
          // so later let items can reference earlier ones.
          let.addAll(visitLetClause(child));
        } else if (child is QueryInclusionClauseContext) {
          // With/without introduce their own alias into scope
          final rel = visitQueryInclusionClause(child);
          relationship.add(rel);
          if (rel.alias != null) aliases.add(rel.alias!);
        } else if (child is WhereClauseContext) {
          where = visitWhereClause(child);
        } else if (child is AggregateClauseContext) {
          aggregateClause = visitAggregateClause(child);
        } else if (child is ReturnClauseContext) {
          returnClause = visitReturnClause(child);
        } else if (child is SortClauseContext) {
          sort = visitSortClause(child);
        }
      }
    } finally {
      CqlBaseVisitor.popQueryScope();
    }

    final query = Query(
      source: source,
      let: let.isEmpty ? null : let,
      relationship: relationship.isEmpty ? null : relationship,
      where: where,
      returnClause: returnClause,
      sort: sort,
      aggregate: aggregateClause,
    );

    // When the return clause is FHIRHelpers.ToXxx(As(..., FHIR type)),
    // the reference translator splits this into a nested query:
    //   inner: original query with return = As(...)
    //   outer: X alias, return FHIRHelpers.ToXxx(X) with distinct: false
    return _maybeWrapReturnWithConversion(query);
  }

  /// Detects when a query's return clause is a FHIRHelpers conversion wrapping
  /// an As cast to a FHIR type, and restructures into a nested query to match
  /// the reference translator's output.
  Query _maybeWrapReturnWithConversion(Query query) {
    if (query.returnClause == null) return query;
    final expr = query.returnClause!.expression;
    if (expr is! FunctionRef) return query;
    if (expr.libraryName != 'FHIRHelpers') return query;
    if (expr.operand == null || expr.operand!.length != 1) return query;
    if (expr.operand![0] is! As) return query;

    // The return clause is FHIRHelpers.ToXxx(As(..., FHIR type))
    // Restructure into nested query.
    final innerAs = expr.operand![0];
    final helperName = expr.name;

    // Inner query: same as original but return = As(...)
    final innerQuery = Query(
      source: query.source,
      let: query.let,
      relationship: query.relationship,
      where: query.where,
      returnClause: ReturnClause(expression: innerAs),
      sort: query.sort,
      aggregate: query.aggregate,
    );

    // Outer query: X alias wrapping inner query,
    // return FHIRHelpers.ToXxx(X) with distinct: false
    const outerAlias = 'X';
    return Query(
      source: [
        AliasedQuerySource(alias: outerAlias, expression: innerQuery),
      ],
      returnClause: ReturnClause(
        distinct: false,
        expression: FunctionRef(
          name: helperName,
          libraryName: 'FHIRHelpers',
          operand: [AliasRef(name: outerAlias)],
        ),
      ),
    );
  }
}
