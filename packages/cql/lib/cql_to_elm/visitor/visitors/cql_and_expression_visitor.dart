import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlAndExpressionVisitor extends CqlBaseVisitor<And> {
  CqlAndExpressionVisitor(super.library);

  @override
  And visitAndExpression(AndExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    List<CqlExpression> operand = [];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is! TerminalNodeImpl) {
        final result = byContext(child);
        if (result is CqlExpression) {
          operand.add(result);
        }
      }
    }
    if (operand.length == 2) {
      if (operand.first is LiteralType && operand.last is LiteralType) {
        if (operand.first is! LiteralNull && operand.last is LiteralNull) {
          return And(operand: [
            operand.first,
            As(
                operand: operand.last,
                asType:
                    QName.fromFull((operand.first as LiteralType).valueType))
          ]);
        } else if (operand.first is LiteralNull &&
            operand.last is LiteralNull) {
          return And(operand: [
            As(
                operand: operand.first,
                asType:
                    QName.fromFull((operand.last as LiteralType).valueType)),
            operand.last,
          ]);
        }
      }
      return And(operand: operand);
    }
    throw '$thisNode Invalid number of arguments for And operator';
  }
}
