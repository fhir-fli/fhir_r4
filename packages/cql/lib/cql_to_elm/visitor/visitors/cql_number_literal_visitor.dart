import '../../../cql.dart';

class CqlNumberLiteralVisitor extends CqlBaseVisitor<LiteralType> {
  CqlNumberLiteralVisitor(super.library);

  @override
  LiteralType visitNumberLiteral(NumberLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    final text = ctx.getChild(0)!.text!;
    if (int.tryParse(text) != null) {
      return LiteralInteger(int.parse(text));
    } else if (double.tryParse(text) != null) {
      return LiteralDecimal.fromString(text);
    } else if (BigInt.tryParse(text) != null) {
      return LiteralLong(BigInt.parse(text));
    }
    throw ArgumentError('$thisNode Invalid NumberLiteral');
  }
}
