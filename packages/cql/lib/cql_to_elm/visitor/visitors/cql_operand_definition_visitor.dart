import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlOperandDefinitionVisitor extends CqlBaseVisitor<OperandDef> {
  CqlOperandDefinitionVisitor(super.library);

  @override
  OperandDef visitOperandDefinition(OperandDefinitionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? referentialIdentifier;
    TypeSpecifierExpression? typeSpecifier;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ReferentialIdentifierContext) {
        referentialIdentifier = visitReferentialIdentifier(child);
      } else if (child is TypeSpecifierContext) {
        typeSpecifier = visitTypeSpecifier(child);
      }
    }
    if (referentialIdentifier != null && typeSpecifier != null) {
      return OperandDef(
        name: referentialIdentifier,
        operandTypeSpecifier: typeSpecifier,
      );
    }
    throw ArgumentError('$thisNode Invalid OperandDefinition');
  }
}
