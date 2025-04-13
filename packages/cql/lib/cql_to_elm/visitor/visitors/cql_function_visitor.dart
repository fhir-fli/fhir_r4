import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlFunctionVisitor extends CqlBaseVisitor<dynamic> {
  CqlFunctionVisitor(super.library);

  @override
  dynamic visitFunction(FunctionContext ctx) {
    print('[DEBUG] Entering visitFunction with context: $ctx');
    String? ref;
    List<CqlExpression> operand = [];

    // Extract the function name and operands
    for (final child in ctx.children ?? <ParseTree>[]) {
      print('[DEBUG] Processing child in visitFunction: $child');
      if (child is ReferentialIdentifierContext) {
        ref = visitReferentialIdentifier(child);
        print('[DEBUG] Found ReferentialIdentifierContext, ref: $ref');
      } else if (child is ParamListContext) {
        final paramList = visitParamList(child);
        operand.addAll(paramList);
        print('[DEBUG] Found ParamListContext, operands added: $paramList');
      }
    }

    if (ref != null) {
      print('[DEBUG] Function reference identified: $ref');
      // Define sets of functions for easier classification
      const queryBasedFunctions = {
        'Avg',
        'Median',
        'Mode',
        'Variance',
        'StdDev',
        'PopulationVariance',
        'PopulationStdDev',
      };

      const aggregateFunctions = {
        'Sum': 'Integer',
        'Min': 'Integer',
        'Max': 'Integer',
        'Count': 'Integer',
      };

      // STEP 1: Wrap LiteralNull elements when appropriate for aggregate functions
      if (aggregateFunctions.containsKey(ref)) {
        final aggregateType = aggregateFunctions[ref]!;
        print(
            '[DEBUG] Aggregate function detected: $ref, aggregateType: $aggregateType');
        operand = operand.map((element) {
          print('[DEBUG] Processing operand for aggregation: $element');
          if (element is ListExpression) {
            final processed = _processAggregateOperand(element, aggregateType);
            print('[DEBUG] Processed aggregate operand: $processed');
            return processed;
          }
          return element;
        }).toList();
      }

      // STEP 2: Determine if the function needs query transformation
      if (queryBasedFunctions.contains(ref)) {
        print('[DEBUG] Query-based function detected: $ref');
        const alwaysQueryFunctions = {
          'Avg',
          'Variance',
          'StdDev',
          'PopulationVariance',
          'PopulationStdDev',
          'Median',
        };

        if (alwaysQueryFunctions.contains(ref)) {
          print('[DEBUG] Function always requires query transformation: $ref');
          if (operand.isNotEmpty && operand.first is ListExpression) {
            operand[0] =
                _transformToQuery(operand.first as ListExpression, ref);
            print('[DEBUG] Transformed operand to query: $operand[0]');
          }
        } else {
          // Leave the conditional check only for those that may not always require wrapping
          if (_requiresQueryTransformation(operand, ref)) {
            operand[0] =
                _transformToQuery(operand.first as ListExpression, ref);
            print(
                '[DEBUG] Conditionally transformed operand to query: $operand[0]');
          }
        }
      }

      // STEP 3: Ensure numeric literals are wrapped with `ToDecimal` when necessary
      operand = operand.map((e) {
        print('[DEBUG] Processing operand for ToDecimal wrapping: $e');
        if (e is LiteralInteger && ref == 'Equal') {
          final wrapped = ToDecimal(operand: e);
          print('[DEBUG] Wrapped operand with ToDecimal: $wrapped');
          return wrapped;
        }
        return e;
      }).toList();

      // Create and return the corresponding expression
      final expression = CqlExpression.byName(ref, operand, library);
      print('[DEBUG] Created CqlExpression by name: $expression');
      return expression;
    }

    throw ArgumentError('Invalid Function');
  }

  bool _requiresQueryTransformation(
      List<CqlExpression> operand, String functionName) {
    print(
        '[DEBUG] Checking if Query transformation is required for function: $functionName');
    if (operand.isNotEmpty && operand.first is ListExpression) {
      final listExpression = operand.first as ListExpression;
      final elementTypes = listExpression.element
              ?.expand((e) => e.getReturnTypes(library))
              .toSet() ??
          {};

      print(
          '[DEBUG] Element types for Query transformation check: $elementTypes');
      // Existing transformation rules for mixed types or containing `Null`.
      final requiresTransformation = elementTypes.contains('LiteralNull') ||
          elementTypes.contains('Null') ||
          elementTypes.length >
              1; // Transform if the elements are heterogeneous.
      print('[DEBUG] Requires Query transformation: $requiresTransformation');
      return requiresTransformation;
    }
    return false;
  }

  ListExpression _processAggregateOperand(
      ListExpression listExpression, String aggregateType) {
    print(
        '[DEBUG] Processing aggregate operand: $listExpression with aggregateType: $aggregateType');
    final elements = listExpression.element;

    // Determine the target type based on the majority of the elements
    final elementTypes = elements
        ?.map((e) => e.getReturnTypes(library))
        .expand((e) => e)
        .toSet()
        .toList();

    print('[DEBUG] Element types in aggregate operand: $elementTypes');
    // Default to `Integer` if more `Integer` elements are present, otherwise use `Decimal`
    final majorityType = elementTypes?.contains('FhirInteger') ?? false
        ? QName.fromDataType('Integer')
        : QName.fromDataType('Decimal');
    print(
        '[DEBUG] Determined majority type for aggregate operand: $majorityType');

    final transformedElements = elements?.map((e) {
      print('[DEBUG] Processing element for null wrapping: $e');
      if (e is LiteralNull) {
        final wrapped = As(
          operand: e,
          asType: majorityType,
        );
        print('[DEBUG] Wrapped null element with As: $wrapped');
        return wrapped;
      }
      return e;
    }).toList();

    final processedListExpression = ListExpression(
      typeSpecifier: listExpression.typeSpecifier,
      element: transformedElements,
    );
    print(
        '[DEBUG] Returning processed aggregate ListExpression: $processedListExpression');
    return processedListExpression;
  }

  Query _transformToQuery(ListExpression listExpression, String functionName) {
    print(
        '[DEBUG] Transforming ListExpression to Query for function: $functionName');
    const aliasName = 'X';

    final elementTypes = listExpression.element
            ?.expand((e) => e.getReturnTypes(library))
            .toSet() ??
        {};
    print('[DEBUG] Element types in ListExpression: $elementTypes');

    // Determine the casting type based on elements and function
    final castingType = _determineCastingType(elementTypes, functionName);
    print('[DEBUG] Determined casting type: $castingType');

    // Transform elements, wrapping Null with the determined type
    final transformedElements = listExpression.element?.map((e) {
      print('[DEBUG] Processing element for transformation: $e');
      if (e is LiteralNull) {
        final wrapped = As(
          operand: e,
          asType: QName.fromDataType(castingType),
        );
        print('[DEBUG] Wrapped null element with As: $wrapped');
        return wrapped;
      }
      return e;
    }).toList();

    // Construct the AliasedQuerySource
    final aliasedQuerySource = AliasedQuerySource(
      alias: aliasName,
      expression: ListExpression(
        typeSpecifier: listExpression.typeSpecifier,
        element: transformedElements,
      ),
    );
    print('[DEBUG] Created AliasedQuerySource: $aliasedQuerySource');

    // Construct the ReturnClause
    final returnClause = ReturnClause(
      distinct: false,
      expression: ToDecimal(
        operand: AliasRef(name: aliasName),
      ),
    );
    print('[DEBUG] Created ReturnClause: $returnClause');

    // Create and return the Query
    final query = Query(
      source: [aliasedQuerySource],
      returnClause: returnClause,
    );
    print('[DEBUG] Returning Query: $query');
    return query;
  }

  String _determineCastingType(Set<String> elementTypes, String functionName) {
    print(
        '[DEBUG] Determining casting type for function: $functionName with elementTypes: $elementTypes');
    // If all elements are the same type, use that type
    if (elementTypes.length == 1) {
      final type = elementTypes.first;
      print('[DEBUG] All elements are the same type: $type');
      return type; // E.g., "Integer"
    } else if (elementTypes.length == 2) {
      if (elementTypes.contains('LiteralNull') ||
          elementTypes.contains('Null')) {
        elementTypes.remove('LiteralNull');
        elementTypes.remove('Null');
        if (elementTypes.length == 1) {
          final type = elementTypes.first;
          print(
              '[DEBUG] Elements contain null, determined casting type: $type');
          return type;
        }
      }
    }

    // Handle mixed types or function-specific cases
    if (functionName == 'Avg' ||
        functionName == 'Variance' ||
        functionName == 'StdDev') {
      print('[DEBUG] Function promotes to Decimal: $functionName');
      return 'Decimal'; // Functions that promote to Decimal
    }

    // Default fallback if unsure
    print('[DEBUG] Default casting type: Integer');
    return 'Integer';
  }
}
