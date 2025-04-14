import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlCodePathVisitor extends CqlBaseVisitor<dynamic> {
  CqlCodePathVisitor(super.library);

  @override
  dynamic visitCodePath(CodePathContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is SimplePathReferentialIdentifierContext) {
        return visitSimplePathReferentialIdentifier(child);
      } else if (child is SimplePathQualifiedIdentifierContext) {
        return visitSimplePathQualifiedIdentifier(child);
      } else if (child is SimplePathIndexerContext) {
        return visitSimplePathIndexer(child);
      }
    }
    throw ArgumentError('$thisNode Invalid CodePath');
  }
}
