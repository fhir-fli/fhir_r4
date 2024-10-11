import 'dart:convert';

import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

extension FhirDateExtension on DateTime {
  FhirDate get toFhirDate => FhirDate.fromDateTime(this);
}

extension FhirDateStringExtension on String {
  FhirDate get toFhirDate => FhirDate.fromString(this);
}

class FhirDate extends FhirDateTimeBase {
  FhirDate.fromBase({
    required super.year,
    required super.month,
    required super.day,
    super.timeZoneOffset,
    required super.isUtc,
    super.element,
  });

  factory FhirDate.fromString(String inValue, [Element? element]) =>
      FhirDateTimeBase.constructor<FhirDate>(inValue, element) as FhirDate;

  factory FhirDate.fromDateTime(DateTime inValue, [Element? element]) =>
      FhirDateTimeBase.constructor<FhirDate>(inValue, element) as FhirDate;

  static FhirDate? tryParse(dynamic value) {
    try {
      if (value is DateTime) {
        return FhirDate.fromDateTime(value);
      } else if (value is String) {
        return FhirDate.fromString(value);
      }
    } catch (e) {
      return null;
    }
    return null;
  }

  factory FhirDate.fromJson(dynamic json, {Element? element}) {
    if (json is String) {
      return FhirDate.fromString(json, element);
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
  String get fhirType => 'date';

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => value.hashCode;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

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
        value, element?.setProperty(name, elementValue));
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
