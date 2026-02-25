import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

// TODO(Dokotela): test that it works
class CqlDurationExpressionTermVisitor extends CqlBaseVisitor<DurationBetween> {
  CqlDurationExpressionTermVisitor(super.library);

  @override
  DurationBetween visitDurationExpressionTerm(
      DurationExpressionTermContext ctx) {
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

    // Ensure that precision and expression are assigned, as per the ANTLR rule
    if (precision == null || expression == null) {
      throw ArgumentError(
          '$thisNode Invalid DurationExpressionTerm: missing components');
    }

    // "duration in <precision> of <expression>" means
    // DurationBetween(Start(expression), End(expression))
    final durationExpression = DurationBetween(
      precision: precision,
      operand: [
        Start(operand: expression),
        End(operand: expression),
      ],
    );

    return durationExpression;
  }
}
