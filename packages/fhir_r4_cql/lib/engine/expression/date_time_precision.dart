import 'package:json_annotation/json_annotation.dart';

/// Enum to specify the units of precision available for temporal operations.
enum CqlDateTimePrecision {
  @JsonValue('Year')
  year,
  @JsonValue('Month')
  month,
  @JsonValue('Week')
  week,
  @JsonValue('Day')
  day,
  @JsonValue('Hour')
  hour,
  @JsonValue('Minute')
  minute,
  @JsonValue('Second')
  second,
  @JsonValue('Millisecond')
  millisecond,
}

extension CqlDateTimePrecisionExtension on CqlDateTimePrecision {
  static const _jsonValues = {
    CqlDateTimePrecision.year: 'Year',
    CqlDateTimePrecision.month: 'Month',
    CqlDateTimePrecision.week: 'Week',
    CqlDateTimePrecision.day: 'Day',
    CqlDateTimePrecision.hour: 'Hour',
    CqlDateTimePrecision.minute: 'Minute',
    CqlDateTimePrecision.second: 'Second',
    CqlDateTimePrecision.millisecond: 'Millisecond',
  };

  static const _jsonValuesReversed = {
    'year': CqlDateTimePrecision.year,
    'month': CqlDateTimePrecision.month,
    'week': CqlDateTimePrecision.week,
    'day': CqlDateTimePrecision.day,
    'hour': CqlDateTimePrecision.hour,
    'minute': CqlDateTimePrecision.minute,
    'second': CqlDateTimePrecision.second,
    'millisecond': CqlDateTimePrecision.millisecond,
    'years': CqlDateTimePrecision.year,
    'months': CqlDateTimePrecision.month,
    'weeks': CqlDateTimePrecision.week,
    'days': CqlDateTimePrecision.day,
    'hours': CqlDateTimePrecision.hour,
    'minutes': CqlDateTimePrecision.minute,
    'seconds': CqlDateTimePrecision.second,
    'milliseconds': CqlDateTimePrecision.millisecond,
  };

  static CqlDateTimePrecision fromJson(String? json) => json == null
      ? CqlDateTimePrecision.year
      : _jsonValuesReversed[json.toLowerCase()] ?? CqlDateTimePrecision.year;

  String toJson() => _jsonValues[this]!;
}
