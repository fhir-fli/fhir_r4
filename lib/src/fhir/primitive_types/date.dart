import 'dart:convert';

import 'package:meta/meta.dart';

import '../fhir_primitives.dart';

@immutable
class FhirDate extends FhirDateTimeBase {
  FhirDate.fromBase({
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

  factory FhirDate(dynamic inValue, [FhirDateTimePrecision? precision]) =>
      FhirDateTimeBase.constructor<FhirDate>(
          inValue,
          inValue is DateTime
              ? precision ?? FhirDateTimePrecision.yyyy_MM_dd
              : precision) as FhirDate;

  factory FhirDate.fromJson(String json, {FhirDateTimePrecision? precision}) =>
      FhirDate(json, precision);

  factory FhirDate.fromYaml(String yaml, [FhirDateTimePrecision? precision]) =>
      FhirDate(jsonDecode(jsonEncode(yaml)), precision);

  factory FhirDate.fromUnits({
    required int year,
    int? month,
    int? day,
    bool? isUtc,
  }) =>
      FhirDateTimeBase.fromUnits<FhirDate>(
          year: year,
          month: month,
          day: day,
          isUtc: isUtc ?? false) as FhirDate;

  @override
  String get fhirType => 'date';

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

  FhirDate plus(ExtendedDuration other) =>
      FhirDateTimeBase.plus<FhirDate>(this, other) as FhirDate;

  FhirDate subtract<T>(ExtendedDuration other) =>
      FhirDateTimeBase.subtract<FhirDate>(this, other) as FhirDate;

  @override
  FhirDate operator +(ExtendedDuration other) =>
      FhirDateTimeBase.plus<FhirDate>(this, other) as FhirDate;

  @override
  FhirDate operator -(ExtendedDuration other) =>
      FhirDateTimeBase.subtract<FhirDate>(this, other) as FhirDate;

  @override
  FhirDate clone() => FhirDate.fromJson(toJson());
}
