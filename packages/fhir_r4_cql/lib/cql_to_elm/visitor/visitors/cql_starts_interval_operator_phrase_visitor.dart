import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlStartsIntervalOperatorPhraseVisitor extends CqlBaseVisitor<Starts> {
  CqlStartsIntervalOperatorPhraseVisitor(super.library);

  @override
  Starts visitStartsIntervalOperatorPhrase(
      StartsIntervalOperatorPhraseContext ctx,
      [CqlExpression? left,
      CqlExpression? right]) {
    printIf(ctx);
    final int thisNode = getNextNode();
    CqlDateTimePrecision? dateTimePrecisionSpecifier;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is DateTimePrecisionSpecifierContext) {
        dateTimePrecisionSpecifier = CqlDateTimePrecisionExtension.fromJson(
            visitDateTimePrecisionSpecifier(child));
      }
    }
    if (left != null && right != null) {
      return Starts(
          precision: dateTimePrecisionSpecifier, operand: [left, right]);
    }
    throw ArgumentError('$thisNode Invalid StartsIntervalOperatorPhrase');
  }
}
