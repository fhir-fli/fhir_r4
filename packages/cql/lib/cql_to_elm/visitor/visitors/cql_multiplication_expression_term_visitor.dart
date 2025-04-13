import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlMultiplicationExpressionTermVisitor
    extends CqlBaseVisitor<CqlExpression> {
  CqlMultiplicationExpressionTermVisitor(super.library);

  @override
  CqlExpression visitMultiplicationExpressionTerm(
      MultiplicationExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? operator;
    final List<CqlExpression> operand = <CqlExpression>[];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        operator = child.text;
      } else {
        final result = byContext(child);
        if (result is CqlExpression) {
          operand.add(result);
        }
      }
    }
    if (operand.length == 2) {
      final left = operand.first;
      final right = operand.last;
      switch (operator) {
        case '*':
          return handleMultiply(left, right);
        case '/':
          return handleDivide(left, right);
        case 'div':
          return handleTruncatedDivide(left, right);
        case 'mod':
          return handleModulo(left, right);
        default:
          throw ArgumentError(
              'Unsupported operator $operator in MultiplicationExpressionTerm');
      }
    }
    throw ArgumentError('$thisNode Invalid MultiplicationExpressionTerm');
  }
}
