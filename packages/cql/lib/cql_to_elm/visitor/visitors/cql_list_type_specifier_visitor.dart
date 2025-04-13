import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlListTypeSpecifierVisitor extends CqlBaseVisitor<ListTypeSpecifier> {
  CqlListTypeSpecifierVisitor(super.library);

  @override
  ListTypeSpecifier visitListTypeSpecifier(ListTypeSpecifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TypeSpecifierContext) {
        return ListTypeSpecifier(elementType: visitTypeSpecifier(child));
      }
    }
    throw ArgumentError('$thisNode Invalid ListTypeSpecifier');
  }
}
