import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlBeforeOrAfterIntervalOperatorPhraseVisitor
    extends CqlBaseVisitor<CqlExpression> {
  CqlBeforeOrAfterIntervalOperatorPhraseVisitor(super.library);

  @override
  CqlExpression visitBeforeOrAfterIntervalOperatorPhrase(
      BeforeOrAfterIntervalOperatorPhraseContext ctx,
      [CqlExpression? left,
      CqlExpression? right]) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? startsEndsOccurs;
    String? temporalRelationship;
    CqlDateTimePrecision? dateTimePrecision;
    String? startEnd;
    LiteralQuantity? quantityOffset;
    String? relativeQualifier;
    ctx.temporalRelationship();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        if (child.text == 'starts' ||
            child.text == 'ends' ||
            child.text == 'occurs') {
          startsEndsOccurs = child.text;
        } else if (child.text == 'start' || child.text == 'end') {
          startEnd = child.text;
        }
      } else if (child is QuantityOffsetContext) {
        for (final grandChild in child.children ?? <ParseTree>[]) {
          if (grandChild is QuantityContext) {
            quantityOffset = visitQuantity(grandChild);
          } else if (grandChild is OffsetRelativeQualifierContext) {
            relativeQualifier = visitOffsetRelativeQualifier(grandChild);
          } else if (grandChild is ExclusiveRelativeQualifierContext) {
            relativeQualifier = visitExclusiveRelativeQualifier(grandChild);
          }
        }
      } else if (child is TemporalRelationshipContext) {
        temporalRelationship = visitTemporalRelationship(child);
      } else if (child is DateTimePrecisionSpecifierContext) {
        dateTimePrecision = CqlDateTimePrecisionExtension.fromJson(
            visitDateTimePrecisionSpecifier(child));
      }
    }

    if (temporalRelationship != null && left != null && right != null) {
      final effectiveLeft = startsorEnds(left, startsEndsOccurs);
      final effectiveRight = startOrEnd(right, startEnd);
      switch (temporalRelationship.toLowerCase().replaceAll(' ', '')) {
        case 'before':
          {
            if (quantityOffset != null) {
              return relativeQualifier == 'or more'
                  ? SameOrBefore(
                      precision: dateTimePrecision,
                      operand: [
                        effectiveLeft,
                        Subtract(
                          operand: [effectiveRight, quantityOffset],
                        ),
                      ],
                    )
                  : relativeQualifier == 'or less'
                      ? SameOrAfter(
                          precision: dateTimePrecision,
                          operand: [
                            effectiveLeft,
                            Subtract(
                              operand: [effectiveRight, quantityOffset],
                            ),
                          ],
                        )
                      : SameAs(
                          precision: dateTimePrecision,
                          operand: [
                            effectiveLeft,
                            Subtract(
                              operand: [effectiveRight, quantityOffset],
                            ),
                          ],
                        );
            } else {
              return Before(
                precision: dateTimePrecision,
                operand: [
                  effectiveLeft,
                  effectiveRight,
                ],
              );
            }
          }
        case 'after':
          {
            if (quantityOffset != null) {
              return relativeQualifier == 'or more'
                  ? SameOrAfter(
                      precision: dateTimePrecision,
                      operand: [
                        effectiveLeft,
                        Add(
                          operand: [effectiveRight, quantityOffset],
                        ),
                      ],
                    )
                  : relativeQualifier == 'or less'
                      ? SameOrBefore(
                          precision: dateTimePrecision,
                          operand: [
                            effectiveLeft,
                            Add(
                              operand: [effectiveRight, quantityOffset],
                            ),
                          ],
                        )
                      : SameAs(
                          precision: dateTimePrecision,
                          operand: [
                            effectiveLeft,
                            Add(
                              operand: [effectiveRight, quantityOffset],
                            ),
                          ],
                        );
            } else {
              return After(
                precision: dateTimePrecision,
                operand: [
                  effectiveLeft,
                  effectiveRight,
                ],
              );
            }
          }
        case 'onorbefore':
          {
            if (quantityOffset != null) {
              return OnOrBefore(
                precision: dateTimePrecision,
                operand: [
                  effectiveLeft,
                  Subtract(
                    operand: [effectiveRight, quantityOffset],
                  ),
                ],
              );
            } else {
              return OnOrBefore(
                precision: dateTimePrecision,
                operand: [
                  effectiveLeft,
                  effectiveRight,
                ],
              );
            }
          }
        case 'onorafter':
          {
            if (quantityOffset != null) {
              return OnOrAfter(
                precision: dateTimePrecision,
                operand: [
                  effectiveLeft,
                  Add(
                    operand: [effectiveRight, quantityOffset],
                  ),
                ],
              );
            } else {
              return OnOrAfter(
                precision: dateTimePrecision,
                operand: [
                  effectiveLeft,
                  effectiveRight,
                ],
              );
            }
          }
        case 'beforeoron':
          {
            if (quantityOffset != null) {
              return OnOrBefore(
                precision: dateTimePrecision,
                operand: [
                  effectiveLeft,
                  Subtract(
                    operand: [effectiveRight, quantityOffset],
                  ),
                ],
              );
            } else {
              return OnOrBefore(
                precision: dateTimePrecision,
                operand: [
                  effectiveLeft,
                  effectiveRight,
                ],
              );
            }
          }
        case 'afteroron':
          {
            if (quantityOffset != null) {
              return OnOrAfter(
                precision: dateTimePrecision,
                operand: [
                  effectiveLeft,
                  Add(
                    operand: [effectiveRight, quantityOffset],
                  ),
                ],
              );
            } else {
              return OnOrAfter(
                precision: dateTimePrecision,
                operand: [
                  effectiveLeft,
                  effectiveRight,
                ],
              );
            }
          }
      }
    }
    throw '$thisNode Invalid arguments for BeforeOrAfterIntervalOperator';
  }
}
