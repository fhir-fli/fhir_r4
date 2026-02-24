import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to determine if the first interval ends immediately before the
/// second interval starts
/// or if the first interval starts immediately after the second interval ends.
/// Returns true if
/// End(i1) = Predecessor(Start(i2)) or End(i2) = Predecessor(Start(i1)).
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
/// Signature:
///
/// meets _precision_ (left Interval<T>, right Interval<T>) Boolean
/// meets before _precision_ (left Interval<T>, right Interval<T>) Boolean
/// meets after _precision_ (left Interval<T>, right Interval<T>) Boolean
/// Description:
///
/// The meets operator returns true if the first interval ends immediately
/// before the second interval starts, or if the first interval starts
/// immediately after the second interval ends. In other words, if the ending
/// point of the first interval is equal to the predecessor of the starting
/// point of the second, or if the starting point of the first interval is
/// equal to the successor of the ending point of the second.
///
/// The meets before operator returns true if the first interval ends
/// immediately before the second interval starts, while the meets after
/// operator returns true if the first interval starts immediately after the
/// second interval ends.
///
/// This operator uses the semantics described in the Start and End operators
/// to determine interval boundaries.
///
/// If precision is specified and the point type is a Date, DateTime, or
/// Time type, comparisons used in the operation are performed at the specified
/// precision.
///
/// If either argument is null, the result is null.
///
/// Note that Date-, DateTime-, or Time-based intervals with partially specified
/// boundaries will "meet" at the precision of the boundaries, not the finest
/// precision for the point type. For example:
///
/// define "MeetsAtHours": Interval[@T03, @T04] meets Interval[@T05, @T06]
/// The MeetsAtHours expression returns true because the meets operation is
/// performed at the hour precision.
///
/// The following examples illustrate the behavior of the meets, meets before,
/// and meets after operators:
///
/// define "MeetsIsTrue": Interval[6, 10] meets Interval[0, 5]
/// define "MeetsBeforeIsTrue": Interval[-5, -1] meets before Interval[0, 5]
/// define "MeetsAfterIsFalse": Interval[6, 10] meets after Interval[0, 7]
/// define "MeetsIsNull": Interval[6, 10] meets (null as Interval<Integer>)
class Meets extends BinaryExpression {
  final CqlDateTimePrecision? precision;

  Meets({
    this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Meets.fromJson(Map<String, dynamic> json) => Meets(
        precision: json['precision'] == null
            ? null
            : CqlDateTimePrecisionExtension.fromJson(json['precision']),
        operand: List<CqlExpression>.from(
          json['operand'].map(
            (x) => CqlExpression.fromJson(x),
          ),
        ),
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e))
                .toList()
            : null,
        localId: json['localId'],
        locator: json['locator'],
        resultTypeName: json['resultTypeName'],
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifierExpression.fromJson(json['resultTypeSpecifier'])
            : null,
      );

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {
      'type': type,
      if (precision != null) 'precision': precision!.toJson(),
      'operand': operand.map((x) => x.toJson()).toList(),
    };
    if (annotation != null) {
      json['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }
    if (localId != null) {
      json['localId'] = localId;
    }
    if (locator != null) {
      json['locator'] = locator;
    }
    if (resultTypeName != null) {
      json['resultTypeName'] = resultTypeName;
    }
    if (resultTypeSpecifier != null) {
      json['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }
    return json;
  }

  @override
  String get type => 'Meets';

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['Boolean'];

  @override
  Future<FhirBoolean?> execute(Map<String, dynamic> context) async {
    if (operand.length != 2) {
      throw ArgumentError('Meets expression must have 2 operands');
    }

    final left = await operand[0].execute(context);
    final right = await operand[1].execute(context);
    return meets(left, right, precision);
  }

  static FhirBoolean? meets(dynamic left, dynamic right,
      [CqlDateTimePrecision? precision]) {
    if (left == null || right == null) {
      return null;
    } else if (left is CqlInterval && right is CqlInterval) {
      final leftStart = left.getStart();
      final leftEnd = left.getEnd();
      final rightStart = right.getStart();
      final rightEnd = right.getEnd();

      // If intervals overlap, they cannot meet — return false.
      // Use getStart/getEnd for known boundaries, but null for unknown ones
      // (null low/high means "unknown", not "min/max value").
      final effectiveLeftStart = left.low != null ? leftStart : null;
      final effectiveLeftEnd = left.high != null ? leftEnd : null;
      final effectiveRightStart = right.low != null ? rightStart : null;
      final effectiveRightEnd = right.high != null ? rightEnd : null;
      if (intervalsOverlap(effectiveLeftStart, effectiveLeftEnd,
          effectiveRightStart, effectiveRightEnd, precision)) {
        return FhirBoolean(false);
      }

      // Check meets before: leftEnd = predecessor(rightStart)
      bool hasNull = false;
      if (leftEnd != null && rightStart != null) {
        final pred = safePredecessor(rightStart);
        if (pred != null) {
          final leftMeetsRight = precision != null &&
                  (leftEnd is FhirDateTimeBase || leftEnd is FhirTime)
              ? SameAs.sameAs(leftEnd, pred, precision)
              : Equal.equal(leftEnd, pred);
          if (leftMeetsRight?.valueBoolean == true) {
            return leftMeetsRight;
          }
        }
      } else {
        hasNull = true;
      }
      // Check meets after: leftStart = successor(rightEnd)
      if (leftStart != null && rightEnd != null) {
        final succ = safeSuccessor(rightEnd);
        if (succ != null) {
          final rightMeetsLeft = precision != null &&
                  (leftStart is FhirDateTimeBase || leftStart is FhirTime)
              ? SameAs.sameAs(leftStart, succ, precision)
              : Equal.equal(leftStart, succ);
          if (rightMeetsLeft?.valueBoolean == true) {
            return rightMeetsLeft;
          }
        }
      } else {
        hasNull = true;
      }
      if (hasNull) {
        // If leftEnd < rightStart (with gap > 1), intervals are disjoint
        // and can't meet in either direction
        if (leftEnd != null && rightStart != null) {
          final pred = safePredecessor(rightStart);
          if (pred != null) {
            final lt = Less.less(leftEnd, pred);
            if (lt?.valueBoolean == true) return FhirBoolean(false);
          }
        }
        if (rightEnd != null && leftStart != null) {
          final pred = safePredecessor(leftStart);
          if (pred != null) {
            final lt = Less.less(rightEnd, pred);
            if (lt?.valueBoolean == true) return FhirBoolean(false);
          }
        }
        return null;
      }
      return FhirBoolean(false);
    } else {
      return null;
    }
  }

  /// Check if two intervals provably overlap using known boundaries.
  /// If any needed boundary is null, we can't prove overlap → return false.
  static bool intervalsOverlap(dynamic leftStart, dynamic leftEnd,
      dynamic rightStart, dynamic rightEnd,
      [CqlDateTimePrecision? precision]) {
    // Overlap: leftStart <= rightEnd AND rightStart <= leftEnd
    if (leftStart != null && rightEnd != null && leftEnd != null &&
        rightStart != null) {
      final leftBeforeRight = precision != null
          ? SameOrBefore.sameOrBefore(leftStart, rightEnd, precision)
          : LessOrEqual.lessOrEqual(leftStart, rightEnd);
      final rightBeforeLeft = precision != null
          ? SameOrBefore.sameOrBefore(rightStart, leftEnd, precision)
          : LessOrEqual.lessOrEqual(rightStart, leftEnd);
      if (leftBeforeRight?.valueBoolean == true &&
          rightBeforeLeft?.valueBoolean == true) {
        return true;
      }
    }
    // Partial check: only if ALL four boundaries are known
    // If any boundary is null (unknown), we can't prove overlap.
    if (leftEnd != null && rightStart != null &&
        leftStart != null && rightEnd != null) {
      final leGe = precision != null
          ? SameOrAfter.sameOrAfter(leftEnd, rightStart, precision)
          : GreaterOrEqual.greaterOrEqual(leftEnd, rightStart);
      if (leGe?.valueBoolean == true) {
        final reGe = precision != null
            ? SameOrAfter.sameOrAfter(rightEnd, leftStart, precision)
            : GreaterOrEqual.greaterOrEqual(rightEnd, leftStart);
        if (reGe?.valueBoolean == true) return true;
      }
    }
    return false;
  }

  /// Safe predecessor that catches assertion errors (e.g., year < 1).
  static dynamic safePredecessor(dynamic value) {
    try {
      return Predecessor.predecessor(value);
    } catch (_) {
      return null;
    }
  }

  /// Safe successor that catches assertion errors (e.g., year > 9999).
  static dynamic safeSuccessor(dynamic value) {
    try {
      return Successor.successor(value);
    } catch (_) {
      return null;
    }
  }
}
