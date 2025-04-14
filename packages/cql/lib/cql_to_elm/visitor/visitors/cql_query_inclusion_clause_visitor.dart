import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlQueryInclusionClauseVisitor extends CqlBaseVisitor<dynamic> {
  CqlQueryInclusionClauseVisitor(super.library);

  @override
  dynamic visitQueryInclusionClause(QueryInclusionClauseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is WithClauseContext) {
        return visitWithClause(child);
      } else if (child is WithoutClauseContext) {
        return visitWithoutClause(child);
      }
    }
    throw ArgumentError('$thisNode Invalid QueryInclusionClause');
  }
}
