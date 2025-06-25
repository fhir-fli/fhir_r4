import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

// TODO(Dokotela): test that it works
class CqlDifferenceExpressionTermVisitor
    extends CqlBaseVisitor<DifferenceBetween> {
  CqlDifferenceExpressionTermVisitor(super.library);

  @override
  DifferenceBetween visitDifferenceExpressionTerm(
      DifferenceExpressionTermContext ctx) {
    // Initial debugging entry point for DifferenceExpressionTerm
    print('[DEBUG] Entering visitDifferenceExpressionTerm with context: $ctx');
    final int thisNode = getNextNode();
    print('[DEBUG] Node ID for DifferenceExpressionTerm: $thisNode');

    CqlDateTimePrecision? precision;
    CqlExpression? expression;

    // Iterate over children to identify components of the difference expression
    for (final child in ctx.children ?? <ParseTree>[]) {
      print(
          '[DEBUG] Processing child in visitDifferenceExpressionTerm: $child');
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
      final errorMessage =
          'Invalid DifferenceExpressionTerm: missing components';
      print('[ERROR] $errorMessage');
      throw ArgumentError('$thisNode $errorMessage');
    }

    // Build the DifferenceExpression
    // TODO(Dokotela): fill in standard value later
    final differenceExpression = DifferenceBetween(
      precision: precision,
      operand: [expression],
    );

    print('[DEBUG] Returning DifferenceExpression: $differenceExpression');
    return differenceExpression;
  }
}
