import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlQualifiedIdentifierVisitor extends CqlBaseVisitor<String> {
  CqlQualifiedIdentifierVisitor(super.library);

  @override
  String visitQualifiedIdentifier(QualifiedIdentifierContext ctx) {
    printIf(ctx);
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is IdentifierContext) {
        return visitIdentifier(child);
      }
    }
    return '';
  }
}
