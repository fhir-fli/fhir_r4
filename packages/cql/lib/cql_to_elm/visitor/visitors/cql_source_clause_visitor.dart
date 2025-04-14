import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlSourceClauseVisitor extends CqlBaseVisitor<List<AliasedQuerySource>> {
  CqlSourceClauseVisitor(super.library);

  @override
  List<AliasedQuerySource> visitSourceClause(SourceClauseContext ctx) {
    printIf(ctx);
    List<AliasedQuerySource> source = [];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is AliasedQuerySourceContext) {
        source.add(visitAliasedQuerySource(child));
      }
    }
    return source;
  }
}
