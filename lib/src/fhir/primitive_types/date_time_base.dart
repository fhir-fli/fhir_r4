import 'package:fhir_r4/fhir_r4.dart';

/// [DateTime](https://www.hl7.org/fhir/datatypes.html#dateTime)
abstract class FhirDateTimeBase extends PrimitiveType<DateTime>
    implements Comparable<FhirDateTimeBase> {
  /// Constructor
  FhirDateTimeBase({
    required this.year,
    required this.isUtc,
    this.month,
    this.day,
    this.hour,
    this.minute,
    this.second,
    this.millisecond,
    this.microsecond,
    this.timeZoneOffset,
    Element? element,
  }) : super(null, element);

  /// Year
  final int year;

  /// Month
  final int? month;

  /// Day
  final int? day;

  /// Hour
  final int? hour;

  /// Minute
  final int? minute;

  /// Second
  final int? second;

  /// Millisecond
  final int? millisecond;

  /// Microsecond
  final int? microsecond;

  /// Time zone offset
  final num? timeZoneOffset;

  /// UTC
  final bool isUtc;

  /// Getters for value and formatting
  @override
  String get fhirType => 'dateTimeBase';

  @override
  DateTime get value => valueDateTime;

  /// Returns the value as a [DateTime] object.
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

  /// Returns the value as a [String].
  String get valueString => _formattedString;

  @override
  String toString() => _formattedString;

  /// Formatting functions
  String get _formattedString {
    final buffer = StringBuffer('$year');

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
            buffer
              ..write('.')
              ..write(millisecond?.toString().padLeft(3, '0') ?? '000');
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
        '${timeZoneOffset! >= 0 ? '+' : '-'}'
        '${timeZoneOffset!.toInt().abs().toString().padLeft(2, '0')}:00',
      );
    }

    return buffer.toString();
  }

  /// Serialization
  String toIso8601String() => valueDateTime.toIso8601String();

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': valueString,
        '_value': element?.toJson(),
      };

  /// Map representation
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

  /// Comparison and Comparator logic
  @override
  int compareTo(FhirDateTimeBase other) {
    var result = _compareParts(year, other.year);
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

    final lhs = constructor<FhirDateTime>(this) as FhirDateTime;
    final rhs = o is FhirDateTimeBase || o is DateTime || o is String
        ? constructor<FhirDateTime>(o) as FhirDateTime
        : null;

    if (rhs == null) {
      return false;
    }

    final comparisonResult = _compareWithPrecision(lhs, rhs);
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

  /// Constructors and static methods
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
    Map<String, num?> dateTimeMap,
    String? exception,
    bool regexpValid, [
    Element? element,
  ]) {
    /// Ensure the year is provided
    if (dateTimeMap['year'] == null) {
      throw ArgumentError('Year is required');
    }

    /// Determine the type and construct the appropriate FhirDateTimeBase object
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
          'Month, day, hour, minute, and second are required for FhirInstant',
        );
      }
      final instant = FhirInstant.fromBase(
        year: dateTimeMap['year']!.toInt(),
        month: dateTimeMap['month']?.toInt(),
        day: dateTimeMap['day']?.toInt(),
        hour: dateTimeMap['hour']?.toInt(),
        minute: dateTimeMap['minute']?.toInt(),
        second: dateTimeMap['second']?.toInt(),
        millisecond: dateTimeMap['millisecond']?.toInt(),
        microsecond: dateTimeMap['microsecond']?.toInt(),
        timeZoneOffset: dateTimeMap['timeZoneOffset'] ?? 0,
        isUtc: dateTimeMap['isUtc'] == 0,
        element: element,
      );
      return instant;
    } else {
      throw ArgumentError('Unsupported type $T');
    }
  }

  /// Math operations
  static FhirDateTimeBase plus<T>(
    FhirDateTimeBase fhirDateTimeBase,
    ExtendedDuration o,
  ) {
    final dateTime = DateTime(
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

  /// Subtracts an [ExtendedDuration] from a [FhirDateTimeBase].
  static FhirDateTimeBase subtract<T>(
    FhirDateTimeBase fhirDateTimeBase,
    ExtendedDuration o,
  ) {
    final dateTime = DateTime(
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

  /// Helper methods (cleanup, conversions, timezone formatting)
  static String _cleanInput(String inValue) {
    var newInValue = inValue.trim();
    if (newInValue.startsWith('"') ||
        newInValue.startsWith("'") ||
        newInValue.startsWith('`')) {
      newInValue = newInValue.substring(1);
    }
    if (newInValue.endsWith('"') ||
        newInValue.endsWith("'") ||
        newInValue.endsWith('`')) {
      newInValue = newInValue.substring(0, newInValue.length - 1);
    }
    return newInValue;
  }

  static String _formatTimezone(Duration offset) {
    final hours = offset.inHours.abs().toString().padLeft(2, '0');
    final minutes = (offset.inMinutes.abs() % 60).toString().padLeft(2, '0');
    final sign = offset.isNegative ? '-' : '+';
    return '$sign$hours:$minutes';
  }

  /// Converts a [DateTime] to a [FhirDateTimeBase].
  static FhirDateTimeBase fromMathUnits<T>(
    DateTime dateTime,
    FhirDateTimeBase fhirDateTimeBase,
  ) {
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

  /// Factory constructor to create a [FhirDateTimeBase] from individual units.
  static FhirDateTimeBase fromUnits<T>({
    required int year,
    required bool isUtc,
    int? month,
    int? day,
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
    int? microsecond,
    num? timeZoneOffset,
    Element? element,
  }) {
    final dateTimeMap = <String, num?>{
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

  /// Factory constructor to create a [FhirDateTimeBase] from a [String].
  FhirDateTimeBase fromJson<T>(String json) => constructor<T>(json);

  /// Factory constructor to create a [FhirDateTimeBase] from a [DateTime].
  InvalidTypes<FhirDateTimeBase> comparisonError(
    Comparator comparator,
    Object o,
  ) =>
      InvalidTypes<FhirDateTimeBase>('Two values were passed to the date time '
          '"$comparator" comparison operator, but there was an error comparing '
          'them.\n'
          'Argument 1: $value (${value.runtimeType})\n'
          'Argument 2: $o (${o.runtimeType})');

  /// Returns the difference between this and another FhirDateTimeBase.
  Duration difference(dynamic other) {
    if (!(other is FhirDateTimeBase || other is DateTime)) {
      throw ArgumentError(
        'The difference method can only be called with another '
        'FhirDateTimeBase or a Dart DateTime',
      );
    }
    final thisDateTime = DateTime(
      year,
      month ?? 0,
      day ?? 0,
      hour ?? 0,
      minute ?? 0,
      second ?? 0,
      millisecond ?? 0,
      microsecond ?? 0,
    );
    final dateTimeBase = other is DateTime
        ? FhirDateTime.fromDateTime(other)
        : other as FhirDateTimeBase;
    final otherDateTime = DateTime(
      dateTimeBase.year,
      dateTimeBase.month ?? 0,
      dateTimeBase.day ?? 0,
      dateTimeBase.hour ?? 0,
      dateTimeBase.minute ?? 0,
      dateTimeBase.second ?? 0,
      dateTimeBase.millisecond ?? 0,
      dateTimeBase.microsecond ?? 0,
    );
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

  /// Greater than operator.
  bool? operator >(Object other) => _compare(Comparator.gt, other);

  /// Greater than or equal to operator.
  bool? operator >=(Object other) => _compare(Comparator.gte, other);

  /// Less than operator.
  bool? operator <(Object other) => _compare(Comparator.lt, other);

  /// Less than or equal to operator.
  bool? operator <=(Object other) => _compare(Comparator.lte, other);

  /// Arithmetic Operators
  bool? isBefore(FhirDateTimeBase other) => _compare(Comparator.lt, other);

  /// Subtracts an [ExtendedDuration] from a [FhirDateTimeBase].
  bool? isAfter(FhirDateTimeBase other) => _compare(Comparator.gt, other);

  /// Subtracts an [ExtendedDuration] from a [FhirDateTimeBase].
  bool? isSameOrBefore(FhirDateTimeBase other) =>
      _compare(Comparator.lte, other);

  /// Subtracts an [ExtendedDuration] from a [FhirDateTimeBase].
  bool? isSameOrAfter(FhirDateTimeBase other) =>
      _compare(Comparator.gte, other);

  /// Subtracts an [ExtendedDuration] from a [FhirDateTimeBase].
  bool? isAtSameMomentAs(FhirDateTimeBase other) =>
      _compare(Comparator.eq, other);

  /// Subtracts an [ExtendedDuration] from a [FhirDateTimeBase].
  bool? isEqual(Object other) => _compare(Comparator.eq, other);

  /// Subtracts an [ExtendedDuration] from a [FhirDateTimeBase].
  FhirDateTimeBase? operator +(ExtendedDuration other);

  /// Subtracts an [ExtendedDuration] from a [FhirDateTimeBase].
  FhirDateTimeBase? operator -(ExtendedDuration other);

  /// [DateTime](https://build.fhir.org/datatypes.html#dateTime)
  static final RegExp dateTimeExp = RegExp(
    r'(?<year>[0-9]{4})(-(?<month>0[1-9]|1[0-2])(-(?<day>0[1-9]|[1-2][0-9]|3[0-1])(T((?<hour>[01][0-9]|2[0-3])(:(?<minute>[0-5][0-9])(:(?<second>[0-5][0-9]|60)(\.(?<fraction>[0-9]+))?)?)?)?(?<timezone>Z|(\+|-)([0-1][0-9]|2[0-3])(:[0-5][0-9])?)?)?)?)?',
  );

  /// Formats a date-time string into a map of date-time parts.
  static Map<String, num?> formatDateTimeString<T>(String dateTimeString) {
    final dateTimeRegExp = dateTimeExp.firstMatch(dateTimeString);
    final fractionString = dateTimeRegExp?.namedGroup('fraction');
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
                      fractionString.substring(3, fractionString.length),
                    )
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

/// [Date](https://www.hl7.org/fhir/datatypes.html#date)
extension TimeZoneOffsetDouble on double {
  /// Converts a double to a time zone offset string.
  String get timeZoneOffsetToString {
    final offsetHours = toInt();

    /// Extract hours from offset
    final offsetMinutes = this % 1 * 60;

    /// Extract remaining minutes from offset

    final hoursString = offsetHours.abs().toString().padLeft(2, '0');
    final minutesString =
        offsetMinutes.abs().toInt().toString().padLeft(2, '0');

    return '${this < 0 ? '-' : '+'}$hoursString:$minutesString';
  }
}

/// [Date](https://www.hl7.org/fhir/datatypes.html#date)
extension TimeZoneOffsetString on String {
  /// Converts a string to a time zone offset double.
  double? get stringToTimeZoneOffset {
    final positive = !startsWith('-');
    final parts = substring(1).split(':');
    if (parts.length != 2) {
      return null;

      /// Return null if the format is not as expected
    }

    final hours = int.tryParse(parts[0]) ?? 0;
    final minutes = int.tryParse(parts[1]) ?? 0;
    final totalOffset = hours + minutes / 60.0;

    return positive ? totalOffset : -totalOffset;
  }
}
