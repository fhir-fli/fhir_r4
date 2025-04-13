import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlIntervalSelectorTermVisitor
    extends CqlBaseVisitor<IntervalExpression> {
  CqlIntervalSelectorTermVisitor(super.library);

  @override
  IntervalExpression visitIntervalSelectorTerm(
      IntervalSelectorTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is IntervalSelectorContext) {
        return visitIntervalSelector(child);
      }
    }

    throw ArgumentError('$thisNode Invalid IntervalSelectorTerm');
  }
}
