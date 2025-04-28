import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlChoiceTypeSpecifierVisitor
    extends CqlBaseVisitor<ChoiceTypeSpecifier> {
  CqlChoiceTypeSpecifierVisitor(super.library);

  @override
  ChoiceTypeSpecifier visitChoiceTypeSpecifier(ChoiceTypeSpecifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    List<TypeSpecifierExpression> choice = <TypeSpecifierExpression>[];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TypeSpecifierContext) {
        final newTypeSpecifier = visitTypeSpecifier(child);
        if (newTypeSpecifier != null) {
          choice.add(newTypeSpecifier);
        }
      }
    }
    if (choice.isNotEmpty) {
      return ChoiceTypeSpecifier(choice: choice);
    } else {
      throw ArgumentError('$thisNode Invalid ChoiceTypeSpecifier');
    }
  }
}
