import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlIfThenElseExpressionTermVisitor extends CqlBaseVisitor<dynamic> {
  CqlIfThenElseExpressionTermVisitor(super.library);

  @override
  dynamic visitIfThenElseExpressionTerm(IfThenElseExpressionTermContext ctx) {
    printIf(ctx);
    CqlExpression? condition;
    CqlExpression? then;
    CqlExpression? elseExpr;
    for (final child in ctx.children ?? <ParseTree>[]) {
      final result = byContext(child);
      if (result is CqlExpression) {
        if (condition == null) {
          condition = result;
        } else if (then == null) {
          then = result;
        } else {
          elseExpr = result;
        }
      }
    }
    if (condition != null && then != null && elseExpr != null) {
      return IfThenElse(condition: condition, then: then, elseExpr: elseExpr);
    }
  }
}
