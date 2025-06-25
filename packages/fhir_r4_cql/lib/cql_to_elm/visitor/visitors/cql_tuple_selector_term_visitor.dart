import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlTupleSelectorTermVisitor extends CqlBaseVisitor<dynamic> {
  CqlTupleSelectorTermVisitor(super.library);

  @override
  dynamic visitTupleSelectorTerm(TupleSelectorTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TupleSelectorContext) {
        return visitTupleSelector(child);
      }
    }
    throw ArgumentError('$thisNode Invalid TupleSelectorTerm');
  }
}
