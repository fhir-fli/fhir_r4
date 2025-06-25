import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlQualifiedIdentifierExpressionVisitor extends CqlBaseVisitor<Ref> {
  CqlQualifiedIdentifierExpressionVisitor(super.library);

  @override
  Ref visitQualifiedIdentifierExpression(
      QualifiedIdentifierExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? name;
    String? libraryName;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is QualifierContext) {
        libraryName = visitQualifier(child);
      } else if (child is ReferentialIdentifierContext) {
        name = visitReferentialIdentifier(child);
      }
    }
    if (name != null) {
      return returnRef(name, libraryName);
    }
    throw ArgumentError('$thisNode Invalid QualifiedIdentifierExpression');
  }
}
