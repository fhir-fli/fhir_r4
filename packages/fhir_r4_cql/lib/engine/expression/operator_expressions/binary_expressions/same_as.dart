import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to compare two Date, DateTime, or Time values to the specified
/// precision for equality.
/// The SameAs operator compares values starting from the year or hour component
/// down to the specified
/// If all values are specified and have the same value for each component, then
/// the result is true.
/// If a compared component is specified in both dates but the values are not
/// the same, then the result is false.
/// Otherwise, the result is null, as there is not enough information to make a
/// determination.
/// If no precision is specified, the comparison is performed beginning with
/// years (or hours for time values) and proceeding to the finest precision specified in either input.
/// If either argument is null, the result is null.
/// Signature:
///
/// same _precision_ as(left Date, right Date) Boolean
/// same _precision_ as(left DateTime, right DateTime) Boolean
/// same _precision_ as(left Time, right Time) Boolean
/// Description:
///
/// The same-precision-as operator compares two Date, DateTime, or Time values
/// to the specified precision for equality. The comparison is performed by
/// considering each precision in order, beginning with years (or hours for
/// time values). If the values are the same, comparison proceeds to the next
/// precision; if the values are different, the comparison stops and the result
/// is false; if either input has no value for the precision, the comparison
/// stops and the result is null; if the specified precision has been reached,
/// the comparison stops and the result is true.
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
/// For Time values, precision must be one of: hour, minute, second, or millisecond.
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
/// The following examples illustrate the behavior of the same-precision-as
/// operator:
///
/// define "SameAsTrue": @2012-01-01 same day as @2012-01-01
/// define "SameAsFalse": @2012-01-01 same day as @2012-01-02
/// define "UncertainSameAsIsNull": @2012-01-01 same day as @2012-01
/// define "SameAsIsNull": @2012-01-01 same day as null
/// This operator is also defined for intervals, see the Same As (Intervals) operator for more information.
class SameAs extends BinaryExpression {
  final CqlDateTimePrecision? precision;

  SameAs({
    this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory SameAs.fromJson(Map<String, dynamic> json) => SameAs(
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
  String get type => 'SameAs';

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['Boolean'];

  @override
  Future<FhirBoolean?> execute(Map<String, dynamic> context) async {
    if (operand.length != 2) {
      throw ArgumentError('SameAs expression must have 2 operands');
    }
    final left = await operand[0].execute(context);
    final right = await operand[1].execute(context);
    if (left == null || right == null) {
      return null;
    } else if (left is FhirDateTimeBase && right is FhirDateTimeBase) {
      return _sameAsDateTime(left, right, precision);
    } else if (left is FhirTime && right is FhirTime) {
      return _sameAsTime(left, right, precision);
    } else if (left is CqlInterval && right is CqlInterval) {
      return _sameAsInterval(left, right, precision);
    } else if (left is CqlInterval) {
      try {
        final rightInterval = CqlInterval(low: right, high: right);
        final result = left.equal(rightInterval);
        return result == null ? null : FhirBoolean(result);
      } catch (e) {
        return null;
      }
    } else if (right is CqlInterval) {
      try {
        final leftInterval = CqlInterval(low: left, high: left);
        final result = right.equal(leftInterval);
        return result == null ? null : FhirBoolean(result);
      } catch (e) {
        return null;
      }
    } else {
      return null;
    }
  }

  static FhirBoolean? sameAs(
      dynamic left, dynamic right, CqlDateTimePrecision? precision) {
    if (left == null || right == null) {
      return null;
    }
    if (left is FhirDateTimeBase && right is FhirDateTimeBase) {
      return _sameAsDateTime(left, right, precision);
    } else if (left is FhirTime && right is FhirTime) {
      return _sameAsTime(left, right, precision);
    }
    return Equal.equal(left, right);
  }

  static FhirBoolean? _sameAsTime(
    FhirTime left,
    FhirTime right, [
    CqlDateTimePrecision? precision,
  ]) {
    if (precision == null) {
      final result = left.isEqual(right);
      return result == null ? null : FhirBoolean(result);
    } else {
      /// Check if hours are equal
      final hoursEqual = left.hour == right.hour;

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
      final minutesEqual = left.minute == right.minute;

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
      final secondsEqual = left.second == right.second;

      /// If they're not equal, or we're only comparing to the second,
      /// return the result
      if (!secondsEqual || precision == CqlDateTimePrecision.second) {
        return FhirBoolean(secondsEqual);
      }

      /// if we're supposed to continue to compare, but either one doesn't
      /// have a millisecond, then there isn't enough precision, and we return
      /// null
      else if (left.millisecond == null || right.millisecond == null) {
        return null;
      } else {
        /// Check if milliseconds are equal
        final millisecondsEqual = left.millisecond == right.millisecond;

        /// We've reached the end of the precision, return the result
        return FhirBoolean(millisecondsEqual);
      }
    }
  }

  /// Normalize a FhirDateTimeBase to UTC while preserving its precision level.
  /// Used by Before, SameOrAfter, SameOrBefore for timezone normalization.
  static FhirDateTime normalizeToUtc(FhirDateTimeBase dt) {
    final offset = dt.timeZoneOffset;
    final offsetHours = (offset ?? 0).truncate();
    final offsetMinutes = (((offset ?? 0) - offsetHours) * 60).truncate();
    final utc = DateTime.utc(
        dt.year!, dt.month ?? 1, dt.day ?? 1,
        (dt.hour ?? 0) - offsetHours, (dt.minute ?? 0) - offsetMinutes,
        dt.second ?? 0, dt.millisecond ?? 0);
    return FhirDateTime.fromUnits(
      year: utc.year,
      month: dt.hasMonth ? utc.month : null,
      day: dt.hasDay ? utc.day : null,
      hour: dt.hasHours ? utc.hour : null,
      minute: dt.hasMinutes ? utc.minute : null,
      second: dt.hasSeconds ? utc.second : null,
      millisecond: dt.hasMilliseconds ? utc.millisecond : null,
    );
  }

  /// Returns true for hour, minute, second, or millisecond precision.
  /// Used by Before, SameOrAfter, SameOrBefore for timezone normalization.
  static bool isHourOrFiner(CqlDateTimePrecision precision) =>
      precision == CqlDateTimePrecision.hour ||
      precision == CqlDateTimePrecision.minute ||
      precision == CqlDateTimePrecision.second ||
      precision == CqlDateTimePrecision.millisecond;

  static FhirBoolean? _sameAsInterval(
    CqlInterval left,
    CqlInterval right,
    CqlDateTimePrecision? precision,
  ) {
    final leftStart = left.getStart();
    final leftEnd = left.getEnd();
    final rightStart = right.getStart();
    final rightEnd = right.getEnd();

    // Compare starts using precision-aware sameAs
    final startResult = sameAs(leftStart, rightStart, precision);
    if (startResult?.valueBoolean == false) return FhirBoolean(false);

    // Compare ends using precision-aware sameAs
    final endResult = sameAs(leftEnd, rightEnd, precision);
    if (endResult?.valueBoolean == false) return FhirBoolean(false);

    // If either is null (uncertain), result is null
    if (startResult == null || endResult == null) return null;

    return FhirBoolean(true);
  }

  static FhirBoolean? _sameAsDateTime(
      FhirDateTimeBase left, FhirDateTimeBase right,
      [CqlDateTimePrecision? precision]) {
    if (precision == null) {
      final result = left.isEqual(right);
      return result == null ? null : FhirBoolean(result);
    }

    // Normalize to UTC when timezone offsets present and precision is hour+
    if (isHourOrFiner(precision) &&
        (left.timeZoneOffset != null || right.timeZoneOffset != null)) {
      left = normalizeToUtc(left);
      right = normalizeToUtc(right);
    }

    /// Check if years are equal
    final yearsEqual = left.year == right.year;

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
      final monthsEqual = left.month == right.month;

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
      final daysEqual = left.day == right.day;

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
      final hoursEqual = left.hour == right.hour;

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
      final minutesEqual = left.minute == right.minute;

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
      final secondsEqual = left.second == right.second;

      /// If they're not equal, or we're only comparing to the second,
      /// return the result
      if (!secondsEqual || precision == CqlDateTimePrecision.second) {
        return FhirBoolean(secondsEqual);
      }

      /// if we're supposed to continue to compare, but either one doesn't
      /// have a millisecond, then there isn't enough precision, and we return
      /// null
      else if (!left.hasMilliseconds || !right.hasMilliseconds) {
        return null;
      } else {
        /// Check if milliseconds are equal
        final millisecondsEqual = left.millisecond == right.millisecond;

        /// We've reached the end of the precision, return the result
        return FhirBoolean(millisecondsEqual);
      }
  }
}
