import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlInstanceElementSelectorVisitor
    extends CqlBaseVisitor<InstanceElement> {
  CqlInstanceElementSelectorVisitor(super.library);

  @override
  InstanceElement visitInstanceElementSelector(
      InstanceElementSelectorContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? name;
    CqlExpression? value;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ReferentialIdentifierContext) {
        name = visitReferentialIdentifier(child);
      } else {
        final result = byContext(child);
        if (result is CqlExpression) {
          value = result;
        }
      }
    }

    if (name != null && value != null) {
      return InstanceElement(name: name, value: value);
    }

    throw ArgumentError('$thisNode Invalid InstanceElementSelector');
  }
}
