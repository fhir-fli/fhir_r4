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
  final int? year;

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
  DateTime? get value => valueDateTime;

  /// Returns the value as a [DateTime] object.
  DateTime? get valueDateTime => year == null
      ? null
      : isUtc
          ? DateTime.utc(
              year!,
              month ?? 1,
              day ?? 1,
              hour ?? 0,
              minute ?? 0,
              second ?? 0,
              millisecond ?? 0,
              microsecond ?? 0,
            )
          : DateTime(
              year!,
              month ?? 1,
              day ?? 1,
              hour ?? 0,
              minute ?? 0,
              second ?? 0,
              millisecond ?? 0,
              microsecond ?? 0,
            );

  /// Returns the value as a [String].
  String get valueString => _formattedString ?? '';

  @override
  String toString() => _formattedString ?? '';

  /// Formatting functions
  String? get _formattedString {
    if (year == null) {
      return null;
    }
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
  String? toIso8601String() => valueDateTime?.toIso8601String();

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (valueString.isNotEmpty) 'value': valueString,
        if (element != null) '_value': element?.toJson(),
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
    if (lhs.year != null || rhs.year != null) {
      if (lhs.year == null || rhs.year == null) {
        return 0;
      }
      if (lhs.year != rhs.year) {
        return lhs.year!.compareTo(rhs.year!);
      }
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
      case Comparator.equal:
        return comparisonResult == 0;
      case Comparator.equivalent:
        return comparisonResult != 0;
      case Comparator.greaterThan:
        return comparisonResult > 0;
      case Comparator.greaterThanEqual:
        return comparisonResult >= 0;
      case Comparator.lessThan:
        return comparisonResult < 0;
      case Comparator.lessThanEqual:
        return comparisonResult <= 0;
    }
  }

  /// Constructors and static methods
  static FhirDateTimeBase constructor<T>(dynamic inValue, [Element? element]) {
    // If inValue is null, return an instance with only the element
    if (inValue == null) {
      return _constructor<T>({}, null, true, element);
    }
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
    /// Determine the type and construct the appropriate FhirDateTimeBase object
    if (T == FhirDateTime) {
      if (dateTimeMap.isEmpty) {
        return FhirDateTime.fromBase(
          year: null,
          month: null,
          day: null,
          hour: null,
          minute: null,
          second: null,
          millisecond: null,
          microsecond: null,
          timeZoneOffset: null,
          isUtc: false,
          element: element,
        );
      } else if (dateTimeMap['year'] == null) {
        throw ArgumentError('Year is required for FhirDateTime');
      }
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
      if (dateTimeMap.isEmpty) {
        return FhirDate.fromBase(
          year: null,
          month: null,
          day: null,
          isUtc: false,
          element: element,
        );
      } else if (dateTimeMap['year'] == null) {
        throw ArgumentError('Year is required for FhirDate');
      }
      return FhirDate.fromBase(
        year: dateTimeMap['year']?.toInt(),
        month: dateTimeMap['month']?.toInt(),
        day: dateTimeMap['day']?.toInt(),
        timeZoneOffset: dateTimeMap['timeZoneOffset'],
        isUtc: dateTimeMap['isUtc'] == 0,
        element: element,
      );
    } else if (T == FhirInstant) {
      if (dateTimeMap.isEmpty) {
        return FhirInstant.fromBase(
          year: null,
          month: null,
          day: null,
          hour: null,
          minute: null,
          second: null,
          millisecond: null,
          microsecond: null,
          timeZoneOffset: null,
          isUtc: false,
          element: element,
        );
      } else if (dateTimeMap['year'] == null ||
          dateTimeMap['month'] == null ||
          dateTimeMap['day'] == null ||
          dateTimeMap['hour'] == null ||
          dateTimeMap['minute'] == null ||
          dateTimeMap['second'] == null) {
        throw ArgumentError(
          'Year, month, day, hour, minute, and second '
          'are required for FhirInstant',
        );
      }
      final instant = FhirInstant.fromBase(
        year: dateTimeMap['year']!.toInt(),
        month: dateTimeMap['month']!.toInt(),
        day: dateTimeMap['day']!.toInt(),
        hour: dateTimeMap['hour']!.toInt(),
        minute: dateTimeMap['minute']!.toInt(),
        second: dateTimeMap['second']!.toInt(),
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
      fhirDateTimeBase.year ?? 0 + o.years,
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
      fhirDateTimeBase.year ?? 0 - o.years,
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

    if (year == null) {
      throw ArgumentError('The year must be set to calculate the difference');
    }

    final thisDateTime = DateTime(
      year!,
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

    if (dateTimeBase.year == null) {
      throw ArgumentError('The year must be set to calculate the difference');
    }
    final otherDateTime = DateTime(
      dateTimeBase.year!,
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
  bool operator ==(Object other) => _compare(Comparator.equal, other) ?? false;

  @override
  bool equals(Object other) => _compare(Comparator.equal, other) ?? false;

  /// Greater than operator.
  bool? operator >(Object other) => _compare(Comparator.greaterThan, other);

  /// Greater than or equal to operator.
  bool? operator >=(Object other) =>
      _compare(Comparator.greaterThanEqual, other);

  /// Less than operator.
  bool? operator <(Object other) => _compare(Comparator.lessThan, other);

  /// Less than or equal to operator.
  bool? operator <=(Object other) => _compare(Comparator.lessThanEqual, other);

  /// Arithmetic Operators
  bool? isBefore(FhirDateTimeBase other) =>
      _compare(Comparator.lessThan, other);

  /// Subtracts an [ExtendedDuration] from a [FhirDateTimeBase].
  bool? isAfter(FhirDateTimeBase other) =>
      _compare(Comparator.greaterThan, other);

  /// Subtracts an [ExtendedDuration] from a [FhirDateTimeBase].
  bool? isSameOrBefore(FhirDateTimeBase other) =>
      _compare(Comparator.lessThanEqual, other);

  /// Subtracts an [ExtendedDuration] from a [FhirDateTimeBase].
  bool? isSameOrAfter(FhirDateTimeBase other) =>
      _compare(Comparator.greaterThanEqual, other);

  /// Subtracts an [ExtendedDuration] from a [FhirDateTimeBase].
  bool? isAtSameMomentAs(FhirDateTimeBase other) =>
      _compare(Comparator.equal, other);

  /// Checks if the date-time is equal to another object.
  bool? isEqual(Object other) => _compare(Comparator.equal, other);

  /// Checks if the date-time is equivalent to another object.
  bool? isEquivalent(Object other) => _compare(Comparator.equivalent, other);

  /// Adds an [ExtendedDuration] from a [FhirDateTimeBase].
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
              // ? fractionString.length <= 6
              ? int.tryParse(
                  fractionString.substring(3, fractionString.length),
                )
              // : int.tryParse(fractionString.substring(3, 6))
              : null,
      'timeZoneOffset':
          dateTimeRegExp?.namedGroup('timezone')?.stringToTimeZoneOffset,
      'isUtc': (dateTimeRegExp?.namedGroup('timezone')?.contains('Z') ?? false)
          ? 0
          : 1,
    };
  }

  /// Returns if the date-time is valid with instant precision.
  bool get isValidInstantPrecision =>
      year != null &&
      month != null &&
      day != null &&
      hour != null &&
      minute != null &&
      second != null &&
      timeZoneOffset != null;

  /// Returns if the date-time is valid with date precision (meaning it can
  /// only have a year, month, and day)
  bool get isValidDatePrecision =>
      hasYear &&
      hour == null &&
      minute == null &&
      second == null &&
      millisecond == null;

  /// Returns if the date-time is valid with time precision.
  bool get isValidFhirDateTimePrecision => hasYear;

  /// Returns if the date-time has values at least up to year
  bool get hasYear => year != null;

  /// Returns if the date-time has values at least up to month
  bool get hasMonth => hasYear && month != null;

  /// Returns if the date-time has values at least up to day
  bool get hasDay => hasMonth && day != null;

  /// Returns if the date-time has values at lesat up to hour
  bool get hasHours => hasDay && hour != null;

  /// Returns if the date-time has values at least up to minute
  bool get hasMinutes => hasHours && minute != null;

  /// Returns if the date-time has values at least up to second
  bool get hasSeconds => hasMinutes && second != null;

  /// Returns if the date-time has values at least up to millisecond
  bool get hasMilliseconds => hasSeconds && millisecond != null;

  /// Returns if the date-time has a time zone offset
  bool get hasTimezoneOffset => timeZoneOffset != null;

  /// Returns if the date-time only precise to years
  bool get yearsPrecision =>
      hasYear &&
      month == null &&
      day == null &&
      hour == null &&
      minute == null &&
      second == null &&
      millisecond == null;

  /// Returns if the date-time only precise to months
  bool get monthsPrecision =>
      hasMonth &&
      day == null &&
      hour == null &&
      minute == null &&
      second == null &&
      millisecond == null;

  /// Returns if the date-time only precise to days
  bool get daysPrecision =>
      hasDay &&
      hour == null &&
      minute == null &&
      second == null &&
      millisecond == null;

  /// Returns if the date-time only precise to hours
  bool get hoursPrecision =>
      hasHours && minute == null && second == null && millisecond == null;

  /// Returns if the date-time only precise to minutes
  bool get minutesPrecision =>
      hasMinutes && second == null && millisecond == null;

  /// Returns if the date-time only precise to seconds
  bool get secondsPrecision => hasSeconds && millisecond == null;

  /// Returns if the passed in [FhirDateTimeBase] is equivalent to this
  /// in terms of precision
  bool isEquivalentTo(FhirDateTimeBase other) =>
      (yearsPrecision && other.yearsPrecision) ||
      (monthsPrecision && other.monthsPrecision) ||
      (daysPrecision && other.daysPrecision) ||
      (hoursPrecision && other.hoursPrecision) ||
      (minutesPrecision && other.minutesPrecision) ||
      (secondsPrecision && other.secondsPrecision);
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
