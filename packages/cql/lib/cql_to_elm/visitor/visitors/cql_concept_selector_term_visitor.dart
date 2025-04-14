import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlConceptSelectorTermVisitor extends CqlBaseVisitor<Concept> {
  CqlConceptSelectorTermVisitor(super.library);

  @override
  Concept visitConceptSelectorTerm(ConceptSelectorTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ConceptSelectorContext) {
        return visitConceptSelector(child);
      }
    }
    throw ArgumentError('$thisNode Invalid ConceptSelectorTerm');
  }
}
