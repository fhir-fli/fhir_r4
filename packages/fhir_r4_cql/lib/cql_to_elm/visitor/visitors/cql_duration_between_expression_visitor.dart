import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlDurationBetweenExpressionVisitor
    extends CqlBaseVisitor<DurationBetween> {
  CqlDurationBetweenExpressionVisitor(super.library);

  @override
  DurationBetween visitDurationBetweenExpression(
      DurationBetweenExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    // bool durationIn = false;
    CqlDateTimePrecision? pluralDateTimePrecision;
    CqlExpression? left;
    CqlExpression? right;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        if (child.text == 'duration') {
          // durationIn = true;
        }
      } else if (child is PluralDateTimePrecisionContext) {
        pluralDateTimePrecision = CqlDateTimePrecisionExtension.fromJson(
            visitPluralDateTimePrecision(child));
      } else {
        final result = byContext(child);
        if (result is CqlExpression) {
          if (left == null) {
            left = result;
          } else {
            right = result;
          }
        }
      }
    }
    if (pluralDateTimePrecision != null && left != null && right != null) {
      return DurationBetween(
          precision: pluralDateTimePrecision, operand: [left, right]);
    }
    throw ArgumentError('$thisNode Invalid DurationBetweenExpression');
  }
}
