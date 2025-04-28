import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlWithClauseVisitor extends CqlBaseVisitor<With> {
  CqlWithClauseVisitor(super.library);

  @override
  With visitWithClause(WithClauseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    if (ctx.getChild(1) is AliasedQuerySourceContext) {
      final RelationshipClause source =
          visitAliasedQuerySource(ctx.getChild(1) as AliasedQuerySourceContext);
      final suchThat =
          ctx.getChild(3) == null ? null : byContext(ctx.getChild(3)!);
      return With(
          alias: source.alias,
          expression: source.expression,
          suchThat: suchThat is CqlExpression ? suchThat : null);
    }
    throw ArgumentError('$thisNode Invalid WithClause');
  }
}
