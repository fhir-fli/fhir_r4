import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlInFixSetExpressionVisitor extends CqlBaseVisitor<NaryExpression> {
  CqlInFixSetExpressionVisitor(super.library);

  @override
  NaryExpression visitInFixSetExpression(InFixSetExpressionContext ctx) {
    printIf(ctx);

    final int thisNode = getNextNode();

    if (ctx.childCount == 3) {
      final left = byContext(ctx.getChild(0)!);

      final operator = ctx.getChild(1)!.text;

      final right = byContext(ctx.getChild(2)!);

      if (left is CqlExpression && right is CqlExpression) {
        // Get return types for left and right operands
        final leftTypes = left.getReturnTypes(library).toSet();
        final rightTypes = right.getReturnTypes(library).toSet();

        // Combine types and determine if transformation is needed
        final combinedTypes = _combineTypes(leftTypes, rightTypes);

        final transformedOperands = _transformOperandsForMixedTypes(
          left,
          right,
          combinedTypes,
        );

        switch (operator) {
          case '|': // Pipe operator
          case 'union':
            return Union(operand: transformedOperands);
          case 'intersect':
            return Intersect(operand: transformedOperands);
          case 'except':
            return Except(operand: transformedOperands);
          default:
            throw ArgumentError('$thisNode Unsupported operator: $operator');
        }
      }
    }

    throw ArgumentError('$thisNode Invalid InFixSetExpression');
  }

  /// Combines return types from two operands.
  Set<String> _combineTypes(Set<String> leftTypes, Set<String> rightTypes) {
    final combined = {...leftTypes, ...rightTypes};

    return combined;
  }

  List<CqlExpression> _transformOperandsForMixedTypes(
    CqlExpression left,
    CqlExpression right,
    Set<String> combinedTypes,
  ) {
    // Static homogeneous lists can be wrapped directly in `As`.
    if (left is ListExpression && right is ListExpression) {
      final choiceType = _buildChoiceType(combinedTypes);
      return [
        As(
            operand: left,
            asTypeSpecifier: ListTypeSpecifier(elementType: choiceType)),
        As(
            operand: right,
            asTypeSpecifier: ListTypeSpecifier(elementType: choiceType)),
      ];
    }

    // Fallback for mixed/dynamic types.
    if (combinedTypes.length > 1) {
      final choiceType = _buildChoiceType(combinedTypes);

      return [
        _transformExpressionToQuery(left, choiceType, 'AliasLeft'),
        _transformExpressionToQuery(right, choiceType, 'AliasRight'),
      ];
    }

    // Homogeneous types don't require transformation.
    return [left, right];
  }

  Query _transformExpressionToQuery(
    CqlExpression expression,
    ChoiceTypeSpecifier choiceType,
    String alias,
  ) {
    return Query(
      source: [
        RelationshipClause(
          alias: alias,
          expression: expression,
        ),
      ],
      returnClause: ReturnClause(
        distinct: false,
        expression: As(
          operand: ExpressionRef(name: alias),
          asTypeSpecifier: choiceType,
        ),
      ),
    );
  }

  /// Builds a ChoiceTypeSpecifier from the combined types.
  ChoiceTypeSpecifier _buildChoiceType(Set<String> combinedTypes) {
    final choiceType = ChoiceTypeSpecifier(
      choice: combinedTypes.map((type) {
        return NamedTypeSpecifier(namespace: QName.fromDataType(type));
      }).toList(),
    );

    return choiceType;
  }
}
