import 'dart:convert';

import '../../../fhir_r4.dart';

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
    super.fhirType = 'instant',
    super.element,
  });

  factory FhirInstant(dynamic inValue,
          [FhirDateTimePrecision? precision, Element? element]) =>
      FhirDateTimeBase.constructor<FhirInstant>(
          inValue,
          inValue is DateTime
              ? precision ?? FhirDateTimePrecision.instant
              : precision,
          element) as FhirInstant;

  factory FhirInstant.fromJson(String json,
          {FhirDateTimePrecision? precision, Element? element}) =>
      FhirInstant(json, precision, element);

  factory FhirInstant.fromYaml(String yaml,
          [FhirDateTimePrecision? precision, Element? element]) =>
      FhirInstant(jsonDecode(jsonEncode(yaml)), precision, element);

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
    Element? element,
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
        element: element,
      ) as FhirInstant;

  @override
  String get fhirType => 'instant';

  @override
  bool equals(Object other) => isEqual(other) ?? false;

  FhirInstant plus(ExtendedDuration other) =>
      FhirDateTimeBase.plus<FhirInstant>(this, other) as FhirInstant;

  FhirInstant subtract(ExtendedDuration other) =>
      FhirDateTimeBase.subtract<FhirInstant>(this, other) as FhirInstant;

  @override
  FhirInstant operator +(ExtendedDuration other) =>
      FhirDateTimeBase.plus<FhirInstant>(this, other) as FhirInstant;

  @override
  FhirInstant operator -(ExtendedDuration other) =>
      FhirDateTimeBase.subtract<FhirInstant>(this, other) as FhirInstant;

  @override
  FhirInstant clone() => FhirInstant.fromJson(toJson());

  @override
  FhirDate setElement(String name, dynamic elementValue) {
    return FhirDate(value, precision, element?.setProperty(name, elementValue));
  }
}