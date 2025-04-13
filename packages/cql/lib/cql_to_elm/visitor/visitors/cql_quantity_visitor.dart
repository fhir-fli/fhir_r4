import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

// Visitor for Quantity Expressions, ensuring we correctly capture quantities and units
class CqlQuantityVisitor extends CqlBaseVisitor<LiteralQuantity> {
  CqlQuantityVisitor(super.library);

  @override
  LiteralQuantity visitQuantity(QuantityContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    num? number;
    String? unit;

    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        number = num.tryParse(child.text!);
      } else if (child is UnitContext) {
        unit = visitUnit(child);
      }
    }

    if (number != null) {
      return LiteralQuantity(LiteralDecimal(number), unit: unit);
    }
    throw ArgumentError('$thisNode Invalid Quantity');
  }
}
