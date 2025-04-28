import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlParamListVisitor extends CqlBaseVisitor<List<CqlExpression>> {
  CqlParamListVisitor(super.library);

  @override
  List<CqlExpression> visitParamList(ParamListContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    final List<CqlExpression> operand = <CqlExpression>[];
    for (final child in ctx.children ?? <ParseTree>[]) {
      final result = byContext(child);
      if (result is CqlExpression) {
        operand.add(result);
      }
    }
    if (operand.isNotEmpty) {
      return operand;
    }
    throw ArgumentError('$thisNode Invalid ParamList');
  }
}
