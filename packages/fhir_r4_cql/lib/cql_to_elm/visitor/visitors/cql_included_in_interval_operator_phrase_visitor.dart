import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlIncludedInIntervalOperatorPhraseVisitor
    extends CqlBaseVisitor<CqlExpression> {
  CqlIncludedInIntervalOperatorPhraseVisitor(super.library);

  @override
  CqlExpression visitIncludedInIntervalOperatorPhrase(
      IncludedInIntervalOperatorPhraseContext ctx,
      [CqlExpression? left,
      CqlExpression? right]) {
    printIf(ctx);
    final int thisNode = getNextNode();
    bool properly = false;
    String? duringIncludedIn;
    CqlDateTimePrecision? dateTimePrecisionSpecifier;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        if (child.text == 'properly') {
          properly = true;
        } else if (child.text == 'during' || child.text == 'included in') {
          duringIncludedIn = child.text;
        }
      } else if (child is DateTimePrecisionSpecifierContext) {
        dateTimePrecisionSpecifier = CqlDateTimePrecisionExtension.fromJson(
            visitDateTimePrecisionSpecifier(child));
      }
    }
    if (duringIncludedIn != null && left != null && right != null) {
      // CQL `during` maps to ELM `In`, while `included in` maps to `IncludedIn`
      if (duringIncludedIn == 'during') {
        return In(
          precision: dateTimePrecisionSpecifier,
          operand: [left, right],
        );
      }
      if (properly) {
        return ProperIncludedIn(
          precision: dateTimePrecisionSpecifier,
          operand: [left, right],
        );
      }
      return IncludedIn(
        precision: dateTimePrecisionSpecifier,
        operand: [left, right],
      );
    }
    throw ArgumentError('$thisNode Invalid IncludedInIntervalOperatorPhrase');
  }
}
