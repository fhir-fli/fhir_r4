import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlCodeDefinitionVisitor extends CqlBaseVisitor<void> {
  CqlCodeDefinitionVisitor(super.library);

  @override
  void visitCodeDefinition(CodeDefinitionContext ctx) {
    printIf(ctx);
    AccessModifier accessLevel = AccessModifier.public;
    String? name;
    String? id;
    CodeSystemRef? codeSystem;
    String? display;

    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is AccessModifierContext) {
        accessLevel = visitAccessModifier(child);
      } else if (child is IdentifierContext) {
        name = visitIdentifier(child);
      } else if (child is CodeIdContext) {
        id = visitCodeId(child);
      } else if (child is CodesystemIdentifierContext) {
        codeSystem = visitCodesystemIdentifier(child);
      } else if (child is DisplayClauseContext) {
        display = visitDisplayClause(child);
      }
    }

    if (name != null && id != null) {
      library.codes ??= CodeDefs();
      library.codes!.def.add(CodeDef(
        name: name,
        id: id,
        display: display,
        codeSystem: codeSystem,
        accessLevel: accessLevel,
      ));
    }
  }
}
