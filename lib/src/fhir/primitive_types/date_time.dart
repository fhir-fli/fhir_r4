import 'dart:convert';

import '../../../fhir_r4.dart';

extension FhirDateTimeExtension on DateTime {
  FhirDateTime get toFhirDateTime => FhirDateTime(this);
}

extension FhirDateTimeStringExtension on String {
  FhirDateTime get toFhirDateTime => FhirDateTime(this);
}

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
    super.fhirType = 'dateTime',
    super.element,
  });

  factory FhirDateTime(dynamic inValue,
          [FhirDateTimePrecision? precision, Element? element]) =>
      FhirDateTimeBase.constructor<FhirDateTime>(
          inValue,
          inValue is DateTime
              ? precision ??
                  (inValue.isUtc
                      ? FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS_Z
                      : FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSSZZ)
              : precision,
          element) as FhirDateTime;

  factory FhirDateTime.fromJson(String json,
          {FhirDateTimePrecision? precision, Element? element}) =>
      FhirDateTime(json, precision, element);

  factory FhirDateTime.fromYaml(String yaml,
          [FhirDateTimePrecision? precision, Element? element]) =>
      FhirDateTime(jsonDecode(jsonEncode(yaml)), precision, element);

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
    Element? element,
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
        element: element,
      ) as FhirDateTime;

  @override
  String toJson() => input.toString();

  @override
  bool equals(Object other) => isEqual(other) ?? false;

  FhirDateTime plus(ExtendedDuration other) =>
      FhirDateTimeBase.plus<FhirDateTime>(this, other) as FhirDateTime;

  FhirDateTime subtract(ExtendedDuration other) =>
      FhirDateTimeBase.subtract<FhirDateTime>(this, other) as FhirDateTime;

  @override
  FhirDateTime operator +(ExtendedDuration other) =>
      FhirDateTimeBase.plus<FhirDateTime>(this, other) as FhirDateTime;

  @override
  FhirDateTime operator -(ExtendedDuration other) =>
      FhirDateTimeBase.subtract<FhirDateTime>(this, other) as FhirDateTime;

  @override
  FhirDateTime clone() => FhirDateTime.fromJson(toJson());

  @override
  FhirDateTime setElement(String name, dynamic elementValue) {
    return FhirDateTime(
        value, precision, element?.setProperty(name, elementValue));
  }

  @override
  FhirDateTime copyWith({
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return FhirDateTime(
      value,
      precision,
      element?.copyWith(
        userData: userData,
        formatCommentsPre: formatCommentsPre,
        formatCommentsPost: formatCommentsPost,
        annotations: annotations,
        children: children,
        namedChildren: namedChildren,
      ),
    );
  }
}
