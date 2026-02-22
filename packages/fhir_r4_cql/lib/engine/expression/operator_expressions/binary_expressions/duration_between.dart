import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to return the number of whole calendar periods for the specified
/// precision between the first and second arguments.
/// If the first argument is after the second argument, the result is negative.
/// The result of this operation is always an integer; any fractional periods
/// are dropped.
/// If either argument is null, the result is null.
/// Signature:
///
/// _duration_ between(low Date, high Date) Integer
/// _duration_ between(low DateTime, high DateTime) Integer
/// _duration_ between(low Time, high Time) Integer
/// Description:
///
/// The duration-between operator returns the number of whole calendar periods for the specified precision between the first and second arguments. If the first argument is after the second argument, the result is negative. The result of this operation is always an integer; any fractional periods are dropped.
///
/// For Date values, duration must be one of: years, months, weeks, or days.
///
/// For DateTime values, duration must be one of: years, months, weeks, days,
/// hours, minutes, seconds, or milliseconds.
///
/// For Time values, duration must be one of: hours, minutes, seconds, or
/// milliseconds.
///
/// When this operator is called with both Date and DateTime inputs, the Date
/// values will be implicitly converted to DateTime as defined by the ToDateTime
/// operator.
///
/// When computing the duration between DateTime values with different timezone
/// offsets, implementations should normalize to the timezone offset of the
/// evaluation request timestamp, but only when the comparison precision is
/// hours, minutes, seconds, or milliseconds.
///
/// If either argument is null, the result is null.
///
/// The following examples illustrate the behavior of the duration-between
/// operator:
///
/// define "DurationInMonths": months between @2012-01-01 and @2012-02-01 // 1
/// define "UncertainDurationInMonths": months between @2012-01-02 and @2012 // [0, 10]
/// define "DurationIsNull": months between @2012-01-01 and null
class DurationBetween extends BinaryExpression {
  final CqlDateTimePrecision precision;

  DurationBetween({
    required this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory DurationBetween.fromJson(Map<String, dynamic> json) =>
      DurationBetween(
        precision: CqlDateTimePrecisionExtension.fromJson(json['precision']),
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
      'precision': precision.toJson(),
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
  String get type => 'DurationBetween';

  @override
  List<String> getReturnTypes(CqlLibrary library) =>
      ['FhirInteger', 'CqlInterval'];

  /// For DurationBetween, uncertainty exists when any sub-precision field is
  /// missing, because sub-fields determine whether a complete period elapsed.
  static bool _needsUncertainty(
      FhirDateTimeBase date, CqlDateTimePrecision precision) {
    switch (precision) {
      case CqlDateTimePrecision.year:
        // Sub-year fields affect whether a full year has elapsed
        return !date.hasYear || !date.hasMonth || !date.hasDay;
      case CqlDateTimePrecision.month:
        return !date.hasMonth || !date.hasDay;
      case CqlDateTimePrecision.week:
      case CqlDateTimePrecision.day:
        return !date.hasDay;
      case CqlDateTimePrecision.hour:
        return !date.hasHours;
      case CqlDateTimePrecision.minute:
        return !date.hasMinutes;
      case CqlDateTimePrecision.second:
        return !date.hasSeconds;
      case CqlDateTimePrecision.millisecond:
        return !date.hasMilliseconds;
    }
  }

  /// Returns (min, max) DateTime bounds for a partial date.
  /// Expands ALL unknown fields to their extremes so that sub-precision fields
  /// correctly influence whether a complete period has elapsed.
  static (DateTime, DateTime) _dateBounds(FhirDateTimeBase date) {
    final int year = date.year!;
    final int minMonth = date.month ?? 1;
    final int maxMonth = date.month ?? 12;
    final int minDay = date.day ?? 1;
    final int maxDay =
        date.day ?? DateTime(year, maxMonth + 1, 0).day; // last day of month
    final int minHour = date.hour ?? 0;
    final int maxHour = date.hour ?? 23;
    final int minMinute = date.minute ?? 0;
    final int maxMinute = date.minute ?? 59;
    final int minSecond = date.second ?? 0;
    final int maxSecond = date.second ?? 59;
    final int minMs = date.millisecond ?? 0;
    final int maxMs = date.millisecond ?? 999;

    return (
      DateTime.utc(
          year, minMonth, minDay, minHour, minMinute, minSecond, minMs),
      DateTime.utc(
          year, maxMonth, maxDay, maxHour, maxMinute, maxSecond, maxMs),
    );
  }

  /// Compute the number of whole calendar periods for the given precision.
  /// Unlike DifferenceBetween which counts boundary crossings, DurationBetween
  /// counts complete periods — so incomplete periods are dropped.
  static int _durationBetween(
      DateTime low, DateTime high, CqlDateTimePrecision precision) {
    final bool negative = high.isBefore(low);
    if (negative) {
      final temp = low;
      low = high;
      high = temp;
    }

    int result;
    switch (precision) {
      case CqlDateTimePrecision.year:
        result = high.year - low.year;
        // Check if the anniversary hasn't been reached yet
        if (high.month < low.month ||
            (high.month == low.month && high.day < low.day) ||
            (high.month == low.month &&
                high.day == low.day &&
                _timeOfDay(high) < _timeOfDay(low))) {
          result--;
        }
      case CqlDateTimePrecision.month:
        result = (high.year - low.year) * 12 + (high.month - low.month);
        // Check if the monthly anniversary hasn't been reached yet
        if (high.day < low.day ||
            (high.day == low.day && _timeOfDay(high) < _timeOfDay(low))) {
          result--;
        }
      case CqlDateTimePrecision.week:
        result = high.difference(low).inDays ~/ 7;
      case CqlDateTimePrecision.day:
        result = high.difference(low).inDays;
      case CqlDateTimePrecision.hour:
        result = high.difference(low).inHours;
      case CqlDateTimePrecision.minute:
        result = high.difference(low).inMinutes;
      case CqlDateTimePrecision.second:
        result = high.difference(low).inSeconds;
      case CqlDateTimePrecision.millisecond:
        result = high.difference(low).inMilliseconds;
    }

    return negative ? -result : result;
  }

  /// Returns the time-of-day portion in milliseconds for sub-day comparison.
  static int _timeOfDay(DateTime dt) =>
      dt.hour * 3600000 + dt.minute * 60000 + dt.second * 1000 + dt.millisecond;

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    if (operand.length != 2) {
      throw ArgumentError('DurationBetween expression must have 2 operands');
    }
    final low = await operand[0].execute(context);
    final high = await operand[1].execute(context);
    if (low == null || high == null) {
      return null;
    } else if (low is FhirDateTimeBase) {
      if (high is FhirDateTimeBase) {
        if (low.year == null || high.year == null) {
          return null;
        }

        if (_needsUncertainty(low, precision) ||
            _needsUncertainty(high, precision)) {
          final (lowMin, lowMax) = _dateBounds(low);
          final (highMin, highMax) = _dateBounds(high);
          final minResult =
              _durationBetween(lowMax, highMin, precision);
          final maxResult =
              _durationBetween(lowMin, highMax, precision);
          // Collapse point intervals to scalar
          if (minResult == maxResult) {
            return FhirInteger(minResult);
          }
          return CqlInterval(
            low: FhirInteger(minResult),
            high: FhirInteger(maxResult),
          ).setUncertain(true);
        }

        var lowDt = low.valueDateTime!;
        var highDt = high.valueDateTime!;
        // Always normalize to UTC to avoid DST-related day-count errors
        lowDt = _toUtc(low, lowDt);
        highDt = _toUtc(high, highDt);
        return FhirInteger(_durationBetween(lowDt, highDt, precision));
      } else {
        throw CqlException(
            message: 'DurationBetween must be passed two Dates, DateTimes, or '
                'Times, it was instead passed: '
                'low (${low.runtimeType}) and'
                'high (${high.runtimeType})');
      }
    } else if (low is FhirTime) {
      if (high is FhirTime) {
        final int lowTotalMilliseconds = (low.hour ?? 0) * 3600000 +
            (low.minute ?? 0) * 60000 +
            (low.second ?? 0) * 1000 +
            (low.millisecond ?? 0);
        final int highTotalMilliseconds = (high.hour ?? 0) * 3600000 +
            (high.minute ?? 0) * 60000 +
            (high.second ?? 0) * 1000 +
            (high.millisecond ?? 0);

        final int differenceMilliseconds =
            highTotalMilliseconds - lowTotalMilliseconds;

        switch (precision) {
          case CqlDateTimePrecision.hour:
            return FhirInteger((differenceMilliseconds / 3600000).floor());
          case CqlDateTimePrecision.minute:
            return FhirInteger((differenceMilliseconds / 60000).floor());
          case CqlDateTimePrecision.second:
            return FhirInteger((differenceMilliseconds / 1000).floor());
          case CqlDateTimePrecision.millisecond:
            return FhirInteger(differenceMilliseconds);
          default:
            throw CqlException(
                message:
                    'Unsupported precision for FhirTime comparison. Supported precisions are: hours, minutes, seconds, milliseconds.');
        }
      } else {
        throw CqlException(
            message: 'DurationBetween must be passed two Dates, DateTimes, or '
                'Times, it was instead passed: '
                'low (${low.runtimeType}) and'
                'high (${high.runtimeType})');
      }
    } else {
      throw CqlException(
          message: 'DurationBetween must be either Dates, DateTimes, or Times,'
              'but was instead passed low (${low.runtimeType}) and '
              'high (${high.runtimeType}).');
    }
  }

  static bool _isSubDayPrecision(CqlDateTimePrecision precision) =>
      precision == CqlDateTimePrecision.hour ||
      precision == CqlDateTimePrecision.minute ||
      precision == CqlDateTimePrecision.second ||
      precision == CqlDateTimePrecision.millisecond;

  /// Convert a FhirDateTimeBase to UTC DateTime using its timezone offset.
  /// Uses DateTime.utc() to avoid DST issues with local DateTime arithmetic.
  static DateTime _toUtc(FhirDateTimeBase fdt, DateTime local) {
    final offset = fdt.timeZoneOffset;
    if (offset == null || fdt.isUtc) {
      return DateTime.utc(local.year, local.month, local.day, local.hour,
          local.minute, local.second, local.millisecond);
    }
    final offsetHours = offset.truncate();
    final offsetMinutes = ((offset - offsetHours) * 60).truncate();
    return DateTime.utc(local.year, local.month, local.day,
        local.hour - offsetHours, local.minute - offsetMinutes,
        local.second, local.millisecond);
  }
}
