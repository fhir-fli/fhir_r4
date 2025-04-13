import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlFunctionBodyVisitor extends CqlBaseVisitor<CqlExpression> {
  CqlFunctionBodyVisitor(super.library);

  @override
  CqlExpression visitFunctionBody(FunctionBodyContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ExpressionContext) {
        return byContext(child);
      }
    }
    throw ArgumentError('$thisNode Invalid FunctionBody');
  }
}
