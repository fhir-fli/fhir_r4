import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlStatementVisitor extends CqlBaseVisitor<void> {
  CqlStatementVisitor(super.library);

  @override
  void visitStatement(StatementContext ctx) {
    print('\n\n\n*********************************************');
    printIf(ctx);
    ExpressionDef? statement;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ExpressionDefinitionContext) {
        statement = visitExpressionDefinition(child);
      }
      if (child is ContextDefinitionContext) {
        visitContextDefinition(child);
      } else if (child is FunctionDefinitionContext) {
        statement = visitFunctionDefinition(child);
      }
    }
    if (statement != null) {
      library.statements ??= ExpressionDefs();
      library.statements!.def.add(statement);
    }
  }
}
