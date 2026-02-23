import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlTimingExpressionVisitor extends CqlBaseVisitor<CqlExpression> {
  CqlTimingExpressionVisitor(super.library);

  @override
  CqlExpression visitTimingExpression(TimingExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    if (ctx.childCount == 3) {
      // Parse left and right operands
      CqlExpression left = byContext(ctx.children![0]) as CqlExpression;
      CqlExpression right = byContext(ctx.children![2]) as CqlExpression;

      // Parse the interval operator phrase (needed before wrapping to check
      // for starts/ends keywords)
      final intervalOperatorPhrase = ctx.children![1];

      // When 'starts' or 'ends' is used, the Start/End operators will extract
      // a point from the interval. Skip dateTime choice narrowing so the raw
      // FHIR value (e.g. Period) flows through to Start/End which handle it.
      if (!_hasStartsOrEnds(intervalOperatorPhrase)) {
        left = _wrapChoiceForTiming(left);
        right = _wrapChoiceForTiming(right);
      }

      // If left is a DateTime (not Date), and right is Today(),
      // wrap right in ToDateTime for type compatibility.
      // But NOT if left is a Date type (ToDate) — Today() already returns Date.
      if (right is Today && _isDateTimeNotDateWrapped(left)) {
        right = ToDateTime(operand: right);
      }

      CqlExpression primaryExpression;
      switch (intervalOperatorPhrase) {
        case ConcurrentWithIntervalOperatorPhraseContext _:
          primaryExpression = visitConcurrentWithIntervalOperatorPhrase(
              intervalOperatorPhrase, left, right);
          break;
        case IncludesIntervalOperatorPhraseContext _:
          primaryExpression = visitIncludesIntervalOperatorPhrase(
              intervalOperatorPhrase, left, right);
          break;
        case IncludedInIntervalOperatorPhraseContext _:
          primaryExpression = visitIncludedInIntervalOperatorPhrase(
              intervalOperatorPhrase, left, right);
          break;
        case BeforeOrAfterIntervalOperatorPhraseContext _:
          primaryExpression = visitBeforeOrAfterIntervalOperatorPhrase(
              intervalOperatorPhrase, left, right);
          break;
        case WithinIntervalOperatorPhraseContext _:
          primaryExpression = visitWithinIntervalOperatorPhrase(
              intervalOperatorPhrase, left, right);
          break;
        case MeetsIntervalOperatorPhraseContext _:
          primaryExpression = visitMeetsIntervalOperatorPhrase(
              intervalOperatorPhrase, left, right);
          break;
        case OverlapsIntervalOperatorPhraseContext _:
          primaryExpression = visitOverlapsIntervalOperatorPhrase(
              intervalOperatorPhrase, left, right);
          break;
        case StartsIntervalOperatorPhraseContext _:
          primaryExpression = visitStartsIntervalOperatorPhrase(
              intervalOperatorPhrase, left, right);
          break;
        case EndsIntervalOperatorPhraseContext _:
          primaryExpression = visitEndsIntervalOperatorPhrase(
              intervalOperatorPhrase, left, right);
          break;
        default:
          throw ArgumentError('$thisNode Invalid TimingExpression');
      }

      // Check if additional logic is required (e.g., Not condition)
      if (intervalOperatorPhrase is WithinIntervalOperatorPhraseContext) {
        // Add "Not" condition for "IntervalY.start is not null"
        final notCondition = Not(
          operand: IsNull(
            operand: Start(operand: right),
          ),
        );

        // Combine primary and additional conditions with "And"
        return And(operand: [primaryExpression, notCondition]);
      }

      return primaryExpression;
    }

    throw ArgumentError('$thisNode Invalid TimingExpression');
  }

  /// Check if the interval operator phrase contains a 'starts' or 'ends'
  /// keyword, indicating the Start/End operator will be applied.
  bool _hasStartsOrEnds(ParseTree phrase) {
    if (phrase is ParserRuleContext) {
      for (final child in phrase.children ?? <ParseTree>[]) {
        if (child is TerminalNode &&
            (child.text == 'starts' || child.text == 'ends')) {
          return true;
        }
      }
    }
    return false;
  }

  /// If the expression is a Property on a FHIR choice field that includes
  /// 'dateTime', wrap it with As({fhir}dateTime) then FHIRHelpers.ToDateTime().
  /// For non-choice date/dateTime properties, apply standard FHIRHelpers wrapping.
  CqlExpression _wrapChoiceForTiming(CqlExpression expr) {
    if (expr is Property) {
      final String? className = _resolveClassName(expr);
      if (className != null) {
        final element = getElementInfo(className, expr.path);
        if (element != null && CqlBaseVisitor.isChoiceType(element)) {
          final choices = CqlBaseVisitor.getChoiceTypes(element);
          if (choices.any((c) => c == 'dateTime' || c == 'FHIR.dateTime')) {
            return CqlBaseVisitor.wrapChoiceProperty(expr, 'dateTime');
          }
        }
      }
      // For non-choice date/dateTime properties, apply FHIRHelpers wrapping
      return CqlBaseVisitor.wrapPropertyWithFhirHelper(expr, expr.path);
    }
    return expr;
  }

  /// Check if an expression is wrapped with a DateTime-producing
  /// FHIRHelpers function (ToDateTime), but NOT a Date-producing one (ToDate).
  bool _isDateTimeNotDateWrapped(CqlExpression expr) {
    if (expr is FunctionRef) {
      return expr.name == 'ToDateTime';
    }
    return false;
  }

  /// Try to resolve the FHIR class name for a Property expression.
  String? _resolveClassName(Property property) {
    if (property.scope != null) {
      return _classNameFromScope(property.scope!);
    }
    if (property.source != null) {
      return _classNameFromExpression(property.source!);
    }
    return null;
  }

  String? _classNameFromScope(String alias) {
    for (final def in library.statements?.def ?? <ExpressionDef>[]) {
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

  String? _classNameFromExpression(CqlExpression expr) {
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
    if (expr is Retrieve) {
      return expr.dataType.localPart;
    }
    if (expr is SingletonFrom && expr.operand is Retrieve) {
      return (expr.operand as Retrieve).dataType.localPart;
    }
    return null;
  }
}
