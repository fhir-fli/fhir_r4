import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlCaseExpressionTermVisitor extends CqlBaseVisitor<Case> {
  CqlCaseExpressionTermVisitor(super.library);

  @override
  Case visitCaseExpressionTerm(CaseExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    CqlExpression? comparand;
    List<CaseItem> caseItem = [];
    CqlExpression? elseExpr;
    int i = 2;
    if (ctx.getChild(1) is ExpressionContext) {
      comparand = byContext(ctx.getChild(1)!);
    } else {
      i = 1;
    }
    for (i; i < ctx.childCount - 1; i++) {
      if (ctx.getChild(i) is CaseExpressionItemContext) {
        caseItem.add(visitCaseExpressionItem(
            ctx.getChild(i) as CaseExpressionItemContext));
      } else if (ctx.getChild(i) is ExpressionContext) {
        elseExpr = byContext(ctx.getChild(i) as ExpressionContext);
      }
    }
    if (caseItem.isNotEmpty && elseExpr != null) {
      final elseTypes = elseExpr.getReturnTypes(library);
      final caseTypes = <String>[];
      for (final case_ in caseItem) {
        final newCaseTypes = case_.then.getReturnTypes(library);
        if (newCaseTypes.isNotEmpty) {
          caseTypes.addAll(newCaseTypes);
        }
      }
      final totalTypes = caseTypes.toSet().union(elseTypes.toSet());
      if (totalTypes.contains('Quantity') ||
          totalTypes.contains('Decimal')) {
        if (elseTypes.length == 1 &&
            (elseTypes.first == 'Integer64' ||
                elseTypes.first == 'Integer')) {
          elseExpr = ToDecimal(operand: elseExpr);
        }
        for (var i = 0; i < caseTypes.length; i++) {
          if (caseTypes[i] == 'Integer64' ||
              caseTypes[i] == 'Integer') {
            caseItem[i] = CaseItem(
                when_: caseItem[i].when_,
                then: ToDecimal(operand: caseItem[i].then));
          }
        }
      } else if (totalTypes.contains('Integer64')) {
        if (elseTypes.length == 1 && elseTypes.first == 'Integer') {
          elseExpr = ToLong(operand: elseExpr);
        }
        for (var i = 0; i < caseTypes.length; i++) {
          if (caseTypes[i] == 'Integer') {
            caseItem[i] = CaseItem(
                when_: caseItem[i].when_,
                then: ToLong(operand: caseItem[i].then));
          }
        }
      }
      return Case(comparand: comparand, caseItem: caseItem, elseExpr: elseExpr);
    } else {
      throw ArgumentError('$thisNode Invalid CaseExpressionTerm');
    }
  }
}
