import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlDifferenceBetweenExpressionVisitor
    extends CqlBaseVisitor<DifferenceBetween> {
  CqlDifferenceBetweenExpressionVisitor(super.library);

  @override
  DifferenceBetween visitDifferenceBetweenExpression(
      DifferenceBetweenExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    CqlDateTimePrecision? pluralDateTimePrecision;
    CqlExpression? left;
    CqlExpression? right;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is PluralDateTimePrecisionContext) {
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
      return DifferenceBetween(
          precision: pluralDateTimePrecision, operand: [left, right]);
    }
    throw ArgumentError('$thisNode Invalid DifferenceBetweenExpression');
  }
}
