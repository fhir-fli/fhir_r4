import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlIntervalSelectorVisitor extends CqlBaseVisitor<IntervalExpression> {
  CqlIntervalSelectorVisitor(super.library);

  @override
  IntervalExpression visitIntervalSelector(IntervalSelectorContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    LiteralType? low;
    LiteralType? high;
    bool lowClosed = true;
    bool highClosed = true;
    // bool recordHigh = false;

    if (ctx.childCount == 6) {
      lowClosed = ctx.getChild(1)?.text == '(' ? false : true;
      highClosed = ctx.getChild(5)?.text == ')' ? false : true;
      final child2 = ctx.getChild(2);
      final child5 = ctx.getChild(4);
      if (child2 != null) {
        low = byContext(child2);
      }
      if (child5 != null) {
        high = byContext(child5);
      }
      if (low.runtimeType == high.runtimeType) {
        return IntervalExpression(
          low: low,
          high: high,
          lowClosed: lowClosed,
          highClosed: highClosed,
        );
      }
      throw ArgumentError('$thisNode Invalid IntervalSelector');
    } else {
      throw ArgumentError('$thisNode Invalid IntervalSelector');
    }
  }
}
