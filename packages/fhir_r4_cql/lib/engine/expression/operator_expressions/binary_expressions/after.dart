import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to determine if the first interval starts after the second
/// interval ends.
/// Returns true if the starting point of the first interval is greater than
/// the ending point of the second interval.
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified
/// If either argument is null, the result is null.
/// Signature:
///
/// after _precision_ of(left Date, right Date) Boolean
/// after _precision_ of(left DateTime, right DateTime) Boolean
/// after _precision_ of(left Time, right Time) Boolean
/// Description:
///
/// The after-precision-of operator compares two Date, DateTime, or Time values
/// to the specified precision to determine whether the first argument is the
/// after the second argument. The comparison is performed by considering each
/// precision in order, beginning with years (or hours for time values). If the
/// values are the same, comparison proceeds to the next precision; if the first
/// value is greater than the second, the result is true; if the first value is
/// less than the second, the result is false; if either input has no value for
/// the precision, the comparison stops and the result is null; if the specified
/// precision has been reached, the comparison stops and the result is false.
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
/// The following examples illustrate the behavior of the after-precision-of
/// operator:
///
/// define "AfterIsTrue": @2012-02-01 after month of @2012-01-01
/// define "AfterIsFalse": @2012-01-01 after month of @2012-01-01
/// define "AfterUncertainIsNull": @2012-01-01 after month of @2012
/// define "AfterIsNull": @2012-01-01 after month of null
///
/// Signature:
///
/// after _precision_ (left Interval<T>, right Interval<T>) Boolean
/// after _precision_ (left T, right Interval<T>) Boolean
/// after _precision_ (left Interval<T>, right T) Boolean
/// Description:
///
/// The after operator for intervals returns true if the first interval starts
/// after the second one ends. In other words, if the starting point of the
/// first interval is greater than the ending point of the second interval.
///
/// For the point-interval overload, the operator returns true if the given
/// point is greater than the end of the interval.
///
/// For the interval-point overload, the operator returns true if the given
/// interval starts after the given point.
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
/// The following examples illustrate the behavior of the after operator:
///
/// define "AfterIsTrue": 5 after Interval[1, 4]
/// define "AfterIsFalse": Interval[1, 4] after 5
/// define "AfterIsNull": Interval[1, 4] after null
class After extends BinaryExpression {
  final CqlDateTimePrecision? precision;

  After({
    this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory After.fromJson(Map<String, dynamic> json) => After(
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
  String get type => 'After';

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['Boolean'];

  @override
  Future<FhirBoolean?> execute(Map<String, dynamic> context) async {
    if (operand.length != 2) {
      throw ArgumentError('After expression must have 2 operands');
    }
    final left = await operand[0].execute(context);
    final right = await operand[1].execute(context);
    return after(left, right, precision);
  }

  static FhirBoolean? after(dynamic left, dynamic right,
      [CqlDateTimePrecision? precision]) {
    if (left == null || right == null) {
      return null;
    } else if (left is FhirDateTimeBase && right is FhirDateTimeBase) {
      return afterDateTime(left, right, precision);
    } else if (left is FhirTime && right is FhirTime) {
      return afterTime(left, right, precision);
    } else if (left is CqlInterval && right is CqlInterval) {
      final leftStart = left.getStart();
      final rightEnd = right.getEnd();
      if (leftStart == null || rightEnd == null) {
        return null;
      } else if (leftStart is FhirDateTimeBase &&
          rightEnd is FhirDateTimeBase) {
        return afterDateTime(leftStart, rightEnd, precision);
      } else if (leftStart is FhirTime && rightEnd is FhirTime) {
        return afterTime(leftStart, rightEnd, precision);
      } else if (leftStart is Comparable && rightEnd is Comparable) {
        return FhirBoolean(leftStart.compareTo(rightEnd) > 0);
      } else {
        return null;
      }
    } else if (left is CqlInterval) {
      final leftStart = left.getStart();
      if (leftStart == null || right == null) {
        return null;
      } else if (leftStart is FhirDateTimeBase && right is FhirDateTimeBase) {
        return afterDateTime(leftStart, right, precision);
      } else if (leftStart is FhirTime && right is FhirTime) {
        return afterTime(leftStart, right, precision);
      } else if (leftStart is Comparable && right is Comparable) {
        return FhirBoolean(leftStart.compareTo(right) > 0);
      } else {
        return null;
      }
    } else if (right is CqlInterval) {
      final rightEnd = right.getEnd();
      if (left == null || rightEnd == null) {
        return null;
      } else if (left is FhirDateTimeBase && rightEnd is FhirDateTimeBase) {
        return afterDateTime(left, rightEnd, precision);
      } else if (left is FhirTime && rightEnd is FhirTime) {
        return afterTime(left, rightEnd, precision);
      } else if (left is Comparable && rightEnd is Comparable) {
        return FhirBoolean(left.compareTo(rightEnd) > 0);
      } else {
        try {
          final result = left > rightEnd;
          return result == null ? null : FhirBoolean(result);
        } catch (e) {
          return null;
        }
      }
    }
    return null;
  }

  static FhirBoolean? afterTime(
    FhirTime left,
    FhirTime right, [
    CqlDateTimePrecision? precision,
  ]) {
    if (precision == null) {
      final result = left.isAfter(right);
      return result == null ? null : FhirBoolean(result);
    } else {
      if (left.hour == null || right.hour == null) {
        return null;
      } else if (left.hour! > right.hour!) {
        return FhirBoolean(true);
      } else if (left.hour! < right.hour!) {
        return FhirBoolean(false);
      }

      if (precision == CqlDateTimePrecision.hour) {
        return FhirBoolean(
            false); // If only comparing hours, they are equal at this point.
      }

      if (left.minute == null || right.minute == null) {
        return null;
      } else if (left.minute! > right.minute!) {
        return FhirBoolean(true);
      } else if (left.minute! < right.minute!) {
        return FhirBoolean(false);
      }

      if (precision == CqlDateTimePrecision.minute) {
        return FhirBoolean(
            false); // If only comparing minutes, they are equal at this point.
      }

      if (left.second == null || right.second == null) {
        return null;
      } else if (left.second! > right.second!) {
        return FhirBoolean(true);
      } else if (left.second! < right.second!) {
        return FhirBoolean(false);
      }

      if (precision == CqlDateTimePrecision.second) {
        return FhirBoolean(
            false); // If only comparing seconds, they are equal at this point.
      }

      if (left.millisecond == null || right.millisecond == null) {
        return null;
      } else if (left.millisecond! > right.millisecond!) {
        return FhirBoolean(true);
      } else if (left.millisecond! < right.millisecond!) {
        return FhirBoolean(false);
      }

      return FhirBoolean(
          false); // If only comparing milliseconds, they are equal at this point.
    }
  }

  static FhirBoolean? afterDateTime(
    FhirDateTimeBase left,
    FhirDateTimeBase right, [
    CqlDateTimePrecision? precision,
  ]) {
    if (precision == null) {
      final result = left.isAfter(right);
      return result == null ? null : FhirBoolean(result);
    } else {
      // Start from the highest precision and go down to the specified one.
      if (left.year == null || right.year == null) {
        return null;
      } else if (left.year! > right.year!) {
        return FhirBoolean(true);
      } else if (left.year! < right.year!) {
        return FhirBoolean(false);
      } // Year comparison is equal, move to next precision
      if (precision == CqlDateTimePrecision.year) {
        return FhirBoolean(
            false); // If only comparing years, they are equal at this point.
      }

      if (!left.hasMonth || !right.hasMonth) {
        return null;
      } else if (left.month! > right.month!) {
        return FhirBoolean(true);
      } else if (left.month! < right.month!) {
        return FhirBoolean(false);
      }
      if (precision == CqlDateTimePrecision.month) {
        return FhirBoolean(
            false); // If only comparing months, they are equal at this point.
      }

      if (!left.hasDay || !right.hasDay) {
        return null;
      } else if (left.day! > right.day!) {
        return FhirBoolean(true);
      } else if (left.day! < right.day!) {
        return FhirBoolean(false);
      }
      if (precision == CqlDateTimePrecision.day) {
        return FhirBoolean(
            false); // If only comparing days, they are equal at this point.
      }

      if (!left.hasHours || !right.hasHours) {
        return null;
      } else if (left.hour! > right.hour!) {
        return FhirBoolean(true);
      } else if (left.hour! < right.hour!) {
        return FhirBoolean(false);
      }

      if (precision == CqlDateTimePrecision.hour) {
        return FhirBoolean(
            false); // If only comparing hours, they are equal at this point.
      }

      if (!left.hasMinutes || !right.hasMinutes) {
        return null;
      } else if (left.minute! > right.minute!) {
        return FhirBoolean(true);
      } else if (left.minute! < right.minute!) {
        return FhirBoolean(false);
      }

      if (precision == CqlDateTimePrecision.minute) {
        return FhirBoolean(
            false); // If only comparing minutes, they are equal at this point.
      }

      if (!left.hasSeconds || !right.hasSeconds) {
        return null;
      } else if (left.second! > right.second!) {
        return FhirBoolean(true);
      } else if (left.second! < right.second!) {
        return FhirBoolean(false);
      }

      if (precision == CqlDateTimePrecision.second) {
        return FhirBoolean(
            false); // If only comparing seconds, they are equal at this point.
      }

      if (!left.hasMilliseconds || !right.hasMilliseconds) {
        return null;
      } else if (left.millisecond! > right.millisecond!) {
        return FhirBoolean(true);
      } else if (left.millisecond! < right.millisecond!) {
        return FhirBoolean(false);
      }

      return FhirBoolean(
          false); // If only comparing milliseconds, they are equal at this point.
    }
  }
}
