import 'package:fhir_r4/fhir_r4.dart';

import '../../../../cql.dart';

/// Operator to compare two Date, DateTime, or Time values to the specified
/// precision to determine if the first argument is the same or after the
/// second argument.
/// If no precision is specified, the comparison is performed beginning with
/// years (or hours for time values) and proceeding to the finest precision
/// specified in either input.
/// For Date values, precision must be one of year, month, or day.
/// For DateTime values, precision must be one of year, month, day, hour,
/// minute, second, or millisecond.
/// For Time values, precision must be one of hour, minute, second, or
/// millisecond.
/// Signature:
///
/// same _precision_ or after(left Date, right Date) Boolean
/// same _precision_ or after(left DateTime, right DateTime) Boolean
/// same _precision_ or after(left Time, right Time) Boolean
/// Description:
///
/// The same-precision-or after operator compares two Date, DateTime, or Time
/// values to the specified precision to determine whether the first argument
/// is the same or after the second argument. The comparison is performed by
/// considering each precision in order, beginning with years (or hours for
/// time values). If the values are the same, comparison proceeds to the next
/// precision; if the first value is greater than the second, the result is
/// true; if the first value is less than the second, the result is false; if
/// either input has no value for the precision, the comparison stops and the
/// result is null; if the specified precision has been reached, the comparison
/// stops and the result is true.
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
/// values will be implicitly converted to DateTime as defined by the ToDateTime
/// operator.
///
/// When comparing DateTime values with different timezone offsets,
/// implementations should normalize to the timezone offset of the evaluation
/// request timestamp, but only when the comparison precision is hours, minutes,
/// seconds, or milliseconds.
///
/// If either or both arguments are null, the result is null.
///
/// Note that in timing phrases, the keyword on may be used as a synonym for
/// same for this operator.
///
/// The following examples illustrate the behavior of the same-precision-or
/// after operator:
///
/// define "SameOrAfterTrue": @2012-01-02 same day or after @2012-01-01
/// define "SameOrAfterFalse": @2012-01-01 same day or after @2012-01-02
/// define "UncertainSameOrAfterIsNull": @2012-01-02 same day or after @2012-01
/// define "SameOrAfterIsNull": @2012-01-01 same day or after null
/// This operator is also defined for intervals, see the Same Or After
/// (Intervals) operator for more information.
class SameOrAfter extends BinaryExpression {
  final CqlDateTimePrecision? precision;

  SameOrAfter({
    this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory SameOrAfter.fromJson(Map<String, dynamic> json) => SameOrAfter(
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
    final data = <String, dynamic>{};
    if (precision != null) {
      data['precision'] = precision!.toJson();
    }
    data['type'] = type;
    data['operand'] = operand.map((e) => e.toJson()).toList();
    if (annotation != null) {
      data['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }
    if (localId != null) {
      data['localId'] = localId;
    }
    if (locator != null) {
      data['locator'] = locator;
    }
    if (resultTypeName != null) {
      data['resultTypeName'] = resultTypeName;
    }
    if (resultTypeSpecifier != null) {
      data['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }
    return data;
  }

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'SameOrAfter';

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['FhirBoolean'];

  @override
  Future<FhirBoolean?> execute(Map<String, dynamic> context) async {
    if (operand.length != 2) {
      throw ArgumentError('SameOrAfter expression must have 2 operands');
    }
    final left = await operand[0].execute(context);
    final right = await operand[1].execute(context);
    if (left == null || right == null) {
      return null;
    } else if (left is FhirDateTimeBase && right is FhirDateTimeBase) {
      return sameOrAfterDateTime(left, right, precision);
    } else if (left is FhirTime && right is FhirTime) {
      return sameOrAfterTime(left, right, precision);
    } else if (left is CqlInterval && right is CqlInterval) {
      final leftStart = left.getStart();
      final rightEnd = right.getEnd();
      if (leftStart == null || rightEnd == null) {
        return null;
      } else if (leftStart is FhirDateTimeBase &&
          rightEnd is FhirDateTimeBase) {
        return sameOrAfterDateTime(leftStart, rightEnd, precision);
      } else if (leftStart is FhirTime && rightEnd is FhirTime) {
        return sameOrAfterTime(leftStart, rightEnd, precision);
      } else if (leftStart is Comparable && rightEnd is Comparable) {
        return FhirBoolean(leftStart.compareTo(rightEnd) >= 0);
      } else {
        return null;
      }
    } else if (left is CqlInterval) {
      final leftStart = left.getStart();
      if (leftStart == null || right == null) {
        return null;
      } else if (leftStart is FhirDateTimeBase && right is FhirDateTimeBase) {
        return sameOrAfterDateTime(leftStart, right, precision);
      } else if (leftStart is FhirTime && right is FhirTime) {
        return sameOrAfterTime(leftStart, right, precision);
      } else if (leftStart is Comparable && right is Comparable) {
        return FhirBoolean(leftStart.compareTo(right) >= 0);
      } else {
        return null;
      }
    } else if (right is CqlInterval) {
      final rightEnd = right.getEnd();
      if (left == null || rightEnd == null) {
        return null;
      } else if (left is FhirDateTimeBase && rightEnd is FhirDateTimeBase) {
        return sameOrAfterDateTime(left, rightEnd, precision);
      } else if (left is FhirTime && rightEnd is FhirTime) {
        return sameOrAfterTime(left, rightEnd, precision);
      } else if (left is Comparable && rightEnd is Comparable) {
        return FhirBoolean(left.compareTo(rightEnd) >= 0);
      } else {
        try {
          final result = left >= rightEnd;
          return result == null ? null : FhirBoolean(result);
        } catch (e) {
          return null;
        }
      }
    }
    return null;
  }

  static FhirBoolean? sameOrAfterTime(
    FhirTime left,
    FhirTime right, [
    CqlDateTimePrecision? precision,
  ]) {
    if (precision == null) {
      final result = left.isSameOrAfter(right);
      return result == null ? null : FhirBoolean(result);
    } else {
      if (left.hour == null || right.hour == null) {
        return null;
      }

      /// Check if hours are equal
      final hoursEqual = left.hour! >= right.hour!;

      /// If they're not equal, or we're only comparing to the hour,
      /// return the result
      if (!hoursEqual || precision == CqlDateTimePrecision.hour) {
        return FhirBoolean(hoursEqual);
      }

      /// if we're supposed to continue to compare, but either one doesn't
      /// have a minute, then there isn't enough precision, and we return null

      else if (left.minute == null || right.minute == null) {
        return null;
      }

      /// Check if minutes are equal
      final minutesEqual = left.minute! >= right.minute!;

      /// If they're not equal, or we're only comparing to the minute,
      /// return the result
      if (!minutesEqual || precision == CqlDateTimePrecision.minute) {
        return FhirBoolean(minutesEqual);
      }

      /// if we're supposed to continue to compare, but either one doesn't
      /// have a second, then there isn't enough precision, and we return null
      else if (left.second == null || right.second == null) {
        return null;
      }

      /// Check if seconds are equal
      final secondsEqual = left.second! >= right.second!;

      /// If they're not equal, or we're only comparing to the second,
      /// return the result
      if (!secondsEqual || precision == CqlDateTimePrecision.second) {
        return FhirBoolean(false);
      }

      /// if we're supposed to continue to compare, but either one doesn't
      /// have a millisecond, then there isn't enough precision, and we return
      /// null
      else if (left.millisecond == null || right.millisecond == null) {
        return null;
      } else {
        /// Check if milliseconds are equal
        final millisecondsEqual = left.millisecond! >= right.millisecond!;

        /// We've reached the end of the precision, return the result
        return FhirBoolean(millisecondsEqual);
      }
    }
  }

  static FhirBoolean? sameOrAfterDateTime(
    FhirDateTimeBase left,
    FhirDateTimeBase right, [
    CqlDateTimePrecision? precision,
  ]) {
    if (precision == null) {
      final result = left.isSameOrAfter(right);
      return result == null ? null : FhirBoolean(result);
    } else {
      if (left.year == null || right.year == null) {
        return null;
      }

      /// Check if years are equal
      final yearsEqual = left.year! >= right.year!;

      /// If they're not equal, or we're only comparing to the year,
      /// return the result
      if (!yearsEqual || precision == CqlDateTimePrecision.year) {
        return FhirBoolean(yearsEqual);
      }

      /// if we're supposed to continue to compare, but either one doesn't
      /// have a month, then there isn't enough precision, and we return null
      else if (!left.hasMonth ^ !right.hasMonth) {
        return null;
      }

      /// Check if months are equal
      final monthsEqual = left.month! >= right.month!;

      /// If they're not equal, or we're only comparing to the month,
      /// return the result
      if (!monthsEqual || precision == CqlDateTimePrecision.month) {
        return FhirBoolean(monthsEqual);
      }

      /// if we're supposed to continue to compare, but either one doesn't
      /// have a day, then there isn't enough precision, and we return null
      else if (!left.hasDay || !right.hasDay) {
        return null;
      }

      /// Check if days are equal
      final daysEqual = left.day! >= right.day!;

      /// If they're not equal, or we're only comparing to the day,
      /// return the result
      if (!daysEqual || precision == CqlDateTimePrecision.day) {
        return FhirBoolean(daysEqual);
      }

      /// if we're supposed to continue to compare, but either one doesn't
      /// have an hour, then there isn't enough precision, and we return null
      else if (!left.hasHours || !right.hasHours) {
        return null;
      }

      /// Check if hours are equal
      final hoursEqual = left.hour! >= right.hour!;

      /// If they're not equal, or we're only comparing to the hour,
      /// return the result
      if (!hoursEqual || precision == CqlDateTimePrecision.hour) {
        return FhirBoolean(hoursEqual);
      }

      /// if we're supposed to continue to compare, but either one doesn't
      /// have a minute, then there isn't enough precision, and we return null

      else if (!left.hasMinutes || !right.hasMinutes) {
        return null;
      }

      /// Check if minutes are equal
      final minutesEqual = left.minute! >= right.minute!;

      /// If they're not equal, or we're only comparing to the minute,
      /// return the result
      if (!minutesEqual || precision == CqlDateTimePrecision.minute) {
        return FhirBoolean(minutesEqual);
      }

      /// if we're supposed to continue to compare, but either one doesn't
      /// have a second, then there isn't enough precision, and we return null
      else if (!left.hasSeconds || !right.hasSeconds) {
        return null;
      }

      /// Check if seconds are equal
      final secondsEqual = left.second! >= right.second!;

      /// If they're not equal, or we're only comparing to the second,
      /// return the result
      if (!secondsEqual || precision == CqlDateTimePrecision.second) {
        return FhirBoolean(false);
      }

      /// if we're supposed to continue to compare, but either one doesn't
      /// have a millisecond, then there isn't enough precision, and we return
      /// null
      else if (!left.hasMilliseconds || !right.hasMilliseconds) {
        return null;
      } else {
        /// Check if milliseconds are equal
        final millisecondsEqual = left.millisecond! >= right.millisecond!;

        /// We've reached the end of the precision, return the result
        return FhirBoolean(millisecondsEqual);
      }
    }
  }
}
