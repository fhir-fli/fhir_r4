import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlDateTimeComponentVisitor extends CqlBaseVisitor<String> {
  CqlDateTimeComponentVisitor(super.library);

  @override
  String visitDateTimeComponent(DateTimeComponentContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        return child.text ?? '';
      } else if (child is DateTimePrecisionContext) {
        return visitDateTimePrecision(child);
      }
    }
    throw ArgumentError('$thisNode Invalid DateTimeComponent');
  }
}
