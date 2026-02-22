import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlIntervalSelectorVisitor extends CqlBaseVisitor<IntervalExpression> {
  CqlIntervalSelectorVisitor(super.library);

  @override
  IntervalExpression visitIntervalSelector(IntervalSelectorContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    CqlExpression? low;
    CqlExpression? high;
    bool lowClosed = true;
    bool highClosed = true;

    if (ctx.childCount == 6) {
      lowClosed = ctx.getChild(1)?.text == '(' ? false : true;
      highClosed = ctx.getChild(5)?.text == ')' ? false : true;
      final child2 = ctx.getChild(2);
      final child5 = ctx.getChild(4);
      if (child2 != null) {
        final result = byContext(child2);
        if (result is CqlExpression) {
          low = result;
        }
      }
      if (child5 != null) {
        final result = byContext(child5);
        if (result is CqlExpression) {
          high = result;
        }
      }
      return IntervalExpression(
        low: low,
        high: high,
        lowClosed: lowClosed,
        highClosed: highClosed,
      );
    } else {
      throw ArgumentError('$thisNode Invalid IntervalSelector');
    }
  }
}
