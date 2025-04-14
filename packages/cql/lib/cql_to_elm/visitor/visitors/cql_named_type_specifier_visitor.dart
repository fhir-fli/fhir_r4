import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlNamedTypeSpecifierVisitor extends CqlBaseVisitor<NamedTypeSpecifier> {
  CqlNamedTypeSpecifierVisitor(super.library);

  @override
  NamedTypeSpecifier? visitNamedTypeSpecifier(NamedTypeSpecifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    // String? qualifier;
    String? referentialOrTypeNameIdentifier;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is QualifierContext) {
        // qualifier = visitQualifier(child);
      }
      if (child is ReferentialOrTypeNameIdentifierContext) {
        referentialOrTypeNameIdentifier =
            visitReferentialOrTypeNameIdentifier(child);
      }
    }
    // TODO: unclear what to do with qualifiers
    if (referentialOrTypeNameIdentifier != null) {
      return NamedTypeSpecifier(
          namespace: QName.fromFull(referentialOrTypeNameIdentifier));
    } else {
      throw ArgumentError('$thisNode Invalid NamedTypeSpecifier');
    }
  }
}
