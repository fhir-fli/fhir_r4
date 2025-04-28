import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlEndsIntervalOperatorPhraseVisitor extends CqlBaseVisitor<Ends> {
  CqlEndsIntervalOperatorPhraseVisitor(super.library);

  @override
  Ends visitEndsIntervalOperatorPhrase(EndsIntervalOperatorPhraseContext ctx,
      [CqlExpression? left, CqlExpression? right]) {
    printIf(ctx);
    final int thisNode = getNextNode();
    CqlDateTimePrecision? dateTimePrecision;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is DateTimePrecisionSpecifierContext) {
        dateTimePrecision = CqlDateTimePrecisionExtension.fromJson(
            visitDateTimePrecisionSpecifier(child));
      }
    }
    if (left != null && right != null) {
      return Ends(precision: dateTimePrecision, operand: [left, right]);
    }
    throw ArgumentError('$thisNode invalid EndsIntervalOperatorPhrase');
  }
}
