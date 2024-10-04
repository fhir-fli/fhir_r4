import 'dart:convert';

import 'package:meta/meta.dart';

import '../fhir_primitives.dart';

@immutable
class FhirDateTime extends FhirDateTimeBase {
  FhirDateTime.fromBase({
    required super.isValid,
    required super.precision,
    required super.input,
    required super.parseError,
    required super.year,
    required super.month,
    required super.day,
    required super.hour,
    required super.minute,
    required super.second,
    required super.millisecond,
    required super.microsecond,
    required super.timeZoneOffset,
    required super.isUtc,
  });

  factory FhirDateTime(dynamic inValue, [FhirDateTimePrecision? precision]) =>
      FhirDateTimeBase.constructor<FhirDateTime>(
          inValue,
          inValue is DateTime
              ? precision ??
                  (inValue.isUtc
                      ? FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS_Z
                      : FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSSZZ)
              : precision) as FhirDateTime;

  factory FhirDateTime.fromJson(String json,
          {FhirDateTimePrecision? precision}) =>
      FhirDateTime(json, precision);

  factory FhirDateTime.fromYaml(String yaml,
          [FhirDateTimePrecision? precision]) =>
      FhirDateTime(jsonDecode(jsonEncode(yaml)), precision);

  factory FhirDateTime.fromUnits({
    required int year,
    int? month,
    int? day,
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
    int? microsecond,
    num? timeZoneOffset,
    bool? isUtc,
  }) =>
      FhirDateTimeBase.fromUnits<FhirDateTime>(
        year: year,
        month: month,
        day: day,
        hour: hour,
        minute: minute,
        second: second,
        millisecond: millisecond,
        microsecond: microsecond,
        timeZoneOffset: timeZoneOffset,
        isUtc: isUtc ?? false,
      ) as FhirDateTime;

  @override
  String get fhirType => 'dateTime';

  @override
  bool operator ==(Object other) => isEqual(other) ?? false;

  @override
  int get hashCode =>
      isValid.hashCode ^
      precision.hashCode ^
      input.hashCode ^
      parseError.hashCode ^
      year.hashCode ^
      month.hashCode ^
      day.hashCode ^
      hour.hashCode ^
      minute.hashCode ^
      second.hashCode ^
      millisecond.hashCode ^
      microsecond.hashCode ^
      timeZoneOffset.hashCode ^
      isUtc.hashCode;

  FhirDateTime plus(ExtendedDuration other) =>
      FhirDateTimeBase.plus<FhirDateTime>(this, other) as FhirDateTime;

  FhirDateTime subtract<T>(ExtendedDuration other) =>
      FhirDateTimeBase.subtract<FhirDateTime>(this, other) as FhirDateTime;

  @override
  FhirDateTime operator +(ExtendedDuration other) =>
      FhirDateTimeBase.plus<FhirDateTime>(this, other) as FhirDateTime;

  @override
  FhirDateTime operator -(ExtendedDuration other) =>
      FhirDateTimeBase.subtract<FhirDateTime>(this, other) as FhirDateTime;

  @override
  FhirDateTime clone() => FhirDateTime.fromJson(toJson());
}
