import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlEqualityExpressionVisitor extends CqlBaseVisitor<CqlExpression> {
  CqlEqualityExpressionVisitor(super.library);

  @override
  CqlExpression visitEqualityExpression(EqualityExpressionContext ctx) {
    print('[DEBUG] Entering visitEqualityExpression with context: $ctx');
    final int thisNode = getNextNode();

    String? equalityOperator;
    List<CqlExpression> operand = [];

    for (final child in ctx.children ?? <ParseTree>[]) {
      print('[DEBUG] Processing child in visitEqualityExpression: $child');
      if (child is! TerminalNodeImpl) {
        final result = byContext(child);
        print('[DEBUG] Result from byContext(child): $result');

        // Check if the left-hand side of Union qualifies for Query transformation
        if (result is NaryExpression && result is Union) {
          if (_requiresQuery(result)) {
            final query = _transformUnionToQuery(result, thisNode);
            print('[DEBUG] Transformed Union to Query: $query');
            operand.add(query);
            continue;
          }
        }

        if (result is CqlExpression) {
          operand.add(result);
        } else if (result is String) {
          operand.add(ExpressionRef(name: result));
        }
      } else {
        equalityOperator = child.text;
        print('[DEBUG] Found equality operator: $equalityOperator');
      }
    }

    // Transform operands to ensure they are compatible if required
    if (operand.length == 2) {
      final leftOperand = operand[0];
      final rightOperand = operand[1];

      print(
          '[DEBUG] Checking if Query transformation is required for operands: leftOperand=$leftOperand, rightOperand=$rightOperand');

      if (_requiresQueryOperand(leftOperand) ||
          _requiresQueryOperand(rightOperand)) {
        if (_requiresQueryOperand(leftOperand)) {
          print('[DEBUG] Transforming left operand into Query: $leftOperand');
          operand[0] = _buildQueryFromOperand(leftOperand);
          print('[DEBUG] Transformed left operand to Query: $operand[0]');
        }
        if (_requiresQueryOperand(rightOperand)) {
          print('[DEBUG] Transforming right operand into Query: $rightOperand');
          operand[1] = _buildQueryFromOperand(rightOperand);
          print('[DEBUG] Transformed right operand to Query: $operand[1]');
        }
      }

      // Handle potential type mismatches between operands for promotion
      print(
          '[DEBUG] Checking if Decimal promotion is required for left operand: $leftOperand');
      if (_requiresDecimalPromotion(leftOperand)) {
        print('[DEBUG] Decimal promotion required for left operand');
        if (rightOperand is LiteralInteger) {
          operand[1] = ToDecimal(operand: rightOperand);
          print('[DEBUG] Promoted right operand to Decimal: $operand[1]');
        } else if (rightOperand is LiteralNull) {
          operand[1] = As(
            operand: rightOperand,
            asType: QName.fromDataType('Decimal'),
          );
          print(
              '[DEBUG] Wrapped right operand (null) with Decimal type: $operand[1]');
        }
      }
    }

    // Validate operands and operator
    if (operand.length == 2 && equalityOperator != null) {
      print(
          '[DEBUG] Validating operands and operator: $equalityOperator, operands: $operand');
      switch (equalityOperator) {
        case '=':
          return Equal(operand: translateOperand(operand));
        case '!=':
          return Not(operand: Equal(operand: translateOperand(operand)));
        case '~':
          return Equivalent(operand: translateOperand(operand));
        case '!~':
          return Not(operand: Equivalent(operand: translateOperand(operand)));
        default:
          final errorMessage =
              'Unsupported equality operator: $equalityOperator';
          print('[ERROR] $thisNode $errorMessage');
          throw ArgumentError('$thisNode $errorMessage');
      }
    }

    final errorMessage =
        'Invalid EqualityExpression: operands=${operand.length}, operator=$equalityOperator';
    print('[ERROR] $thisNode $errorMessage');
    throw ArgumentError('$thisNode $errorMessage');
  }

  bool _requiresDecimalPromotion(CqlExpression expression) {
    // List of aggregate functions requiring Decimal promotion
    const aggregatesRequiringDecimalPromotion = {
      'Avg',
      'Median',
      'Variance',
      'StdDev',
      'PopulationVariance',
      'PopulationStdDev'
    };

    if (expression is AggregateExpression) {
      final expressionType = expression.runtimeType.toString();
      print(
          '[DEBUG] Checking if expression requires Decimal promotion: $expressionType');
      return aggregatesRequiringDecimalPromotion.contains(expressionType);
    }

    return false;
  }

  /// Determines if the operand requires transformation into a Query
  bool _requiresQueryOperand(CqlExpression operand) {
    if (operand is ListExpression) {
      final elementTypes = operand.element
          ?.map((e) => e.getReturnTypes(library))
          .expand((types) => types)
          .toSet();
      print(
          '[DEBUG] Checking if operand requires Query transformation, element types: $elementTypes');
      return elementTypes != null && elementTypes.length > 1;
    }
    return false;
  }

  /// Builds a Query from an operand when required
  Query _buildQueryFromOperand(CqlExpression operand) {
    print('[DEBUG] Building Query from operand: $operand');
    const alias = 'X';
    final query = Query(
      source: [
        RelationshipClause(
          alias: alias,
          expression: operand,
        ),
      ],
      returnClause: ReturnClause(
        distinct: false,
        expression: As(
          operand: AliasRef(name: alias),
          asTypeSpecifier: _buildChoiceTypeFromOperand(operand),
        ),
      ),
    );
    print('[DEBUG] Built Query: $query');
    return query;
  }

  /// Builds a ChoiceTypeSpecifier from an operand
  ChoiceTypeSpecifier _buildChoiceTypeFromOperand(CqlExpression operand) {
    print('[DEBUG] Building ChoiceTypeSpecifier from operand: $operand');
    if (operand is ListExpression) {
      final elementTypes = operand.element
          ?.map((e) => e.getReturnTypes(library))
          .expand((types) => types)
          .toSet();

      if (elementTypes == null || elementTypes.isEmpty) {
        throw ArgumentError('Operand must have at least one valid type.');
      }

      final choices = elementTypes.map((type) {
        return NamedTypeSpecifier(namespace: QName.fromDataType(type));
      }).toList();

      final choiceTypeSpecifier = ChoiceTypeSpecifier(choice: choices);
      print('[DEBUG] Built ChoiceTypeSpecifier: $choiceTypeSpecifier');
      return choiceTypeSpecifier;
    }
    throw ArgumentError('Expected a ListExpression for ChoiceTypeSpecifier.');
  }

  /// Determine if a Union should transform into a Query
  bool _requiresQuery(NaryExpression union) {
    print('[DEBUG] Checking if Union requires Query transformation: $union');
    final operandTypes = union.operand
        ?.map((op) => op.getReturnTypes(library))
        .expand((types) => types)
        .toSet();

    final requiresQuery = (operandTypes?.length ?? 0) > 1 &&
        !(operandTypes?.contains('Null') ?? false);
    print('[DEBUG] Requires Query transformation: $requiresQuery');
    return requiresQuery;
  }

  /// Transform a Union into either an `As` or a `Query` depending on operand types
  CqlExpression _transformUnionToQuery(NaryExpression union, int parentNode) {
    print('[DEBUG] Transforming Union to Query or As: $union');
    final allOperandsAreLists =
        union.operand?.every((op) => op is ListExpression) ?? false;

    if (allOperandsAreLists) {
      print(
          '[DEBUG] All operands are lists, wrapping each in As with ChoiceTypeSpecifier');
      final transformedOperands = union.operand?.map((op) {
        return As(
          operand: op,
          asTypeSpecifier: _buildChoiceTypeFromOperand(op),
        );
      }).toList();

      if (transformedOperands == null || transformedOperands.isEmpty) {
        throw ArgumentError('Union must contain valid operands.');
      }

      final unionExpression = Union(operand: transformedOperands);
      print(
          '[DEBUG] Returning Union with transformed operands: $unionExpression');
      return unionExpression;
    } else {
      final aliasCounter = parentNode;
      final source = union.operand?.map((op) {
        return RelationshipClause(
          alias: 'Alias$aliasCounter',
          expression: op,
        );
      }).toList();

      if (source == null || source.isEmpty) {
        throw ArgumentError('Union must contain valid sources.');
      }

      final query = Query(
        source: source,
        returnClause: ReturnClause(
          distinct: false,
          expression: As(
            operand: ExpressionRef(name: 'Alias$aliasCounter'),
            asTypeSpecifier: _buildChoiceType(union),
          ),
        ),
      );
      print('[DEBUG] Returning Query for mixed type Union: $query');
      return query;
    }
  }

  /// Build the ChoiceTypeSpecifier for the Query return clause
  ChoiceTypeSpecifier _buildChoiceType(NaryExpression union) {
    print(
        '[DEBUG] Building ChoiceTypeSpecifier for Query return clause: $union');
    final elementTypes = union.operand
        ?.map((op) => op.getReturnTypes(library))
        .expand((types) => types)
        .toSet();

    final choices = elementTypes
        ?.map((type) =>
            NamedTypeSpecifier(namespace: QName.fromDataType(type.toString())))
        .toList();

    if (choices == null || choices.isEmpty) {
      const errorMessage =
          'ChoiceTypeSpecifier requires at least one valid type.';
      print('[ERROR] $errorMessage');
      throw ArgumentError(errorMessage);
    }

    final choiceTypeSpecifier = ChoiceTypeSpecifier(choice: choices);
    print('[DEBUG] Built ChoiceTypeSpecifier: $choiceTypeSpecifier');
    return choiceTypeSpecifier;
  }
}
