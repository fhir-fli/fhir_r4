import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlAdditionExpressionVisitor extends CqlBaseVisitor<CqlExpression> {
  CqlAdditionExpressionVisitor(super.library);

  @override
  CqlExpression visitAdditionExpressionTerm(AdditionExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    final List<CqlExpression> operand = <CqlExpression>[];
    String? additionOperator;

    // Parse children and separate out operators
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is! TerminalNodeImpl) {
        final result = byContext(child);
        if (result is CqlExpression) {
          operand.add(result);
        }
      } else {
        additionOperator = child.text;
      }
    }

    // Ensure we have two operands for addition/subtraction
    if (operand.length == 2) {
      final CqlExpression left = operand[0];
      final CqlExpression right = operand[1];

      // Handle subtraction operator
      if (additionOperator == '-') {
        return handleSubtraction(left, right);
      }

      // Determine appropriate operation for addition or concatenation
      return handleConcatenationOrAddition(left, right, additionOperator);
    }

    throw ArgumentError('$thisNode Invalid AdditionExpressionTerm');
  }

  // Helper function to handle subtraction, including null checks and casting
  CqlExpression handleSubtraction(CqlExpression left, CqlExpression right) {
    if (left is LiteralType && right is LiteralNull) {
      return Subtract(operand: [
        left,
        As(operand: right, asType: QName.parse(left.valueType))
      ]);
    } else if (left is LiteralNull && right is LiteralType) {
      return Subtract(operand: [
        As(operand: left, asType: QName.parse(right.valueType)),
        right
      ]);
    } else {
      return Subtract(operand: [left, right]);
    }
  }

  // Determine whether to use Add or Concatenate based on operand types
  CqlExpression handleConcatenationOrAddition(
      CqlExpression left, CqlExpression right, String? operator) {
    final bool isAddition = operator == '+';

    // Check for string concatenation
    if (isAddition && (left is LiteralString || right is LiteralString)) {
      return Concatenate(
        operand: [
          left is LiteralNull
              ? As(operand: left, asType: QName.fromElmType('String'))
              : left,
          right is LiteralNull
              ? As(operand: right, asType: QName.fromElmType('String'))
              : right
        ],
        plus: true,
      );
    } else if (!isAddition &&
        (left is LiteralString || right is LiteralString)) {
      return Concatenate(
        operand: [
          Coalesce(operand: [
            left is LiteralNull
                ? As(operand: left, asType: QName.fromElmType('String'))
                : left,
            LiteralString(''),
          ]),
          Coalesce(operand: [
            right is LiteralNull
                ? As(operand: right, asType: QName.fromElmType('String'))
                : right,
            LiteralString(''),
          ]),
        ],
        plus: true,
      );
    } else if (left is LiteralInteger ||
        left is LiteralLong ||
        left is LiteralDecimal ||
        right is LiteralInteger ||
        right is LiteralLong ||
        right is LiteralDecimal) {
      return handleNumericConcatenationOrAddition(left, right);
    } else if (left is LiteralQuantity || right is LiteralQuantity) {
      return handleQuantityAddition(left, right);
    }

    // Default to Add for all non-string types (e.g., Date + Quantity)
    return Add(operand: [left, right]);
  }

  // Numeric addition with null handling for specific types
  CqlExpression handleNumericConcatenationOrAddition(
      CqlExpression left, CqlExpression right) {
    switch (left) {
      case LiteralInteger _:
        return handleIntegerAddition(left, right);
      case LiteralLong _:
        return handleLongAddition(left, right);
      case LiteralDecimal _:
        return handleDecimalAddition(left, right);
      case LiteralQuantity _:
        return handleQuantityAddition(left, right);
      default:
        return Add(operand: [left, right]);
    }
  }

  // Specific handlers for each numeric type addition with type coercion
  CqlExpression handleIntegerAddition(CqlExpression left, CqlExpression right) {
    if (right is LiteralInteger) {
      return Add(operand: [left, right]);
    } else if (right is LiteralLong) {
      return Add(operand: [ToLong(operand: left), right]);
    } else if (right is LiteralDecimal) {
      return Add(operand: [ToDecimal(operand: left), right]);
    } else if (right is LiteralNull) {
      return Add(operand: [
        left,
        As(
            operand: right,
            asType: left.type == null ? null : QName.parse(left.type!))
      ]);
    }
    return Add(operand: [left, right]);
  }

  CqlExpression handleLongAddition(CqlExpression left, CqlExpression right) {
    if (right is LiteralInteger) {
      return Add(operand: [left, ToLong(operand: right)]);
    } else if (right is LiteralLong) {
      return Add(operand: [left, right]);
    } else if (right is LiteralDecimal) {
      return Add(operand: [ToDecimal(operand: left), right]);
    } else if (right is LiteralNull) {
      return Add(operand: [
        left,
        As(
            operand: right,
            asType: left.type == null ? null : QName.parse(left.type!))
      ]);
    }
    return Add(operand: [left, right]);
  }

  CqlExpression handleDecimalAddition(CqlExpression left, CqlExpression right) {
    if (right is LiteralInteger) {
      return Add(operand: [left, ToDecimal(operand: right)]);
    } else if (right is LiteralLong) {
      return Add(operand: [left, ToDecimal(operand: right)]);
    } else if (right is LiteralNull) {
      return Add(operand: [
        left,
        As(
            operand: right,
            asType: left.type == null ? null : QName.parse(left.type!))
      ]);
    }
    return Add(operand: [left, right]);
  }

  CqlExpression handleQuantityAddition(
      CqlExpression left, CqlExpression right) {
    if (right is LiteralDecimal) {
      return Add(operand: [left, ToQuantity(operand: right)]);
    } else if (right is LiteralNull) {
      return Add(operand: [
        left,
        As(
            operand: right,
            asType: left.type == null ? null : QName.parse(left.type!))
      ]);
    }
    return Add(operand: [left, right]);
  }
}
