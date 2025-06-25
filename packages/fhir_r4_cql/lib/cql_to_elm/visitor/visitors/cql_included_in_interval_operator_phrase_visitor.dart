import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlIncludedInIntervalOperatorPhraseVisitor
    extends CqlBaseVisitor<IncludedIn> {
  CqlIncludedInIntervalOperatorPhraseVisitor(super.library);

  @override
  IncludedIn visitIncludedInIntervalOperatorPhrase(
      IncludedInIntervalOperatorPhraseContext ctx,
      [CqlExpression? left,
      CqlExpression? right]) {
    printIf(ctx);
    final int thisNode = getNextNode();
    // String? startsEndsOccurs;
    // String? properly;
    String? duringIncludedIn;
    CqlDateTimePrecision? dateTimePrecisionSpecifier;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        if (child.text == 'starts' ||
            child.text == 'ends' ||
            child.text == 'occurs') {
          // startsEndsOccurs = child.text;
        } else if (child.text == 'properly') {
          // properly = child.text;
        } else if (child.text == 'during' || child.text == 'included in') {
          duringIncludedIn = child.text;
        }
      } else if (child is DateTimePrecisionSpecifierContext) {
        dateTimePrecisionSpecifier = CqlDateTimePrecisionExtension.fromJson(
            visitDateTimePrecisionSpecifier(child));
      }
    }
    if (duringIncludedIn != null && left != null && right != null) {
      return IncludedIn(
        precision: dateTimePrecisionSpecifier,
        operand: [left, right],
      );
    }
    throw ArgumentError('$thisNode Invalid IncludedInIntervalOperatorPhrase');
  }
}
