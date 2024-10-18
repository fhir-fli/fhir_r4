import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// Extension to convert a [DateTime] to a [FhirInstant].
extension FhirInstantExtension on DateTime {
  /// Converts a [DateTime] to a [FhirInstant].
  FhirInstant get toFhirInstant => FhirInstant.fromDateTime(this);
}

/// Extension to convert a [String] to a [FhirInstant].
extension FhirInstantStringExtension on String {
  /// Converts a [String] to a [FhirInstant].
  FhirInstant get toFhirInstant => FhirInstant.fromString(this);
}

/// [FhirInstant] represents an instant in time as defined by the FHIR spec.
class FhirInstant extends FhirDateTimeBase {
  /// Factory constructor to create a [FhirInstant] from individual units.
  factory FhirInstant.fromUnits({
    required int year,
    required int month,
    required int day,
    required int hour,
    required int minute,
    required int second,
    required num timeZoneOffset,
    int? millisecond,
    int? microsecond,
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

  /// Constructor to create a [FhirInstant] from base values.
  FhirInstant.fromBase({
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

  /// Factory constructor restricted to String or DateTime inputs.
  factory FhirInstant.fromString(String? inValue, [Element? element]) =>
      inValue == null && element == null
          ? throw ArgumentError('A value or element is required')
          : FhirDateTimeBase.constructor<FhirInstant>(inValue, element)
              as FhirInstant;

  /// Factory constructor to create a [FhirInstant] from a [DateTime].
  factory FhirInstant.fromDateTime(DateTime? inValue, [Element? element]) =>
      inValue == null && element == null
          ? throw ArgumentError('A value or element is required')
          : FhirDateTimeBase.constructor<FhirInstant>(inValue, element)
              as FhirInstant;

  /// Factory constructor to create a [FhirInstantTime] from a JSON input.
  ///
  /// The input must be a [String], otherwise throws a [FormatException].
  factory FhirInstant.fromJson(Map<String, dynamic> json) {
    final value = json['value'];
    final element = json['_value'] is Map<String, dynamic>
        ? Element.fromJson(json['_value'] as Map<String, dynamic>)
        : null;

    if (value is String) {
      return FhirInstant.fromString(value, element);
    } else if (value is DateTime) {
      return FhirInstant.fromDateTime(value, element);
    } else if (value == null) {
      return FhirInstant.fromString(null, element);
    } else {
      throw const FormatException(
        'Invalid input for FhirInstant: Input must be a String?',
      );
    }
  }

  /// Factory constructor to create [FhirInstant] from YAML
  static FhirInstant fromYaml(dynamic yaml) => yaml is String
      ? FhirInstant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        )
      : yaml is YamlMap
          ? FhirInstant.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            )
          : throw ArgumentError(
              'FhirInstant cannot be constructed from the provided input,'
              ' it is neither a YAML string nor a YAML map.');

  /// Tries to parse a value into a [FhirInstant].
  ///
  /// Supports String and DateTime inputs.
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

  /// Returns the FHIR type as 'instant'.
  @override
  String get fhirType => 'instant';

  /// Hash code based on the value of the [FhirInstant].
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => value.hashCode;

  /// Compares two [FhirInstant] objects for equality.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  /// Checks equality between [FhirInstant] and other types.
  @override
  bool equals(Object other) => isEqual(other) ?? false;

  /// Adds a duration to a [FhirInstant].
  FhirInstant plus(ExtendedDuration other) =>
      FhirDateTimeBase.plus<FhirInstant>(this, other) as FhirInstant;

  /// Subtracts a duration from a [FhirInstant].
  FhirInstant subtract(ExtendedDuration other) =>
      FhirDateTimeBase.subtract<FhirInstant>(this, other) as FhirInstant;

  /// Adds a duration to a [FhirInstant] using the `+` operator.
  @override
  FhirInstant operator +(ExtendedDuration other) =>
      FhirDateTimeBase.plus<FhirInstant>(this, other) as FhirInstant;

  /// Subtracts a duration from a [FhirInstant] using the `-` operator.
  @override
  FhirInstant operator -(ExtendedDuration other) =>
      FhirDateTimeBase.subtract<FhirInstant>(this, other) as FhirInstant;

  /// Clones the [FhirInstant] object.
  @override
  FhirInstant clone() => FhirInstant.fromJson(toJson());

  /// Sets the [Element] property for the [FhirInstant].
  @override
  FhirInstant setElement(String name, dynamic elementValue) {
    return FhirInstant.fromDateTime(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Creates a copy of the [FhirInstant], allowing modifications to properties.
  @override
  FhirInstant copyWith({
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
    Element? element,
    DateTime? newValue,
  }) {
    return FhirInstant.fromBase(
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
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
