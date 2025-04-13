import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlCodeSelectorTermVisitor extends CqlBaseVisitor<dynamic> {
  CqlCodeSelectorTermVisitor(super.library);

  @override
  dynamic visitCodeSelectorTerm(CodeSelectorTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is CodeSelectorContext) {
        return visitCodeSelector(child);
      }
    }
    throw ArgumentError('$thisNode Invalid CodeSelectorTerm');
  }
}
