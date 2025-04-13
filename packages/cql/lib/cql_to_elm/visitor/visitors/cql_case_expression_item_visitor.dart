import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlCaseExpressionItemVisitor extends CqlBaseVisitor<CaseItem> {
  CqlCaseExpressionItemVisitor(super.library);

  @override
  CaseItem visitCaseExpressionItem(CaseExpressionItemContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    CqlExpression? when_;
    CqlExpression? then;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ExpressionContext) {
        if (when_ == null) {
          when_ = byContext(child);
        } else {
          then = byContext(child);
        }
      }
    }
    if (when_ != null && then != null) {
      return CaseItem(when_: when_, then: then);
    }
    throw ArgumentError('$thisNode Invalid CaseExpressionItem');
  }
}
