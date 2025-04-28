import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlListSelectorTermVisitor extends CqlBaseVisitor<ListExpression> {
  CqlListSelectorTermVisitor(super.library);

  @override
  ListExpression visitListSelectorTerm(ListSelectorTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ListSelectorContext) {
        return visitListSelector(child);
      }
    }

    throw ArgumentError('$thisNode Invalid ListSelectorTerm');
  }
}
