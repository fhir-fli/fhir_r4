import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlReferentialOrTypeNameIdentifierVisitor extends CqlBaseVisitor<String> {
  CqlReferentialOrTypeNameIdentifierVisitor(super.library);

  @override
  String visitReferentialOrTypeNameIdentifier(
      ReferentialOrTypeNameIdentifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ReferentialIdentifierContext) {
        return visitReferentialIdentifier(child);
      } else if (child is TypeNameIdentifierContext) {
        return visitTypeNameIdentifier(child);
      }
    }
    throw ArgumentError('$thisNode Invalid ReferentialOrTypeNameIdentifier');
  }
}
