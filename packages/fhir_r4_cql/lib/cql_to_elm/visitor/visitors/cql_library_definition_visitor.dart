import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlLibraryDefinitionVisitor extends CqlBaseVisitor<void> {
  CqlLibraryDefinitionVisitor(super.library);

  @override
  void visitLibraryDefinition(LibraryDefinitionContext ctx) {
    printIf(ctx);
    String? id;
    String? version;

    for (var child in ctx.children ?? <ParseTree>[]) {
      if (child is QualifiedIdentifierContext) {
        id = visitQualifiedIdentifier(child);
      } else if (child is VersionSpecifierContext) {
        version = visitVersionSpecifier(child);
      }
    }
    if (id != null || version != null) {
      library.identifier = VersionedIdentifier(id: id, version: version);
    }
  }
}
