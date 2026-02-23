import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlRatioLiteralVisitor extends CqlBaseVisitor<LiteralRatio> {
  CqlRatioLiteralVisitor(super.library);

  @override
  LiteralRatio visitRatioLiteral(RatioLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is RatioContext) {
        return visitRatio(child);
      }
    }
    throw ArgumentError('$thisNode Invalid RatioLiteral');
  }
}
