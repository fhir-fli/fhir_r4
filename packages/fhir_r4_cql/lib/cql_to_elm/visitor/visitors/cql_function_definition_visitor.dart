import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlFunctionDefinitionVisitor extends CqlBaseVisitor<FunctionDef> {
  CqlFunctionDefinitionVisitor(super.library);

  @override
  FunctionDef visitFunctionDefinition(FunctionDefinitionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    AccessModifier accessLevel = AccessModifier.public;
    String? name;
    // bool fluent = false;
    List<OperandDef>? operand;
    TypeSpecifierExpression? returnType;
    CqlExpression? expression;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is AccessModifierContext) {
        accessLevel = visitAccessModifier(child);
      } else if (child is TerminalNodeImpl && child.text == 'fluent') {
        // fluent = true;
      } else if (child is IdentifierOrFunctionIdentifierContext) {
        name = visitIdentifierOrFunctionIdentifier(child);
      } else if (child is OperandDefinitionContext) {
        operand ??= <OperandDef>[];
        operand.add(visitOperandDefinition(child));
      } else if (child is TypeSpecifierContext) {
        returnType = visitTypeSpecifier(child);
      } else if (child is FunctionBodyContext) {
        expression = visitFunctionBody(child);
      }
    }
    if (name != null) {
      if (expression is Ref) {
        final index = operand
            ?.indexWhere((element) => element.name == (expression as Ref).name);
        if (index != null && index != -1) {
          expression = OperandRef.fromRef(expression);
        }
      }
      return FunctionDef(
        name: name,
        operand: operand,
        resultTypeSpecifier: returnType,
        context: library.contexts != null && library.contexts!.def.isNotEmpty
            ? library.contexts!.def.first.name
            : 'Unfiltered',
        expression: expression,
        accessLevel: accessLevel,
      );
    }
    throw ArgumentError('$thisNode Invalid FunctionDefinition');
  }
}
