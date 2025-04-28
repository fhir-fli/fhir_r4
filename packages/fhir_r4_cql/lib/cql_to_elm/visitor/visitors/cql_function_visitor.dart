import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlFunctionVisitor extends CqlBaseVisitor<dynamic> {
  CqlFunctionVisitor(super.library);

  @override
  dynamic visitFunction(FunctionContext ctx) {
    
    String? ref;
    List<CqlExpression> operand = [];

    // Extract the function name and operands
    for (final child in ctx.children ?? <ParseTree>[]) {
      
      if (child is ReferentialIdentifierContext) {
        ref = visitReferentialIdentifier(child);
        
      } else if (child is ParamListContext) {
        final paramList = visitParamList(child);
        operand.addAll(paramList);
        
      }
    }

    if (ref != null) {
      
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
        operand = operand.map((element) {
          
          if (element is ListExpression) {
            final processed = _processAggregateOperand(element, aggregateType);
            
            return processed;
          }
          return element;
        }).toList();
      }

      // STEP 2: Determine if the function needs query transformation
      if (queryBasedFunctions.contains(ref)) {
        
        const alwaysQueryFunctions = {
          'Avg',
          'Variance',
          'StdDev',
          'PopulationVariance',
          'PopulationStdDev',
          'Median',
        };

        if (alwaysQueryFunctions.contains(ref)) {
          
          if (operand.isNotEmpty && operand.first is ListExpression) {
            operand[0] =
                _transformToQuery(operand.first as ListExpression, ref);
            
          }
        } else {
          // Leave the conditional check only for those that may not always require wrapping
          if (_requiresQueryTransformation(operand, ref)) {
            operand[0] =
                _transformToQuery(operand.first as ListExpression, ref);
          }
        }
      }

      // STEP 3: Ensure numeric literals are wrapped with `ToDecimal` when necessary
      operand = operand.map((e) {
        
        if (e is LiteralInteger && ref == 'Equal') {
          final wrapped = ToDecimal(operand: e);
          
          return wrapped;
        }
        return e;
      }).toList();

      // Create and return the corresponding expression
      final expression = CqlExpression.byName(ref, operand, library);
      
      return expression;
    }

    throw ArgumentError('Invalid Function');
  }

  bool _requiresQueryTransformation(
      List<CqlExpression> operand, String functionName) {
    if (operand.isNotEmpty && operand.first is ListExpression) {
      final listExpression = operand.first as ListExpression;
      final elementTypes = listExpression.element
              ?.expand((e) => e.getReturnTypes(library))
              .toSet() ??
          {};

      // Existing transformation rules for mixed types or containing `Null`.
      final requiresTransformation = elementTypes.contains('LiteralNull') ||
          elementTypes.contains('Null') ||
          elementTypes.length >
              1; // Transform if the elements are heterogeneous.
      
      return requiresTransformation;
    }
    return false;
  }

  ListExpression _processAggregateOperand(
      ListExpression listExpression, String aggregateType) {
    final elements = listExpression.element;

    // Determine the target type based on the majority of the elements
    final elementTypes = elements
        ?.map((e) => e.getReturnTypes(library))
        .expand((e) => e)
        .toSet()
        .toList();

    
    // Default to `Integer` if more `Integer` elements are present, otherwise use `Decimal`
    final majorityType = elementTypes?.contains('FhirInteger') ?? false
        ? QName.fromDataType('Integer')
        : QName.fromDataType('Decimal');

    final transformedElements = elements?.map((e) {
      
      if (e is LiteralNull) {
        final wrapped = As(
          operand: e,
          asType: majorityType,
        );
        
        return wrapped;
      }
      return e;
    }).toList();

    final processedListExpression = ListExpression(
      typeSpecifier: listExpression.typeSpecifier,
      element: transformedElements,
    );
    return processedListExpression;
  }

  Query _transformToQuery(ListExpression listExpression, String functionName) {
    const aliasName = 'X';

    final elementTypes = listExpression.element
            ?.expand((e) => e.getReturnTypes(library))
            .toSet() ??
        {};
    

    // Determine the casting type based on elements and function
    final castingType = _determineCastingType(elementTypes, functionName);
    

    // Transform elements, wrapping Null with the determined type
    final transformedElements = listExpression.element?.map((e) {
      
      if (e is LiteralNull) {
        final wrapped = As(
          operand: e,
          asType: QName.fromDataType(castingType),
        );
        
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
    

    // Construct the ReturnClause
    final returnClause = ReturnClause(
      distinct: false,
      expression: ToDecimal(
        operand: AliasRef(name: aliasName),
      ),
    );
    

    // Create and return the Query
    final query = Query(
      source: [aliasedQuerySource],
      returnClause: returnClause,
    );
    
    return query;
  }

  String _determineCastingType(Set<String> elementTypes, String functionName) {
    // If all elements are the same type, use that type
    if (elementTypes.length == 1) {
      final type = elementTypes.first;
      
      return type; // E.g., "Integer"
    } else if (elementTypes.length == 2) {
      if (elementTypes.contains('LiteralNull') ||
          elementTypes.contains('Null')) {
        elementTypes.remove('LiteralNull');
        elementTypes.remove('Null');
        if (elementTypes.length == 1) {
          final type = elementTypes.first;
          return type;
        }
      }
    }

    // Handle mixed types or function-specific cases
    if (functionName == 'Avg' ||
        functionName == 'Variance' ||
        functionName == 'StdDev') {
      
      return 'Decimal'; // Functions that promote to Decimal
    }

    // Default fallback if unsure
    
    return 'Integer';
  }
}
