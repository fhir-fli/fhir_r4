import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlEqualityExpressionVisitor extends CqlBaseVisitor<CqlExpression> {
  CqlEqualityExpressionVisitor(super.library);

  @override
  CqlExpression visitEqualityExpression(EqualityExpressionContext ctx) {
    final int thisNode = getNextNode();

    String? equalityOperator;
    List<CqlExpression> operand = [];

    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is! TerminalNodeImpl) {
        final result = byContext(child);

        // Check if the left-hand side of Union qualifies for Query transformation
        if (result is NaryExpression && result is Union) {
          if (_requiresQuery(result)) {
            final query = _transformUnionToQuery(result, thisNode);
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
      }
    }

    // Transform operands to ensure they are compatible if required
    if (operand.length == 2) {
      final leftOperand = operand[0];
      final rightOperand = operand[1];

      if (_requiresQueryOperand(leftOperand) ||
          _requiresQueryOperand(rightOperand)) {
        if (_requiresQueryOperand(leftOperand)) {
          operand[0] = _buildQueryFromOperand(leftOperand);
        }
        if (_requiresQueryOperand(rightOperand)) {
          operand[1] = _buildQueryFromOperand(rightOperand);
        }
      }

      if (_requiresDecimalPromotion(leftOperand)) {
        if (rightOperand is LiteralInteger) {
          operand[1] = ToDecimal(operand: rightOperand);
        } else if (rightOperand is LiteralNull) {
          operand[1] = As(
            operand: rightOperand,
            asType: QName.fromDataType('Decimal'),
          );
        }
      }
    }

    // Validate operands and operator
    if (operand.length == 2 && equalityOperator != null) {
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
          
          throw ArgumentError('$thisNode $errorMessage');
      }
    }

    final errorMessage =
        'Invalid EqualityExpression: operands=${operand.length}, operator=$equalityOperator';
    
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
      return elementTypes != null && elementTypes.length > 1;
    }
    return false;
  }

  /// Builds a Query from an operand when required
  Query _buildQueryFromOperand(CqlExpression operand) {
    
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
    
    return query;
  }

  /// Builds a ChoiceTypeSpecifier from an operand
  ChoiceTypeSpecifier _buildChoiceTypeFromOperand(CqlExpression operand) {
    
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
      
      return choiceTypeSpecifier;
    }
    throw ArgumentError('Expected a ListExpression for ChoiceTypeSpecifier.');
  }

  /// Determine if a Union should transform into a Query
  bool _requiresQuery(NaryExpression union) {
    
    final operandTypes = union.operand
        ?.map((op) => op.getReturnTypes(library))
        .expand((types) => types)
        .toSet();

    final requiresQuery = (operandTypes?.length ?? 0) > 1 &&
        !(operandTypes?.contains('Null') ?? false);
    
    return requiresQuery;
  }

  /// Transform a Union into either an `As` or a `Query` depending on operand types
  CqlExpression _transformUnionToQuery(NaryExpression union, int parentNode) {
    
    final allOperandsAreLists =
        union.operand?.every((op) => op is ListExpression) ?? false;

    if (allOperandsAreLists) {
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
      
      return query;
    }
  }

  /// Build the ChoiceTypeSpecifier for the Query return clause
  ChoiceTypeSpecifier _buildChoiceType(NaryExpression union) {
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
      
      throw ArgumentError(errorMessage);
    }

    final choiceTypeSpecifier = ChoiceTypeSpecifier(choice: choices);
    
    return choiceTypeSpecifier;
  }
}
