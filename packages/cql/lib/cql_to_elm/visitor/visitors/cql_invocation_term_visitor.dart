import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlInvocationTermVisitor extends CqlBaseVisitor<dynamic> {
  CqlInvocationTermVisitor(super.library);

  @override
  dynamic visitInvocationTerm(InvocationTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is MemberInvocationContext) {
        return visitMemberInvocation(child);
      } else if (child is FunctionInvocationContext) {
        return visitFunctionInvocation(child);
      } else if (child is ThisInvocationContext) {
        return visitThisInvocation(child);
      } else if (child is IndexInvocationContext) {
        return visitIndexInvocation(child);
      } else if (child is TotalInvocationContext) {
        return visitTotalInvocation(child);
      } else if (child is QualifiedFunctionInvocationContext) {
        return visitQualifiedFunctionInvocation(child);
      } else if (child is QualifiedMemberInvocationContext) {
        return visitQualifiedMemberInvocation(child);
      } else if (child is QualifiedFunctionContext) {
        return visitQualifiedFunction(child);
      }
    }
    throw ArgumentError('$thisNode Invalid InvocationTerm');
  }
}
