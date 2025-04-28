import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlListSelectorVisitor extends CqlBaseVisitor<ListExpression> {
  CqlListSelectorVisitor(super.library);

  @override
  ListExpression visitListSelector(ListSelectorContext ctx) {
    // Initial debugging entry point for ListSelector
    

    // Type specifier for the list (if provided)
    TypeSpecifierExpression? typeSpecifier;
    final List<CqlExpression> elements = <CqlExpression>[];

    // Extract elements and type specifiers
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TypeSpecifierContext) {
        
        typeSpecifier = visitTypeSpecifier(child);
        
      } else if (child is ExpressionContext) {
        
        final result = byContext(child);
        
        if (result is CqlExpression) {
          elements.add(result);
          
        }
      }
    }

    // Debugging the gathered elements and their types
    
    final typesList = <String>{};
    for (final element in elements) {
      final returnTypes = element.getReturnTypes(library);
      
      typesList.addAll(returnTypes);
    }
    

    // Check if the current context is part of an aggregate function
    final isAggregateContext = _isInAggregateContext(ctx);
    

    // Determine if null wrapping is required
    final needsNullWrapping = isAggregateContext &&
        typesList.length > 1 &&
        typesList.contains('Null');
    

    // Transform elements to wrap `Null` if required
    final transformedElements = elements.map((e) {
      
      if (e is LiteralNull && needsNullWrapping) {
        final aggregateType = _getAggregateTypeFromContext(ctx, elements);
        
        return As(
          operand: e,
          asType: QName.fromDataType(aggregateType),
        );
      }
      return e;
    }).toList();
    

    return ListExpression(
      typeSpecifier: typeSpecifier,
      element: transformedElements,
    );
  }

  /// Determines if the current ListSelector is in an aggregate context.
  bool _isInAggregateContext(ListSelectorContext ctx) {
    
    ParseTree? current = ctx.parent;

    while (current != null) {
      if (current is FunctionInvocationContext) {
        final functionName = (current.getChild(0))?.text;

        const aggregateFunctions = {
          'Sum',
          'Min',
          'Max',
          'Variance',
          'StdDev',
          'Count',
          'PopulationVariance',
          'PopulationStdDev',
          'Avg',
          'Median',
          'Mode',
        };

        final isAggregate =
            aggregateFunctions.any((e) => functionName?.startsWith(e) ?? false);
        
        return isAggregate;
      }
      current = current.parent; // Move up the tree
    }

    
    return false;
  }

  /// Extracts the expected aggregate type from the context for null wrapping.
  String _getAggregateTypeFromContext(
      ListSelectorContext ctx, List<CqlExpression> elements) {
    // If elements are present, derive type from majority element type
    final elementTypes = elements
        .map((e) => e.getReturnTypes(library))
        .expand((e) => e)
        .toSet()
        .toList();

    // Determine the type based on the existing elements
    if (elementTypes.contains('FhirInteger')) {
      
      return 'Integer'; // Prefer Integer if the list contains them
    }
    
    return 'Decimal'; // Fallback to Decimal if no clear majority
  }
}
