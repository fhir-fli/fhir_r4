import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

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
      // getStart()/getEnd() return null for unknown boundaries (open null),
      // but return MinValue/MaxValue for closed null (infinity endpoints).
      final eLS = left.getStart();
      final eLE = left.getEnd();
      final eRS = right.getStart();
      final eRE = right.getEnd();

      // If intervals provably overlap, they cannot meet
      if (intervalsOverlap(eLS, eLE, eRS, eRE, precision)) {
        return FhirBoolean(false);
      }

      // Check meets before: leftEnd = predecessor(rightStart)
      final mb = checkMeetsBefore(eLE, eRS, precision);
      if (mb?.valueBoolean == true) return FhirBoolean(true);

      // Check meets after: leftStart = successor(rightEnd)
      final ma = checkMeetsAfter(eLS, eRE, precision);
      if (ma?.valueBoolean == true) return FhirBoolean(true);

      // Three-valued Or: if both false → false; if either null → null
      if (mb?.valueBoolean == false && ma?.valueBoolean == false) {
        return FhirBoolean(false);
      }

      // Try to refine null results using interval bounds:
      // If mb is null but leftStart ≥ rightStart → leftEnd > pred(rightStart) → mb = false
      var refinedMb = mb;
      if (refinedMb == null && eLS != null && eRS != null) {
        final ge = precision != null
            ? SameOrAfter.sameOrAfter(eLS, eRS, precision)
            : GreaterOrEqual.greaterOrEqual(eLS, eRS);
        if (ge?.valueBoolean == true) refinedMb = FhirBoolean(false);
      }
      // If ma is null but leftEnd ≤ rightEnd → leftStart < succ(rightEnd) → ma = false
      var refinedMa = ma;
      if (refinedMa == null && eLE != null && eRE != null) {
        final le = precision != null
            ? SameOrBefore.sameOrBefore(eLE, eRE, precision)
            : LessOrEqual.lessOrEqual(eLE, eRE);
        if (le?.valueBoolean == true) refinedMa = FhirBoolean(false);
      }
      if (refinedMb?.valueBoolean == false &&
          refinedMa?.valueBoolean == false) {
        return FhirBoolean(false);
      }
      return null;
    } else {
      return null;
    }
  }

  /// Check if leftEnd = predecessor(rightStart).
  /// Returns true/false/null. Null if either input is null or comparison is
  /// uncertain.
  static FhirBoolean? checkMeetsBefore(
      dynamic leftEnd, dynamic rightStart, CqlDateTimePrecision? precision) {
    if (leftEnd == null || rightStart == null) return null;
    final pred = precision != null &&
            (rightStart is FhirDateTimeBase || rightStart is FhirTime)
        ? safePrecisionPredecessor(rightStart, precision)
        : safePredecessor(rightStart);
    if (pred == null) return null;
    return precision != null &&
            (leftEnd is FhirDateTimeBase || leftEnd is FhirTime)
        ? SameAs.sameAs(leftEnd, pred, precision)
        : Equal.equal(leftEnd, pred);
  }

  /// Check if leftStart = successor(rightEnd).
  /// Returns true/false/null. Null if either input is null or comparison is
  /// uncertain.
  static FhirBoolean? checkMeetsAfter(
      dynamic leftStart, dynamic rightEnd, CqlDateTimePrecision? precision) {
    if (leftStart == null || rightEnd == null) return null;
    final succ = precision != null &&
            (rightEnd is FhirDateTimeBase || rightEnd is FhirTime)
        ? safePrecisionSuccessor(rightEnd, precision)
        : safeSuccessor(rightEnd);
    if (succ == null) return null;
    return precision != null &&
            (leftStart is FhirDateTimeBase || leftStart is FhirTime)
        ? SameAs.sameAs(leftStart, succ, precision)
        : Equal.equal(leftStart, succ);
  }

  /// Check if two intervals provably overlap using known boundaries.
  /// Handles partial information — if a known boundary of one interval
  /// falls within the other interval (whose boundaries are both known),
  /// overlap is proven.
  static bool intervalsOverlap(dynamic leftStart, dynamic leftEnd,
      dynamic rightStart, dynamic rightEnd,
      [CqlDateTimePrecision? precision]) {
    // Full check: all 4 known — leftStart <= rightEnd AND rightStart <= leftEnd
    if (leftStart != null && rightEnd != null && leftEnd != null &&
        rightStart != null) {
      final a = precision != null
          ? SameOrBefore.sameOrBefore(leftStart, rightEnd, precision)
          : LessOrEqual.lessOrEqual(leftStart, rightEnd);
      final b = precision != null
          ? SameOrBefore.sameOrBefore(rightStart, leftEnd, precision)
          : LessOrEqual.lessOrEqual(rightStart, leftEnd);
      if (a?.valueBoolean == true && b?.valueBoolean == true) {
        return true;
      }
    }
    // Partial checks: a known point of one interval inside the other
    if (_pointInInterval(leftEnd, rightStart, rightEnd, precision)) return true;
    if (_pointInInterval(leftStart, rightStart, rightEnd, precision)) {
      return true;
    }
    if (_pointInInterval(rightEnd, leftStart, leftEnd, precision)) return true;
    if (_pointInInterval(rightStart, leftStart, leftEnd, precision)) {
      return true;
    }
    return false;
  }

  /// Check if point ∈ [ivlStart, ivlEnd]. All three must be non-null.
  static bool _pointInInterval(dynamic point, dynamic ivlStart, dynamic ivlEnd,
      [CqlDateTimePrecision? precision]) {
    if (point == null || ivlStart == null || ivlEnd == null) return false;
    final ge = precision != null
        ? SameOrAfter.sameOrAfter(point, ivlStart, precision)
        : GreaterOrEqual.greaterOrEqual(point, ivlStart);
    if (ge?.valueBoolean != true) return false;
    final le = precision != null
        ? SameOrBefore.sameOrBefore(point, ivlEnd, precision)
        : LessOrEqual.lessOrEqual(point, ivlEnd);
    return le?.valueBoolean == true;
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

  /// Precision-based successor: add 1 unit at the specified precision.
  /// E.g., successor at day of 2012-03-01 = 2012-03-02 (not 2012-03-01.001).
  static dynamic safePrecisionSuccessor(
      dynamic value, CqlDateTimePrecision precision) {
    try {
      final unit = _precisionToUnit(precision);
      final qty = ValidatedQuantity(value: UcumDecimal.fromString('1'), unit: unit);
      if (value is FhirDateTimeBase) {
        return Add.addToDateTime(value, qty);
      } else if (value is FhirTime) {
        return Add.add(value, qty);
      }
      return Successor.successor(value);
    } catch (_) {
      return null;
    }
  }

  /// Precision-based predecessor: subtract 1 unit at the specified precision.
  static dynamic safePrecisionPredecessor(
      dynamic value, CqlDateTimePrecision precision) {
    try {
      final unit = _precisionToUnit(precision);
      final qty = ValidatedQuantity(value: UcumDecimal.fromString('1'), unit: unit);
      if (value is FhirDateTimeBase) {
        return Add.addToDateTime(value, qty, subtract: true);
      } else if (value is FhirTime) {
        return Subtract.subtract(value, qty);
      }
      return Predecessor.predecessor(value);
    } catch (_) {
      return null;
    }
  }

  static String _precisionToUnit(CqlDateTimePrecision precision) {
    switch (precision) {
      case CqlDateTimePrecision.year:
        return 'year';
      case CqlDateTimePrecision.month:
        return 'month';
      case CqlDateTimePrecision.week:
        return 'week';
      case CqlDateTimePrecision.day:
        return 'day';
      case CqlDateTimePrecision.hour:
        return 'hour';
      case CqlDateTimePrecision.minute:
        return 'minute';
      case CqlDateTimePrecision.second:
        return 'second';
      case CqlDateTimePrecision.millisecond:
        return 'millisecond';
    }
  }
}
