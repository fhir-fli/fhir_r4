import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlExistenceExpressionVisitor extends CqlBaseVisitor<Exists> {
  CqlExistenceExpressionVisitor(super.library);

  @override
  Exists visitExistenceExpression(ExistenceExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is! TerminalNodeImpl) {
        final result = byContext(child);
        if (result is CqlExpression) {
          return Exists(operand: result);
        }
      }
    }
    throw ArgumentError('$thisNode Invalid ExistenceExpression');
  }
}
