import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlBetweenExpressionVisitor extends CqlBaseVisitor<And> {
  CqlBetweenExpressionVisitor(super.library);

  @override
  And visitBetweenExpression(BetweenExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    CqlExpression? operand;
    CqlExpression? left;
    CqlExpression? right;
    // bool properly = false;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        if (child.text == 'properly') {
          // properly = true;
        }
      } else {
        final result = byContext(child);
        if (result is CqlExpression) {
          if (operand == null) {
            operand = result;
          } else if (left == null) {
            left = result;
          } else {
            right ??= result;
          }
        }
      }
    }
    if (operand != null && left != null && right != null) {
      return And(operand: [
        GreaterOrEqual(operand: [operand, left]),
        LessOrEqual(operand: [operand, right]),
      ]);
    }
    throw ArgumentError('$thisNode Invalid BetweenExpression');
  }
}
