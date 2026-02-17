import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlInvocationExpressionTermVisitor extends CqlBaseVisitor<CqlExpression> {
  CqlInvocationExpressionTermVisitor(super.library);

  @override
  CqlExpression visitInvocationExpressionTerm(
      InvocationExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    dynamic expressionTerm;
    dynamic qualifiedInvocation;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TermExpressionTermContext) {
        expressionTerm = visitTermExpressionTerm(child);
      } else if (child is InvocationExpressionTermContext) {
        expressionTerm = visitInvocationExpressionTerm(child);
      } else if (child is QualifiedInvocationContext) {
        if (child is QualifiedMemberInvocationContext) {
          qualifiedInvocation = visitQualifiedMemberInvocation(child);
        } else if (child is QualifiedFunctionInvocationContext) {
          qualifiedInvocation = visitQualifiedFunctionInvocation(child);
        }
      }
    }

    // Qualified function call: FHIRHelpers.ToDateTime(...)
    if (qualifiedInvocation is FunctionRef) {
      String? libraryName;
      if (expressionTerm is ExpressionRef) {
        libraryName = expressionTerm.name;
      } else if (expressionTerm is IdentifierRef) {
        libraryName = expressionTerm.name;
      } else if (expressionTerm is Property) {
        libraryName = expressionTerm.path;
      }
      qualifiedInvocation.libraryName = libraryName;
      return qualifiedInvocation;
    }

    // Member access: O.status, E.period, etc.
    if (qualifiedInvocation is Ref && qualifiedInvocation.name != null) {
      final memberName = qualifiedInvocation.name!;

      // Check if the left side is a query alias or let identifier
      String? scopeName = _extractScopeName(expressionTerm);
      if (scopeName != null && CqlBaseVisitor.isQueryAlias(scopeName)) {
        CqlExpression prop;
        // Let-introduced identifiers use QueryLetRef as source
        if (CqlBaseVisitor.isLetIdentifier(scopeName)) {
          prop = Property(
              source: QueryLetRef(name: scopeName), path: memberName);
        } else {
          // Source/relationship aliases use scope
          prop = Property(scope: scopeName, path: memberName);
        }
        // Wrap FHIR property accesses with implicit FHIRHelpers conversion
        return CqlBaseVisitor.wrapPropertyWithFhirHelper(prop, memberName);
      }

      return Property(source: expressionTerm, path: memberName);
    }

    throw ArgumentError('$thisNode Invalid InvocationExpressionTerm');
  }

  /// Extract the alias name from an expression term if it's a simple reference.
  String? _extractScopeName(dynamic expr) {
    if (expr is AliasRef) return expr.name;
    if (expr is IdentifierRef) return expr.name;
    if (expr is ExpressionRef) return expr.name;
    return null;
  }
}
