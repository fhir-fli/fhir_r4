import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlFunctionInvocationVisitor extends CqlBaseVisitor<dynamic> {
  CqlFunctionInvocationVisitor(super.library);

  @override
  dynamic visitFunctionInvocation(FunctionInvocationContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is! TerminalNodeImpl) {
        final result = byContext(child);
        if (result is CqlExpression) {
          return result;
        }
      }
    }
    throw ArgumentError('$thisNode Invalid FunctionInvocation');
  }
}
