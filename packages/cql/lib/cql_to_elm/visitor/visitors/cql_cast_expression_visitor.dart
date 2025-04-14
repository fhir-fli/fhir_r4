import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlCastExpressionVisitor extends CqlBaseVisitor<As> {
  CqlCastExpressionVisitor(super.library);

  @override
  As visitCastExpression(CastExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    CqlExpression? operand;
    TypeSpecifierExpression? typeSpecifier;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ExpressionContext) {
        operand = byContext(child);
      } else if (child is TypeSpecifierContext) {
        typeSpecifier = visitTypeSpecifier(child);
      }
    }

    if (operand != null && typeSpecifier != null) {
      return As(operand: operand, resultTypeSpecifier: typeSpecifier);
    }

    throw ArgumentError('$thisNode Invalid CastExpression');
  }
}
