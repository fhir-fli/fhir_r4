import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlFunctionVisitor extends CqlBaseVisitor<dynamic> {
  CqlFunctionVisitor(super.library);

  @override
  dynamic visitFunction(FunctionContext ctx) {
    String? ref;
    List<CqlExpression> operand = [];

    // 1) Extract the function name and its operands
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ReferentialIdentifierContext) {
        ref = visitReferentialIdentifier(child);
      } else if (child is ParamListContext) {
        operand.addAll(visitParamList(child));
      }
    }
    if (ref == null) {
      throw ArgumentError('Invalid Function');
    }

    //
    // STEP 1: Wrap `Null` for all _simple_ aggregates
    //
    // These do not require a Query; they just need their nulls cast to the
    // element type so that Sum/Min/Max/Count/Mode see Integer rather than bare Null.
    //
    const aggregateFunctions = {
      'Sum': 'Integer',
      'Min': 'Integer',
      'Max': 'Integer',
      'Count': 'Integer',
      'Mode': 'Integer',
    };
    if (aggregateFunctions.containsKey(ref)) {
      final aggType = aggregateFunctions[ref]!;
      operand = operand.map((e) {
        if (e is ListExpression) {
          return _processAggregateOperand(e, aggType);
        }
        return e;
      }).toList();
    }

    //
    // STEP 2: Convert to a Query **only** for those that sort and promote to Decimal
    //
    // These need a `return ToDecimal(X)` so that avg/median/etc get the correct
    // decimal result even if the list was Integers.
    //
    const queryBasedFunctions = {
      'Avg',
      'Median',
      'Variance',
      'StdDev',
      'PopulationVariance',
      'PopulationStdDev',
    };
    if (queryBasedFunctions.contains(ref) &&
        operand.isNotEmpty &&
        operand.first is ListExpression) {
      operand[0] = _transformToQuery(operand.first as ListExpression, ref);
    }

    //
    // STEP 3: Delegate to the standard factory
    //
    return CqlExpression.byName(ref, operand, library);
  }

  /// Wraps any `Null` elements in the list with `As(…, <aggType>)`.
  ListExpression _processAggregateOperand(
      ListExpression listExpr, String aggType) {
    final wrapperType = QName.fromElmType(aggType);
    final transformed = listExpr.element?.map((e) {
      if (e is LiteralNull) {
        return As(operand: e, asType: wrapperType);
      }
      return e;
    }).toList();
    return ListExpression(
      typeSpecifier: listExpr.typeSpecifier,
      element: transformed,
    );
  }

  /// Builds a Query over the original list, aliasing each element to X,
  /// then returns `ToDecimal(AliasRef("X"))` so that sorting & decimal‐promotion
  /// happen.
  Query _transformToQuery(ListExpression listExpr, String functionName) {
    const aliasName = 'X';
    final returnTypes =
        listExpr.getReturnTypes(library).map((e) => e.toLowerCase()).toList();
    final wrapType = returnTypes.any((e) => e.endsWith('integer')) &&
            returnTypes
                .every((e) => e.endsWith('integer') || e.endsWith('null'))
        ? 'Integer'
        : returnTypes.any((e) => e.endsWith('quantity'))
            ? 'Quantity'
            : 'Decimal';

    final processedList = _processAggregateOperand(listExpr, wrapType);

    final aliasedSource = AliasedQuerySource(
      alias: aliasName,
      expression: ListExpression(
        typeSpecifier: listExpr.typeSpecifier,
        element: processedList.element,
      ),
    );

    // always ToDecimal(X) in the return for these functions
    final returnClause = ReturnClause(
      distinct: false,
      expression: ToDecimal(operand: AliasRef(name: aliasName)),
    );

    return Query(source: [aliasedSource], returnClause: returnClause);
  }
}
