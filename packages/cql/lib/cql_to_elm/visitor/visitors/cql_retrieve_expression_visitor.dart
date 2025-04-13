import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlRetrieveExpressionVisitor extends CqlBaseVisitor<Retrieve> {
  CqlRetrieveExpressionVisitor(super.library);

  @override
  Retrieve visitRetrieveExpression(RetrieveExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is RetrieveContext) {
        return visitRetrieve(child);
      }
    }
    throw ArgumentError('$thisNode Invalid RetrieveExpression');
  }
}
