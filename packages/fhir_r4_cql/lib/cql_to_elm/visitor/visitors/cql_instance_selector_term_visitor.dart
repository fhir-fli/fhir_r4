import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlInstanceSelectorTermVisitor extends CqlBaseVisitor<Instance> {
  CqlInstanceSelectorTermVisitor(super.library);

  @override
  Instance visitInstanceSelectorTerm(InstanceSelectorTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is InstanceSelectorContext) {
        return visitInstanceSelector(child);
      }
    }

    throw ArgumentError('$thisNode Invalid InstanceSelectorTerm');
  }
}
