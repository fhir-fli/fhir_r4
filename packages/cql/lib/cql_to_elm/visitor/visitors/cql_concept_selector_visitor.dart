import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlConceptSelectorVisitor extends CqlBaseVisitor<Concept> {
  CqlConceptSelectorVisitor(super.library);

  @override
  Concept visitConceptSelector(ConceptSelectorContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? display;
    List<Code> code = [];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is CodeSelectorContext) {
        code.add(visitCodeSelector(child));
      } else if (child is DisplayClauseContext) {
        display = visitDisplayClause(child);
      }
    }
    if (code.isNotEmpty) {
      return Concept(code: code, display: display);
    }
    throw ArgumentError('$thisNode Invalid ConceptSelector');
  }
}
