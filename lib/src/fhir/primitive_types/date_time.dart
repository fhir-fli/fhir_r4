import 'dart:convert';

import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

extension FhirDateTimeExtension on DateTime {
  FhirDateTime get toFhirDateTime => FhirDateTime.fromDateTime(this);
}

extension FhirDateTimeStringExtension on String {
  FhirDateTime get toFhirDateTime => FhirDateTime.fromString(this);
}

class FhirDateTime extends FhirDateTimeBase {
  FhirDateTime.fromBase({
    required super.precision,
    required super.input,
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
    super.element,
  });

  // Now restricting the constructor to only accept String or DateTime
  factory FhirDateTime.fromString(String inValue,
          [FhirDateTimePrecision? precision, Element? element]) =>
      FhirDateTimeBase.constructor<FhirDateTime>(inValue, precision, element)
          as FhirDateTime;

  factory FhirDateTime.fromDateTime(DateTime inValue,
          [FhirDateTimePrecision? precision, Element? element]) =>
      FhirDateTimeBase.constructor<FhirDateTime>(
          inValue.toIso8601String(),
          inValue.isUtc
              ? precision ?? FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS_Z
              : precision ?? FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSSZZ,
          element) as FhirDateTime;

  static FhirDateTime? tryParse(dynamic value) {
    try {
      if (value is DateTime) {
        return FhirDateTime.fromDateTime(value);
      } else if (value is String) {
        return FhirDateTime.fromString(value);
      }
    } catch (e) {
      return null;
    }
    return null;
  }

  factory FhirDateTime.fromJson(dynamic json,
      {FhirDateTimePrecision? precision, Element? element}) {
    if (json is String) {
      return FhirDateTime.fromString(json, precision, element);
    } else {
      throw const FormatException(
          'Invalid input for FhirDateTime: Input must be a String');
    }
  }

  factory FhirDateTime.fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirDateTime.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))));
    } else if (yaml is YamlMap) {
      return FhirDateTime.fromJson(jsonDecode(jsonEncode(yaml)));
    } else {
      throw FormatException('Invalid Yaml format for FhirDateTime: "$yaml".');
    }
  }

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
  String get fhirType => 'dateTime';

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
    return FhirDateTime.fromDateTime(
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
    return FhirDateTime.fromDateTime(
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
