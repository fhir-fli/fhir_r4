import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to check if the first operand is completely included in the second
/// operand.
/// Returns true if the starting point of the first interval is greater than or
/// equal to the starting point of the second interval,
/// and the ending point of the first interval is less than or equal to the
/// ending point of the second interval.
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
/// Signature:
///
/// included in _precision_ (left Interval<T>, right Interval<T>) Boolean
/// included in _precision_ (left T, right Interval<T>) Boolean
/// Description:
///
/// The included in operator for intervals returns true if the first interval
/// is completely included in the second. More precisely, if the starting point
/// of the first interval is greater than or equal to the starting point of the
/// second interval, and the ending point of the first interval is less than or
/// equal to the ending point of the second interval.
///
/// For the point overload, this operator is a synonym for the in operator, and
/// will return null if the first argument is null, and false if the second
/// argument is null.
///
/// For the interval overload, if either argument is null, the result is null.
///
/// This operator uses the semantics described in the Start and End operators
/// to determine interval boundaries.
///
/// If precision is specified and the point type is a Date, DateTime, or Time
/// type, comparisons used in the operation are performed at the specified
/// precision.
///
/// Note that during is a synonym for included in and may be used to invoke the
/// same operation wherever included in may appear.
///
/// The following examples illustrate the behavior of the included in operator:
///
/// define "IncludedInIsTrue": Interval[1, 5] included in Interval[0, 5]
/// define "IncludedInIsFalse": -1 during Interval[0, 7]
/// define "IncludedInIsNull": 3 included in (null as Interval<Integer>)
/// Signature:
///
/// included in(left List<T>, right list<T>) Boolean
/// included in(left T, right list<T>) Boolean
/// Description:
///
/// The included in operator for lists returns true if every element of the
/// first list is in the second list using equality semantics.
///
/// For the singleton overload, this operator is a synonym for the in operator,
/// and will return null if the first argument is null, and false if the second
/// argument is null.
///
/// For the list overload, if either argument is null, the result is null.
///
/// Note that the order of elements does not matter for the purposes of
/// determining inclusion.
///
/// The following examples illustrate the behavior of the included in operator:
///
/// define "IncludedInIsTrue": 5 included in { 1, 3, 5, 7 }
/// define "IncludedInIsNull": null included in { 1, 3, 5 }
/// define "IncludedInIsFalse": { 1, 3, 5 } included in { 1, 3 }
/// define "IncludedInIsAlsoNull": { 1, 3, 5, null } included in null
class IncludedIn extends BinaryExpression {
  final CqlDateTimePrecision? precision;

  IncludedIn({
    this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory IncludedIn.fromJson(Map<String, dynamic> json) => IncludedIn(
        precision: json['precision'] != null
            ? CqlDateTimePrecisionExtension.fromJson(json['precision'])
            : null,
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
      'operand': operand.map((x) => x.toJson()).toList(),
    };
    if (precision != null) {
      json['precision'] = precision!.toJson();
    }
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
  String toString() => toJson().toString();

  @override
  String get type => 'IncludedIn';

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['Boolean'];

  @override
  Future<FhirBoolean?> execute(Map<String, dynamic> context) async {
    if (operand.length != 2) {
      throw ArgumentError('IncludedIn expression must have 2 operands');
    }
    final left = await operand[0].execute(context);
    final right = await operand[1].execute(context);
    return includedIn(left, right, precision);
  }

  static FhirBoolean? includedIn(
      dynamic left, dynamic right, CqlDateTimePrecision? precision) {
    /// For all variations, if left is null, then return null
    if (left == null) {
      return null;
    } else if (right == null) {
      /// For the interval overload, if either argument is null, the result is null.
      if (left is CqlInterval) {
        return null;
      }

      /// For the point overload, this operator is a synonym for the in
      /// operator, and will return null if the first argument is null, and
      /// false if the second argument is null.

      else if (left is FhirDate ||
          left is FhirDateTime ||
          left is FhirTime ||
          left is FhirInteger ||
          left is FhirDecimal ||
          left is FhirInteger64 ||
          left is ValidatedQuantity) {
        return FhirBoolean(false);
      } else {
        return null;
      }
    } else if (right is CqlInterval) {
      if (left is CqlInterval) {
        return _intervalIncludedIn(left, right, precision);
      }
      // Point included in interval — delegate to Contains
      return Contains.contains(right, left, precision);
    } else if (right is List) {
      try {
        if (left is List) {
          for (final element in left) {
            if (!listContains(right, element)) {
              return FhirBoolean(false);
            }
          }
          return FhirBoolean(true);
        } else {
          return FhirBoolean(listContains(right, left));
        }
      } catch (e) {
        return null;
      }
    } else {
      return null;
    }
  }

  /// Check if a list contains an element using CQL equality semantics.
  /// This handles CqlTuple and other types that don't override Dart ==.
  /// Null elements are considered equal (per CQL spec for list membership).
  static bool listContains(List list, dynamic element) {
    if (element == null) {
      return list.any((e) => e == null);
    }
    for (final item in list) {
      final eq = Equal.equal(item, element);
      if (eq?.valueBoolean == true) return true;
    }
    return false;
  }

  /// Interval included in interval with three-valued logic.
  /// left included in right ↔ left.start >= right.start AND left.end <= right.end
  /// Handles unknown boundaries (null getStart/getEnd) by returning null for
  /// uncertain cases. When the left interval is entirely at the known boundary
  /// of the right interval, the result is true.
  static FhirBoolean? _intervalIncludedIn(
      CqlInterval left, CqlInterval right, CqlDateTimePrecision? precision) {
    final leftStart = left.getStart();
    final leftEnd = left.getEnd();
    final rightStart = right.getStart();
    final rightEnd = right.getEnd();

    // Compute start check: left.start >= right.start
    FhirBoolean? startCheck;
    if (rightStart == null) {
      startCheck = null; // unknown boundary → uncertain
    } else if (leftStart == null) {
      startCheck = null; // unknown boundary → uncertain
    } else if (precision != null ||
        leftStart is FhirDateTimeBase ||
        leftStart is FhirTime) {
      startCheck = SameOrAfter.sameOrAfter(leftStart, rightStart, precision);
    } else {
      startCheck = GreaterOrEqual.greaterOrEqual(leftStart, rightStart);
    }

    // Compute end check: left.end <= right.end
    FhirBoolean? endCheck;
    if (rightEnd == null) {
      endCheck = null; // unknown boundary → uncertain
    } else if (leftEnd == null) {
      endCheck = null; // unknown boundary → uncertain
    } else if (precision != null ||
        leftEnd is FhirDateTimeBase ||
        leftEnd is FhirTime) {
      endCheck = SameOrBefore.sameOrBefore(leftEnd, rightEnd, precision);
    } else {
      endCheck = LessOrEqual.lessOrEqual(leftEnd, rightEnd);
    }

    final result = And.and(startCheck, endCheck);

    // Special case for unknown boundaries in the container (right):
    // If result is null due to an unknown boundary, check if the left interval
    // is entirely at the known boundary of the right interval.
    if (result == null) {
      if (rightStart == null && endCheck?.valueBoolean == true &&
          rightEnd != null && leftStart != null) {
        // Unknown start in container. If leftStart >= rightEnd, then since
        // rightStart < rightEnd (valid interval), rightStart < leftStart.
        final ge = precision != null ||
                leftStart is FhirDateTimeBase ||
                leftStart is FhirTime
            ? SameOrAfter.sameOrAfter(leftStart, rightEnd, precision)
            : GreaterOrEqual.greaterOrEqual(leftStart, rightEnd);
        if (ge?.valueBoolean == true) return FhirBoolean(true);
      }
      if (rightEnd == null && startCheck?.valueBoolean == true &&
          rightStart != null && leftEnd != null) {
        // Unknown end in container. If leftEnd <= rightStart, then since
        // rightEnd > rightStart (valid interval), leftEnd < rightEnd.
        final le = precision != null ||
                leftEnd is FhirDateTimeBase ||
                leftEnd is FhirTime
            ? SameOrBefore.sameOrBefore(leftEnd, rightStart, precision)
            : LessOrEqual.lessOrEqual(leftEnd, rightStart);
        if (le?.valueBoolean == true) return FhirBoolean(true);
      }
    }

    return result;
  }
}
