import 'dart:convert';

import 'package:meta/meta.dart';

import '../fhir_primitives.dart';

@immutable
class FhirInstant extends FhirDateTimeBase {
  FhirInstant.fromBase({
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

  factory FhirInstant(dynamic inValue, [FhirDateTimePrecision? precision]) =>
      FhirDateTimeBase.constructor<FhirInstant>(
          inValue,
          inValue is DateTime
              ? precision ?? FhirDateTimePrecision.instant
              : precision) as FhirInstant;

  factory FhirInstant.fromJson(String json,
          {FhirDateTimePrecision? precision}) =>
      FhirInstant(json, precision);

  factory FhirInstant.fromYaml(String yaml,
          [FhirDateTimePrecision? precision]) =>
      FhirInstant(jsonDecode(jsonEncode(yaml)), precision);

  factory FhirInstant.fromUnits({
    required int year,
    required int month,
    required int day,
    required int hour,
    required int minute,
    required int second,
    int? millisecond,
    int? microsecond,
    required num timeZoneOffset,
    bool? isUtc,
  }) =>
      FhirDateTimeBase.fromUnits<FhirInstant>(
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
      ) as FhirInstant;

  @override
  String get fhirType => 'instant';

  @override
  bool operator ==(Object other) => isEqual(other) ?? false;

  @override
  int get hashCode =>
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

  FhirInstant plus(ExtendedDuration other) =>
      FhirDateTimeBase.plus<FhirInstant>(this, other) as FhirInstant;

  FhirInstant subtract<T>(ExtendedDuration other) =>
      FhirDateTimeBase.subtract<FhirInstant>(this, other) as FhirInstant;

  @override
  FhirInstant operator +(ExtendedDuration other) =>
      FhirDateTimeBase.plus<FhirInstant>(this, other) as FhirInstant;

  @override
  FhirInstant operator -(ExtendedDuration other) =>
      FhirDateTimeBase.subtract<FhirInstant>(this, other) as FhirInstant;

  @override
  FhirInstant clone() => FhirInstant.fromJson(toJson());
}
