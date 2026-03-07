import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlQuerySourceVisitor extends CqlBaseVisitor<CqlExpression> {
  CqlQuerySourceVisitor(super.library);

  @override
  CqlExpression visitQuerySource(QuerySourceContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is RetrieveContext) {
        return visitRetrieve(child);
      } else if (child is QualifiedIdentifierExpressionContext) {
        final ref = visitQualifiedIdentifierExpression(child);
        // If the result is an IdentifierRef whose libraryName is actually a
        // query alias (e.g. BP.component where BP is an outer query alias),
        // convert it to a Property(scope, path).
        if (ref is IdentifierRef && ref.libraryName != null) {
          final qualifier = ref.libraryName!;
          // Check let identifiers first — they take precedence over query aliases
          // because visitLetClause adds to both scopes but should use QueryLetRef.
          if (CqlBaseVisitor.isLetIdentifier(qualifier)) {
            return Property(
                source: QueryLetRef(name: qualifier), path: ref.name);
          }
          if (CqlBaseVisitor.isQueryAlias(qualifier)) {
            return Property(scope: qualifier, path: ref.name);
          }
        }
        return ref;
      } else {
        final result = byContext(child);
        if (result is CqlExpression) {
          return result;
        }
      }
    }
    throw ArgumentError('$thisNode Invalid QuerySource');
  }
}
