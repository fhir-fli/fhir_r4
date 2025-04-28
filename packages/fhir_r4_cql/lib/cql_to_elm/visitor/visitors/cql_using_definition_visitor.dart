import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlUsingDefinitionVisitor extends CqlBaseVisitor<dynamic> {
  CqlUsingDefinitionVisitor(super.library);

  @override
  dynamic visitUsingDefinition(UsingDefinitionContext ctx) {
    printIf(ctx);
    String? localIdentifier;
    String? version;

    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ModelIdentifierContext) {
        localIdentifier = visitModelIdentifier(child);
      } else if (child is VersionSpecifierContext) {
        version = visitVersionSpecifier(child);
      }
    }
    if (localIdentifier != null || version != null) {
      library.usings ??= UsingDefs();
      final modelInfoProvider = StandardModelInfoProvider();
      final modelInfo = modelInfoProvider
          .load(ModelIdentifier(id: localIdentifier!, version: version));
      library.usings!.def.add(UsingDef(
        localIdentifier: localIdentifier,
        version: version,
        uri: modelInfo?.url.toString(),
      ));
    }
  }
}
