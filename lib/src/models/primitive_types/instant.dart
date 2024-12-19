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
    super.id,
    super.extension_,
  });

  /// Factory constructor to create a [FhirInstant] from a [String].
  factory FhirInstant.fromString(
    String input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) =>
      FhirDateTimeBase.constructor<FhirInstant>(
        input: input,
        element: element,
        id: id,
        extension_: extension_,
        userData: userData,
        formatCommentsPre: formatCommentsPre,
        formatCommentsPost: formatCommentsPost,
        annotations: annotations,
      ) as FhirInstant;

  /// Factory constructor to create a [FhirInstant] from a [DateTime].
  factory FhirInstant.fromDateTime(
    DateTime input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) =>
      FhirDateTimeBase.constructor<FhirInstant>(
        input: input,
        element: element,
        id: id,
        extension_: extension_,
        userData: userData,
        formatCommentsPre: formatCommentsPre,
        formatCommentsPost: formatCommentsPost,
        annotations: annotations,
      ) as FhirInstant;

  /// Factory constructor to create a [FhirInstant] from JSON input.
  factory FhirInstant.fromJson(Map<String, dynamic> json) {
    final value = json['value'];
    final element = json['_value'] is Map<String, dynamic>
        ? Element.fromJson(json['_value'] as Map<String, dynamic>)
        : null;

    if (value is String) {
      return FhirInstant.fromString(value, element: element);
    } else if (value is DateTime) {
      return FhirInstant.fromDateTime(value, element: element);
    } else if (value == null) {
      return FhirDateTimeBase.constructor<FhirInstant>(
        element: element,
      ) as FhirInstant;
    } else {
      throw const FormatException(
        'Invalid input for FhirInstant: Input must be a String or DateTime.',
      );
    }
  }

  /// Factory constructor to create [FhirInstant] from YAML input.
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
              ' it must be a YAML string or map.',
            );

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
    } catch (_) {
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

  /// Creates a copy of the [FhirInstant], allowing modifications to properties.
  @override
  FhirInstant copyWith({
    DateTime? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return FhirDateTimeBase.constructor<FhirInstant>(
      input: value ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    ) as FhirInstant;
  }
}
