import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlTupleSelectorVisitor extends CqlBaseVisitor<Tuple> {
  CqlTupleSelectorVisitor(super.library);

  @override
  Tuple visitTupleSelector(TupleSelectorContext ctx) {
    printIf(ctx);
    final List<TupleElement> elements = <TupleElement>[];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TupleElementSelectorContext) {
        elements.add(visitTupleElementSelector(child));
      }
    }
    return Tuple(element: elements);
  }
}
