import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlBooleanExpressionVisitor extends CqlBaseVisitor<dynamic> {
  CqlBooleanExpressionVisitor(super.library);

  @override
  dynamic visitBooleanExpression(BooleanExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    bool not = false;
    bool null_ = false;
    bool true_ = false;
    bool false_ = false;
    CqlExpression? operand;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        if (child.text == 'not') {
          not = true;
        } else if (child.text == 'null') {
          null_ = true;
        } else if (child.text == 'true') {
          true_ = true;
        } else if (child.text == 'false') {
          false_ = true;
        }
      } else {
        final result = byContext(child);
        if (result is CqlExpression) {
          operand = result;
        }
      }
    }
    if (operand != null) {
      if (null_) {
        return not
            ? Not(operand: IsNull(operand: operand))
            : IsNull(operand: operand);
      } else if (true_) {
        return not
            ? Not(operand: IsTrue(operand: operand))
            : IsTrue(operand: operand);
      } else if (false_) {
        return not
            ? Not(operand: IsFalse(operand: operand))
            : IsFalse(operand: operand);
      }
    }

    throw ArgumentError('$thisNode Invalid BooleanExpression');
  }
}
