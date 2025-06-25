import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

// TODO(Dokotela): test that it works
class CqlConversionExpressionTermVisitor extends CqlBaseVisitor<CqlExpression> {
  CqlConversionExpressionTermVisitor(super.library);

  @override
  CqlExpression visitConversionExpressionTerm(
      ConversionExpressionTermContext ctx) {
    // Initial debugging entry point for ConversionExpressionTerm
    print('[DEBUG] Entering visitConversionExpressionTerm with context: $ctx');
    final int thisNode = getNextNode();
    print('[DEBUG] Node ID for ConversionExpressionTerm: $thisNode');

    CqlExpression? expression;
    TypeSpecifierExpression? typeSpecifier;
    String? unit;

    // Iterate over children to identify components of the conversion
    for (final child in ctx.children ?? <ParseTree>[]) {
      print(
          '[DEBUG] Processing child in visitConversionExpressionTerm: $child');
      if (child is ExpressionContext) {
        expression = byContext(child) as CqlExpression;
        print('[DEBUG] Assigned expression: $expression');
      } else if (child is TypeSpecifierContext) {
        typeSpecifier = visitTypeSpecifier(child);
        print('[DEBUG] Assigned typeSpecifier: $typeSpecifier');
      } else if (child is UnitContext) {
        unit = visitUnit(child);
        print('[DEBUG] Assigned unit: $unit');
      }
    }

    // Ensure that either typeSpecifier or unit is assigned, as per the ANTLR rule
    if (expression == null || (typeSpecifier == null && unit == null)) {
      final errorMessage =
          'Invalid ConversionExpressionTerm: missing components';
      print('[ERROR] $errorMessage');
      throw ArgumentError('$thisNode $errorMessage');
    }

    // Determine the appropriate conversion based on the typeSpecifier or unit
    CqlExpression conversionExpression;
    if (typeSpecifier != null) {
      final conversionFunction =
          _getConversionFunction(typeSpecifier, expression);
      print('[DEBUG] Selected conversion function: $conversionFunction');
      return conversionFunction;
    } else if (unit != null) {
      print('[DEBUG] Handling unit conversion with unit: $unit');
      conversionExpression = ConvertQuantity(
        operand: [expression, LiteralString(unit)],
      );
    } else {
      final errorMessage =
          'Unexpected state: neither typeSpecifier nor unit is available.';
      print('[ERROR] $errorMessage');
      throw ArgumentError('$thisNode $errorMessage');
    }

    print('[DEBUG] Returning ConversionExpression: $conversionExpression');
    return conversionExpression;
  }

  CqlExpression _getConversionFunction(
    TypeSpecifierExpression typeSpecifier,
    CqlExpression expression,
  ) {
    // Determine the appropriate conversion function based on the typeSpecifier
    print(
        '[DEBUG] Determining conversion function for typeSpecifier: $typeSpecifier');
    switch (typeSpecifier.type) {
      case 'Integer':
        return ToInteger(operand: expression);
      case 'Decimal':
        return ToDecimal(operand: expression);
      case 'String':
        return ToString(operand: expression);
      case 'Boolean':
        return ToBoolean(operand: expression);
      case 'Quantity':
        return ToQuantity(operand: expression);
      case 'DateTime':
        return ToDateTime(operand: expression);
      case 'Date':
        return ToDate(operand: expression);
      case 'Time':
        return ToTime(operand: expression);
      default:
        final errorMessage =
            'Unsupported conversion type: ${typeSpecifier.type}';
        print('[ERROR] $errorMessage');
        throw ArgumentError(errorMessage);
    }
  }
}
