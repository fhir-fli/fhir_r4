import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

extension FhirDateExtension on DateTime {
  FhirDate get toFhirDate => FhirDate.fromDateTime(this);
}

extension FhirDateStringExtension on String {
  FhirDate get toFhirDate => FhirDate.fromString(this);
}

@Entity()
class FhirDate extends FhirDateTimeBase {
  FhirDate.fromBase({
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

  factory FhirDate.fromString(String inValue,
          [FhirDateTimePrecision? precision, Element? element]) =>
      FhirDateTimeBase.constructor<FhirDate>(inValue, precision, element)
          as FhirDate;

  factory FhirDate.fromDateTime(DateTime inValue,
          [FhirDateTimePrecision? precision, Element? element]) =>
      FhirDateTimeBase.constructor<FhirDate>(
              inValue, precision ?? FhirDateTimePrecision.yyyy_MM_dd, element)
          as FhirDate;

  factory FhirDate.fromJson(dynamic json,
      {FhirDateTimePrecision? precision, Element? element}) {
    if (json is String) {
      return FhirDate.fromString(json, precision, element);
    } else {
      throw const FormatException(
          'Invalid input for FhirDate: Input must be a String');
    }
  }

  factory FhirDate.fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirDate.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))));
    } else if (yaml is YamlMap) {
      return FhirDate.fromJson(jsonDecode(jsonEncode(yaml)));
    } else {
      throw FormatException('Invalid Yaml format for FhirDate: "$yaml".');
    }
  }

  factory FhirDate.fromUnits({
    required int year,
    int? month,
    int? day,
    bool? isUtc,
    Element? element,
  }) =>
      FhirDateTimeBase.fromUnits<FhirDate>(
          year: year,
          month: month,
          day: day,
          isUtc: isUtc ?? false,
          element: element) as FhirDate;

  @override
  @Id()
  int dbId = 0;

  @override
  String get fhirType => 'date';

  @override
  String toJson() => input.toString();

  @override
  bool equals(Object other) => isEqual(other) ?? false;

  FhirDate plus(ExtendedDuration other) =>
      FhirDateTimeBase.plus<FhirDate>(this, other) as FhirDate;

  FhirDate subtract(ExtendedDuration other) =>
      FhirDateTimeBase.subtract<FhirDate>(this, other) as FhirDate;

  @override
  FhirDate operator +(ExtendedDuration other) =>
      FhirDateTimeBase.plus<FhirDate>(this, other) as FhirDate;

  @override
  FhirDate operator -(ExtendedDuration other) =>
      FhirDateTimeBase.subtract<FhirDate>(this, other) as FhirDate;

  @override
  FhirDate clone() => FhirDate.fromJson(toJson());

  @override
  FhirDate setElement(String name, dynamic elementValue) {
    return FhirDate.fromDateTime(
        value, precision, element?.setProperty(name, elementValue));
  }

  @override
  FhirDate copyWith({
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return FhirDate.fromDateTime(
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
