import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlStatementVisitor extends CqlBaseVisitor<void> {
  CqlStatementVisitor(super.library);

  @override
  void visitStatement(StatementContext ctx) {
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
