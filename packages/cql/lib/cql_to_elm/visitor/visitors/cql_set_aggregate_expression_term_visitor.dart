import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlSetAggregateExpressionTermVisitor
    extends CqlBaseVisitor<CqlExpression> {
  CqlSetAggregateExpressionTermVisitor(super.library);

  @override
  CqlExpression visitSetAggregateExpressionTerm(
      SetAggregateExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    bool expandOrCollapse = true;
    CqlExpression? expression;
    CqlExpression? perExpression;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        expandOrCollapse = child.text == 'expand';
      } else if (child is ExpressionContext) {
        if (expression == null) {
          expression = byContext(child);
        } else {
          perExpression = byContext(child);
        }
      } else if (child is DateTimePrecisionContext) {
        perExpression = LiteralQuantity(LiteralDecimal(1),
            unit: visitDateTimePrecision(child));
      }
    }
    if (expression != null) {
      final expressionList =
          perExpression == null ? [expression] : [expression, perExpression];
      if (expandOrCollapse) {
        return Expand(operand: expressionList);
      } else {
        return Collapse(operand: expressionList);
      }
    }
    throw ArgumentError('$thisNode Invalid SetAggregateExpressionTerm');
  }
}
