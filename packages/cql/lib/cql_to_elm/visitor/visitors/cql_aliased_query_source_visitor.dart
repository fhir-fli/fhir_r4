import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlAliasedQuerySourceVisitor extends CqlBaseVisitor<RelationshipClause> {
  CqlAliasedQuerySourceVisitor(super.library);

  @override
  RelationshipClause visitAliasedQuerySource(AliasedQuerySourceContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    CqlExpression? querySource;
    String? alias;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is QuerySourceContext) {
        querySource = visitQuerySource(child);
      } else if (child is AliasContext) {
        alias = visitAlias(child);
      }
    }
    if (querySource != null && alias != null) {
      return RelationshipClause(alias: alias, expression: querySource);
    } else {
      throw ArgumentError('$thisNode: Invalid AliasedQuerySource');
    }
  }
}
