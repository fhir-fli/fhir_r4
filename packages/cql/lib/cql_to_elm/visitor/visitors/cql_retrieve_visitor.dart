import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlRetrieveVisitor extends CqlBaseVisitor<Retrieve> {
  CqlRetrieveVisitor(super.library);

  @override
  Retrieve visitRetrieve(RetrieveContext ctx) {
    printIf(ctx);
    CqlExpression? context;
    NamedTypeSpecifier? name;
    String? codeProperty;
    String? codeComparator;
    CqlExpression? codes;

    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ContextIdentifierContext) {
        context = visitContextIdentifier(child);
      } else if (child is NamedTypeSpecifierContext) {
        name = visitNamedTypeSpecifier(child);
      } else if (child is CodePathContext) {
        codeProperty = visitCodePath(child);
      } else if (child is CodeComparatorContext) {
        codeComparator = visitCodeComparator(child);
      } else if (child is TerminologyContext) {
        codes = visitTerminology(child);
      }
    }
    String? templateId;

    if (name != null) {
      for (final model in library.usings?.def ?? <UsingDef>[]) {
        if (model.localIdentifier != null) {
          final modelInfo = modelInfoProvider.load(ModelIdentifier(
              id: model.localIdentifier!, version: model.version));
          if (modelInfo != null) {
            final index = modelInfo.typeInfo.indexWhere((element) =>
                (element is ClassInfo &&
                    element.label == name!.namespace.localPart) ||
                (element is ProfileInfo &&
                    element.label == name!.namespace.localPart));
            if (index != -1) {
              String? localPart;
              if (modelInfo.typeInfo[index] is ClassInfo) {
                templateId =
                    (modelInfo.typeInfo[index] as ClassInfo).identifier;
                localPart = (modelInfo.typeInfo[index] as ClassInfo).name;
              } else if (modelInfo.typeInfo[index] is ProfileInfo) {
                templateId =
                    (modelInfo.typeInfo[index] as ProfileInfo).identifier;
                localPart = (modelInfo.typeInfo[index] as ProfileInfo).name;
              }
              name.namespace = QName.fromNamespace(modelInfo.url.toString(),
                  localPart ?? templateId ?? name.namespace.localPart);
              break;
            }
          }
        }
      }
      return Retrieve(
        dataType: name.namespace,
        codes: codes,
        context: context,
        codeComparator: codes == null ? null : (codeComparator ?? 'in'),
        templateId: templateId,
        codeProperty: codeProperty,
      );
    } else {
      throw ArgumentError('Invalid Retrieve');
    }
  }
}
