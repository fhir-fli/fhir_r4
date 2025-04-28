import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlInequalityExpressionVisitor extends CqlBaseVisitor<dynamic> {
  CqlInequalityExpressionVisitor(super.library);

  @override
  dynamic visitInequalityExpression(InequalityExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? inequality;
    final List<CqlExpression> operand = <CqlExpression>[];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        if (child.text == '!=' ||
            child.text == '<>' ||
            child.text == '<' ||
            child.text == '>' ||
            child.text == '<=' ||
            child.text == '>=') {
          inequality = child.text;
        }
      } else {
        final result = byContext(child);
        if (result is CqlExpression) {
          operand.add(result);
        }
      }
    }
    if (inequality != null && operand.length == 2) {
      if (inequality == '!=') {
        return NotEqual(operand: operand);
      } else if (inequality == '<>') {
        return NotEqual(operand: operand);
      } else if (inequality == '<') {
        return Less(operand: operand);
      } else if (inequality == '>') {
        return Greater(operand: operand);
      } else if (inequality == '<=') {
        return LessOrEqual(operand: operand);
      } else if (inequality == '>=') {
        return GreaterOrEqual(operand: operand);
      }
    }
    throw ArgumentError('$thisNode Invalid InequalityExpression');
  }
}
