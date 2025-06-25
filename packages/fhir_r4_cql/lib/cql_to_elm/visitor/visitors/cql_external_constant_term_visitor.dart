import 'package:antlr4/antlr4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

// TODO(Dokotela): test that it works
class CqlExternalConstantTermVisitor extends CqlBaseVisitor<dynamic> {
  CqlExternalConstantTermVisitor(super.library);

  @override
  dynamic visitExternalConstantTerm(ExternalConstantTermContext ctx) {
    printIf(ctx);
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ExternalConstantContext) {
        return visitExternalConstant(child);
      } else {
        throw ArgumentError('Invalid CodeIdentifier');
      }
    }
  }
}
