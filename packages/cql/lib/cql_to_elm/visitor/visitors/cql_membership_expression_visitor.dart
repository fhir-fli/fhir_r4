import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlMembershipExpressionVisitor extends CqlBaseVisitor<dynamic> {
  CqlMembershipExpressionVisitor(super.library);

  @override
  dynamic visitMembershipExpression(MembershipExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    bool inContains = true;
    CqlDateTimePrecision? dateTimePrecisionSpecifier;
    final List<CqlExpression> operand = <CqlExpression>[];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        inContains = child.text == 'in' ? true : false;
      } else if (child is DateTimePrecisionSpecifierContext) {
        dateTimePrecisionSpecifier = CqlDateTimePrecisionExtension.fromJson(
            visitDateTimePrecisionSpecifier(child));
      } else {
        final result = byContext(child);
        if (result is CqlExpression) {
          operand.add(result);
        }
      }
    }
    if (operand.length == 2) {
      if (inContains) {
        return In(operand: operand, precision: dateTimePrecisionSpecifier);
      } else {
        return Contains(
            operand: operand, precision: dateTimePrecisionSpecifier);
      }
    }
    throw ArgumentError('$thisNode Invalid MembershipExpression');
  }
}
