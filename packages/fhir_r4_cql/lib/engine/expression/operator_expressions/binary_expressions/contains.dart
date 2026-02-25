import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to check if the first operand contains the second operand.
/// Returns true if the given point is greater than or equal to the starting
/// point of the interval and less than or equal to the ending point of the
/// interval.
/// For open interval boundaries, exclusive comparison operators are used. For
/// closed interval boundaries, if the interval boundary is null, the result of
/// the boundary comparison is considered true.
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified precision.
/// If the first argument is null, the result is false. If the second argument
/// is null, the result is null.
///
/// Signature:
///
/// contains _precision_ (argument Interval<T>, point T) Boolean
/// Description:
///
/// The contains operator for intervals returns true if the given point is
/// equal to the starting or ending point of the interval, or greater than the
/// starting point and less than the ending point. For open interval boundaries,
/// exclusive comparison operators are used. For closed interval boundaries, if
/// the interval boundary is null, the result of the boundary comparison is
/// considered true.
///
/// If precision is specified and the point type is a Date, DateTime, or Time
/// type, comparisons used in the operation are performed at the specified
/// precision.
///
/// If the first argument is null, the result is false. If the second argument
/// is null, the result is null.
///
/// The following examples illustrate the behavior of the contains operator:
///
/// define "ContainsIsTrue": Interval[1, 5] contains 4
/// define "ContainsIsFalse": Interval[1, 5] contains 6
/// define "ContainsIsNull": Interval[1, 5] contains null
///
/// Signature:
///
/// contains(argument List<T>, element T) Boolean
/// Description:
///
/// The contains operator for lists returns true if the given element is in the
/// list using equality semantics, with the exception that null elements are
/// considered equal.
///
/// If the first argument is null, the result is false. If the second argument
/// is null, the result is true if the list contains any null elements, and
/// false otherwise.
///
/// The following examples illustrate the behavior of the contains operator:
///
/// define "ContainsIsTrue": { 1, 3, 5, 7 } contains 5
/// define "ContainsIsFalse": { 1, 3, 5, 7 } contains 4
/// define "ContainsIsAlsoFalse": null contains 4
/// define "ContainsNullIsFalse": { 1, 3, 5, 7 } contains null
class Contains extends BinaryExpression {
  final CqlDateTimePrecision? precision;

  Contains({
    this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Contains.fromJson(Map<String, dynamic> json) => Contains(
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
  String get type => 'Contains';

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['Boolean'];

  @override
  Future<FhirBoolean?> execute(Map<String, dynamic> context) async {
    if (operand.length != 2) {
      throw ArgumentError('Contains expression must have 2 operands');
    }
    final left = await operand[0].execute(context);
    final right = await operand[1].execute(context);
    return contains(left, right, precision);
  }

  static FhirBoolean? contains(dynamic left, dynamic right,
      [CqlDateTimePrecision? precision]) {
    if (left == null) {
      return FhirBoolean(false);
    } else if (left is CqlInterval) {
      if (right == null) {
        return null;
      }
      return _intervalContains(left, right, precision);
    } else if (left is List) {
      // Use CQL equivalence semantics for list membership testing
      for (final element in left) {
        if (Equivalent.equivalent(element, right).valueBoolean ?? false) {
          return FhirBoolean(true);
        }
      }
      return FhirBoolean(false);
    } else {
      throw ArgumentError(
          'Contains: Left operand must be of type Interval or List');
    }
  }

  /// Interval contains point with three-valued logic.
  /// Handles unknown boundaries (null getStart/getEnd) and imprecise
  /// comparisons by returning null when the result is uncertain.
  /// Special case: if the point equals the known boundary of an interval
  /// with one unknown boundary, the result is true (the interval must be
  /// valid, so the point is definitely contained).
  static FhirBoolean? _intervalContains(
      CqlInterval interval, dynamic point, CqlDateTimePrecision? precision) {
    final start = interval.getStart();
    final end = interval.getEnd();

    // Compute lower bound check: point >= start
    FhirBoolean? lowerCheck;
    if (start == null) {
      lowerCheck = null; // unknown boundary → uncertain
    } else if (precision != null) {
      lowerCheck = SameOrAfter.sameOrAfter(point, start, precision);
    } else {
      lowerCheck = GreaterOrEqual.greaterOrEqual(point, start);
    }

    // Compute upper bound check: point <= end
    FhirBoolean? upperCheck;
    if (end == null) {
      upperCheck = null; // unknown boundary → uncertain
    } else if (precision != null) {
      upperCheck = SameOrBefore.sameOrBefore(point, end, precision);
    } else {
      upperCheck = LessOrEqual.lessOrEqual(point, end);
    }

    final result = And.and(lowerCheck, upperCheck);

    // Special case for unknown boundaries: if the point equals the known
    // boundary, it's definitely contained (the interval is valid, so the
    // unknown boundary must be on the other side of the known boundary).
    if (result == null) {
      if (start == null && end != null && upperCheck?.valueBoolean == true) {
        // Unknown start, known end. If point == end, it must be in.
        final eq = precision != null
            ? SameAs.sameAs(point, end, precision)
            : Equal.equal(point, end);
        if (eq?.valueBoolean == true) return FhirBoolean(true);
      }
      if (end == null && start != null && lowerCheck?.valueBoolean == true) {
        // Known start, unknown end. If point == start, it must be in.
        final eq = precision != null
            ? SameAs.sameAs(point, start, precision)
            : Equal.equal(point, start);
        if (eq?.valueBoolean == true) return FhirBoolean(true);
      }
    }

    return result;
  }
}
