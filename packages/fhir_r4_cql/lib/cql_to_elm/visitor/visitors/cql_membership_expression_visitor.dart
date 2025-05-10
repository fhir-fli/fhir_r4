import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

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
      if (!inContains) {
        return Contains(
            operand: operand, precision: dateTimePrecisionSpecifier);
      } else {
        if (operand[1] is ValueSetRef) {
          return InValueSet(
            code: operand[0],
            valueset: operand[1] as ValueSetRef,
          );
        } else if (operand[1] is CodeSystemRef) {
          return InCodeSystem(
            code: operand[0],
            codesystem: operand[1] as CodeSystemRef,
          );
        }
        return In(operand: operand, precision: dateTimePrecisionSpecifier);
      }
    }
    throw ArgumentError('$thisNode Invalid MembershipExpression');
  }
}
