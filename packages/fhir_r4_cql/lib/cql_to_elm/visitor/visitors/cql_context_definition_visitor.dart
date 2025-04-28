import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlContextDefinitionVisitor extends CqlBaseVisitor<void> {
  CqlContextDefinitionVisitor(super.library);

  @override
  void visitContextDefinition(ContextDefinitionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? name;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is IdentifierContext) {
        name = visitIdentifier(child);
      }
    }
    library.contexts ??= ContextDefs();
    if (name != null) {
      library.contexts!.def.add(ContextDef(name: name));
      for (final model in library.usings?.def ?? <UsingDef>[]) {
        if (model.localIdentifier != null) {
          final modelInfo = modelInfoProvider.load(ModelIdentifier(
              id: model.localIdentifier!, version: model.version));
          if (modelInfo != null) {
            final index = modelInfo.typeInfo.indexWhere((element) =>
                (element is ClassInfo &&
                    (element.label == name ||
                        element.name == name ||
                        element.identifier == name)) ||
                (element is ProfileInfo &&
                    (element.label == name ||
                        element.name == name ||
                        element.identifier == name)));
            if (index != -1) {
              library.statements ??= ExpressionDefs();
              library.statements!.def.add(
                ExpressionDef(
                  name: name,
                  context: name,
                  expression: SingletonFrom(
                    operand: Retrieve(
                      templateId: R4ResourceType.typesAsStrings.contains(name)
                          ? 'http://hl7.org/fhir/StructureDefinition/$name'
                          : name,
                      dataType:
                          QName.fromNamespace(modelInfo.url.toString(), name),
                    ),
                  ),
                ),
              );
            }
          }
        }
      }
    } else {
      throw ArgumentError('$thisNode Invalid ContextDefinition');
    }
  }
}
