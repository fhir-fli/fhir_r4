import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlTermExpressionTermVisitor extends CqlBaseVisitor<dynamic> {
  CqlTermExpressionTermVisitor(super.library);

  @override
  dynamic visitTermExpressionTerm(TermExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      final result = byContext(child);
      return result;
    }
    throw ArgumentError('$thisNode Invalid TermExpressionTerm');
  }
}
