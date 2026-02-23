import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlBooleanExpressionVisitor extends CqlBaseVisitor<dynamic> {
  CqlBooleanExpressionVisitor(super.library);

  @override
  dynamic visitBooleanExpression(BooleanExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    bool not = false;
    bool null_ = false;
    bool true_ = false;
    bool false_ = false;
    CqlExpression? operand;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        if (child.text == 'not') {
          not = true;
        } else if (child.text == 'null') {
          null_ = true;
        } else if (child.text == 'true') {
          true_ = true;
        } else if (child.text == 'false') {
          false_ = true;
        }
      } else {
        final result = byContext(child);
        if (result is CqlExpression) {
          operand = result;
        }
      }
    }
    if (operand != null) {
      // For `is true` / `is false`, if the operand is a Property on a
      // choice-typed field, wrap with As({fhir}boolean) + FHIRHelpers.ToBoolean
      if ((true_ || false_) && !null_) {
        operand = _wrapChoiceForBoolean(operand);
      }

      if (null_) {
        return not
            ? Not(operand: IsNull(operand: operand))
            : IsNull(operand: operand);
      } else if (true_) {
        return not
            ? Not(operand: IsTrue(operand: operand))
            : IsTrue(operand: operand);
      } else if (false_) {
        return not
            ? Not(operand: IsFalse(operand: operand))
            : IsFalse(operand: operand);
      }
    }

    throw ArgumentError('$thisNode Invalid BooleanExpression');
  }

  /// If the expression is a Property on a FHIR choice field that includes
  /// 'boolean', wrap it with As({fhir}boolean) then FHIRHelpers.ToBoolean().
  /// For non-choice boolean properties (like Patient.active), wrap with
  /// FHIRHelpers.ToBoolean() only.
  CqlExpression _wrapChoiceForBoolean(CqlExpression expr) {
    if (expr is Property) {
      final String? className = _resolveClassName(expr);
      if (className != null) {
        final element = getElementInfo(className, expr.path);
        if (element != null && CqlBaseVisitor.isChoiceType(element)) {
          final choices = CqlBaseVisitor.getChoiceTypes(element);
          if (choices.any((c) =>
              c == 'boolean' || c == 'FHIR.boolean')) {
            return CqlBaseVisitor.wrapChoiceProperty(expr, 'boolean');
          }
        }
      }
      // For non-choice boolean properties, apply FHIRHelpers wrapping
      return CqlBaseVisitor.wrapPropertyWithFhirHelper(expr, expr.path);
    }
    return expr;
  }

  /// Try to resolve the FHIR class name for a Property expression.
  /// For scoped properties like P.deceased where P is a Patient query alias,
  /// we look at the query source to determine the type.
  String? _resolveClassName(Property property) {
    // For properties with a scope, look at query sources
    if (property.scope != null) {
      // Check query sources for the alias
      return _classNameFromScope(property.scope!);
    }
    // For properties with a source, resolve from the source type
    if (property.source != null) {
      return _classNameFromExpression(property.source!);
    }
    return null;
  }

  /// Attempt to determine the FHIR class name from a query scope alias.
  String? _classNameFromScope(String alias) {
    // Look through the library statements for query definitions that use
    // this alias. For common patterns like "Patient P", the type comes
    // from the source expression.
    for (final def in library.statements?.def ?? const <ExpressionDef>[]) {
      final expr = def.expression;
      if (expr is Query) {
        for (final src in expr.source ?? <RelationshipClause>[]) {
          if (src.alias == alias) {
            return _classNameFromExpression(src.expression);
          }
        }
      }
    }
    return null;
  }

  /// Extract a FHIR class name from an expression.
  String? _classNameFromExpression(CqlExpression expr) {
    if (expr is ExpressionRef) {
      // Look up the referenced expression's type
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
          final r = sf.operand as Retrieve;
          return r.dataType.localPart;
        }
      }
    }
    if (expr is Retrieve) {
      return expr.dataType.localPart;
    }
    if (expr is SingletonFrom && expr.operand is Retrieve) {
      return (expr.operand as Retrieve).dataType.localPart;
    }
    return null;
  }
}
