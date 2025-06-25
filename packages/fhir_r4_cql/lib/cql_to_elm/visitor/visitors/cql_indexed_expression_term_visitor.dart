import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlIndexedExpressionTermVisitor extends CqlBaseVisitor<dynamic> {
  CqlIndexedExpressionTermVisitor(super.library);

  @override
  dynamic visitIndexedExpressionTerm(IndexedExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    CqlExpression? expression;
    CqlExpression? index;
    for (final child in ctx.children ?? <ParseTree>[]) {
      final result = byContext(child);
      if (result is CqlExpression) {
        if (expression == null) {
          expression = result;
        } else {
          index = result;
        }
      }
    }
    if (expression != null && index != null) {
      return Indexer(operand: [expression, index]);
    }
    throw ArgumentError('$thisNode Invalid IndexedExpressionTerm');
  }
}
