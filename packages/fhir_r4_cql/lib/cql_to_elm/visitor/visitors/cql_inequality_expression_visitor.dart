import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlInequalityExpressionVisitor extends CqlBaseVisitor<dynamic> {
  CqlInequalityExpressionVisitor(super.library);

  @override
  dynamic visitInequalityExpression(InequalityExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? inequality;
    final List<CqlExpression> operand = <CqlExpression>[];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        if (child.text == '!=' ||
            child.text == '<>' ||
            child.text == '<' ||
            child.text == '>' ||
            child.text == '<=' ||
            child.text == '>=') {
          inequality = child.text;
        }
      } else {
        final result = byContext(child);
        if (result is CqlExpression) {
          operand.add(result);
        }
      }
    }
    if (inequality != null && operand.length == 2) {
      // Wrap choice-type properties based on the other operand's type
      for (int i = 0; i < 2; i++) {
        final other = operand[1 - i];
        operand[i] = _wrapChoiceForInequality(operand[i], other);
      }

      if (inequality == '!=') {
        return NotEqual(operand: operand);
      } else if (inequality == '<>') {
        return NotEqual(operand: operand);
      } else if (inequality == '<') {
        return Less(operand: operand);
      } else if (inequality == '>') {
        return Greater(operand: operand);
      } else if (inequality == '<=') {
        return LessOrEqual(operand: operand);
      } else if (inequality == '>=') {
        return GreaterOrEqual(operand: operand);
      }
    }
    throw ArgumentError('$thisNode Invalid InequalityExpression');
  }

  /// If the expression is a Property on a FHIR choice field, infer the
  /// target type from the other operand and wrap with As + FHIRHelpers.
  CqlExpression _wrapChoiceForInequality(
      CqlExpression expr, CqlExpression other) {
    if (expr is Property) {
      final String? className = _resolvePropertyClassName(expr);
      if (className != null) {
        final element = getElementInfo(className, expr.path);
        if (element != null && CqlBaseVisitor.isChoiceType(element)) {
          final targetType = _inferTargetType(other);
          if (targetType != null) {
            return CqlBaseVisitor.wrapChoiceProperty(expr, targetType);
          }
        }
      } else {
        // Fallback: if we can't resolve the class (e.g. QueryLetRef source),
        // check if the property path is a choice field on any known FHIR type
        final choiceElement = _findChoiceElementByPath(expr.path);
        if (choiceElement != null) {
          final targetType = _inferTargetType(other);
          if (targetType != null) {
            return CqlBaseVisitor.wrapChoiceProperty(expr, targetType);
          }
        }
      }
      // For non-choice properties, apply standard FHIRHelpers wrapping
      return CqlBaseVisitor.wrapPropertyWithFhirHelper(expr, expr.path);
    }
    return expr;
  }

  /// Search all FHIR types in model info for a choice-typed element
  /// with the given property path name. Returns the element with the most
  /// choice alternatives (to prefer broader types).
  ClassInfoElement? _findChoiceElementByPath(String path) {
    ClassInfoElement? best;
    int bestCount = 0;
    for (final model in library.usings?.def ?? <UsingDef>[]) {
      if (model.localIdentifier == null) continue;
      final modelInfo = modelInfoProvider.load(
          ModelIdentifier(id: model.localIdentifier!, version: model.version));
      if (modelInfo == null) continue;
      for (final ti in modelInfo.typeInfo) {
        if (ti is ClassInfo) {
          for (final el in ti.element ?? <ClassInfoElement>[]) {
            if (el.name == path && CqlBaseVisitor.isChoiceType(el)) {
              final count = CqlBaseVisitor.getChoiceTypes(el).length;
              if (count > bestCount) {
                best = el;
                bestCount = count;
              }
            }
          }
        }
      }
    }
    return best;
  }

  /// Infer the target FHIR type from an operand.
  /// E.g., a Quantity literal → 'Quantity', an Integer literal → 'integer'.
  String? _inferTargetType(CqlExpression expr) {
    if (expr is LiteralQuantity || expr is Quantity) return 'Quantity';
    if (expr is LiteralInteger) return 'integer';
    if (expr is LiteralDecimal) return 'decimal';
    if (expr is LiteralString) return 'string';
    if (expr is LiteralDate || expr is DateExpression) return 'date';
    if (expr is LiteralDateTime || expr is DateTimeExpression) {
      return 'dateTime';
    }
    if (expr is Today) return 'date';
    if (expr is Now) return 'dateTime';
    return null;
  }

  /// Try to resolve the FHIR class name for a Property expression.
  /// Handles both scoped properties and source-based properties.
  String? _resolvePropertyClassName(Property property) {
    if (property.scope != null) {
      return _classNameFromScope(property.scope!);
    }
    if (property.source != null) {
      return _classNameFromSource(property.source!);
    }
    return null;
  }

  String? _classNameFromScope(String alias) {
    for (final def in library.statements?.def ?? <ExpressionDef>[]) {
      final expr = def.expression;
      if (expr is Query) {
        for (final src in expr.source ?? <RelationshipClause>[]) {
          if (src.alias == alias) {
            return _classNameFromSource(src.expression);
          }
        }
      }
    }
    return null;
  }

  /// Resolve a class name from a source expression, handling Retrieve,
  /// ExpressionRef (to Retrieve), and Property chains.
  /// For let references like SystolicBP (which is a component),
  /// we resolve the component type from the model info.
  String? _classNameFromSource(CqlExpression expr) {
    if (expr is Retrieve) return expr.dataType.localPart;
    if (expr is SingletonFrom && expr.operand is Retrieve) {
      return (expr.operand as Retrieve).dataType.localPart;
    }
    if (expr is ExpressionRef) {
      ExpressionDef? refDef;
      for (final d in library.statements?.def ?? <ExpressionDef>[]) {
        if (d.name == expr.name) {
          refDef = d;
          break;
        }
      }
      if (refDef?.expression is SingletonFrom) {
        final sf = refDef!.expression as SingletonFrom;
        if (sf.operand is Retrieve) {
          return (sf.operand as Retrieve).dataType.localPart;
        }
      }
    }
    // For QueryLetRef, we can look up the let definition's type
    // but for now, return null and let the caller handle it
    return null;
  }
}
