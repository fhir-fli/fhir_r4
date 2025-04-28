import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlInvocationExpressionTermVisitor extends CqlBaseVisitor<Property> {
  CqlInvocationExpressionTermVisitor(super.library);

  @override
  Property visitInvocationExpressionTerm(InvocationExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    dynamic expressionTerm;
    Ref? qualifiedInvocation;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TermExpressionTermContext) {
        expressionTerm = visitTermExpressionTerm(child);
      } else if (child is QualifiedInvocationContext) {
        if (child is QualifiedMemberInvocationContext) {
          qualifiedInvocation = visitQualifiedMemberInvocation(child);
        } else if (child is QualifiedFunctionInvocationContext) {
          qualifiedInvocation = visitQualifiedFunctionInvocation(child);
        }
      }
    }
    if (qualifiedInvocation?.name != null) {
      return Property(source: expressionTerm, path: qualifiedInvocation!.name);
    }
    throw ArgumentError('$thisNode Invalid InvocationExpressionTerm');
  }
}
