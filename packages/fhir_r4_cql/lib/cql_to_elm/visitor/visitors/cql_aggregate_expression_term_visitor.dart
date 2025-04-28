import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlAggregateExpressionTermVisitor extends CqlBaseVisitor<CqlExpression> {
  CqlAggregateExpressionTermVisitor(super.library);

  @override
  CqlExpression visitAggregateExpressionTerm(
      AggregateExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    bool distinct = false;
    CqlExpression? expression;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        distinct = child.text == 'distinct' ? true : false;
      } else {
        final result = byContext(child);
        if (result is CqlExpression) {
          expression = result;
        }
      }
    }
    if (expression != null) {
      return distinct
          ? Distinct(operand: expression)
          : Flatten(operand: expression);
    }
    throw ArgumentError('$thisNode Invalid AggregateExpressionTerm');
  }
}
