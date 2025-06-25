import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlTypeExtentExpressionTermVisitor extends CqlBaseVisitor<dynamic> {
  CqlTypeExtentExpressionTermVisitor(super.library);

  @override
  dynamic visitTypeExtentExpressionTerm(TypeExtentExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    final NamedTypeSpecifier? namedTypeSpecifier =
        visitNamedTypeSpecifier(ctx.children![1] as NamedTypeSpecifierContext);
    if (namedTypeSpecifier != null) {
      if (ctx.children![0].text == 'minimum') {
        return MinValue(valueType: namedTypeSpecifier.namespace);
      } else if (ctx.children![0].text == 'maximum') {
        return MaxValue(valueType: namedTypeSpecifier.namespace);
      }
    }
    throw ArgumentError('$thisNode Invalid TypeExtentExpressionTerm');
  }
}
