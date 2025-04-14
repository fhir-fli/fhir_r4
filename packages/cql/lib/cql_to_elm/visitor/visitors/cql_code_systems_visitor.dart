import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlCodesystemsVisitor extends CqlBaseVisitor<List<CodeSystemRef>> {
  CqlCodesystemsVisitor(super.library);

  @override
  List<CodeSystemRef> visitCodesystems(CodesystemsContext ctx) {
    printIf(ctx);
    final List<CodeSystemRef> codeSystem = <CodeSystemRef>[];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is CodesystemIdentifierContext) {
        codeSystem.add(visitCodesystemIdentifier(child));
      }
    }
    return codeSystem;
  }
}
