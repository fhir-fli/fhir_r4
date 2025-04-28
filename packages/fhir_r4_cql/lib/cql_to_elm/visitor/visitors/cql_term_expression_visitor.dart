import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlTermExpressionVisitor extends CqlBaseVisitor<dynamic> {
  CqlTermExpressionVisitor(super.library);

  @override
  dynamic visitTermExpression(TermExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      return byContext(child);
    }
    throw ArgumentError('$thisNode Invalid TermExpression');
  }
}
