import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlCodesystemDefinitionVisitor extends CqlBaseVisitor<void> {
  CqlCodesystemDefinitionVisitor(super.library);

  @override
  void visitCodesystemDefinition(CodesystemDefinitionContext ctx) {
    printIf(ctx);
    AccessModifier accessLevel = AccessModifier.public;
    String? name;
    String? id;
    String? version;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is AccessModifierContext) {
        accessLevel = visitAccessModifier(child);
      } else if (child is IdentifierContext) {
        name = visitIdentifier(child);
      } else if (child is CodesystemIdContext) {
        id = visitCodesystemId(child);
      } else if (child is VersionSpecifierContext) {
        version = visitVersionSpecifier(child);
      }
    }
    if (name != null || id != null || version != null) {
      library.codeSystems ??= CodeSystemDefs();
      library.codeSystems!.def.add(CodeSystemDef(
        name: name,
        id: id,
        version: version,
        accessLevel: accessLevel,
      ));
    }
  }
}
