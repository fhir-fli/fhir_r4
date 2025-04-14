import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlQuantityOffsetVisitor extends CqlBaseVisitor<LiteralQuantity> {
  CqlQuantityOffsetVisitor(super.library);

  @override
  LiteralQuantity visitQuantityOffset(QuantityOffsetContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    LiteralQuantity? quantity;
    // String? relativeQualifier;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is QuantityContext) {
        quantity = visitQuantity(child);
      } else if (child is OffsetRelativeQualifierContext) {
        // relativeQualifier = visitOffsetRelativeQualifier(child);
      } else if (child is ExclusiveRelativeQualifierContext) {
        // relativeQualifier = visitExclusiveRelativeQualifier(child);
      }
    }
    if (quantity != null) {
      return LiteralQuantity(
        quantity.value,
        unit: quantity.unit,
      );
    }
    throw ArgumentError('$thisNode Invalid QuantityOffset');
  }
}
