import '../../../cql.dart';

class CqlAccessModifierVisitor extends CqlBaseVisitor<AccessModifier> {
  CqlAccessModifierVisitor(super.library);

  @override
  AccessModifier visitAccessModifier(AccessModifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    if (ctx.text == 'public') {
      return AccessModifier.public;
    } else if (ctx.text == 'private') {
      return AccessModifier.private;
    } else {
      throw ArgumentError('$thisNode Invalid AccessModifier');
    }
  }
}
