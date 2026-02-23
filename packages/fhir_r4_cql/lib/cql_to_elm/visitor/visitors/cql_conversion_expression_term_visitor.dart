import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

// TODO(Dokotela): test that it works
class CqlConversionExpressionTermVisitor extends CqlBaseVisitor<CqlExpression> {
  CqlConversionExpressionTermVisitor(super.library);

  @override
  CqlExpression visitConversionExpressionTerm(
      ConversionExpressionTermContext ctx) {
    final int thisNode = getNextNode();

    CqlExpression? expression;
    TypeSpecifierExpression? typeSpecifier;
    String? unit;

    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ExpressionContext) {
        expression = byContext(child) as CqlExpression;
      } else if (child is TypeSpecifierContext) {
        typeSpecifier = visitTypeSpecifier(child);
      } else if (child is UnitContext) {
        unit = visitUnit(child);
      }
    }

    if (expression == null || (typeSpecifier == null && unit == null)) {
      throw ArgumentError(
          '$thisNode Invalid ConversionExpressionTerm: missing components');
    }

    if (typeSpecifier != null) {
      return _getConversionFunction(typeSpecifier, expression);
    } else if (unit != null) {
      return ConvertQuantity(
        operand: [expression, LiteralString(unit)],
      );
    } else {
      throw ArgumentError(
          '$thisNode Unexpected state: neither typeSpecifier nor unit is available.');
    }
  }

  CqlExpression _getConversionFunction(
    TypeSpecifierExpression typeSpecifier,
    CqlExpression expression,
  ) {
    // Get the type name — handle NamedTypeSpecifier by extracting the
    // local part of the namespace QName
    String typeName;
    if (typeSpecifier is NamedTypeSpecifier) {
      typeName = typeSpecifier.namespace.localPart;
    } else {
      typeName = typeSpecifier.type;
    }

    switch (typeName) {
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
      case 'Concept':
        return ToConcept(operand: expression);
      default:
        throw ArgumentError('Unsupported conversion type: $typeName');
    }
  }
}
