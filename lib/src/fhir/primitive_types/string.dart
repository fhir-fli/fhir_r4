import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// Extension to convert a [String] to [FhirString].
extension FhirStringExtension on String {
  /// Returns a [FhirString] object from a [String].
  FhirString get toFhirString => FhirString(this);
}

/// [FhirString] represents a string used in FHIR resources.
class FhirString extends PrimitiveType<String> {
  /// Constructs a [FhirString] with validation.
  FhirString(super.input, [super.element]);

  /// Factory constructor to create [FhirString] from JSON.
  factory FhirString.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;

    if (value == null) {
      throw const FormatException(
        'Invalid input for FhirString: value is null',
      );
    }

    return FhirString(value, element);
  }

  /// Factory constructor to create [FhirString] from YAML.
  factory FhirString.fromYaml(dynamic yaml) {
    return yaml is String
        ? FhirString.fromJson(
            jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
          )
        : yaml is YamlMap
            ? FhirString.fromJson(
                jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
              )
            : throw const FormatException('Invalid YAML format for FhirString');
  }

  /// Attempts to parse the input and return a [FhirString].
  static FhirString? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirString(input);
      } catch (_) {
        return null;
      }
    }
    return null;
  }

  /// Returns the FHIR type as 'string'.
  @override
  String get fhirType => 'string';

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': value,
        '_value': element?.toJson(),
      };

  /// Provides a string representation of the value.
  @override
  String toString() => value ?? '';

  /// Overrides equality operator.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirString && other.value == value) ||
      (other is String && other == value);

  /// Overrides the `hashCode` for use in hash-based collections.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  /// Clones the current [FhirString] instance.
  @override
  FhirString clone() => FhirString(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element] and returns a new instance.
  @override
  FhirString setElement(String name, dynamic elementValue) {
    return FhirString(value, element?.setProperty(name, elementValue));
  }

  /// Creates a modified copy with updated properties.
  @override
  FhirString copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return FhirString(
      newValue ?? value,
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

  /// Returns the length of the string.
  int? get length => value?.length;

  /// Checks if the string is empty.
  bool? get isEmptyString => value?.isEmpty;

  /// Checks if the string is not empty.
  bool? get isNotEmpty => value?.isNotEmpty;

  /// Concatenates two strings, treating null as an empty string.
  String operator +(String other) => (value ?? '') + other;

  /// Extracts a substring.
  String? substring(int start, [int? end]) => value?.substring(start, end);

  /// Trims leading and trailing whitespace from the string.
  String? trim() => value?.trim();

  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirString && other.value == value) ||
      (other is String && other == value);
}
