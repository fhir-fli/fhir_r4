part of 'primitive_types.dart';

/// [DateTime](https://www.hl7.org/fhir/datatypes.html#dateTime)
abstract class FhirDateTimeBase extends PrimitiveType
    implements Comparable<FhirDateTimeBase> {
  /// Private underscore constructor with the same parameters and logic,
  /// but no longer public. We pass [validatedValue] into `super._(value: ...)`
  /// and then run `_validateDateTimeComponents()`.
  const FhirDateTimeBase._({
    /// The string representation of the date-time once it's validated.
    required super.valueString,
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
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  })  : assert(
          (year != null && year >= 1 && year <= 9999) || element != null,
          'Invalid year: $year. Must be between 1 and 9999.',
        ),
        assert(
          month == null || (month >= 1 && month <= 12),
          'Invalid month: $month. Must be between 1 and 12.',
        ),
        assert(
          day == null || month != null,
          'Day cannot be provided without a month.',
        ),
        assert(
          day == null ||
              (day >= 1 &&
                  day <=
                      (month == 2 &&
                              year != null &&
                              (year % 4 == 0 &&
                                  (year % 100 != 0 || year % 400 == 0))
                          ? 29
                          : month == 0
                              ? 0
                              : month == 2
                                  ? 28
                                  : month == 4 ||
                                          month == 6 ||
                                          month == 9 ||
                                          month == 11
                                      ? 30
                                      : 31)),
          'Invalid day: $day for year $year and month $month.',
        ),
        assert(
          hour == null || day != null,
          'Hour cannot be provided without a day.',
        ),
        assert(
          hour == null || (hour >= 0 && hour <= 23),
          'Invalid hour: $hour. Must be between 0 and 23.',
        ),
        assert(
          minute == null || hour != null,
          'Minute cannot be provided without an hour.',
        ),
        assert(
          minute == null || (minute >= 0 && minute <= 59),
          'Invalid minute: $minute. Must be between 0 and 59.',
        ),
        assert(
          second == null || minute != null,
          'Second cannot be provided without a minute.',
        ),
        assert(
          second == null || (second >= 0 && second <= 59),
          'Invalid second: $second. Must be between 0 and 59.',
        ),
        assert(
          millisecond == null || second != null,
          'Millisecond cannot be provided without a second.',
        ),
        assert(
          millisecond == null || (millisecond >= 0 && millisecond <= 999),
          'Invalid millisecond: $millisecond. Must be between 0 and 999.',
        ),
        assert(
          microsecond == null || millisecond != null,
          'Microsecond cannot be provided without a millisecond.',
        ),
        assert(
          microsecond == null || microsecond.length <= 6,
          'Invalid microsecond: $microsecond. Must be a valid integer string '
          'with at most 6 digits.',
        ),
        assert(
          timeZoneOffset == null ||
              (timeZoneOffset <= 14 && timeZoneOffset >= -14),
          'Invalid time zone offset: $timeZoneOffset. '
          'Must be between -14 and 14.',
        ),
        super._();

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
  final String? microsecond;

  /// Time zone offset
  final num? timeZoneOffset;

  /// UTC
  final bool isUtc;

  /// Getters for value and formatting
  @override
  String get fhirType => 'dateTimeBase';

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
              _convertMicrosecondToInt(microsecond),
            )
          : DateTime(
              year!,
              month ?? 1,
              day ?? 1,
              hour ?? 0,
              minute ?? 0,
              second ?? 0,
              millisecond ?? 0,
              _convertMicrosecondToInt(microsecond),
            );

  @override
  String toString() => _formattedString.toString();

  /// Retrieves the primitive value of the object.
  @override
  String? get primitiveValue => valueString;

  /// Formatting functions
  String? get _formattedString => _buildString(
        year,
        month,
        day,
        hour,
        minute,
        second,
        millisecond,
        microsecond,
        timeZoneOffset,
        isUtc,
      );

  static String? _formattedStringFromMap(Map<String, dynamic> map) =>
      _buildString(
        map['year'] as num?,
        map['month'] as num?,
        map['day'] as num?,
        map['hour'] as num?,
        map['minute'] as num?,
        map['second'] as num?,
        map['millisecond'] as num?,
        map['microsecond'] as String?,
        map['timeZoneOffset'] as num?,
        map['isUtc'] == 0,
      );

  static String? _buildString(
    num? year,
    num? month,
    num? day,
    num? hour,
    num? minute,
    num? second,
    num? millisecond,
    String? microsecond,
    num? timeZoneOffset,
    bool isUtc,
  ) {
    if (year == null) {
      return null;
    }
    final buffer = StringBuffer(year.toString().padLeft(4, '0'));

    if (month != null) {
      buffer.write('-${month.toString().padLeft(2, '0')}');
    }
    if (day != null) {
      buffer.write('-${day.toString().padLeft(2, '0')}');
    }
    if (hour != null) {
      buffer.write('T${hour.toString().padLeft(2, '0')}');
      if (minute != null) {
        buffer.write(':${minute.toString().padLeft(2, '0')}');
        if (second != null) {
          buffer.write(':${second.toString().padLeft(2, '0')}');
          if (millisecond != null || microsecond != null) {
            buffer
              ..write('.')
              ..write(millisecond?.toString().padLeft(3, '0') ?? '000');
            if (microsecond != null) {
              buffer.write(microsecond);
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
        '${timeZoneOffset >= 0 ? '+' : '-'}'
        '${timeZoneOffset.toInt().abs().toString().padLeft(2, '0')}:00',
      );
    }

    return buffer.toString();
  }

  /// Serialization
  String? toIso8601String() => valueDateTime?.toIso8601String();

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (valueString?.isNotEmpty ?? false) 'value': valueString,
        if (element != null) '_value': element?.toJson(),
      };

  /// Map representation
  Map<String, dynamic> toMap() => <String, Object?>{
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
    if (result != 0) return result;

    result = _compareParts(month, other.month);
    if (result != 0) return result;

    result = _compareParts(day, other.day);
    if (result != 0) return result;

    result = _compareParts(hour, other.hour);
    if (result != 0) return result;

    result = _compareParts(minute, other.minute);
    if (result != 0) return result;

    result = _compareParts(second, other.second);
    if (result != 0) return result;

    result = _compareParts(millisecond, other.millisecond);
    if (result != 0) return result;

    return _compareMicroseconds(microsecond, other.microsecond);
  }

  int _compareParts(num? part1, num? part2) {
    if (part1 == null && part2 == null) return 0; // Both unspecified
    if (part1 == null) return -1; // Only part1 unspecified
    if (part2 == null) return 1; // Only part2 unspecified
    return part1.compareTo(part2); // Compare specified parts
  }

  int _compareMicroseconds(String? micro1, String? micro2) {
    if (micro1 == null && micro2 == null) return 0; // Both unspecified
    if (micro1 == null) return -1; // Only micro1 unspecified
    if (micro2 == null) return 1; // Only micro2 unspecified

    // Normalize both strings to 6 characters for comparison
    final paddedMicro1 = micro1.trim().padRight(6, '0');
    final paddedMicro2 = micro2.trim().padRight(6, '0');

    return paddedMicro1.compareTo(paddedMicro2);
  }

  bool? _compare(Comparator comparator, Object o) {
    if (identical(this, o)) {
      return _comparatorResult(comparator, 0);
    }

    var lhs = constructor<FhirDateTime>(input: this) as FhirDateTime;
    var rhs = o is FhirDateTimeBase
        ? constructor<FhirDateTime>(input: o.valueString) as FhirDateTime
        : o is DateTime || o is String
            ? constructor<FhirDateTime>(input: o) as FhirDateTime
            : null;
    final lhsTimeZoneOffset = ExtendedDuration(
      hours: (lhs.timeZoneOffset?.toInt() ?? 0) * -1,
      minutes: (((lhs.timeZoneOffset ?? 0) % 1 * 60).toInt()) * -1,
    );
    final rhsTimeZoneOffset = ExtendedDuration(
      hours: (rhs?.timeZoneOffset?.toInt() ?? 0) * -1,
      minutes: (((rhs?.timeZoneOffset ?? 0) % 1 * 60).toInt()) * -1,
    );

    lhs = lhs + lhsTimeZoneOffset;
    rhs = rhs == null ? null : rhs + rhsTimeZoneOffset;
    lhs = FhirDateTime.fromUnits(
      year: lhs.year!,
      month: lhs.month,
      day: lhs.day,
      hour: lhs.hour,
      minute: lhs.minute,
      second: lhs.second,
      millisecond: lhs.millisecond,
      microsecond:
          lhs.microsecond == null ? null : int.tryParse(lhs.microsecond!),
    );
    rhs = rhs == null
        ? null
        : FhirDateTime.fromUnits(
            year: rhs.year!,
            month: rhs.month,
            day: rhs.day,
            hour: rhs.hour,
            minute: rhs.minute,
            second: rhs.second,
            millisecond: rhs.millisecond,
            microsecond:
                rhs.microsecond == null ? null : int.tryParse(rhs.microsecond!),
          );

    if (rhs == null) {
      return false;
    }

    final comparisonResult = _compareWithPrecision(lhs, rhs);
    return _comparatorResult(comparator, comparisonResult);
  }

  int? _compareWithPrecision(FhirDateTimeBase lhs, FhirDateTimeBase rhs) {
    if (lhs.year != null || rhs.year != null) {
      if (lhs.year == null || rhs.year == null) {
        return null;
      }
      if (lhs.year != rhs.year) {
        return lhs.year!.compareTo(rhs.year!);
      }
    }

    if (lhs.month != null || rhs.month != null) {
      if (lhs.month == null || rhs.month == null) {
        return null;
      }
      if (lhs.month != rhs.month) {
        return lhs.month!.compareTo(rhs.month!);
      }
    }

    if (lhs.day != null || rhs.day != null) {
      if (lhs.day == null || rhs.day == null) {
        return null;
      }
      if (lhs.day != rhs.day) {
        return lhs.day!.compareTo(rhs.day!);
      }
    }
    if (lhs.hour != null || rhs.hour != null) {
      if (lhs.hour == null || rhs.hour == null) {
        return null;
      }
      if (lhs.hour != rhs.hour) {
        return lhs.hour!.compareTo(rhs.hour!);
      }
    }

    if (lhs.minute != null || rhs.minute != null) {
      if (lhs.minute == null || rhs.minute == null) {
        return null;
      }
      if (lhs.minute != rhs.minute) {
        return lhs.minute!.compareTo(rhs.minute!);
      }
    }

    if (lhs.second != null || rhs.second != null) {
      if (lhs.second == null || rhs.second == null) {
        return null;
      }
      if (lhs.second != rhs.second) {
        return lhs.second!.compareTo(rhs.second!);
      }
    }

    if (lhs.millisecond != null || rhs.millisecond != null) {
      final lhsMilliseconds = lhs.millisecond == null || lhs.millisecond == 0
          ? '000'
          : lhs.millisecond!.toString().padLeft(3, '0');
      final rhsMilliseconds = rhs.millisecond == null || rhs.millisecond == 0
          ? '000'
          : rhs.millisecond!.toString().padLeft(3, '0');
      final lhsMicroseconds = lhs.microsecond?.padRight(6, '0') ?? '000000';
      final rhsMicroseconds = rhs.microsecond?.padRight(6, '0') ?? '000000';
      final lhsPartialSeconds = int.parse('$lhsMilliseconds$lhsMicroseconds');
      final rhsPartialSeconds = int.parse('$rhsMilliseconds$rhsMicroseconds');
      return lhsPartialSeconds.compareTo(rhsPartialSeconds);
    }

    return 0;
  }

  bool? _comparatorResult(Comparator comparator, int? comparisonResult) {
    if (comparisonResult == null) {
      return null;
    }
    switch (comparator) {
      case Comparator.equal:
        return comparisonResult == 0;
      case Comparator.equivalent:
        return comparisonResult == 0;
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
  static FhirDateTimeBase constructor<T>({
    dynamic input,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    // If input is null, return an instance with only the element
    if (input == null) {
      return _constructor<T>({}, null, true, element);
    }
    Map<String, dynamic>? dateTimeMap;
    String? value;

    if (input is String) {
      value = _cleanInput(input);
    } else if (input is DateTime) {
      value = input.toIso8601String();
      value += input.isUtc ? 'Z' : _formatTimezone(input.timeZoneOffset);
    } else if (input is FhirDateTimeBase && input.valueString != null) {
      value = _cleanInput(input.valueString!);
    } else {
      throw ArgumentError('Invalid input for FhirDateTimeBase');
    }

    dateTimeMap = formatDateTimeString<T>(value);

    return _constructor<T>(
      dateTimeMap,
      null,
      true,
      element,
      id,
      extension_,
      disallowExtensions,
    );
  }

  static FhirDateTimeBase _constructor<T>(
    Map<String, dynamic> dateTimeMap,
    String? exception,
    bool regexpValid, [
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  ]) {
    /// Determine the type and construct the appropriate FhirDateTimeBase object
    if (T == FhirDateTime) {
      if (dateTimeMap.isEmpty) {
        return FhirDateTime.fromBase(
          valueString: null,
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
          disallowExtensions: disallowExtensions,
        );
      } else if (dateTimeMap['year'] == null) {
        throw ArgumentError('Year is required for FhirDateTime');
      }
      return FhirDateTime.fromBase(
        valueString: _formattedStringFromMap(dateTimeMap),
        year: dateTimeMap['year']! as int,
        month: dateTimeMap['month'] as int?,
        day: dateTimeMap['day'] as int?,
        hour: dateTimeMap['hour'] as int?,
        minute: dateTimeMap['minute'] as int?,
        second: dateTimeMap['second'] as int?,
        millisecond: dateTimeMap['millisecond'] as int?,
        microsecond: dateTimeMap['microsecond'] as String?,
        timeZoneOffset: dateTimeMap['timeZoneOffset'] as num?,
        isUtc: dateTimeMap['isUtc'] == 0,
        element: element,
        disallowExtensions: disallowExtensions,
      );
    } else if (T == FhirDate) {
      if (dateTimeMap.isEmpty) {
        return FhirDate.fromBase(
          valueString: null,
          year: null,
          month: null,
          day: null,
          isUtc: false,
          element: element,
          disallowExtensions: disallowExtensions,
        );
      } else if (dateTimeMap['year'] == null) {
        throw ArgumentError('Year is required for FhirDate');
      }
      return FhirDate.fromBase(
        valueString: _formattedStringFromMap(dateTimeMap),
        year: dateTimeMap['year'] as int?,
        month: dateTimeMap['month'] as int?,
        day: dateTimeMap['day'] as int?,
        timeZoneOffset: dateTimeMap['timeZoneOffset'] as num?,
        isUtc: dateTimeMap['isUtc'] == 0,
        element: element,
        disallowExtensions: disallowExtensions,
      );
    } else if (T == FhirInstant) {
      if (dateTimeMap.isEmpty) {
        return FhirInstant.fromBase(
          valueString: null,
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
          disallowExtensions: disallowExtensions,
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
        valueString: _formattedStringFromMap(dateTimeMap),
        year: dateTimeMap['year']! as int,
        month: dateTimeMap['month']! as int,
        day: dateTimeMap['day']! as int,
        hour: dateTimeMap['hour']! as int,
        minute: dateTimeMap['minute']! as int,
        second: dateTimeMap['second']! as int,
        millisecond: dateTimeMap['millisecond'] as int?,
        microsecond: dateTimeMap['microsecond'] as String?,
        timeZoneOffset: dateTimeMap['timeZoneOffset'] as num? ?? 0,
        isUtc: dateTimeMap['isUtc'] == 0,
        element: element,
        disallowExtensions: disallowExtensions,
      );
      return instant;
    } else {
      throw ArgumentError('Unsupported type $T');
    }
  }

  /// Math operations
  ///
  /// Adds an [ExtendedDuration] to a [FhirDateTimeBase]
  /// and returns a new instance.
  static FhirDateTimeBase plus<T>(
    FhirDateTimeBase base,
    ExtendedDuration o,
  ) {
    final micros = int.tryParse(
          base.microsecond?.padRight(6, '0') ?? '0',
        ) ??
        0;

    // sum up, defaulting missing parts to the FHIR‐logical minimums
    final y = (base.year ?? 0) + o.years;
    final m = (base.month ?? 1) + o.months;
    final d = (base.day ?? 1) + o.days;
    final h = (base.hour ?? 0) + o.hours;
    final min = (base.minute ?? 0) + o.minutes;
    final s = (base.second ?? 0) + o.seconds;
    final ms = (base.millisecond ?? 0) + o.milliseconds;
    final us = micros + o.microseconds;

    final dt = base.isUtc
        ? DateTime.utc(y, m, d, h, min, s, ms, us)
        : DateTime(y, m, d, h, min, s, ms, us);

    return fromUnits<T>(
      year: dt.year,
      month: base.month != null ? dt.month : null,
      day: base.day != null ? dt.day : null,
      hour: base.hour != null ? dt.hour : null,
      minute: base.minute != null ? dt.minute : null,
      second: base.second != null ? dt.second : null,
      millisecond: base.millisecond != null ? dt.millisecond : null,
      microsecond: base.microsecond != null ? dt.microsecond : null,
      timeZoneOffset: base.timeZoneOffset,
      isUtc: base.isUtc,
    );
  }

  /// Subtracts an [ExtendedDuration] from a [FhirDateTimeBase]
  /// and returns a new instance.
  static FhirDateTimeBase minus<T>(
    FhirDateTimeBase base,
    ExtendedDuration o,
  ) =>
      plus<T>(
        base,
        ExtendedDuration(
          years: -o.years,
          months: -o.months,
          days: -o.days,
          hours: -o.hours,
          minutes: -o.minutes,
          seconds: -o.seconds,
          milliseconds: -o.milliseconds,
          microseconds: -o.microseconds,
        ),
      );

  /// Helper methods (cleanup, conversions, timezone formatting)
  static String _cleanInput(String input) {
    var newInValue = input.trim();
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
    final dateTimeMap = <String, Object?>{
      'year': year,
      'month': month,
      'day': day,
      'hour': hour,
      'minute': minute,
      'second': second,
      'millisecond': millisecond,
      'microsecond': microsecond?.toString(),
      'timeZoneOffset': timeZoneOffset,
      'isUtc': isUtc ? 0 : 1,
    };

    return _constructor<T>(dateTimeMap, null, true);
  }

  /// Factory constructor to create a [FhirDateTimeBase] from a [String].
  FhirDateTimeBase fromJson<T>(String json) => constructor<T>(input: json);

  /// Factory constructor to create a [FhirDateTimeBase] from a [DateTime].
  InvalidTypes<FhirDateTimeBase> comparisonError(
    Comparator comparator,
    Object o,
  ) =>
      InvalidTypes<FhirDateTimeBase>(
        message: 'Two values were passed to the date time '
            '"$comparator" comparison operator, but there was an error '
            'comparing them.\n'
            'Argument 1: $valueString ($runtimeType)\n'
            'Argument 2: $o (${o.runtimeType})',
      );

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
      microsecond == null
          ? 0
          : ((num.tryParse(microsecond!) ?? 0) / 1000).toInt(),
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
      dateTimeBase.microsecond == null
          ? 0
          : ((num.tryParse(dateTimeBase.microsecond!) ?? 0) / 1000).toInt(),
    );
    return thisDateTime.difference(otherDateTime);
  }

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => valueString.hashCode;

  @override
  bool equalsDeep(FhirBase? other) =>
      other is FhirDateTimeBase &&
      other.valueString == valueString &&
      ((element == null && other.element == null) ||
          (element != null && element!.equalsDeep(other.element)));

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
  static Map<String, dynamic> formatDateTimeString<T>(String dateTimeString) {
    // Match the input string against the regex
    final match = dateTimeExp.firstMatch(dateTimeString);
    if (match == null) {
      throw ArgumentError(
        'Invalid date-time string (no match): $dateTimeString',
      );
    } else if (T == FhirInstant) {
      if (match.namedGroup('year') == null ||
          match.namedGroup('month') == null ||
          match.namedGroup('day') == null ||
          match.namedGroup('hour') == null ||
          match.namedGroup('minute') == null ||
          match.namedGroup('second') == null) {
        throw ArgumentError(
          'Invalid date-time string (FhirInstant): $dateTimeString',
        );
      }
    }

    // Extract the fractional seconds part
    final fractionString = match.namedGroup('fraction');
    int? millisecond;
    String? microsecond;

    if (fractionString != null) {
      if (fractionString.length >= 3) {
        millisecond = int.tryParse(fractionString.substring(0, 3));
      } else {
        millisecond = int.tryParse(fractionString.padRight(3, '0'));
      }

      if (fractionString.length > 3) {
        microsecond = fractionString.substring(3, fractionString.length);
      }
    }

    return <String, Object?>{
      'year': int.tryParse(match.namedGroup('year') ?? ''),
      'month': int.tryParse(match.namedGroup('month') ?? ''),
      'day': int.tryParse(match.namedGroup('day') ?? ''),
      'hour':
          T == FhirDate ? null : int.tryParse(match.namedGroup('hour') ?? ''),
      'minute':
          T == FhirDate ? null : int.tryParse(match.namedGroup('minute') ?? ''),
      'second':
          T == FhirDate ? null : int.tryParse(match.namedGroup('second') ?? ''),
      'millisecond': T == FhirDate ? null : millisecond,
      'microsecond': T == FhirDate ? null : microsecond,
      'timeZoneOffset': T == FhirDate
          ? null
          : match.namedGroup('timezone')?.stringToTimeZoneOffset,
      'isUtc': (match.namedGroup('timezone')?.contains('Z') ?? false) ? 0 : 1,
    };
  }

  // Helper function to normalize and convert microseconds
  int _convertMicrosecondToInt(String? microsecond) {
    if (microsecond == null) {
      return 0;
    }

    // Normalize to 6 digits
    var normalizedMicrosecond = microsecond.padRight(6, '0');
    if (normalizedMicrosecond.length > 6) {
      normalizedMicrosecond = normalizedMicrosecond.substring(0, 6);
    }

    // Convert to integer
    return (int.tryParse(normalizedMicrosecond) ?? 0) ~/ 1000;
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
  bool isPrecisionEquivalentTo(FhirDateTimeBase other) =>
      (yearsPrecision && other.yearsPrecision) ||
      (monthsPrecision && other.monthsPrecision) ||
      (daysPrecision && other.daysPrecision) ||
      (hoursPrecision && other.hoursPrecision) ||
      (minutesPrecision && other.minutesPrecision) ||
      (secondsPrecision && other.secondsPrecision);

  /// Adjusts the precision of the date-time to the passed-in precision.
  FhirDateTimeBase adjustToPrecision(TemporalPrecisionEnum precision) {
    /// Helper to validate and provide default values for missing precision
    /// parts.
    int defaultOrError(String fieldName, int? value, int defaultValue) {
      if (value == null) {
        return defaultValue; // Fill missing precision with a default value.
      }
      return value;
    }

    // Handle different subclasses of FhirDateTimeBase.
    if (this is FhirDate) {
      if (precision == TemporalPrecisionEnum.year) {
        return FhirDate.fromUnits(
          year: year!,
          isUtc: isUtc,
          element: element,
        );
      } else if (precision == TemporalPrecisionEnum.month) {
        return FhirDate.fromUnits(
          year: year!,
          month: defaultOrError('month', month, 1),
          isUtc: isUtc,
          element: element,
        );
      } else if (precision == TemporalPrecisionEnum.day) {
        return FhirDate.fromUnits(
          year: year!,
          month: defaultOrError('month', month, 1),
          day: defaultOrError('day', day, 1),
          isUtc: isUtc,
          element: element,
        );
      }
      throw ArgumentError('FhirDate cannot support precision beyond day.');
    }

    if (this is FhirDateTime) {
      return FhirDateTime.fromUnits(
        year: year!,
        month: precision.index >= TemporalPrecisionEnum.month.index
            ? defaultOrError('month', month, 1)
            : null,
        day: precision.index >= TemporalPrecisionEnum.day.index
            ? defaultOrError('day', day, 1)
            : null,
        hour: precision.index >= TemporalPrecisionEnum.hour.index
            ? defaultOrError('hour', hour, 0)
            : null,
        minute: precision.index >= TemporalPrecisionEnum.minute.index
            ? defaultOrError('minute', minute, 0)
            : null,
        second: precision.index >= TemporalPrecisionEnum.second.index
            ? defaultOrError('second', second, 0)
            : null,
        millisecond: precision == TemporalPrecisionEnum.millisecond
            ? defaultOrError('millisecond', millisecond, 0)
            : null,
        isUtc: isUtc,
        element: element,
      );
    }

    if (this is FhirInstant) {
      if (precision.index < TemporalPrecisionEnum.second.index) {
        throw ArgumentError('FhirInstant requires at least second precision.');
      }
      return FhirInstant.fromUnits(
        year: year!,
        month: defaultOrError('month', month, 1),
        day: defaultOrError('day', day, 1),
        hour: defaultOrError('hour', hour, 0),
        minute: defaultOrError('minute', minute, 0),
        second: defaultOrError('second', second, 0),
        millisecond: precision == TemporalPrecisionEnum.millisecond
            ? defaultOrError('millisecond', millisecond, 0)
            : null,
        isUtc: isUtc,
        element: element,
        timeZoneOffset: timeZoneOffset ?? 0,
      );
    }

    throw UnsupportedError('Unknown FhirDateTimeBase subclass.');
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

/// [Date](https://www.hl7.org/fhir/datatypes.html#date)
enum TemporalPrecisionEnum {
  /// Year
  year(CalendarField.year),

  /// Month
  month(CalendarField.month),

  /// Day
  day(CalendarField.day),

  /// Hour
  hour(CalendarField.hour),

  /// Minute
  minute(CalendarField.minute),

  /// Second
  second(CalendarField.second),

  /// Millisecond
  millisecond(CalendarField.millisecond);

  const TemporalPrecisionEnum(this.calendarConstant);

  /// Calendar constant
  final CalendarField calendarConstant;

  /// Add a specific amount of time based on the precision
  DateTime add(DateTime input, int amount) {
    switch (this) {
      case TemporalPrecisionEnum.year:
        return DateTime(
          input.year + amount,
          input.month,
          input.day,
          input.hour,
          input.minute,
          input.second,
          input.millisecond,
        );
      case TemporalPrecisionEnum.month:
        return DateTime(
          input.year,
          input.month + amount,
          input.day,
          input.hour,
          input.minute,
          input.second,
          input.millisecond,
        );
      case TemporalPrecisionEnum.day:
        return DateTime(
          input.year,
          input.month,
          input.day + amount,
          input.hour,
          input.minute,
          input.second,
          input.millisecond,
        );
      case TemporalPrecisionEnum.hour:
        return input.add(Duration(hours: amount));
      case TemporalPrecisionEnum.minute:
        return input.add(Duration(minutes: amount));
      case TemporalPrecisionEnum.second:
        return input.add(Duration(seconds: amount));
      case TemporalPrecisionEnum.millisecond:
        return input.add(Duration(milliseconds: amount));
    }
  }

  /// Subtract a specific amount of time based on the precision
  int getCalendarConstant() => calendarConstant.value;

  /// Given the standard string representation - YYYY-MM-DDTHH:NN:SS.SSS -
  /// how long is the string for the stated precision?
  int stringLength() {
    switch (this) {
      case TemporalPrecisionEnum.year:
        return 4;
      case TemporalPrecisionEnum.month:
        return 7;
      case TemporalPrecisionEnum.day:
        return 10;
      case TemporalPrecisionEnum.hour:
        return 13;
      case TemporalPrecisionEnum.minute:
        return 16;
      case TemporalPrecisionEnum.second:
        return 19;
      case TemporalPrecisionEnum.millisecond:
        return 23;
    }
  }
}

/// [Date](https://www.hl7.org/fhir/datatypes.html#date)
enum CalendarField {
  /// Year
  year(0),

  /// Month
  month(1),

  /// Day
  day(2),

  /// Hour
  hour(3),

  /// Minute
  minute(4),

  /// Second
  second(5),

  /// Millisecond
  millisecond(6);

  const CalendarField(this.value);

  /// Value
  final int value;
}
