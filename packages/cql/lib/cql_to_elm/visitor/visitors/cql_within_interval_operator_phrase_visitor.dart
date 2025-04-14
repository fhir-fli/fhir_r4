import '../../../cql.dart';
import 'package:antlr4/antlr4.dart';

// Visitor for handling 'within' expressions, like 'starts within 3 days of start'
class CqlWithinIntervalOperatorPhraseVisitor
    extends CqlBaseVisitor<CqlExpression> {
  CqlWithinIntervalOperatorPhraseVisitor(super.library);

  @override
  CqlExpression visitWithinIntervalOperatorPhrase(
      WithinIntervalOperatorPhraseContext ctx,
      [CqlExpression? left,
      CqlExpression? right]) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? startsEndsOccurs;
    String? startEnd;
    LiteralQuantity? quantity;

    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        if (['starts', 'ends', 'occurs'].contains(child.text)) {
          startsEndsOccurs = child.text;
        } else if (['start', 'end'].contains(child.text)) {
          startEnd = child.text;
        }
      } else if (child is QuantityContext) {
        quantity = visitQuantity(child);
      }
    }

    if (left != null && right != null && quantity != null) {
      final effectiveLeft = startsOrEnds(left, startsEndsOccurs);
      final effectiveRight = startOrEnd(right, startEnd);

      return In(operand: [
        effectiveLeft,
        IntervalExpression(
          low: Subtract(operand: [effectiveRight, quantity]),
          high: Add(operand: [effectiveRight, quantity]),
          lowClosed: true,
          highClosed: true,
        ),
      ]);
    }

    throw ArgumentError('$thisNode Invalid WithinIntervalOperatorPhrase');
  }

  // Helper to determine whether to use start or end for the right interval
  @override
  CqlExpression startOrEnd(CqlExpression expression, String? value) {
    return value == 'start'
        ? Start(operand: expression)
        : End(operand: expression);
  }

  // Helper to determine whether to use starts, ends, or occurs for the left operand
  CqlExpression startsOrEnds(CqlExpression expr, String? startsEndsOccurs) {
    switch (startsEndsOccurs) {
      case 'starts':
        return Start(operand: expr);
      case 'ends':
        return End(operand: expr);
      default:
        return expr; // for 'occurs'
    }
  }
}
