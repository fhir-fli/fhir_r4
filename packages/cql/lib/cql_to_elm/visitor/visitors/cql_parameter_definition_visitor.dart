import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlParameterDefinitionVisitor extends CqlBaseVisitor<void> {
  CqlParameterDefinitionVisitor(super.library);

  @override
  void visitParameterDefinition(ParameterDefinitionContext ctx) {
    printIf(ctx);
    String name = '';
    TypeSpecifierExpression? typeSpecifier;
    AccessModifier accessLevel = AccessModifier.public;
    CqlExpression? defaultExpression;

    for (var child in ctx.children ?? <ParseTree>[]) {
      if (child is IdentifierContext) {
        name = visitIdentifier(child);
      } else if (child is TypeSpecifierContext) {
        typeSpecifier = visitTypeSpecifier(child);
      } else if (child is AccessModifierContext) {
        accessLevel = visitAccessModifier(child);
      } else {
        final result = byContext(child);
        if (result is CqlExpression) {
          defaultExpression = result;
        }
      }
    }
    if (typeSpecifier != null) {
      library.parameters ??= ParameterDefs();
      library.parameters!.def.add(ParameterDef(
        name: name,
        parameterTypeSpecifier: typeSpecifier,
        accessLevel: accessLevel,
        defaultExpression: defaultExpression,
      ));
    }
  }
}
