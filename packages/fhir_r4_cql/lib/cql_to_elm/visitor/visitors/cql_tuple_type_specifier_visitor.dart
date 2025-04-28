import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlTupleTypeSpecifierVisitor extends CqlBaseVisitor<TupleTypeSpecifier> {
  CqlTupleTypeSpecifierVisitor(super.library);

  @override
  TupleTypeSpecifier visitTupleTypeSpecifier(TupleTypeSpecifierContext ctx) {
    printIf(ctx);
    List<TupleElementDefinition> element = <TupleElementDefinition>[];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TupleElementDefinitionContext) {
        element.add(visitTupleElementDefinition(child));
      }
    }
    return TupleTypeSpecifier(element: element.isEmpty ? null : element);
  }
}
