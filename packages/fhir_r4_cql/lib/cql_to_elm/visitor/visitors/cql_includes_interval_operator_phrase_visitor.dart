import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlIncludesIntervalOperatorPhraseVisitor
    extends CqlBaseVisitor<CqlExpression> {
  CqlIncludesIntervalOperatorPhraseVisitor(super.library);

  @override
  CqlExpression visitIncludesIntervalOperatorPhrase(
      IncludesIntervalOperatorPhraseContext ctx,
      [CqlExpression? left,
      CqlExpression? right]) {
    printIf(ctx);
    final int thisNode = getNextNode();
    // String? properly;
    CqlDateTimePrecision? dateTimePrecisionSpecifier;
    String? startEnd;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        if (child.text == 'properly') {
          // properly = child.text;
        } else if (child.text == 'start' || child.text == 'end') {
          startEnd = child.text;
        }
      } else if (child is DateTimePrecisionSpecifierContext) {
        dateTimePrecisionSpecifier = CqlDateTimePrecisionExtension.fromJson(
            visitDateTimePrecisionSpecifier(child));
      }
    }
    if (left != null && right != null) {
      if (startEnd != null) {
        final start = startEnd == 'start';
        final end = startEnd == 'end';
        if (start) {
          return Starts(
            precision: dateTimePrecisionSpecifier,
            operand: [left, right],
          );
        } else if (end) {
          return Ends(
            precision: dateTimePrecisionSpecifier,
            operand: [left, right],
          );
        }
      } else {
        return Includes(
          precision: dateTimePrecisionSpecifier,
          operand: [left, right],
        );
      }
    }
    throw ArgumentError('$thisNode Invalid IncludesIntervalOperatorPhrase');
  }
}
