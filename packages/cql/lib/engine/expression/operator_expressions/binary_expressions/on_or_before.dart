import 'package:fhir_r4/fhir_r4.dart';

import '../../../../cql.dart';

/// Operator to compare two Date, DateTime, or Time values to the specified
/// precision to determine if the first argument is the same or before the
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
/// same _precision_ or before(left Date, right Date) Boolean
/// same _precision_ or before(left DateTime, right DateTime) Boolean
/// same _precision_ or before(left Time, right Time) Boolean
/// Description:
///
/// The same-precision-or before operator compares two Date, DateTime, or Time
/// values to the specified precision to determine whether the first argument
/// is the same or before the second argument. The comparison is performed by
/// considering each precision in order, beginning with years (or hours for
/// time values). If the values are the same, comparison proceeds to the next
/// precision; if the first value is less than the second, the result is true;
/// if the first value is greater than the second, the result is false; if
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
/// before operator:
///
/// define "SameOrBeforeTrue": @2012-01-01 same day or before @2012-01-02
/// define "SameOrBeforeFalse": @2012-01-02 same day or before @2012-01-01
/// define "UncertainSameOrBeforeIsNull": @2012-01-02 same day or before @2012-01
/// define "SameOrBeforeIsNull": @2012-01-01 same day or before null
/// This operator is also defined for intervals, see the Same Or Before
/// (Intervals) operator for more information.
class OnOrBefore extends BinaryExpression {
  final CqlDateTimePrecision? precision;

  OnOrBefore({
    this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory OnOrBefore.fromJson(Map<String, dynamic> json) => OnOrBefore(
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
  String get type => 'OnOrBefore';

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['FhirBoolean'];

  @override
  FhirBoolean? execute(Map<String, dynamic> context) {
    if (operand.length != 2) {
      throw ArgumentError('OnOrBefore expression must have 2 operands');
    }
    final left = operand[0].execute(context);
    final right = operand[1].execute(context);
    return sameOrBefore(left, right, precision);
  }

  static FhirBoolean? sameOrBefore(
      dynamic left, dynamic right, CqlDateTimePrecision? precision) {
    if (left == null || right == null) {
      return null;
    } else if (left is FhirDateTimeBase && right is FhirDateTimeBase) {
      if (precision == null) {
        final result = left.isSameOrBefore(right);
        return result == null ? null : FhirBoolean(result);
      } else {
        /// Check if years are equal
        final yearsEqual = (left.year ?? 0) <= (right.year ?? 0);

        /// If they're not equal, or we're only comparing to the year,
        /// return the result
        if (!yearsEqual || precision == CqlDateTimePrecision.year) {
          return FhirBoolean(yearsEqual);
        }

        /// if we're supposed to continue to compare, but either one doesn't
        /// have a month, then there isn't enough precision, and we return null
        else if (!left.hasMonth || !right.hasMonth) {
          return null;
        }

        /// Check if months are equal
        final monthsEqual = (left.month ?? 0) <= (right.month ?? 0);

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
        final daysEqual = (left.day ?? 0) <= (right.day ?? 0);

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
        final hoursEqual = (left.hour ?? 0) <= (right.hour ?? 0);

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
        final minutesEqual = (left.minute ?? 0) <= (right.minute ?? 0);

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
        final secondsEqual = (left.second ?? 0) <= (right.second ?? 0);

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
          final millisecondsEqual =
              (left.millisecond ?? 0) <= (right.millisecond ?? 0);

          /// We've reached the end of the precision, return the result
          return FhirBoolean(millisecondsEqual);
        }
      }
    }
    return null;
  }
}
