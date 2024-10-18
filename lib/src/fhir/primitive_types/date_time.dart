import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// Extension on [DateTime] to convert it to a [FhirDateTime].
extension FhirDateTimeExtension on DateTime {
  /// Converts a [DateTime] to a [FhirDateTime].
  FhirDateTime get toFhirDateTime => FhirDateTime.fromDateTime(this);
}

/// Extension on [String] to convert it to a [FhirDateTime].
extension FhirDateTimeStringExtension on String {
  /// Converts a [String] to a [FhirDateTime].
  FhirDateTime get toFhirDateTime => FhirDateTime.fromString(this);
}

/// [FhirDateTime] represents FHIR-compliant date and time, extending
/// [FhirDateTimeBase].
class FhirDateTime extends FhirDateTimeBase {
  /// Factory constructor to create a [FhirDateTime] from individual units.
  ///
  /// Requires the [year] to be specified, while other components like [month],
  /// [day], [hour], [minute], [second], [millisecond], and [microsecond] are
  /// optional.
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

  /// Constructor from base units, required by [FhirDateTimeBase].
  FhirDateTime.fromBase({
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

  /// Factory constructor to create a [FhirDateTime] from a [String].
  ///
  /// The input must be a valid date-time string.
  factory FhirDateTime.fromString(String? inValue, [Element? element]) =>
      FhirDateTimeBase.constructor<FhirDateTime>(inValue, element)
          as FhirDateTime;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime].
  factory FhirDateTime.fromDateTime(DateTime? inValue, [Element? element]) =>
      FhirDateTimeBase.constructor<FhirDateTime>(inValue, element)
          as FhirDateTime;

  /// Factory constructor to create a [FhirDateTime] from a JSON input.
  ///
  /// The input must be a [String], otherwise throws a [FormatException].
  factory FhirDateTime.fromJson(Map<String, dynamic> json) {
    final value = json['value'];
    final element = json['_value'] is Map<String, dynamic>
        ? Element.fromJson(json['_value'] as Map<String, dynamic>)
        : null;

    if (value is String) {
      return FhirDateTime.fromString(value, element);
    } else if (value is DateTime) {
      return FhirDateTime.fromDateTime(value, element);
    } else if (value == null) {
      return FhirDateTime.fromString(null, element);
    } else {
      throw const FormatException(
        'Invalid input for FhirInstant: Input must be a String?',
      );
    }
  }

  /// Factory constructor to create [FhirDateTime] from YAML
  static FhirDateTime fromYaml(dynamic yaml) => yaml is String
      ? FhirDateTime.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        )
      : yaml is YamlMap
          ? FhirDateTime.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            )
          : throw ArgumentError(
              'FhirDateTime cannot be constructed from the provided input,'
              ' it is neither a YAML string nor a YAML map.');

  /// Tries to parse a value as [FhirDateTime], returns `null` if parsing fails.
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

  /// Returns the FHIR type as a [String], which is 'dateTime' in this case.
  @override
  String get fhirType => 'dateTime';

  /// Overrides the [hashCode] method to generate the hash code based on the
  /// value.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => value.hashCode;

  /// Overrides the equality operator to compare two [FhirDateTime] objects.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  /// Checks for equality between this object and another [FhirDateTime].
  @override
  bool equals(Object other) => isEqual(other) ?? false;

  /// Adds a duration ([ExtendedDuration]) to the current [FhirDateTime] and
  /// returns a new instance.
  FhirDateTime plus(ExtendedDuration other) =>
      FhirDateTimeBase.plus<FhirDateTime>(this, other) as FhirDateTime;

  /// Subtracts a duration ([ExtendedDuration]) from the current [FhirDateTime]
  /// and returns a new instance.
  FhirDateTime subtract(ExtendedDuration other) =>
      FhirDateTimeBase.subtract<FhirDateTime>(this, other) as FhirDateTime;

  /// Adds an [ExtendedDuration] to the current [FhirDateTime] using the `+`
  /// operator.
  @override
  FhirDateTime operator +(ExtendedDuration other) =>
      FhirDateTimeBase.plus<FhirDateTime>(this, other) as FhirDateTime;

  /// Subtracts an [ExtendedDuration] from the current [FhirDateTime] using the
  /// `-` operator.
  @override
  FhirDateTime operator -(ExtendedDuration other) =>
      FhirDateTimeBase.subtract<FhirDateTime>(this, other) as FhirDateTime;

  /// Clones the current [FhirDateTime] and returns a new instance.
  @override
  FhirDateTime clone() => FhirDateTime.fromJson(toJson());

  /// Sets a property on the associated [Element], returning a new
  /// [FhirDateTime] with the updated element.
  @override
  FhirDateTime setElement(String name, dynamic elementValue) {
    return FhirDateTime.fromDateTime(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Copies the current [FhirDateTime], allowing for changes to its properties.
  ///
  /// Supports changing the [value] and associated [element], as well as other
  /// optional metadata.
  @override
  FhirDateTime copyWith({
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
    return FhirDateTime.fromDateTime(
      value,
      (element ?? this.element)?.copyWith(
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
