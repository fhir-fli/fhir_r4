import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlExpressionDefinitionVisitor extends CqlBaseVisitor<ExpressionDef> {
  CqlExpressionDefinitionVisitor(super.library);

  @override
  ExpressionDef visitExpressionDefinition(ExpressionDefinitionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    AccessModifier accessLevel = AccessModifier.public;
    String? name;
    CqlExpression? expression;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is AccessModifierContext) {
        accessLevel = visitAccessModifier(child);
      } else if (child is IdentifierContext) {
        name = visitIdentifier(child);
      } else {
        final result = byContext(child);
        if (result is CqlExpression) {
          expression = result;
        }
      }
    }
    if (name != null) {
      return ExpressionDef(
        name: name,
        context: library.contexts != null && library.contexts!.def.isNotEmpty
            ? library.contexts!.def.first.name
            : 'Unfiltered',
        expression: expression,
        accessLevel: accessLevel,
      );
    }
    throw ArgumentError('$thisNode Invalid ExpressionDefinition');
  }
}
