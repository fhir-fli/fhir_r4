import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlTerminologyVisitor extends CqlBaseVisitor<CqlExpression> {
  CqlTerminologyVisitor(super.library);

  @override
  CqlExpression visitTerminology(TerminologyContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is QualifiedIdentifierExpressionContext) {
        return visitQualifiedIdentifierExpression(child);
      } else {
        final result = byContext(child);
        if (result is CqlExpression) {
          return result;
        }
      }
    }
    throw ArgumentError('$thisNode Invalid Terminology');
  }
}
