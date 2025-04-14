import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlCodeIdentifierVisitor extends CqlBaseVisitor<CodeRef> {
  CqlCodeIdentifierVisitor(super.library);

  @override
  CodeRef visitCodeIdentifier(CodeIdentifierContext ctx) {
    printIf(ctx);
    String? name;
    String? libraryName;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is IdentifierContext) {
        name = visitIdentifier(child);
      } else if (child is LibraryIdentifierContext) {
        libraryName = visitLibraryIdentifier(child);
      }
    }
    if (name != null) {
      return CodeRef(name: name, libraryName: libraryName);
    }
    throw ArgumentError('Invalid CodeIdentifier');
  }
}
