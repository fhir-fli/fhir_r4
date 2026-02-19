import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlWithoutClauseVisitor extends CqlBaseVisitor<Without> {
  CqlWithoutClauseVisitor(super.library);

  @override
  Without visitWithoutClause(WithoutClauseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    if (ctx.getChild(1) is AliasedQuerySourceContext) {
      final RelationshipClause source =
          visitAliasedQuerySource(ctx.getChild(1) as AliasedQuerySourceContext);
      // Add the Without alias to the current query scope so suchThat can see it
      if (source.alias != null) {
        CqlBaseVisitor.addAliasToCurrentScope(source.alias!);
      }
      final suchThat =
          ctx.getChild(3) == null ? null : byContext(ctx.getChild(3)!);
      return Without(
          type: 'Without',
          alias: source.alias,
          expression: source.expression,
          suchThat: suchThat is CqlExpression ? suchThat : null);
    }
    throw ArgumentError('$thisNode Invalid WithoutClause');
  }
}
