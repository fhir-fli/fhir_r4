import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlElementExtractorExpressionTermVisitor
    extends CqlBaseVisitor<SingletonFrom> {
  CqlElementExtractorExpressionTermVisitor(super.library);

  @override
  SingletonFrom visitElementExtractorExpressionTerm(
      ElementExtractorExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    CqlExpression? operand;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ExpressionTermContext) {
        operand = byContext(child);
      }
    }
    if (operand != null) {
      return SingletonFrom(operand: operand);
    }
    throw ArgumentError('$thisNode Invalid ElementExtractorExpressionTerm');
  }
}
