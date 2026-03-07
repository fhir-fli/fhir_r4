import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

// TODO(Dokotela): test that it works
class CqlDifferenceExpressionTermVisitor
    extends CqlBaseVisitor<DifferenceBetween> {
  CqlDifferenceExpressionTermVisitor(super.library);

  @override
  DifferenceBetween visitDifferenceExpressionTerm(
      DifferenceExpressionTermContext ctx) {
    final int thisNode = getNextNode();

    CqlDateTimePrecision? precision;
    CqlExpression? expression;

    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is PluralDateTimePrecisionContext) {
        precision = CqlDateTimePrecisionExtension.fromJson(
            visitPluralDateTimePrecision(child));
      } else if (child is ExpressionTermContext) {
        expression = byContext(child) as CqlExpression;
      }
    }

    if (precision == null || expression == null) {
      throw ArgumentError(
          '$thisNode Invalid DifferenceExpressionTerm: missing components');
    }

    // TODO(Dokotela): fill in standard value later
    return DifferenceBetween(
      precision: precision,
      operand: [expression],
    );
  }
}
