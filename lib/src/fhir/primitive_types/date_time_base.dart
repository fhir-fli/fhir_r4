import 'dart:convert';

import '../../../fhir_r4.dart';

abstract class FhirDateTimeBase extends PrimitiveType<DateTime>
    implements Comparable<FhirDateTimeBase> {
  @override
  final bool isValid;
  final FhirDateTimePrecision precision;
  final Exception? parseError;
  final dynamic input;
  final int year;
  final int month;
  final int day;
  final int hour;
  final int minute;
  final int second;
  final int millisecond;
  final int microsecond;
  final num timeZoneOffset;
  final bool isUtc;

  FhirDateTimeBase({
    required this.isValid,
    required this.precision,
    required this.input,
    required this.parseError,
    required this.year,
    required this.month,
    required this.day,
    required this.hour,
    required this.minute,
    required this.second,
    required this.millisecond,
    required this.microsecond,
    required this.timeZoneOffset,
    required this.isUtc,
    super.fhirType = 'dateTime',
    super.element,
  });

  @override
  DateTime get value => valueDateTime;

  DateTime get valueDateTime => precision.dateTimeFromMap(toMap());

  String get valueString => _formattedString;

  @override
  String toString() => _formattedString;

  String get _formattedString {
    if (this is FhirInstant) {
      return precision.isValidInstantPrecision
          ? precision.dateTimeMapToString<FhirInstant>(toMap())
          : fullInstantPrecision.dateTimeMapToString<FhirInstant>(toMap());
    } else if (this is FhirDateTime) {
      return precision.isValidFhirDateTimePrecision
          ? precision.dateTimeMapToString<FhirDateTime>(toMap())
          : fullDateTimePrecision.dateTimeMapToString<FhirDateTime>(toMap());
    } else if (this is FhirDate) {
      return precision.isValidDatePrecision
          ? precision.dateTimeMapToString<FhirDate>(toMap())
          : fullDatePrecision.dateTimeMapToString<FhirDate>(toMap());
    } else {
      return precision.dateTimeMapToString<FhirDateTimeBase>(toMap());
    }
  }

  String toIso8601String() => valueDateTime.toIso8601String();

  @override
  String toJson() => input.toString();

  @override
  String toYaml() => input.toString();

  @override
  String toJsonString() => jsonEncode(toJson());

  Map<String, num> toMap() => <String, num>{
        'year': year,
        'month': month,
        'day': day,
        'hour': hour,
        'minute': minute,
        'second': second,
        'millisecond': millisecond,
        'microsecond': microsecond,
        'timeZoneOffset': timeZoneOffset,
        'isUtc': isUtc ? 0 : 1,
      };

  static String _cleanInput(String inValue) {
    inValue = inValue.trim();
    if (inValue.startsWith('"') ||
        inValue.startsWith("'") ||
        inValue.startsWith('`')) {
      inValue = inValue.substring(1);
    }
    if (inValue.endsWith('"') ||
        inValue.endsWith("'") ||
        inValue.endsWith('`')) {
      inValue = inValue.substring(0, inValue.length - 1);
    }
    return inValue;
  }

  static FhirDateTimeBase _constructor<T>(
      Map<String, num?>? dateTimeMap,
      FhirDateTimePrecision? precision,
      String? exception,
      dynamic output,
      bool regexpValid,
      [Element? element]) {
    return T == FhirInstant
        ? FhirInstant.fromBase(
            isValid: (precision?.isValidInstantPrecision ?? false) &&
                precision != FhirDateTimePrecision.invalid &&
                regexpValid,
            precision: precision ?? FhirDateTimePrecision.invalid,
            input: output,
            parseError: exception == null
                ? null
                : PrimitiveTypeFormatException<FhirInstant>(exception),
            year: dateTimeMap?['year'] as int? ?? 1,
            month: dateTimeMap?['month'] as int? ?? 1,
            day: dateTimeMap?['day'] as int? ?? 1,
            hour: dateTimeMap?['hour'] as int? ?? 0,
            minute: dateTimeMap?['minute'] as int? ?? 0,
            second: dateTimeMap?['second'] as int? ?? 0,
            millisecond: dateTimeMap?['millisecond'] as int? ?? 0,
            microsecond: dateTimeMap?['microsecond'] as int? ?? 0,
            timeZoneOffset: dateTimeMap?['timeZoneOffset'] ?? 0,
            isUtc: dateTimeMap?['isUtc'] == 0,
            element: element,
          )
        : T == FhirDateTime
            ? FhirDateTime.fromBase(
                isValid: (precision?.isValidFhirDateTimePrecision ?? false) &&
                    precision != FhirDateTimePrecision.invalid &&
                    regexpValid,
                precision: precision ?? FhirDateTimePrecision.invalid,
                input: output,
                parseError: exception == null
                    ? null
                    : PrimitiveTypeFormatException<FhirDateTime>(exception),
                year: dateTimeMap?['year'] as int? ?? 1,
                month: dateTimeMap?['month'] as int? ?? 1,
                day: dateTimeMap?['day'] as int? ?? 1,
                hour: dateTimeMap?['hour'] as int? ?? 0,
                minute: dateTimeMap?['minute'] as int? ?? 0,
                second: dateTimeMap?['second'] as int? ?? 0,
                millisecond: dateTimeMap?['millisecond'] as int? ?? 0,
                microsecond: dateTimeMap?['microsecond'] as int? ?? 0,
                timeZoneOffset: dateTimeMap?['timeZoneOffset'] ?? 0,
                isUtc: dateTimeMap?['isUtc'] == 0,
                element: element,
              )
            : T == FhirDate
                ? FhirDate.fromBase(
                    isValid: (precision?.isValidDatePrecision ?? false) &&
                        precision != FhirDateTimePrecision.invalid &&
                        regexpValid,
                    precision: precision ?? FhirDateTimePrecision.invalid,
                    input: output,
                    parseError: exception == null
                        ? null
                        : PrimitiveTypeFormatException<FhirDate>(exception),
                    year: dateTimeMap?['year'] as int? ?? 1,
                    month: dateTimeMap?['month'] as int? ?? 1,
                    day: dateTimeMap?['day'] as int? ?? 1,
                    hour: dateTimeMap?['hour'] as int? ?? 0,
                    minute: dateTimeMap?['minute'] as int? ?? 0,
                    second: dateTimeMap?['second'] as int? ?? 0,
                    millisecond: dateTimeMap?['millisecond'] as int? ?? 0,
                    microsecond: dateTimeMap?['microsecond'] as int? ?? 0,
                    timeZoneOffset: dateTimeMap?['timeZoneOffset'] ?? 0,
                    isUtc: dateTimeMap?['isUtc'] == 0,
                    element: element,
                  )
                : throw CannotBeConstructed<T>(
                    "$T cannot be constructed from '$output' (unsupported type).");
  }

  static FhirDateTimeBase constructor<T>(dynamic inValue,
      [FhirDateTimePrecision? precision, Element? element]) {
    String? input;
    String? exception;
    Map<String, num?>? dateTimeMap;
    bool regexpValid = true;

    if (inValue is String) {
      input = _cleanInput(inValue);
      final String replaced = input.replaceAll(
          T == FhirDateTime
              ? dateTimeExp
              : T == FhirInstant
                  ? instantExp
                  : dateExp,
          '');
      if (replaced.isNotEmpty && replaced.trim().isNotEmpty) {
        regexpValid = false;
      }
    } else if (inValue is DateTime) {
      input = inValue.toIso8601String();
      if (inValue.isUtc) {
        input += 'Z';
      } else if (inValue.timeZoneOffset.inHours != 0) {
        input +=
            timeZoneOffsetToString(inValue.timeZoneOffset.inHours.toDouble());
      } else {
        precision ??= FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS;
      }
    } else if (inValue is FhirDateTimeBase) {
      return constructor<T>(inValue.input, precision);
    } else {
      exception =
          "$T cannot be constructed from '$inValue' (unsupported type).";
    }

    String? output;
    if (input != null) {
      dateTimeMap = formatDateTimeString<T>(input);
    }
    if (dateTimeMap != null) {
      if (precision == null) {
        precision = precisionFromMap(dateTimeMap);
      } else {
        output = precision.dateTimeMapToString<T>(dateTimeMap);
      }
    }

    return _constructor<T>(
      dateTimeMap,
      precision,
      exception,
      output ?? inValue,
      regexpValid,
      element,
    );
  }

  static FhirDateTimeBase fromUnits<T>({
    required int year,
    int? month,
    int? day,
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
    int? microsecond,
    num? timeZoneOffset,
    required bool isUtc,
    FhirDateTimePrecision? precision,
    Element? element,
  }) {
    final Map<String, num?> dateTimeMap = <String, num?>{
      'year': year,
      'month': month,
      'day': day,
      'hour': hour,
      'minute': minute,
      'second': second,
      'millisecond': millisecond,
      'microsecond': microsecond,
      'timeZoneOffset': timeZoneOffset,
      'isUtc': isUtc ? 0 : 1,
    };

    precision ??= precisionFromMap(dateTimeMap);

    return _constructor<T>(dateTimeMap, precision, null,
        precision.dateTimeMapToString<T>(dateTimeMap), true);
  }

  @override
  int compareTo(FhirDateTimeBase other) {
    final bool? result = _compare(Comparator.lt, other);
    if (result != null) {
      return result ? -1 : 1;
    } else {
      throw comparisonError(Comparator.lt, other);
    }
  }

  FhirDateTimeBase fromJson<T>(String json,
          [FhirDateTimePrecision? precision]) =>
      constructor<T>(json, precision);

  InvalidTypes<FhirDateTimeBase> comparisonError(
          Comparator comparator, Object o) =>
      InvalidTypes<FhirDateTimeBase>('Two values were passed to the date time '
          '"$comparator" comparison operator, but there was an error comparing them.\n'
          'Argument 1: $value (${value.runtimeType})\n'
          'Argument 2: $o (${o.runtimeType})');

  bool? _compare(Comparator comparator, Object o) {
    if (identical(this, o)) {
      switch (comparator) {
        case Comparator.eq:
          return true;
        case Comparator.gt:
          return false;
        case Comparator.gte:
          return true;
        case Comparator.lt:
          return false;
        case Comparator.lte:
          return true;
      }
    }

    final FhirDateTime lhs = constructor<FhirDateTime>(this) as FhirDateTime;

    final FhirDateTime? rhs =
        o is FhirDateTimeBase || o is DateTime || o is String
            ? constructor<FhirDateTime>(o) as FhirDateTime
            : null;

    if (rhs == null) {
      return false;
    } else if (!rhs.isValid ||
        !lhs.isValid ||
        rhs.precision == FhirDateTimePrecision.invalid ||
        lhs.precision == FhirDateTimePrecision.invalid) {
      if (comparator == Comparator.eq) {
        return false;
      } else {
        throw InvalidTypes<FhirDateTimeBase>(
            'Two values were passed to the date time '
            '"$comparator" comparison operator, '
            'they were not both valid FhirDateTimeBase types\n'
            'Argument 1: $value (${value.runtimeType}): Valid - $isValid\n'
            'Argument 2: $o (${o.runtimeType}): Valid - false}');
      }
    } else {
      final FhirDateTimePrecision lhsPrecision = lhs.precision;
      final FhirDateTimePrecision rhsPrecision = rhs.precision;
      final bool equivalentPrecisions =
          lhsPrecision.isEquivalentTo(rhsPrecision);

      bool? compareByPrecision(
          Comparator comparator, num value1, num value2, bool isPrecision) {
        switch (comparator) {
          case Comparator.eq:
            if (value1 != value2) {
              return false;
            } else if (value1 == value2 &&
                isPrecision &&
                equivalentPrecisions) {
              return true;
            }
          case Comparator.gt:
            if (value1 > value2) {
              return true;
            } else if (value1 < value2) {
              return false;
            }
          case Comparator.gte:
            if (value1 < value2) {
              return false;
            } else if (value1 > value2) {
              return true;
            } else if (value1 >= value2 &&
                isPrecision &&
                equivalentPrecisions) {
              return true;
            }
          case Comparator.lt:
            if (value1 < value2) {
              return true;
            } else if (value1 > value2) {
              return false;
            }
          case Comparator.lte:
            if (value1 > value2) {
              return false;
            } else if (value1 < value2) {
              return true;
            } else if (value1 == value2 &&
                isPrecision &&
                equivalentPrecisions) {
              return true;
            }
        }
        return null;
      }

      bool precision =
          lhsPrecision.yearsPrecision || rhsPrecision.yearsPrecision;
      bool? result =
          compareByPrecision(comparator, lhs.year, rhs.year, precision);
      if (result != null) {
        return result;
      }
      if (!precision) {
        precision =
            lhsPrecision.monthsPrecision || rhsPrecision.monthsPrecision;
        result =
            compareByPrecision(comparator, lhs.month, rhs.month, precision);
        if (result != null) {
          return result;
        }
        if (!precision) {
          int lhsDay = lhs.day;
          num lhsHour = lhs.hour - lhs.timeZoneOffset;
          int rhsDay = rhs.day;
          num rhsHour = rhs.hour - rhs.timeZoneOffset;

          if (lhsHour > 24) {
            lhsDay++;
          } else if (lhsHour < 0) {
            lhsDay--;
          }
          if (rhsHour > 24) {
            rhsDay++;
          } else if (rhsHour < 0) {
            rhsDay--;
          }

          precision = lhsPrecision.daysPrecision || rhsPrecision.daysPrecision;
          result = compareByPrecision(comparator, lhsDay, rhsDay, precision);

          if (result != null) {
            return result;
          }
          if (!precision) {
            if (lhsHour > 24) {
              lhsHour = lhsHour - 24;
            } else if (lhsHour < 0) {
              lhsHour = lhsHour + 24;
            }

            if (rhsHour > 24) {
              rhsHour = rhsHour - 24;
            } else if (rhsHour < 0) {
              rhsHour = rhsHour + 24;
            }

            precision =
                lhsPrecision.hoursPrecision || rhsPrecision.hoursPrecision;
            result =
                compareByPrecision(comparator, lhsHour, rhsHour, precision);
            if (result != null) {
              return result;
            }

            if (!precision) {
              precision = lhsPrecision.minutesPrecision ||
                  rhsPrecision.minutesPrecision;
              result = compareByPrecision(
                  comparator, lhs.minute, rhs.minute, precision);
              if (result != null) {
                return result;
              }

              if (!precision) {
                precision = lhsPrecision.secondsPrecision ||
                    rhsPrecision.secondsPrecision;
                final num lhsSecond = num.parse(
                    '${lhs.second}.${lhs.millisecond.toString().padLeft(3, '0')}');
                final num rhsSecond = num.parse(
                    '${rhs.second}.${rhs.millisecond.toString().padLeft(3, '0')}');
                result = compareByPrecision(
                    comparator, lhsSecond, rhsSecond, precision);
                if (result != null) {
                  return result;
                }
              }
            }
          }
        }
      }
    }

    switch (comparator) {
      case Comparator.eq:
        return lhs.precision.isEquivalentTo(rhs.precision) ? true : null;
      case Comparator.gt:
        return lhs.precision.isEquivalentTo(rhs.precision) ? false : null;
      case Comparator.gte:
        return lhs.precision.isEquivalentTo(rhs.precision) ? true : null;
      case Comparator.lt:
        return lhs.precision.isEquivalentTo(rhs.precision) ? false : null;
      case Comparator.lte:
        return lhs.precision.isEquivalentTo(rhs.precision) ? true : null;
    }
  }

  static FhirDateTimeBase fromMathUnits<T>(
          DateTime dateTime, FhirDateTimeBase fhirDateTimeBase) =>
      fromUnits<T>(
        year: dateTime.year,
        month: dateTime.month,
        day: dateTime.day,
        hour: dateTime.hour,
        minute: dateTime.minute,
        second: dateTime.second,
        millisecond: dateTime.millisecond,
        microsecond: dateTime.microsecond,
        timeZoneOffset: fhirDateTimeBase.timeZoneOffset,
        isUtc: fhirDateTimeBase.isUtc,
        precision: fhirDateTimeBase.precision,
      );

  static FhirDateTimeBase plus<T>(
      FhirDateTimeBase fhirDateTimeBase, ExtendedDuration o) {
    final DateTime dateTime = DateTime(
      fhirDateTimeBase.year + o.years,
      fhirDateTimeBase.month + o.months,
      fhirDateTimeBase.day + o.days,
      fhirDateTimeBase.hour + o.hours,
      fhirDateTimeBase.minute + o.minutes,
      fhirDateTimeBase.second + o.seconds,
      fhirDateTimeBase.millisecond + o.milliseconds,
      fhirDateTimeBase.microsecond + o.microseconds,
    );

    return fromMathUnits<T>(dateTime, fhirDateTimeBase);
  }

  static FhirDateTimeBase subtract<T>(
      FhirDateTimeBase fhirDateTimeBase, ExtendedDuration o) {
    final DateTime dateTime = DateTime(
      fhirDateTimeBase.year - o.years,
      fhirDateTimeBase.month - o.months,
      fhirDateTimeBase.day - o.days,
      fhirDateTimeBase.hour - o.hours,
      fhirDateTimeBase.minute - o.minutes,
      fhirDateTimeBase.second - o.seconds,
      fhirDateTimeBase.millisecond - o.milliseconds,
      fhirDateTimeBase.microsecond - o.microseconds,
    );

    return fromMathUnits<T>(dateTime, fhirDateTimeBase);
  }

  @override
  bool equals(Object other) => _compare(Comparator.eq, other) ?? false;

  bool? operator >(Object other) => _compare(Comparator.gt, other);

  bool? operator >=(Object other) => _compare(Comparator.gte, other);

  bool? operator <(Object other) => _compare(Comparator.lt, other);

  bool? operator <=(Object other) => _compare(Comparator.lte, other);

  bool? isBefore(FhirDateTimeBase other) => _compare(Comparator.lt, other);

  bool? isAfter(FhirDateTimeBase other) => _compare(Comparator.gt, other);

  bool? isSameOrBefore(FhirDateTimeBase other) =>
      _compare(Comparator.lte, other);

  bool? isSameOrAfter(FhirDateTimeBase other) =>
      _compare(Comparator.gte, other);

  bool? isAtSameMomentAs(FhirDateTimeBase other) =>
      _compare(Comparator.eq, other);

  bool? isEqual(Object other) => _compare(Comparator.eq, other);

  FhirDateTimeBase operator +(ExtendedDuration other);

  FhirDateTimeBase operator -(ExtendedDuration other);
}
