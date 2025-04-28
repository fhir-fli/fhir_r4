import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlLiteralTermVisitor extends CqlBaseVisitor<LiteralType> {
  CqlLiteralTermVisitor(super.library);

  @override
  LiteralType visitLiteralTerm(LiteralTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is BooleanLiteralContext) {
        return visitBooleanLiteral(child);
      } else if (child is NullLiteralContext) {
        return LiteralNull();
      } else if (child is StringLiteralContext) {
        return visitStringLiteral(child);
      } else if (child is NumberLiteralContext) {
        return visitNumberLiteral(child);
      } else if (child is LongNumberLiteralContext) {
        return visitLongNumberLiteral(child);
      } else if (child is DateTimeLiteralContext) {
        return visitDateTimeLiteral(child);
      } else if (child is DateLiteralContext) {
        return visitDateLiteral(child);
      } else if (child is TimeLiteralContext) {
        return visitTimeLiteral(child);
      } else if (child is QuantityLiteralContext) {
        return visitQuantityLiteral(child);
      } else if (child is RatioLiteralContext) {}
    }
    throw ArgumentError('$thisNode Invalid LiteralTerm');
  }
}
