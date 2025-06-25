import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlContextIdentifierVisitor extends CqlBaseVisitor<Ref> {
  CqlContextIdentifierVisitor(super.library);

  @override
  Ref visitContextIdentifier(ContextIdentifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is QualifiedIdentifierExpressionContext) {
        return visitQualifiedIdentifierExpression(child);
      }
    }
    throw ArgumentError('$thisNode Invalid ContextIdentifier');
  }
}
