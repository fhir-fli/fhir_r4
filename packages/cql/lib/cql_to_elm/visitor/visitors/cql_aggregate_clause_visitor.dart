import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlAggregateClauseVisitor extends CqlBaseVisitor<AggregateClause> {
  CqlAggregateClauseVisitor(super.library);

  @override
  AggregateClause visitAggregateClause(AggregateClauseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    bool distinct = false;
    String? identifier;
    CqlExpression? startingClause;
    CqlExpression? expression;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is IdentifierContext) {
        identifier = visitIdentifier(child);
      } else if (child is StartingClauseContext) {
        startingClause = visitStartingClause(child);
      } else if (child is ExpressionContext) {
        expression = byContext(child);
      } else if (child is TerminalNodeImpl) {
        if (child.text == 'distinct') {
          distinct = true;
        }
      }
    }
    if (identifier != null && expression != null) {
      return AggregateClause(
        identifier: identifier,
        expression: expression,
        distinct: distinct,
        starting: startingClause,
      );
    }
    throw ArgumentError('$thisNode Invalid AggregateClause');
  }
}
