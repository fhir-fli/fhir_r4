import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlDisplayClauseVisitor extends CqlBaseVisitor<String> {
  CqlDisplayClauseVisitor(super.library);

  @override
  String visitDisplayClause(DisplayClauseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl && child.text != 'display') {
        return noQuoteString(ctx.children![1].text!);
      }
    }
    throw ArgumentError('$thisNode Invalid DisplayClause');
  }
}
