import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// Extension on [DateTime] to convert to a [FhirDate].
extension FhirDateExtension on DateTime {
  /// Converts [DateTime] to [FhirDate].
  FhirDate get toFhirDate => FhirDate.fromDateTime(this);
}

/// Extension on [String] to convert to a [FhirDate].
extension FhirDateStringExtension on String {
  /// Converts [String] to [FhirDate].
  FhirDate get toFhirDate => FhirDate.fromString(this);
}

/// [FhirDate] represents FHIR-compliant dates, extending [FhirDateTimeBase].
class FhirDate extends FhirDateTimeBase {
  /// Factory constructor to create a [FhirDate] from individual units.
  ///
  /// Requires [year], while [month], [day], and [isUtc] are optional.
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
        element: element,
      ) as FhirDate;

  /// Constructor from base units, used internally.
  FhirDate.fromBase({
    required super.year,
    required super.month,
    required super.day,
    required super.isUtc,
    super.timeZoneOffset,
    super.element,
  });

  /// Factory constructor to create a [FhirDate] from a [String].
  ///
  /// The input must be a valid date string.
  factory FhirDate.fromString(String? inValue, [Element? element]) =>
      inValue == null && element == null
          ? throw ArgumentError('A value or element is required')
          : FhirDateTimeBase.constructor<FhirDate>(inValue, element)
              as FhirDate;

  /// Factory constructor to create a [FhirDate] from a [DateTime].
  factory FhirDate.fromDateTime(DateTime? inValue, [Element? element]) =>
      inValue == null && element == null
          ? throw ArgumentError('A value or element is required')
          : FhirDateTimeBase.constructor<FhirDate>(inValue, element)
              as FhirDate;

  /// Factory constructor to create a [FhirDateTime] from a JSON input.
  ///
  /// The input must be a [String], otherwise throws a [FormatException].
  factory FhirDate.fromJson(Map<String, dynamic> json) {
    final value = json['value'];
    final element = json['_value'] is Map<String, dynamic>
        ? Element.fromJson(json['_value'] as Map<String, dynamic>)
        : null;

    if (value is String) {
      return FhirDate.fromString(value, element);
    } else if (value is DateTime) {
      return FhirDate.fromDateTime(value, element);
    } else if (value == null) {
      return FhirDate.fromString(null, element);
    } else {
      throw const FormatException(
        'Invalid input for FhirInstant: Input must be a String?',
      );
    }
  }

  /// Factory constructor to create [FhirDate] from YAML
  static FhirDate fromYaml(dynamic yaml) => yaml is String
      ? FhirDate.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        )
      : yaml is YamlMap
          ? FhirDate.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            )
          : throw ArgumentError(
              'FhirDate cannot be constructed from the provided input,'
              ' it is neither a YAML string nor a YAML map.');

  /// Tries to parse a value as [FhirDate], returns `null` if parsing fails.
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

  /// Returns the FHIR type as 'date'.
  @override
  String get fhirType => 'date';

  /// Overrides the [hashCode] method to generate a hash code based on the value
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => value.hashCode;

  /// Overrides the equality operator to compare two [FhirDate] objects.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  /// Checks for equality between this object and another [FhirDate].
  @override
  bool equals(Object other) => isEqual(other) ?? false;

  /// Adds a duration ([ExtendedDuration]) to the current [FhirDate].
  FhirDate plus(ExtendedDuration other) =>
      FhirDateTimeBase.plus<FhirDate>(this, other) as FhirDate;

  /// Subtracts a duration ([ExtendedDuration]) from the current [FhirDate].
  FhirDate subtract(ExtendedDuration other) =>
      FhirDateTimeBase.subtract<FhirDate>(this, other) as FhirDate;

  /// Adds an [ExtendedDuration] to the current [FhirDate] using the `+`
  /// operator.
  @override
  FhirDate operator +(ExtendedDuration other) =>
      FhirDateTimeBase.plus<FhirDate>(this, other) as FhirDate;

  /// Subtracts an [ExtendedDuration] from the current [FhirDate] using the `-`
  /// operator.
  @override
  FhirDate operator -(ExtendedDuration other) =>
      FhirDateTimeBase.subtract<FhirDate>(this, other) as FhirDate;

  /// Clones the current [FhirDate] and returns a new instance.
  @override
  FhirDate clone() => FhirDate.fromJson(toJson());

  /// Copies the current [FhirDate], allowing for changes to its properties.
  ///
  /// Supports changing the [value] and associated [element], as well as other
  /// metadata.
  @override
  FhirDate copyWith({
    DateTime? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    Map<String, List<void Function()>>? propertyChanged,
  }) {
    return FhirDate.fromDateTime(
      value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
