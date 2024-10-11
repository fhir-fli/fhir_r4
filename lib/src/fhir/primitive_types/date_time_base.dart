import 'dart:convert';

import '../../../fhir_r4.dart';

abstract class FhirDateTimeBase extends PrimitiveType<DateTime>
    implements Comparable<FhirDateTimeBase> {
  final int year;
  final int? month;
  final int? day;
  final int? hour;
  final int? minute;
  final int? second;
  final int? millisecond;
  final int? microsecond;
  final num? timeZoneOffset;
  final bool isUtc;

  // Constructor
  FhirDateTimeBase({
    required this.year,
    this.month,
    this.day,
    this.hour,
    this.minute,
    this.second,
    this.millisecond,
    this.microsecond,
    this.timeZoneOffset,
    required this.isUtc,
    super.element,
  });

  // Getters for value and formatting
  @override
  String get fhirType => 'dateTimeBase';

  @override
  DateTime get value => valueDateTime;

  DateTime get valueDateTime => isUtc
      ? DateTime.utc(
          year,
          month ?? 1,
          day ?? 1,
          hour ?? 0,
          minute ?? 0,
          second ?? 0,
          millisecond ?? 0,
          microsecond ?? 0,
        )
      : DateTime(
          year,
          month ?? 1,
          day ?? 1,
          hour ?? 0,
          minute ?? 0,
          second ?? 0,
          millisecond ?? 0,
          microsecond ?? 0,
        );

  String get valueString => _formattedString;

  @override
  String toString() => _formattedString;

  // Formatting functions
  String get _formattedString {
    final StringBuffer buffer = StringBuffer('$year');

    if (month != null) {
      buffer.write('-${month!.toString().padLeft(2, '0')}');
    }
    if (day != null) {
      buffer.write('-${day!.toString().padLeft(2, '0')}');
    }
    if (hour != null) {
      buffer.write('T${hour!.toString().padLeft(2, '0')}');
      if (minute != null) {
        buffer.write(':${minute!.toString().padLeft(2, '0')}');
        if (second != null) {
          buffer.write(':${second!.toString().padLeft(2, '0')}');
          if (millisecond != null || microsecond != null) {
            buffer.write('.');
            buffer.write(millisecond?.toString().padLeft(3, '0') ?? '000');
            if (microsecond != null) {
              buffer.write(microsecond!.toString().padLeft(3, '0'));
            }
          }
        }
      }
    }
    if (isUtc) {
      if (hour == null &&
          minute == null &&
          second == null &&
          millisecond == null) {
        buffer.write('T');
      }
      buffer.write('Z');
    } else if (timeZoneOffset != null) {
      if (hour == null &&
          minute == null &&
          second == null &&
          millisecond == null) {
        buffer.write('T');
      }
      buffer.write(
          '${timeZoneOffset! >= 0 ? '+' : '-'}${timeZoneOffset!.toInt().abs().toString().padLeft(2, '0')}:00');
    }

    return buffer.toString();
  }

  String toIso8601String() => valueDateTime.toIso8601String();
  @override
  String toJson() => _formattedString;
  @override
  String toYaml() => _formattedString;
  @override
  String toJsonString() => jsonEncode(toJson());

  Map<String, num?> toMap() => <String, num?>{
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

  // Comparison and Comparator logic
  @override
  int compareTo(FhirDateTimeBase other) {
    int? result = _compareParts(year, other.year);
    if (result != null) {
      return result;
    }

    result = _compareParts(month, other.month);
    if (result != null) {
      return result;
    }

    result = _compareParts(day, other.day);
    if (result != null) {
      return result;
    }

    result = _compareParts(hour, other.hour);
    if (result != null) {
      return result;
    }

    result = _compareParts(minute, other.minute);
    if (result != null) {
      return result;
    }

    result = _compareParts(second, other.second);
    if (result != null) {
      return result;
    }

    result = _compareParts(millisecond, other.millisecond);
    if (result != null) {
      return result;
    }

    result = _compareParts(microsecond, other.microsecond);
    if (result != null) {
      return result;
    }

    return 0;
  }

  int? _compareParts(num? part1, num? part2) {
    if (part1 == null && part2 == null) {
      return null;
    }
    if (part1 == null) {
      return -1;
    }
    if (part2 == null) {
      return 1;
    }
    return part1.compareTo(part2);
  }

  bool? _compare(Comparator comparator, Object o) {
    if (identical(this, o)) {
      return _comparatorResult(comparator, 0);
    }

    final FhirDateTime lhs = constructor<FhirDateTime>(this) as FhirDateTime;
    final FhirDateTime? rhs =
        o is FhirDateTimeBase || o is DateTime || o is String
            ? constructor<FhirDateTime>(o) as FhirDateTime
            : null;

    if (rhs == null) {
      return false;
    }

    final int comparisonResult = _compareWithPrecision(lhs, rhs);
    return _comparatorResult(comparator, comparisonResult);
  }

  int _compareWithPrecision(FhirDateTimeBase lhs, FhirDateTimeBase rhs) {
    if (lhs.year != rhs.year) {
      return lhs.year.compareTo(rhs.year);
    }

    if (lhs.month != null || rhs.month != null) {
      if (lhs.month == null || rhs.month == null) {
        return 0;
      }
      if (lhs.month != rhs.month) {
        return lhs.month!.compareTo(rhs.month!);
      }
    }

    if (lhs.day != null || rhs.day != null) {
      if (lhs.day == null || rhs.day == null) {
        return 0;
      }
      if (lhs.day != rhs.day) {
        return lhs.day!.compareTo(rhs.day!);
      }
    }

    if (lhs.hour != null || rhs.hour != null) {
      if (lhs.hour == null || rhs.hour == null) {
        return 0;
      }
      if (lhs.hour != rhs.hour) {
        return lhs.hour!.compareTo(rhs.hour!);
      }
    }

    if (lhs.minute != null || rhs.minute != null) {
      if (lhs.minute == null || rhs.minute == null) {
        return 0;
      }
      if (lhs.minute != rhs.minute) {
        return lhs.minute!.compareTo(rhs.minute!);
      }
    }

    if (lhs.second != null || rhs.second != null) {
      if (lhs.second == null || rhs.second == null) {
        return 0;
      }
      if (lhs.second != rhs.second) {
        return lhs.second!.compareTo(rhs.second!);
      }
    }

    if (lhs.millisecond != null || rhs.millisecond != null) {
      if (lhs.millisecond == null || rhs.millisecond == null) {
        return 0;
      }
      if (lhs.millisecond != rhs.millisecond) {
        return lhs.millisecond!.compareTo(rhs.millisecond!);
      }
    }

    if (lhs.microsecond != null || rhs.microsecond != null) {
      if (lhs.microsecond == null || rhs.microsecond == null) {
        return 0;
      }
      if (lhs.microsecond != rhs.microsecond) {
        return lhs.microsecond!.compareTo(rhs.microsecond!);
      }
    }

    return 0;
  }

  bool? _comparatorResult(Comparator comparator, int comparisonResult) {
    switch (comparator) {
      case Comparator.eq:
        return comparisonResult == 0;
      case Comparator.gt:
        return comparisonResult > 0;
      case Comparator.gte:
        return comparisonResult >= 0;
      case Comparator.lt:
        return comparisonResult < 0;
      case Comparator.lte:
        return comparisonResult <= 0;
    }
  }

  // Constructors and static methods
  static FhirDateTimeBase constructor<T>(dynamic inValue, [Element? element]) {
    Map<String, num?>? dateTimeMap;
    String? input;

    if (inValue is String) {
      input = _cleanInput(inValue);
    } else if (inValue is DateTime) {
      input = inValue.toIso8601String();
      input += inValue.isUtc ? 'Z' : _formatTimezone(inValue.timeZoneOffset);
    } else if (inValue is FhirDateTimeBase) {
      input = _cleanInput(inValue.valueString);
    } else {
      throw ArgumentError('Invalid input for FhirDateTimeBase');
    }

    dateTimeMap = formatDateTimeString<T>(input);

    return _constructor<T>(dateTimeMap, null, true, element);
  }

  static FhirDateTimeBase _constructor<T>(
      Map<String, num?> dateTimeMap, String? exception, bool regexpValid,
      [Element? element]) {
    // Ensure the year is provided
    if (dateTimeMap['year'] == null) {
      throw ArgumentError('Year is required');
    }

    // Determine the type and construct the appropriate FhirDateTimeBase object
    if (T == FhirDateTime) {
      return FhirDateTime.fromBase(
        year: dateTimeMap['year']!.toInt(),
        month: dateTimeMap['month']?.toInt(),
        day: dateTimeMap['day']?.toInt(),
        hour: dateTimeMap['hour']?.toInt(),
        minute: dateTimeMap['minute']?.toInt(),
        second: dateTimeMap['second']?.toInt(),
        millisecond: dateTimeMap['millisecond']?.toInt(),
        microsecond: dateTimeMap['microsecond']?.toInt(),
        timeZoneOffset: dateTimeMap['timeZoneOffset'],
        isUtc: dateTimeMap['isUtc'] == 0,
        element: element,
      );
    } else if (T == FhirDate) {
      return FhirDate.fromBase(
        year: dateTimeMap['year']!.toInt(),
        month: dateTimeMap['month']?.toInt(),
        day: dateTimeMap['day']?.toInt(),
        timeZoneOffset: dateTimeMap['timeZoneOffset'],
        isUtc: dateTimeMap['isUtc'] == 0,
        element: element,
      );
    } else if (T == FhirInstant) {
      if (dateTimeMap['month'] == null ||
          dateTimeMap['day'] == null ||
          dateTimeMap['hour'] == null ||
          dateTimeMap['minute'] == null ||
          dateTimeMap['second'] == null) {
        throw ArgumentError(
            'Month, day, hour, minute, and second are required for FhirInstant');
      }
      return FhirInstant.fromBase(
        year: dateTimeMap['year']!.toInt(),
        month: dateTimeMap['month']?.toInt(),
        day: dateTimeMap['day']?.toInt(),
        hour: dateTimeMap['hour']?.toInt(),
        minute: dateTimeMap['minute']?.toInt(),
        second: dateTimeMap['second']?.toInt(),
        millisecond: dateTimeMap['millisecond']?.toInt(),
        microsecond: dateTimeMap['microsecond']?.toInt(),
        timeZoneOffset: dateTimeMap['timeZoneOffset'],
        isUtc: dateTimeMap['isUtc'] == 0,
        element: element,
      );
    } else {
      throw ArgumentError('Unsupported type $T');
    }
  }

  // Math operations
  static FhirDateTimeBase plus<T>(
      FhirDateTimeBase fhirDateTimeBase, ExtendedDuration o) {
    final DateTime dateTime = DateTime(
      fhirDateTimeBase.year + o.years,
      fhirDateTimeBase.month ?? 0 + o.months,
      fhirDateTimeBase.day ?? 0 + o.days,
      fhirDateTimeBase.hour ?? 0 + o.hours,
      fhirDateTimeBase.minute ?? 0 + o.minutes,
      fhirDateTimeBase.second ?? 0 + o.seconds,
      fhirDateTimeBase.millisecond ?? 0 + o.milliseconds,
      fhirDateTimeBase.microsecond ?? 0 + o.microseconds,
    );
    return fromMathUnits<T>(dateTime, fhirDateTimeBase);
  }

  static FhirDateTimeBase subtract<T>(
      FhirDateTimeBase fhirDateTimeBase, ExtendedDuration o) {
    final DateTime dateTime = DateTime(
      fhirDateTimeBase.year - o.years,
      fhirDateTimeBase.month ?? 0 - o.months,
      fhirDateTimeBase.day ?? 0 - o.days,
      fhirDateTimeBase.hour ?? 0 - o.hours,
      fhirDateTimeBase.minute ?? 0 - o.minutes,
      fhirDateTimeBase.second ?? 0 - o.seconds,
      fhirDateTimeBase.millisecond ?? 0 - o.milliseconds,
      fhirDateTimeBase.microsecond ?? 0 - o.microseconds,
    );
    return fromMathUnits<T>(dateTime, fhirDateTimeBase);
  }

  // Helper methods (cleanup, conversions, timezone formatting)
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

  static String _formatTimezone(Duration offset) {
    final String hours = offset.inHours.abs().toString().padLeft(2, '0');
    final String minutes =
        (offset.inMinutes.abs() % 60).toString().padLeft(2, '0');
    final String sign = offset.isNegative ? '-' : '+';
    return '$sign$hours:$minutes';
  }

  static FhirDateTimeBase fromMathUnits<T>(
      DateTime dateTime, FhirDateTimeBase fhirDateTimeBase) {
    return fromUnits<T>(
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

    return _constructor<T>(dateTimeMap, null, true);
  }

  FhirDateTimeBase fromJson<T>(String json) => constructor<T>(json);

  InvalidTypes<FhirDateTimeBase> comparisonError(
          Comparator comparator, Object o) =>
      InvalidTypes<FhirDateTimeBase>('Two values were passed to the date time '
          '"$comparator" comparison operator, but there was an error comparing them.\n'
          'Argument 1: $value (${value.runtimeType})\n'
          'Argument 2: $o (${o.runtimeType})');

  /// Returns the difference between this and another FhirDateTimeBase.
  Duration difference(dynamic other) {
    if (!(other is FhirDateTimeBase || other is DateTime)) {
      throw ArgumentError(
          'The difference method can only be called with another FhirDateTimeBase or a Dart DateTime');
    }
    final DateTime thisDateTime = DateTime(
        year,
        month ?? 0,
        day ?? 0,
        hour ?? 0,
        minute ?? 0,
        second ?? 0,
        millisecond ?? 0,
        microsecond ?? 0);
    final FhirDateTimeBase dateTimeBase = other is DateTime
        ? FhirDateTime.fromDateTime(other)
        : other as FhirDateTimeBase;
    final DateTime otherDateTime = DateTime(
        dateTimeBase.year,
        dateTimeBase.month ?? 0,
        dateTimeBase.day ?? 0,
        dateTimeBase.hour ?? 0,
        dateTimeBase.minute ?? 0,
        dateTimeBase.second ?? 0,
        dateTimeBase.millisecond ?? 0,
        dateTimeBase.microsecond ?? 0);
    return thisDateTime.difference(otherDateTime);
  }

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => value.hashCode;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => _compare(Comparator.eq, other) ?? false;

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

  /// [DateTime](https://build.fhir.org/datatypes.html#dateTime)
  static final RegExp dateTimeExp = RegExp(
      r'(?<year>[0-9]{4})(-(?<month>0[1-9]|1[0-2])(-(?<day>0[1-9]|[1-2][0-9]|3[0-1])(T((?<hour>[01][0-9]|2[0-3])(:(?<minute>[0-5][0-9])(:(?<second>[0-5][0-9]|60)(\.(?<fraction>[0-9]+))?)?)?)?(?<timezone>Z|(\+|-)([0-1][0-9]|2[0-3])(:[0-5][0-9])?)?)?)?)?');

  static Map<String, num?> formatDateTimeString<T>(String dateTimeString) {
    final RegExpMatch? dateTimeRegExp = dateTimeExp.firstMatch(dateTimeString);
    final String? fractionString = dateTimeRegExp?.namedGroup('fraction');
    return <String, num?>{
      'year': int.tryParse(dateTimeRegExp?.namedGroup('year') ?? ''),
      'month': int.tryParse(dateTimeRegExp?.namedGroup('month') ?? ''),
      'day': int.tryParse(dateTimeRegExp?.namedGroup('day') ?? ''),
      'hour': int.tryParse(dateTimeRegExp?.namedGroup('hour') ?? ''),
      'minute': int.tryParse(dateTimeRegExp?.namedGroup('minute') ?? ''),
      'second': int.tryParse(dateTimeRegExp?.namedGroup('second') ?? ''),
      'millisecond': fractionString == null
          ? null
          : fractionString.length >= 3
              ? int.tryParse(fractionString.substring(0, 3))
              : int.tryParse(fractionString),
      'microsecond': fractionString == null
          ? null
          : fractionString.length > 3
              ? fractionString.length <= 6
                  ? int.tryParse(
                      fractionString.substring(3, fractionString.length))
                  : int.tryParse(fractionString.substring(3, 6))
              : null,
      'timeZoneOffset':
          dateTimeRegExp?.namedGroup('timezone')?.stringToTimeZoneOffset,
      'isUtc': (dateTimeRegExp?.namedGroup('timezone')?.contains('Z') ?? false)
          ? 0
          : 1,
    };
  }
}

extension TimeZoneOffsetDouble on double {
  String get timeZoneOffsetToString {
    final int offsetHours = toInt(); // Extract hours from offset
    final double offsetMinutes =
        this % 1 * 60; // Extract remaining minutes from offset

    final String hoursString = offsetHours.abs().toString().padLeft(2, '0');
    final String minutesString =
        offsetMinutes.abs().toInt().toString().padLeft(2, '0');

    return '${this < 0 ? '-' : '+'}$hoursString:$minutesString';
  }
}

extension TimeZoneOffsetString on String {
  double? get stringToTimeZoneOffset {
    final bool positive = !startsWith('-');
    final List<String> parts = substring(1).split(':');
    if (parts.length != 2) {
      return null; // Return null if the format is not as expected
    }

    final int hours = int.tryParse(parts[0]) ?? 0;
    final int minutes = int.tryParse(parts[1]) ?? 0;
    final double totalOffset = hours + minutes / 60.0;

    return positive ? totalOffset : -totalOffset;
  }
}
