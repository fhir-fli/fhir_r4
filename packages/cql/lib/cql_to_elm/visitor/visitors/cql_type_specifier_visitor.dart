import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlTypeSpecifierVisitor extends CqlBaseVisitor<TypeSpecifierExpression?> {
  CqlTypeSpecifierVisitor(super.library);

  @override
  TypeSpecifierExpression? visitTypeSpecifier(TypeSpecifierContext ctx) {
    printIf(ctx);
    for (var child in ctx.children ?? <ParseTree>[]) {
      if (child is NamedTypeSpecifierContext) {
        return visitNamedTypeSpecifier(child);
      } else if (child is ListTypeSpecifierContext) {
        return visitListTypeSpecifier(child);
      } else if (child is IntervalTypeSpecifierContext) {
        return visitIntervalTypeSpecifier(child);
      } else if (child is TupleTypeSpecifierContext) {
        return visitTupleTypeSpecifier(child);
      } else if (child is ChoiceTypeSpecifierContext) {
        return visitChoiceTypeSpecifier(child);
      }
    }
    return null;
  }
}
