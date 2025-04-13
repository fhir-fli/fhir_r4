import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlIntervalTypeSpecifierVisitor
    extends CqlBaseVisitor<IntervalTypeSpecifier> {
  CqlIntervalTypeSpecifierVisitor(super.library);

  @override
  IntervalTypeSpecifier visitIntervalTypeSpecifier(
      IntervalTypeSpecifierContext ctx) {
    printIf(ctx);
    for (var child in ctx.children ?? <ParseTree>[]) {
      if (child is TypeSpecifierContext) {
        return IntervalTypeSpecifier(pointType: visitTypeSpecifier(child));
      }
    }
    throw ArgumentError('Invalid IntervalTypeSpecifier');
  }
}
