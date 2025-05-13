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
    // STEP 1: Wrap `Null` for all _simple_ aggregates + Mode
    //
    // Sum/Min/Max/Count always use Integer
    // Mode will infer its element type dynamically
    //
    const simpleAggregates = {
      'Sum': 'Integer',
      'Min': 'Integer',
      'Max': 'Integer',
      'Count': 'Integer',
    };
    if (simpleAggregates.containsKey(ref) || ref == 'Mode') {
      operand = operand.map((e) {
        if (e is ListExpression) {
          final aggType = simpleAggregates.containsKey(ref)
            ? simpleAggregates[ref]!
            : _inferElementType(e);
          return _processAggregateOperand(e, aggType);
        }
        return e;
      }).toList();
    }

    //
    // STEP 2: Convert to a Query **only** for those that sort and promote to Decimal
    //
    // Avg, Median, Variance, StdDev, PopulationVariance, PopulationStdDev
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

  /// Infer the element type of a list by looking at its non-null items.
  /// If they’re all Integers, returns "Integer"; otherwise "Decimal".
  String _inferElementType(ListExpression listExpr) {
    final nonNullTypes = listExpr.element
        ?.where((e) => e is! LiteralNull)
        .expand((e) => e.getReturnTypes(library))
        .map((t) => t.toLowerCase())
        .toSet() ?? {};
    if (nonNullTypes.length == 1) {
      final t = nonNullTypes.single;
      return t.endsWith('decimal') ? 'Decimal' : 'Integer';
    }
    return 'Decimal';
  }

  /// Builds a Query over the original list, aliasing each element to X,
  /// then returns `ToDecimal(AliasRef("X"))` so that sorting & decimal‐promotion
  /// happen.
  Query _transformToQuery(ListExpression listExpr, String functionName) {
    const aliasName = 'X';

    // Decide whether the wrapper type for nulls should be Integer, Quantity, or Decimal
    final returnTypes =
        listExpr.getReturnTypes(library).map((e) => e.toLowerCase()).toList();
    final wrapType = returnTypes.any((e) => e.endsWith('integer')) &&
            returnTypes.every((e) => e.endsWith('integer') || e.endsWith('null'))
        ? 'Integer'
        : returnTypes.any((e) => e.endsWith('quantity'))
            ? 'Quantity'
            : 'Decimal';

    // First cast any nulls in the original list to the chosen wrapType
    final processedList = _processAggregateOperand(listExpr, wrapType);

    // Create the aliased source from that list
    final aliasedSource = AliasedQuerySource(
      alias: aliasName,
      expression: ListExpression(
        typeSpecifier: listExpr.typeSpecifier,
        element: processedList.element,
      ),
    );

    // Always return ToDecimal(X) so that the aggregate (Avg/Median/etc)
    // sees a Decimal even if all inputs were integer-like
    final returnClause = ReturnClause(
      distinct: false,
      expression: ToDecimal(operand: AliasRef(name: aliasName)),
    );

    return Query(source: [aliasedSource], returnClause: returnClause);
  }
}
