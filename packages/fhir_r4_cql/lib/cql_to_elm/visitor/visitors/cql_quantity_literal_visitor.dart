import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlQuantityLiteralVisitor extends CqlBaseVisitor<LiteralQuantity> {
  CqlQuantityLiteralVisitor(super.library);

  @override
  LiteralQuantity visitQuantityLiteral(QuantityLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is QuantityContext) {
        return visitQuantity(child);
      }
    }
    throw ArgumentError('$thisNode Invalid QuantityLiteral');
  }
}
