import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlMeetsIntervalOperatorPhraseVisitor extends CqlBaseVisitor<dynamic> {
  CqlMeetsIntervalOperatorPhraseVisitor(super.library);

  @override
  dynamic visitMeetsIntervalOperatorPhrase(
      MeetsIntervalOperatorPhraseContext ctx,
      [CqlExpression? left,
      CqlExpression? right]) {
    printIf(ctx);
    final int thisNode = getNextNode();
    // String? beforeAfter;
    CqlDateTimePrecision? dateTimePrecisionSpecifier;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        if (child.text == 'before' || child.text == 'after') {
          // beforeAfter = child.text;
        }
      } else if (child is DateTimePrecisionSpecifierContext) {
        dateTimePrecisionSpecifier = CqlDateTimePrecisionExtension.fromJson(
            visitDateTimePrecisionSpecifier(child));
      }
    }
    if (left != null && right != null) {
      return Meets(
        precision: dateTimePrecisionSpecifier,
        operand: [left, right],
      );
    }
    throw ArgumentError('$thisNode Invalid MeetsIntervalOperatorPhrase');
  }
}
