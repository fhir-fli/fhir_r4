import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlListSelectorVisitor extends CqlBaseVisitor<ListExpression> {
  CqlListSelectorVisitor(super.library);

  @override
  ListExpression visitListSelector(ListSelectorContext ctx) {
    // Initial debugging entry point for ListSelector
    print('[DEBUG] Entering visitListSelector with context: $ctx');

    // Type specifier for the list (if provided)
    TypeSpecifierExpression? typeSpecifier;
    final List<CqlExpression> elements = <CqlExpression>[];

    // Extract elements and type specifiers
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TypeSpecifierContext) {
        print('[DEBUG] Found TypeSpecifierContext: $child');
        typeSpecifier = visitTypeSpecifier(child);
        print('[DEBUG] Assigned typeSpecifier: $typeSpecifier');
      } else if (child is ExpressionContext) {
        print('[DEBUG] Found ExpressionContext: $child');
        final result = byContext(child);
        print('[DEBUG] Result from byContext(child): $result');
        if (result is CqlExpression) {
          elements.add(result);
          print('[DEBUG] Added result to elements: $elements');
        }
      }
    }

    // Debugging the gathered elements and their types
    print('[DEBUG] Gathered elements: $elements');
    final typesList = <String>{};
    for (final element in elements) {
      final returnTypes = element.getReturnTypes(library);
      print('[DEBUG] Return types for element ($element): $returnTypes');
      typesList.addAll(returnTypes);
    }
    print('[DEBUG] Collected types list: $typesList');

    // Check if the current context is part of an aggregate function
    final isAggregateContext = _isInAggregateContext(ctx);
    print('[DEBUG] Is aggregate context: $isAggregateContext');

    // Determine if null wrapping is required
    final needsNullWrapping = isAggregateContext &&
        typesList.length > 1 &&
        typesList.contains('Null');
    print('[DEBUG] Needs null wrapping: $needsNullWrapping');

    // Transform elements to wrap `Null` if required
    final transformedElements = elements.map((e) {
      print('[DEBUG] Processing element for transformation: $e');
      if (e is LiteralNull && needsNullWrapping) {
        final aggregateType = _getAggregateTypeFromContext(ctx, elements);
        print('[DEBUG] Wrapping null element with type: $aggregateType');
        return As(
          operand: e,
          asType: QName.fromDataType(aggregateType),
        );
      }
      return e;
    }).toList();
    print('[DEBUG] Transformed elements: $transformedElements');

    // Return the list expression
    print(
        '[DEBUG] Returning ListExpression with typeSpecifier: $typeSpecifier and elements: $transformedElements');
    return ListExpression(
      typeSpecifier: typeSpecifier,
      element: transformedElements,
    );
  }

  /// Determines if the current ListSelector is in an aggregate context.
  bool _isInAggregateContext(ListSelectorContext ctx) {
    print('[DEBUG] Checking if in aggregate context for ctx: $ctx');
    ParseTree? current = ctx.parent;

    while (current != null) {
      if (current is FunctionInvocationContext) {
        final functionName = (current.getChild(0))?.text;
        print(
            '[DEBUG] Found FunctionInvocationContext with functionName: $functionName');

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
        print('[DEBUG] Is aggregate function: $isAggregate');
        return isAggregate;
      }
      current = current.parent; // Move up the tree
    }

    print('[DEBUG] Not in aggregate context');
    return false;
  }

  /// Extracts the expected aggregate type from the context for null wrapping.
  String _getAggregateTypeFromContext(
      ListSelectorContext ctx, List<CqlExpression> elements) {
    print(
        '[DEBUG] Getting aggregate type from context for elements: $elements');
    // If elements are present, derive type from majority element type
    final elementTypes = elements
        .map((e) => e.getReturnTypes(library))
        .expand((e) => e)
        .toSet()
        .toList();

    print(
        '[DEBUG] Element types for aggregate type determination: $elementTypes');
    // Determine the type based on the existing elements
    if (elementTypes.contains('FhirInteger')) {
      print('[DEBUG] Aggregate type determined: Integer');
      return 'Integer'; // Prefer Integer if the list contains them
    }
    print('[DEBUG] Aggregate type determined: Decimal');
    return 'Decimal'; // Fallback to Decimal if no clear majority
  }
}
