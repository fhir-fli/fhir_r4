import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlValuesetDefinitionVisitor extends CqlBaseVisitor<void> {
  CqlValuesetDefinitionVisitor(super.library);

  @override
  void visitValuesetDefinition(ValuesetDefinitionContext ctx) {
    library.valueSets ??= ValueSetDefs();

    List<CodeSystemRef>? codeSystem;
    AccessModifier accessModifier = AccessModifier.public;
    String? name;
    String? id;
    String? version;

    for (var child in ctx.children ?? <ParseTree>[]) {
      if (child is AccessModifierContext) {
        accessModifier = visitAccessModifier(child);
      } else if (child is IdentifierContext) {
        name = visitIdentifier(child);
      } else if (child is ValuesetIdContext) {
        id = visitValuesetId(child);
      } else if (child is VersionSpecifierContext) {
        version = visitVersionSpecifier(child);
      } else if (child is CodesystemsContext) {
        codeSystem = visitCodesystems(child);
      }
    }
    if (name != null || id != null) {
      library.valueSets!.def.add(ValueSetDef(
        codeSystem: codeSystem,
        accessLevel: accessModifier,
        id: id,
        name: name,
        version: version,
      ));
    }
  }
}
