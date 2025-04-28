import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlCodesystemIdentifierVisitor extends CqlBaseVisitor<CodeSystemRef> {
  CqlCodesystemIdentifierVisitor(super.library);

  @override
  CodeSystemRef visitCodesystemIdentifier(CodesystemIdentifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
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
      return CodeSystemRef(name: name, libraryName: libraryName);
    }
    throw ArgumentError('$thisNode Invalid CodesystemIdentifier');
  }
}
