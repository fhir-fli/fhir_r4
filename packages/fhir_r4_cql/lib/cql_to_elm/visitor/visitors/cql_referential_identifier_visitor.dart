import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlReferentialIdentifierVisitor extends CqlBaseVisitor<String> {
  CqlReferentialIdentifierVisitor(super.library);

  @override
  String visitReferentialIdentifier(ReferentialIdentifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is IdentifierContext) {
        return visitIdentifier(child);
      } else if (child is KeywordIdentifierContext) {
        return visitKeywordIdentifier(child);
      }
    }
    throw ArgumentError('$thisNode Invalid ReferentialIdentifier');
  }
}
