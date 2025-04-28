import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlIncludeDefinitionVisitor extends CqlBaseVisitor<void> {
  CqlIncludeDefinitionVisitor(super.library);

  @override
  void visitIncludeDefinition(IncludeDefinitionContext ctx) {
    printIf(ctx);
    // final int thisNode = getNextNode();
    String? localIdentifier;
    String? path;
    String? version;

    for (var child in ctx.children ?? <ParseTree>[]) {
      if (child is QualifiedIdentifierContext) {
        path = visitQualifiedIdentifier(child);
      } else if (child is LocalIdentifierContext) {
        localIdentifier = visitLocalIdentifier(child);
      } else if (child is VersionSpecifierContext) {
        version = visitVersionSpecifier(child);
      }
    }
    if (localIdentifier != null || path != null || version != null) {
      library.includes ??= IncludeDefs();
      library.includes!.def.add(IncludeDef(
          localIdentifier: localIdentifier ?? path,
          path: path,
          version: version));
    }
  }
}
