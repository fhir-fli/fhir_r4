import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Operator to determine if the first interval ends before the second interval
/// starts.
/// Returns true if the ending point of the first interval is less than the
/// starting point of the second interval.
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified
/// If either argument is null, the result is null.
/// Signature:
///
/// before _precision_ of(left Date, right Date) Boolean
/// before _precision_ of(left DateTime, right DateTime) Boolean
/// before _precision_ of(left Time, right Time) Boolean
/// Description:
///
/// The before-precision-of operator compares two Date, DateTime, or Time
/// values to the specified precision to determine whether the first argument
/// is the before the second argument. The comparison is performed by
/// considering each precision in order, beginning with years (or hours for
/// time values). If the values are the same, comparison proceeds to the next
/// precision; if the first value is less than the second, the result is true;
/// if the first value is greater than the second, the result is false; if
/// either input has no value for the precision, the comparison stops and the
/// result is null; if the specified precision has been reached, the comparison
/// stops and the result is false.
///
/// If no precision is specified, the comparison is performed beginning with
/// years (or hours for time values) and proceeding to the finest precision
/// specified in either input.
///
/// For Date values, precision must be one of: year, month, or day.
///
/// For DateTime values, precision must be one of: year, month, day, hour,
/// minute, second, or millisecond.
///
/// For Time values, precision must be one of: hour, minute, second, or
/// millisecond.
///
/// Note specifically that due to variability in the way week numbers are
/// determined, comparisons involving weeks are not supported.
///
/// When this operator is called with both Date and DateTime inputs, the Date
/// values will be implicitly converted to DateTime values as defined by the
/// ToDateTime operator.
///
/// When comparing DateTime values with different timezone offsets,
/// implementations should normalize to the timezone offset of the evaluation
/// request timestamp, but only when the comparison precision is hours, minutes,
/// seconds, or milliseconds.
///
/// If either or both arguments are null, the result is null.
///
/// The following examples illustrate the behavior of the before-precision-of
/// operator:
///
/// define "BeforeIsTrue": @2012-01-01 before month of @2012-02-01
/// define "BeforeIsFalse": @2012-01-01 before month of @2012-01-01
/// define "BeforeUncertainIsNull": @2012 before month of @2012-02-01
/// define "BeforeIsNull": @2012-01-01 before month of null
/// This operator is also defined for intervals, see the Before (Intervals)
/// operator for more information.
/// Signature:
///
/// before _precision_ (left Interval<T>, right Interval<T>) Boolean
/// before _precision_ (left T, right Interval<T>) Boolean
/// before _precision_ (left interval<T>, right T) Boolean
/// Description:
///
/// The before operator for intervals returns true if the first interval ends
/// before the second one starts. In other words, if the ending point of the
/// first interval is less than the starting point of the second interval.
///
/// For the point-interval overload, the operator returns true if the given
/// point is less than the start of the interval.
///
/// For the interval-point overload, the operator returns true if the given
/// interval ends before the given point.
///
/// This operator uses the semantics described in the Start and End operators
/// to determine interval boundaries.
///
/// If precision is specified and the point type is a Date, DateTime, or Time
/// type, comparisons used in the operation are performed at the specified
///
///
/// If either argument is null, the result is null.
///
/// The following examples illustrate the behavior of the before operator:
///
/// define "BeforeIsTrue": 0 before Interval[1, 4]
/// define "BeforeIsFalse": Interval[1, 4] before 0
/// define "BeforeIsNull": Interval[1, 4] before null
class Before extends BinaryExpression {
  final CqlDateTimePrecision? precision;

  Before({
    this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Before.fromJson(Map<String, dynamic> json) => Before(
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
      if (precision != null) 'precision': precision!.toJson(),
      'type': type,
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
  String get type => 'Before';

  @override
  String toString() {
    return 'Before(${operand.join(', ')})';
  }

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['Boolean'];

  @override
  Future<FhirBoolean?> execute(Map<String, dynamic> context) async {
    if (operand.length != 2) {
      throw ArgumentError('Before expression must have 2 operands');
    }
    final left = await operand[0].execute(context);
    final right = await operand[1].execute(context);
    return before(left, right, precision);
  }

  static FhirBoolean? before(dynamic left, dynamic right,
      [CqlDateTimePrecision? precision]) {
    if (left == null || right == null) {
      return null;
    } else if (left is FhirDateTimeBase && right is FhirDateTimeBase) {
      return beforeDateTime(left, right, precision);
    } else if (left is FhirTime && right is FhirTime) {
      return beforeTime(left, right, precision);
    } else if (left is CqlInterval && right is CqlInterval) {
      final leftEnd = left.getEnd();
      final rightStart = right.getStart();
      if (leftEnd == null || rightStart == null) {
        return null;
      } else if (leftEnd is FhirDateTimeBase &&
          rightStart is FhirDateTimeBase) {
        return beforeDateTime(leftEnd, rightStart, precision);
      } else if (leftEnd is FhirTime && rightStart is FhirTime) {
        return beforeTime(leftEnd, rightStart, precision);
      } else if (leftEnd is Comparable && rightStart is Comparable) {
        return FhirBoolean(leftEnd.compareTo(rightStart) < 0);
      } else {
        return null;
      }
    } else if (left is CqlInterval) {
      final leftEnd = left.getEnd();
      if (leftEnd == null || right == null) {
        return null;
      } else if (leftEnd is FhirDateTimeBase && right is FhirDateTimeBase) {
        return beforeDateTime(leftEnd, right, precision);
      } else if (leftEnd is FhirTime && right is FhirTime) {
        return beforeTime(leftEnd, right, precision);
      } else if (leftEnd is Comparable && right is Comparable) {
        return FhirBoolean(leftEnd.compareTo(right) < 0);
      } else {
        return null;
      }
    } else if (right is CqlInterval) {
      final rightStart = right.getStart();
      if (left == null || rightStart == null) {
        return null;
      } else if (left is FhirDateTimeBase && rightStart is FhirDateTimeBase) {
        return beforeDateTime(left, rightStart, precision);
      } else if (left is FhirTime && rightStart is FhirTime) {
        return beforeTime(left, rightStart, precision);
      } else if (left is Comparable && rightStart is Comparable) {
        return FhirBoolean(left.compareTo(rightStart) < 0);
      } else {
        try {
          final result = left < rightStart;
          return result == null ? null : FhirBoolean(result);
        } catch (e) {
          return null;
        }
      }
    }
    return null;
  }

  static FhirBoolean? beforeTime(
    FhirTime left,
    FhirTime right, [
    CqlDateTimePrecision? precision,
  ]) {
    if (precision == null) {
      final result = right.isAfter(left);
      return result == null ? null : FhirBoolean(result);
    } else {
      if (left.hour == null || right.hour == null) {
        return null;
      } else if (left.hour! < right.hour!) {
        return FhirBoolean(true);
      } else if (left.hour! > right.hour!) {
        return FhirBoolean(false);
      }

      if (precision == CqlDateTimePrecision.hour) {
        return FhirBoolean(
            false); // If only comparing hours, they are equal at this point.
      }

      if (left.minute == null || right.minute == null) {
        return null;
      } else if (left.minute! < right.minute!) {
        return FhirBoolean(true);
      } else if (left.minute! > right.minute!) {
        return FhirBoolean(false);
      }

      if (precision == CqlDateTimePrecision.minute) {
        return FhirBoolean(
            false); // If only comparing minutes, they are equal at this point.
      }

      if (left.second == null || right.second == null) {
        return null;
      } else if (left.second! < right.second!) {
        return FhirBoolean(true);
      } else if (left.second! > right.second!) {
        return FhirBoolean(false);
      }

      if (precision == CqlDateTimePrecision.second) {
        return FhirBoolean(
            false); // If only comparing seconds, they are equal at this point.
      }

      if (left.millisecond == null || right.millisecond == null) {
        return null;
      } else if (left.millisecond! < right.millisecond!) {
        return FhirBoolean(true);
      } else if (left.millisecond! > right.millisecond!) {
        return FhirBoolean(false);
      }

      return FhirBoolean(
          false); // If only comparing milliseconds, they are equal at this point.
    }
  }

  static FhirBoolean? beforeDateTime(
    FhirDateTimeBase left,
    FhirDateTimeBase right, [
    CqlDateTimePrecision? precision,
  ]) {
    if (precision == null) {
      final result = left.isBefore(right);
      return result == null ? null : FhirBoolean(result);
    } else {
      // Start from the highest precision and go down to the specified one.
      if (!left.hasYear || !right.hasYear) {
        return null;
      } else if (left.year! < right.year!) {
        return FhirBoolean(true);
      } else if (left.year! > right.year!) {
        return FhirBoolean(false);
      } // Year comparison is equal, move to next precision
      if (precision == CqlDateTimePrecision.year) {
        return FhirBoolean(
            false); // If only comparing years, they are equal at this point.
      }

      if (!left.hasMonth || !right.hasMonth) {
        return null;
      } else if (left.month! < right.month!) {
        return FhirBoolean(true);
      } else if (left.month! > right.month!) {
        return FhirBoolean(false);
      }
      if (precision == CqlDateTimePrecision.month) {
        return FhirBoolean(
            false); // If only comparing months, they are equal at this point.
      }

      if (!left.hasDay || !right.hasDay) {
        return null;
      } else if (left.day! < right.day!) {
        return FhirBoolean(true);
      } else if (left.day! > right.day!) {
        return FhirBoolean(false);
      }
      if (precision == CqlDateTimePrecision.day) {
        return FhirBoolean(
            false); // If only comparing days, they are equal at this point.
      }

      if (!left.hasHours || !right.hasHours) {
        return null;
      } else if (left.hour! < right.hour!) {
        return FhirBoolean(true);
      } else if (left.hour! > right.hour!) {
        return FhirBoolean(false);
      }

      if (precision == CqlDateTimePrecision.hour) {
        return FhirBoolean(
            false); // If only comparing hours, they are equal at this point.
      }

      if (!left.hasMinutes || !right.hasMinutes) {
        return null;
      } else if (left.minute! < right.minute!) {
        return FhirBoolean(true);
      } else if (left.minute! > right.minute!) {
        return FhirBoolean(false);
      }

      if (precision == CqlDateTimePrecision.minute) {
        return FhirBoolean(
            false); // If only comparing minutes, they are equal at this point.
      }

      if (!left.hasSeconds || !right.hasSeconds) {
        return null;
      } else if (left.second! < right.second!) {
        return FhirBoolean(true);
      } else if (left.second! > right.second!) {
        return FhirBoolean(false);
      }

      if (precision == CqlDateTimePrecision.second) {
        return FhirBoolean(
            false); // If only comparing seconds, they are equal at this point.
      }

      if (!left.hasMilliseconds || !right.hasMilliseconds) {
        return null;
      } else if (left.millisecond! < right.millisecond!) {
        return FhirBoolean(true);
      } else if (left.millisecond! > right.millisecond!) {
        return FhirBoolean(false);
      }

      return FhirBoolean(
          false); // If only comparing milliseconds, they are equal at this point.
    }
  }
}
