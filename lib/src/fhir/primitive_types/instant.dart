import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

extension FhirInstantExtension on DateTime {
  FhirInstant get toFhirInstant => FhirInstant.fromDateTime(this);
}

extension FhirInstantStringExtension on String {
  FhirInstant get toFhirInstant => FhirInstant.fromString(this);
}

@Entity()
class FhirInstant extends FhirDateTimeBase {
  FhirInstant.fromBase({
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

  // Constructor restricted to String or DateTime inputs
  factory FhirInstant.fromString(String inValue,
          [FhirDateTimePrecision? precision, Element? element]) =>
      FhirDateTimeBase.constructor<FhirInstant>(inValue, precision, element)
          as FhirInstant;

  factory FhirInstant.fromDateTime(DateTime inValue,
          [FhirDateTimePrecision? precision, Element? element]) =>
      FhirDateTimeBase.constructor<FhirInstant>(inValue.toIso8601String(),
          precision ?? FhirDateTimePrecision.instant, element) as FhirInstant;

  static FhirInstant? tryParse(dynamic value) {
    try {
      if (value is DateTime) {
        return FhirInstant.fromDateTime(value);
      } else if (value is String) {
        return FhirInstant.fromString(value);
      }
    } catch (e) {
      return null;
    }
    return null;
  }

  factory FhirInstant.fromJson(dynamic json,
      {FhirDateTimePrecision? precision, Element? element}) {
    if (json is String) {
      return FhirInstant.fromString(json, precision, element);
    } else {
      throw const FormatException(
          'Invalid input for FhirInstant: Input must be a String');
    }
  }

  factory FhirInstant.fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirInstant.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))));
    } else if (yaml is YamlMap) {
      return FhirInstant.fromJson(jsonDecode(jsonEncode(yaml)));
    } else {
      throw FormatException('Invalid Yaml format for FhirInstant: "$yaml".');
    }
  }

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
  @Id()
  int dbId = 0;

  @override
  String get fhirType => 'instant';

  @override
  String toJson() => input.toString();

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
  FhirInstant setElement(String name, dynamic elementValue) {
    return FhirInstant.fromDateTime(
        value, precision, element?.setProperty(name, elementValue));
  }

  @override
  FhirInstant copyWith({
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return FhirInstant.fromBase(
      precision: precision,
      input: input,
      year: year,
      month: month,
      day: day,
      hour: hour,
      minute: minute,
      second: second,
      millisecond: millisecond,
      microsecond: microsecond,
      timeZoneOffset: timeZoneOffset,
      isUtc: isUtc,
      element: element?.copyWith(
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
