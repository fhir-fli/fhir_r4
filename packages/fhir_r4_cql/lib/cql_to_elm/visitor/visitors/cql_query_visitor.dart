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
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is SourceClauseContext) {
        source.addAll(visitSourceClause(child));
      } else if (child is LetClauseContext) {
        let.add(visitLetClause(child));
      } else if (child is QueryInclusionClauseContext) {
        relationship.add(visitQueryInclusionClause(child));
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
    return Query(
      source: source,
      let: let.isEmpty ? null : let,
      relationship: relationship.isEmpty ? null : relationship,
      where: where,
      returnClause: returnClause,
      sort: sort,
      aggregate: aggregateClause,
    );
  }
}
