import 'package:antlr4/antlr4.dart';
import '../../../../cql.dart';

// TODO(Dokotela): test that it works
class CqlDurationExpressionTermVisitor extends CqlBaseVisitor<DurationBetween> {
  CqlDurationExpressionTermVisitor(super.library);

  @override
  DurationBetween visitDurationExpressionTerm(
      DurationExpressionTermContext ctx) {
    // Initial debugging entry point for DurationExpressionTerm
    print('[DEBUG] Entering visitDurationExpressionTerm with context: $ctx');
    final int thisNode = getNextNode();
    print('[DEBUG] Node ID for DurationExpressionTerm: $thisNode');

    CqlDateTimePrecision? precision;
    CqlExpression? expression;

    // Iterate over children to identify components of the duration expression
    for (final child in ctx.children ?? <ParseTree>[]) {
      print('[DEBUG] Processing child in visitDurationExpressionTerm: $child');
      if (child is PluralDateTimePrecisionContext) {
        precision = CqlDateTimePrecisionExtension.fromJson(
            visitPluralDateTimePrecision(child));
        print('[DEBUG] Assigned pluralDateTimePrecision: $precision');
      } else if (child is ExpressionTermContext) {
        expression = byContext(child) as CqlExpression;
        print('[DEBUG] Assigned expression: $expression');
      }
    }

    // Ensure that precision and expression are assigned, as per the ANTLR rule
    if (precision == null || expression == null) {
      final errorMessage = 'Invalid DurationExpressionTerm: missing components';
      print('[ERROR] $errorMessage');
      throw ArgumentError('$thisNode $errorMessage');
    }

    // Build the DurationBetween expression with the provided precision and expression
    final durationExpression = DurationBetween(
      precision: precision,
      operand: [expression],
    );

    print('[DEBUG] Returning DurationExpression: $durationExpression');
    return durationExpression;
  }
}
