import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlNotExpressionVisitor extends CqlBaseVisitor<Not> {
  CqlNotExpressionVisitor(super.library);

  @override
  Not visitNotExpression(NotExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is! TerminalNodeImpl) {
        final result = byContext(child);
        if (result is CqlExpression) {
          return Not(operand: result);
        }
      }
    }
    throw ArgumentError('$thisNode Invalid NotExpression');
  }
}
