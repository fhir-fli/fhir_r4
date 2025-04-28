import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlCodeSelectorVisitor extends CqlBaseVisitor<Code> {
  CqlCodeSelectorVisitor(super.library);

  @override
  Code visitCodeSelector(CodeSelectorContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? code;
    CodeSystemRef? codeSystem;
    String? display;
    if (ctx.childCount >= 3 && ctx.getChild(1)?.text != null) {
      code = noQuoteString(ctx.getChild(1)!.text!);
    }
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is CodesystemIdentifierContext) {
        codeSystem = visitCodesystemIdentifier(child);
      } else if (child is DisplayClauseContext) {
        display = visitDisplayClause(child);
      }
    }
    if (code != null && codeSystem != null) {
      return Code(code: code, system: codeSystem, display: display);
    }
    throw ArgumentError('$thisNode Invalid CodeSelector');
  }
}
