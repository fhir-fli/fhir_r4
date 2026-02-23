import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlRatioVisitor extends CqlBaseVisitor<LiteralRatio> {
  CqlRatioVisitor(super.library);

  @override
  LiteralRatio visitRatio(RatioContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    final quantities = <LiteralQuantity>[];

    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is QuantityContext) {
        quantities.add(visitQuantity(child));
      }
    }

    if (quantities.length == 2) {
      return LiteralRatio(quantities[0], quantities[1]);
    }
    throw ArgumentError('$thisNode Invalid Ratio');
  }
}
