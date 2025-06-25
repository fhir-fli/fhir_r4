import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlListSelectorVisitor extends CqlBaseVisitor<ListExpression> {
  CqlListSelectorVisitor(super.library);

  @override
  ListExpression visitListSelector(ListSelectorContext ctx) {
    TypeSpecifierExpression? typeSpecifier;
    final elements = <CqlExpression>[];

    for (final child in ctx.children ?? []) {
      if (child is TypeSpecifierContext) {
        typeSpecifier = visitTypeSpecifier(child);
      } else if (child is ExpressionContext) {
        final result = byContext(child);
        if (result is CqlExpression) elements.add(result);
      }
    }

    // If they wrote “[Integer] { 1, null, 3 }`, use that to wrap nulls:
    final transformed = elements.map((e) {
      if (e is LiteralNull && typeSpecifier != null) {
        return As(
          operand: e,
          asTypeSpecifier: typeSpecifier,
        );
      }
      return e;
    }).toList();

    return ListExpression(
      typeSpecifier: typeSpecifier,
      element: transformed,
    );
  }
}
