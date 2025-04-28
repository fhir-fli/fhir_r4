import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlQueryExpressionVisitor extends CqlBaseVisitor<Query> {
  CqlQueryExpressionVisitor(super.library);

  @override
  Query visitQueryExpression(QueryExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is QueryContext) {
        return visitQuery(child);
      }
    }
    throw ArgumentError('$thisNode Invalid QueryExpression');
  }
}
