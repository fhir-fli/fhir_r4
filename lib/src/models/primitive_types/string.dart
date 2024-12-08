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
  FhirString(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  }) {
    if (value == null && element == null) {
      throw ArgumentError('A value or element is required');
    }
  }

  /// Factory constructor to create [FhirString] from JSON.
  factory FhirString.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    return FhirString(value, element: element);
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

  /// Serializes the instance to JSON with standardized keys.
  @override
  Map<String, dynamic> toJson() => {
        if (value != null) 'value': value,
        if (element != null) '_value': element!.toJson(),
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
  FhirString clone() =>
      FhirString(value, element: element?.clone() as Element?);

  /// Creates a modified copy with updated properties.
  @override
  FhirString copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return FhirString(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
    );
  }

  /// Returns the length of the string.
  int? get length => value?.length;

  /// Checks if the string is empty.
  bool get isEmptyString => value?.isEmpty ?? true;

  /// Checks if the string is not empty.
  bool get isNotEmpty => value?.isNotEmpty ?? false;

  /// Concatenates two strings, treating null as an empty string.
  String operator +(String other) => (value ?? '') + other;

  /// Extracts a substring.
  String? substring(int start, [int? end]) => value?.substring(start, end);

  /// Trims leading and trailing whitespace from the string.
  String? trim() => value?.trim();

  /// Converts a list of JSON values to a list of [FhirString] instances.
  static List<FhirString> fromJsonList(
    List<dynamic> values,
    List<dynamic>? elements,
  ) {
    if (elements != null && elements.length != values.length) {
      throw const FormatException(
        'Values and elements must have the same length.',
      );
    }

    return List.generate(values.length, (i) {
      final value = values[i] as String?;
      final element = elements?[i] != null
          ? Element.fromJson(elements![i] as Map<String, dynamic>)
          : null;
      return FhirString(value, element: element);
    });
  }

  /// Converts a list of [FhirString] instances to a JSON-compatible map.
  static Map<String, dynamic> toJsonList(List<FhirString> strings) {
    return {
      'value': strings.map((string) => string.value).toList(),
      '_value': strings.map((string) => string.element?.toJson()).toList(),
    };
  }
}
