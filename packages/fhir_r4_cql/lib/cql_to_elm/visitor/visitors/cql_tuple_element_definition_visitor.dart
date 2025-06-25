import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlTupleElementDefinitionVisitor
    extends CqlBaseVisitor<TupleElementDefinition> {
  CqlTupleElementDefinitionVisitor(super.library);

  @override
  TupleElementDefinition visitTupleElementDefinition(
      TupleElementDefinitionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? name;
    TypeSpecifierExpression? typeSpecifier;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ReferentialIdentifierContext) {
        name = visitReferentialIdentifier(child);
      } else if (child is TypeSpecifierContext) {
        typeSpecifier = visitTypeSpecifier(child);
      }
    }
    if (name != null && typeSpecifier != null) {
      return TupleElementDefinition(elementType: typeSpecifier, name: name);
    } else {
      throw ArgumentError('$thisNode Invalid TupleElementDefinition');
    }
  }
}
