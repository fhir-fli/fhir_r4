import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlPowerExpressionTermVisitor extends CqlBaseVisitor<dynamic> {
  CqlPowerExpressionTermVisitor(super.library);

  @override
  dynamic visitPowerExpressionTerm(PowerExpressionTermContext ctx) {
    printIf(ctx);
    CqlExpression? left;
    CqlExpression? right;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is! TerminalNodeImpl) {
        if (left == null) {
          left = byContext(child);
        } else {
          right = byContext(child);
        }
      }
    }
    if (left != null && right != null) {
      if (left is LiteralType && right is LiteralType) {
        switch (left) {
          case LiteralInteger _:
            if (right is LiteralInteger) {
              return Power(operand: [left, right]);
            } else if (right is LiteralLong) {
              return Power(operand: [ToLong(operand: left), right]);
            } else if (right is LiteralDecimal) {
              return Power(operand: [ToDecimal(operand: left), right]);
            }
            break;
          case LiteralLong _:
            if (right is LiteralInteger) {
              return Power(operand: [left, ToLong(operand: right)]);
            } else if (right is LiteralLong) {
              return Power(operand: [left, right]);
            } else if (right is LiteralDecimal) {
              return Power(operand: [ToDecimal(operand: left), right]);
            }
            break;
          case LiteralDecimal _:
            if (right is LiteralInteger || right is LiteralLong) {
              return Power(operand: [left, ToDecimal(operand: right)]);
            } else if (right is LiteralDecimal) {
              return Power(operand: [left, right]);
            }
            break;
          default:
            return Power(operand: [left, right]);
        }
      }
      return Power(operand: [left, right]);
    }
  }
}
