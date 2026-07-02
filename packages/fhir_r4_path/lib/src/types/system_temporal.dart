// ignore_for_file: public_member_api_docs

/// Model-independent FHIRPath temporal value types (`System.Date`,
/// `System.DateTime`, `System.Time`) and their comparison semantics.
///
/// FHIRPath's date/time comparison rules — partial-precision comparison that
/// yields "empty" (null) when two operands have differing precision, plus
/// timezone normalisation — are defined by the FHIRPath specification, not by
/// FHIR. They apply to date/time *literals* (`@2014-01-25`, `@T12:00`) that
/// carry no FHIR data at all, so the engine must own them without depending on
/// any FHIR model. This is the port of `FhirDateTimeBase`'s logic into the
/// model-independent engine layer (mirrors Firely's `P.DateTime` and
/// fhirpath.js's `FP_DateTime`). Behaviour is preserved exactly.

/// The comparison kinds used by the FHIRPath relational/equality operators.
enum TemporalComparator {
  equal,
  equivalent,
  greaterThan,
  greaterThanEqual,
  lessThan,
  lessThanEqual,
}

/// A duration broken into calendar units, normalised on construction. Port of
/// the FHIR `ExtendedDuration` (only the parts the engine needs).
class TemporalDuration {
  TemporalDuration({
    this.years = 0,
    this.months = 0,
    this.weeks = 0,
    this.days = 0,
    this.hours = 0,
    this.minutes = 0,
    this.seconds = 0,
    this.milliseconds = 0,
    this.microseconds = 0,
  }) {
    int signOf(int value) => value.isNegative ? -1 : 1;
    milliseconds += microseconds ~/ 1000;
    microseconds = microseconds.abs() % 1000 * signOf(microseconds);
    seconds += milliseconds ~/ 1000;
    milliseconds = milliseconds.abs() % 1000 * signOf(milliseconds);
    minutes += seconds ~/ 60;
    seconds = seconds.abs() % 60 * signOf(seconds);
    hours += minutes ~/ 60;
    minutes = minutes.abs() % 60 * signOf(minutes);
    days += hours ~/ 24;
    hours = hours.abs() % 24 * signOf(hours);
    weeks += days ~/ 7;
    days = days.abs() % 7 * signOf(days);
    months += weeks ~/ 4;
    weeks = weeks.abs() % 4 * signOf(weeks);
    years += months ~/ 12;
    months = months.abs() % 12 * signOf(months);
  }

  int years;
  int months;
  int weeks;
  int days;
  int hours;
  int minutes;
  int seconds;
  int milliseconds;
  int microseconds;
}

/// A model-independent FHIRPath `System.DateTime` / `System.Date` value.
class SystemDateTime {
  const SystemDateTime({
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
  });

  final int? year;
  final int? month;
  final int? day;
  final int? hour;
  final int? minute;
  final int? second;
  final int? millisecond;
  final String? microsecond;
  final num? timeZoneOffset;
  final bool isUtc;

  static final RegExp _exp = RegExp(
    r'(?<year>[0-9]{4})(-(?<month>0[1-9]|1[0-2])(-(?<day>0[1-9]|[1-2][0-9]|3[0-1])(T((?<hour>[01][0-9]|2[0-3])(:(?<minute>[0-5][0-9])(:(?<second>[0-5][0-9]|60)(\.(?<fraction>[0-9]+))?)?)?)?(?<timezone>Z|(\+|-)([0-1][0-9]|2[0-3])(:[0-5][0-9])?)?)?)?)?',
  );

  /// Parses a FHIR/FHIRPath date-time string into components (full precision,
  /// i.e. `FhirDateTime` semantics — extract whatever the string carries).
  static SystemDateTime? parse(String? input) {
    if (input == null) {
      return null;
    }
    final match = _exp.firstMatch(input);
    if (match == null) {
      return null;
    }
    final year = int.tryParse(match.namedGroup('year') ?? '');
    if (year == null) {
      return null;
    }
    final fraction = match.namedGroup('fraction');
    int? millisecond;
    String? microsecond;
    if (fraction != null) {
      millisecond = fraction.length >= 3
          ? int.tryParse(fraction.substring(0, 3))
          : int.tryParse(fraction.padRight(3, '0'));
      if (fraction.length > 3) {
        microsecond = fraction.substring(3, fraction.length);
      }
    }
    final tz = match.namedGroup('timezone');
    final tzOffset = _timeZoneOffset(tz);
    final isUtc =
        (tz?.contains('Z') ?? false) || ((tzOffset ?? 0) == 0 && tz != null);
    return SystemDateTime(
      year: year,
      month: int.tryParse(match.namedGroup('month') ?? ''),
      day: int.tryParse(match.namedGroup('day') ?? ''),
      hour: int.tryParse(match.namedGroup('hour') ?? ''),
      minute: int.tryParse(match.namedGroup('minute') ?? ''),
      second: int.tryParse(match.namedGroup('second') ?? ''),
      millisecond: millisecond,
      microsecond: microsecond,
      timeZoneOffset: tzOffset,
      isUtc: isUtc,
    );
  }

  static double? _timeZoneOffset(String? tz) {
    if (tz == null) {
      return null;
    }
    final positive = !tz.startsWith('-');
    final parts = tz.substring(1).split(':');
    if (parts.length != 2) {
      return null;
    }
    final hours = int.tryParse(parts[0]) ?? 0;
    final minutes = int.tryParse(parts[1]) ?? 0;
    final total = hours + minutes / 60.0;
    return positive ? total : -total;
  }

  /// Adds [o], defaulting missing parts to the FHIR-logical minimums and using
  /// Dart's [DateTime] for rollover, while preserving this value's precision.
  SystemDateTime plus(TemporalDuration o) {
    final micros =
        int.tryParse(microsecond?.padRight(6, '0') ?? '0') ?? 0;
    final y = (year ?? 0) + o.years;
    final m = (month ?? 1) + o.months;
    final d = (day ?? 1) + o.days;
    final h = (hour ?? 0) + o.hours;
    final min = (minute ?? 0) + o.minutes;
    final s = (second ?? 0) + o.seconds;
    final ms = (millisecond ?? 0) + o.milliseconds;
    final us = micros + o.microseconds;
    final dt = isUtc
        ? DateTime.utc(y, m, d, h, min, s, ms, us)
        : DateTime(y, m, d, h, min, s, ms, us);
    return SystemDateTime(
      year: dt.year,
      month: month != null ? dt.month : null,
      day: day != null ? dt.day : null,
      hour: hour != null ? dt.hour : null,
      minute: minute != null ? dt.minute : null,
      second: second != null ? dt.second : null,
      millisecond: millisecond != null ? dt.millisecond : null,
      microsecond: microsecond != null ? dt.microsecond.toString() : null,
      timeZoneOffset: timeZoneOffset,
      isUtc: isUtc,
    );
  }

  /// Serialises this value back to a canonical FHIR/FHIRPath date-time string,
  /// emitting only the components present (partial precision preserved). Port
  /// of `FhirDateTimeBase._buildString`; returns null when [year] is absent.
  String? toDateTimeString() {
    if (year == null) {
      return null;
    }
    final buffer = StringBuffer(year!.toString().padLeft(4, '0'));
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
      if (timeZoneOffset != null && timeZoneOffset == 0) {
        buffer.write('+00:00');
      } else {
        buffer.write('Z');
      }
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

  int? _compareWithPrecision(SystemDateTime rhs) {
    final lhs = this;
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
      final lhsMs = lhs.millisecond == null || lhs.millisecond == 0
          ? '000'
          : lhs.millisecond!.toString().padLeft(3, '0');
      final rhsMs = rhs.millisecond == null || rhs.millisecond == 0
          ? '000'
          : rhs.millisecond!.toString().padLeft(3, '0');
      final lhsUs = lhs.microsecond?.padRight(6, '0') ?? '000000';
      final rhsUs = rhs.microsecond?.padRight(6, '0') ?? '000000';
      final lhsPartial = int.parse('$lhsMs$lhsUs');
      final rhsPartial = int.parse('$rhsMs$rhsUs');
      return lhsPartial.compareTo(rhsPartial);
    }
    return 0;
  }

  static bool? _comparatorResult(TemporalComparator comparator, int? result) {
    if (result == null) {
      return null;
    }
    switch (comparator) {
      case TemporalComparator.equal:
      case TemporalComparator.equivalent:
        return result == 0;
      case TemporalComparator.greaterThan:
        return result > 0;
      case TemporalComparator.greaterThanEqual:
        return result >= 0;
      case TemporalComparator.lessThan:
        return result < 0;
      case TemporalComparator.lessThanEqual:
        return result <= 0;
    }
  }

  /// Compares two date-time strings under FHIRPath semantics: normalises each
  /// to a common frame via its timezone offset, then compares with precision.
  /// Returns null when the result is indeterminate (differing precision).
  static bool? compareStrings(
    String? lhsStr,
    String? rhsStr,
    TemporalComparator comparator,
  ) {
    final lhsParsed = parse(lhsStr);
    if (lhsParsed == null) {
      return null;
    }
    final rhsParsed = parse(rhsStr);

    final lhsTz = TemporalDuration(
      hours: (lhsParsed.timeZoneOffset?.toInt() ?? 0) * -1,
      minutes: ((lhsParsed.timeZoneOffset ?? 0) % 1 * 60).toInt() * -1,
    );
    final lhs = lhsParsed.plus(lhsTz);

    if (rhsParsed == null) {
      return false;
    }
    final rhsTz = TemporalDuration(
      hours: (rhsParsed.timeZoneOffset?.toInt() ?? 0) * -1,
      minutes: ((rhsParsed.timeZoneOffset ?? 0) % 1 * 60).toInt() * -1,
    );
    final rhs = rhsParsed.plus(rhsTz);

    return _comparatorResult(comparator, lhs._compareWithPrecision(rhs));
  }
}

/// A model-independent FHIRPath `System.Time` value. Time comparison is a
/// component-wise comparison of the `:`-separated parts, yielding null when the
/// two operands have a differing number of components.
class SystemTime {
  static bool? compareStrings(
    String? lhsStr,
    String? rhsStr,
    TemporalComparator comparator,
  ) {
    if (lhsStr == null || rhsStr == null) {
      return null;
    }
    final lhsParts = lhsStr.split(':');
    final rhsParts = rhsStr.split(':');
    if (lhsParts.length != rhsParts.length) {
      return null;
    }
    for (var i = 0; i < lhsParts.length; i++) {
      final lhsVal = double.parse(lhsParts[i]);
      final rhsVal = double.parse(rhsParts[i]);
      switch (comparator) {
        case TemporalComparator.equal:
        case TemporalComparator.equivalent:
          if (lhsVal != rhsVal) {
            return false;
          }
        case TemporalComparator.greaterThan:
        case TemporalComparator.greaterThanEqual:
          if (lhsVal < rhsVal) {
            return false;
          }
          if (lhsVal > rhsVal) {
            return true;
          }
        case TemporalComparator.lessThan:
        case TemporalComparator.lessThanEqual:
          if (lhsVal > rhsVal) {
            return false;
          }
          if (lhsVal < rhsVal) {
            return true;
          }
      }
    }
    return comparator == TemporalComparator.equal ||
        comparator == TemporalComparator.equivalent ||
        comparator == TemporalComparator.greaterThanEqual ||
        comparator == TemporalComparator.lessThanEqual;
  }
}
