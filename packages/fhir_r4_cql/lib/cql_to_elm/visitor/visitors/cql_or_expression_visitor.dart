import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlOrExpressionVisitor extends CqlBaseVisitor<BinaryExpression> {
  CqlOrExpressionVisitor(super.library);

  @override
  BinaryExpression visitOrExpression(OrExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    bool orXor = true;
    final List<CqlExpression> operand = <CqlExpression>[];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        orXor = child.text == 'or' ? true : false;
      } else {
        final result = byContext(child);
        if (result is CqlExpression) {
          operand.add(result);
        }
      }
    }
    if (operand.length == 2) {
      CqlExpression left = operand.first;
      CqlExpression right = operand.last;
      if (left is LiteralType && right is LiteralType) {
        if (left is! LiteralNull && right is LiteralNull) {
          return orXor
              ? Or(operand: [
                  left,
                  As(operand: right, asType: QName.parse(left.valueType))
                ])
              : Xor(operand: [
                  left,
                  As(operand: right, asType: QName.parse(left.valueType))
                ]);
        } else if (left is LiteralNull && right is! LiteralNull) {
          return orXor
              ? Or(operand: [
                  As(operand: left, asType: QName.parse(right.valueType)),
                  right,
                ])
              : Xor(operand: [
                  As(operand: left, asType: QName.parse(right.valueType)),
                  right,
                ]);
        }
      }
      return orXor ? Or(operand: operand) : Xor(operand: operand);
    }
    throw ArgumentError('$thisNode Invalid OrExpression');
  }
}
