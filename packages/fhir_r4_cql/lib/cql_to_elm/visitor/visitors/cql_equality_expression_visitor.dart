import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlEqualityExpressionVisitor extends CqlBaseVisitor<CqlExpression> {
  CqlEqualityExpressionVisitor(super.library);

  @override
  CqlExpression visitEqualityExpression(EqualityExpressionContext ctx) {
    final int thisNode = getNextNode();
    String? equalityOperator;
    final operands = <CqlExpression>[];

    // 1) Parse out the two operands and the operator symbol
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        equalityOperator = child.text;
      } else {
        final result = byContext(child);
        if (result is CqlExpression) {
          operands.add(result);
        } else if (result is String) {
          operands.add(ExpressionRef(name: result));
        }
      }
    }

    // 2) If we have exactly two operands, potentially rewrite list‐literals
    if (operands.length == 2) {
      for (var i = 0; i < 2; i++) {
        final expr = operands[i];
        if (expr is ListExpression) {
          // ───── Inject ToList for implicit flatten ─────
          final elements = expr.element ?? [];
          bool isOnlyLists = true;
          bool isSingletonReturn = false;
          if (elements.length > 1) {
            final newElements = <CqlExpression>[];
            if (elements.first is ListExpression) {
              for (final elt in elements) {
                if (elt is ListExpression) {
                  newElements.add(elt);
                } else {
                  isOnlyLists = false;
                  isSingletonReturn = true;
                  newElements.add(ToList(operand: elt));
                }
              }
            } else {
              isOnlyLists = false;
              newElements.addAll(elements);
            }
            expr.element = newElements;
          }

          // ───── Compute the three “needs Query” flags ─────

          // 1) flattenNeeded: list-of-lists + scalars
          final flattenNeeded = (expr.element?.first is ListExpression) &&
              expr.element!.skip(1).any((e) => e is! ListExpression);

          // 2) setOpCast: sibling is a UNION that truly mixes element types
          final sibling = operands[1 - i];
          bool setOpCast = false;
          if (sibling is Union) {
            final seen = <String>{};
            for (final opNode in sibling.operand!) {
              // unwrap any As(ListExpression) around the list literal
              ListExpression? listExpr;
              if (opNode is ListExpression) {
                listExpr = opNode;
              } else if (opNode is As && opNode.operand is ListExpression) {
                listExpr = opNode.operand as ListExpression;
              }
              if (listExpr != null) {
                for (final inner in listExpr.element ?? <CqlExpression>[]) {
                  seen.addAll(inner.getReturnTypes(library));
                }
              }
            }
            // only cast if more than one element-type (e.g. Integer + String)
            setOpCast = seen.length > 1;
          }

          // 3) genericCast: declared element-type vs actual literal types differ
          final actualTypes = expr.element
                  ?.map((e) => e.getReturnTypes(library))
                  .expand((ts) => ts)
                  .toSet() ??
              {};
          final declaredTypes =
              expr.getReturnTypes(library).where((t) => t != 'List').toSet();
          final genericCast = declaredTypes.isNotEmpty &&
              !declaredTypes.containsAll(actualTypes);

          // ───── Wrap in Query if ANY of those is true ─────
          if ((flattenNeeded && !isOnlyLists) || setOpCast || genericCast) {
            if (flattenNeeded && isSingletonReturn) {
              _addDemoteWarning(ctx);
            }
            operands[i] = _buildQueryFromOperand(
                expr, flattenNeeded && isSingletonReturn);
          }
        }
      }

      // ───── Decimal promotion (unchanged) ─────
      if (_requiresDecimalPromotion(operands[0])) {
        if (operands[1] is LiteralInteger) {
          operands[1] = ToDecimal(operand: operands[1]);
        } else if (operands[1] is LiteralNull) {
          operands[1] = As(
            operand: operands[1],
            asType: QName.fromDataType('Decimal'),
          );
        }
      }
    }

    // 4) Build the final Equal/Not/Equivalent node
    if (operands.length == 2 && equalityOperator != null) {
      switch (equalityOperator) {
        case '=':
          return Equal(operand: translateOperand(operands));
        case '!=':
          return Not(operand: Equal(operand: translateOperand(operands)));
        case '~':
          return Equivalent(operand: translateOperand(operands));
        case '!~':
          return Not(operand: Equivalent(operand: translateOperand(operands)));
      }
    }

    throw ArgumentError(
        '$thisNode Invalid EqualityExpression: operands=${operands.length}, operator=$equalityOperator');
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

  /// Builds a Query from an operand when required
  Query _buildQueryFromOperand(CqlExpression operand, bool isSingletonReturn) {
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
        expression: isSingletonReturn
            ? SingletonFrom(operand: AliasRef(name: alias))
            : As(
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

  void _addDemoteWarning(ParserRuleContext ctx) {
    library.annotation ??= <CqlToElmBase>[];
    library.annotation!.add(
      CqlToElmError(
        libraryId: library.identifier?.id,
        startLine: ctx.start?.line,
        startChar: ctx.start?.charPositionInLine,
        endLine: ctx.stop?.line,
        endChar: ctx.stop?.charPositionInLine,
        message: 'List-valued expression was demoted to a singleton.',
        errorType: ErrorType.semantic,
        errorSeverity: ErrorSeverity.warning,
      ),
    );
  }
}
