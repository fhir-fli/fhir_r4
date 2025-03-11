part of 'primitive_types.dart';

/// [ExtendedDuration] represents a time duration, breaking it down
/// into different units (years, months, weeks, days, etc.).
class ExtendedDuration {
  /// Creates an [ExtendedDuration] object.
  ///
  /// Default values are set to zero for all duration units.
  ExtendedDuration({
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
    int isNegative(int value) => value.isNegative ? -1 : 1;
    // Microseconds to milliseconds conversion.
    milliseconds += microseconds ~/ 1000;
    microseconds = microseconds.abs() % 1000 * isNegative(microseconds);

    // Milliseconds to seconds conversion.
    seconds += milliseconds ~/ 1000;
    milliseconds = milliseconds.abs() % 1000 * isNegative(milliseconds);

    // Seconds to minutes conversion.
    minutes += seconds ~/ 60;
    seconds = seconds.abs() % 60 * isNegative(seconds);

    // Minutes to hours conversion.
    hours += minutes ~/ 60;
    minutes = minutes.abs() % 60 * isNegative(minutes);

    // Hours to days conversion.
    days += hours ~/ 24;
    hours = hours.abs() % 24 * isNegative(hours);

    // Days to weeks conversion.
    weeks += days ~/ 7;
    days = days.abs() % 7 * isNegative(days);

    // Weeks to months conversion.
    months += weeks ~/ 4; // Approximate conversion
    weeks = weeks.abs() % 4 * isNegative(weeks);

    // Months to years conversion.
    years += months ~/ 12;
    months = months.abs() % 12 * isNegative(months);
  }

  /// Factory constructor to create an [ExtendedDuration] from a [Duration].
  factory ExtendedDuration.fromDuration(Duration duration) {
    var microseconds = duration.inMicroseconds;
    var milliseconds = microseconds ~/ 1000;
    microseconds %= 1000;

    var seconds = milliseconds ~/ 1000;
    milliseconds %= 1000;

    var minutes = seconds ~/ 60;
    seconds %= 60;

    final hours = minutes ~/ 60;
    minutes %= 60;

    final totalDays = duration.inDays;
    final years = totalDays ~/ 365;
    final remainingDays = totalDays % 365;

    return ExtendedDuration(
      years: years,
      days: remainingDays,
      hours: hours,
      minutes: minutes,
      seconds: seconds,
      milliseconds: milliseconds,
      microseconds: microseconds,
    );
  }

  /// Factory constructor to create an [ExtendedDuration] from a string input.
  ///
  /// The string is parsed using regular expressions for various units.
  factory ExtendedDuration.fromString(String value) {
    var years = 0;
    var months = 0;
    var days = 0;
    var hours = 0;
    var minutes = 0;
    var seconds = 0;
    var milliseconds = 0;

    final yearMatch = yearRegex.firstMatch(value);
    if (yearMatch != null) {
      years = int.parse(yearMatch.group(1)!);
    }

    final monthMatch = monthRegex.firstMatch(value);
    if (monthMatch != null) {
      months = int.parse(monthMatch.group(1)!);
    }

    final weekMatch = weekRegex.firstMatch(value);
    if (weekMatch != null) {
      days += int.parse(weekMatch.group(1)!) * 7;
    }

    final dayMatch = dayRegex.firstMatch(value);
    if (dayMatch != null) {
      days += int.parse(dayMatch.group(1)!);
    }

    final hourMatch = hourRegex.firstMatch(value);
    if (hourMatch != null) {
      hours += int.parse(hourMatch.group(1)!);
    }

    final minuteMatch = minuteRegex.firstMatch(value);
    if (minuteMatch != null) {
      minutes += int.parse(minuteMatch.group(1)!);
    }

    final secondMatch = secondRegex.firstMatch(value);
    if (secondMatch != null) {
      seconds += int.parse(secondMatch.group(1)!);
    }

    final millisecondMatch = millisecondRegex.firstMatch(value);
    if (millisecondMatch != null) {
      milliseconds += int.parse(millisecondMatch.group(1)!);
    }

    return ExtendedDuration(
      years: years,
      months: months,
      days: days,
      hours: hours,
      minutes: minutes,
      seconds: seconds,
      milliseconds: milliseconds,
    );
  }

  /// The number of years in the duration.
  int years;

  /// The number of months in the duration.
  int months;

  /// The number of weeks in the duration.
  int weeks;

  /// The number of days in the duration.
  int days;

  /// The number of hours in the duration.
  int hours;

  /// The number of minutes in the duration.
  int minutes;

  /// The number of seconds in the duration.
  int seconds;

  /// The number of milliseconds in the duration.
  int milliseconds;

  /// The number of microseconds in the duration.
  int microseconds;

  /// Converts [ExtendedDuration] into a standard [Duration] object.
  ///
  /// This approximates months and years into days, assuming:
  /// - 1 month = 30 days
  /// - 1 year = 365 days
  Duration toStandardDuration() {
    return Duration(
      days: days +
          (weeks * 7) +
          (months * 30) +
          (years * 365), // Approximate conversion
      hours: hours,
      minutes: minutes,
      seconds: seconds,
      milliseconds: milliseconds,
      microseconds: microseconds,
    );
  }

  /// Regular expression to match years in a string.
  static final RegExp yearRegex = RegExp(r'(\d+)\s*year(s)?');

  /// Regular expression to match months in a string.
  static final RegExp monthRegex = RegExp(r'(\d+)\s*month(s)?');

  /// Regular expression to match weeks in a string.
  static final RegExp weekRegex = RegExp(r'(\d+)\s*week(s)?');

  /// Regular expression to match days in a string.
  static final RegExp dayRegex = RegExp(r'(\d+)\s*day(s)?');

  /// Regular expression to match hours in a string.
  static final RegExp hourRegex = RegExp(r'(\d+)\s*hour(s)?');

  /// Regular expression to match minutes in a string.
  static final RegExp minuteRegex = RegExp(r'(\d+)\s*minute(s)?');

  /// Regular expression to match seconds in a string.
  static final RegExp secondRegex = RegExp(r'(\d+)\s*second(s)?');

  /// Regular expression to match milliseconds in a string.
  static final RegExp millisecondRegex = RegExp(r'(\d+)\s*millisecond(s)?');

  /// Returns a string representation of the [ExtendedDuration].
  @override
  String toString() => <String>[
        if (years != 0) '$years years',
        if (months != 0) '$months months',
        if (weeks != 0) '$weeks weeks',
        if (days != 0) '$days days',
        if (hours != 0) '$hours hours',
        if (minutes != 0) '$minutes minutes',
        if (seconds != 0) '$seconds seconds',
        if (milliseconds != 0) '$milliseconds milliseconds',
        if (microseconds != 0) '$microseconds microseconds',
      ].join(', ');

  /// Creates an [ExtendedDuration] object from a number of years.
  static int signedModulo(int value, int divisor) {
    final mod = value % divisor;
    return value.isNegative ? mod - divisor : mod;
  }
}

/// Extension to convert [Duration] to [ExtendedDuration].
extension DurationExtension on Duration {
  /// Converts [Duration] to an [ExtendedDuration] object.
  ExtendedDuration toExtendedDuration() => ExtendedDuration.fromDuration(this);
}
