import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlTimeBoundaryExpressionTermVisitor extends CqlBaseVisitor<dynamic> {
  CqlTimeBoundaryExpressionTermVisitor(super.library);

  @override
  dynamic visitTimeBoundaryExpressionTerm(
      TimeBoundaryExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    if (ctx.childCount == 3) {
      final CqlExpression expression = byContext(ctx.children![2]);
      if (ctx.children![0].text == 'start') {
        return Start(operand: expression);
      } else if (ctx.children![0].text == 'end') {
        return End(operand: expression);
      }
    }
    throw ArgumentError('$thisNode Invalid TimeBoundaryExpressionTerm');
  }
}
