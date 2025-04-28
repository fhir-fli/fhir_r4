import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlConcurrentWithIntervalOperatorPhraseVisitor
    extends CqlBaseVisitor<CqlExpression> {
  CqlConcurrentWithIntervalOperatorPhraseVisitor(super.library);

  @override
  CqlExpression visitConcurrentWithIntervalOperatorPhrase(
      ConcurrentWithIntervalOperatorPhraseContext ctx,
      [CqlExpression? left,
      CqlExpression? right]) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? startsEndsOccurs;
    CqlDateTimePrecision? dateTimePrecision;
    String? relativeQualifier;
    bool as_ = false;
    String? startEnd;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        if (child.text == 'starts' ||
            child.text == 'ends' ||
            child.text == 'occurs') {
          startsEndsOccurs = child.text;
        } else if (child.text == 'start' || child.text == 'end') {
          startEnd = child.text;
        } else if (child.text == 'as') {
          as_ = true;
        }
      } else if (child is RelativeQualifierContext) {
        relativeQualifier = visitRelativeQualifier(child);
      } else if (child is DateTimePrecisionContext) {
        dateTimePrecision = CqlDateTimePrecisionExtension.fromJson(
            visitDateTimePrecision(child));
      }
    }
    if (left != null && right != null) {
      final effectiveLeft = startsorEnds(left, startsEndsOccurs);
      final effectiveRight = startOrEnd(right, startEnd);
      if (as_) {
        return SameAs(
            operand: [effectiveLeft, effectiveRight],
            precision: dateTimePrecision);
      } else if (relativeQualifier == 'or after') {
        return SameOrAfter(
            operand: [effectiveLeft, effectiveRight],
            precision: dateTimePrecision);
      } else if (relativeQualifier == 'or before') {
        return SameOrBefore(
            operand: [effectiveLeft, effectiveRight],
            precision: dateTimePrecision);
      }
    }

    throw ArgumentError(
        '$thisNode Invalid ConcurrentWithIntervalOperatorPhrase');
  }
}
