import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// Extension to convert a [String] to a [FhirId].
extension FhirIdExtension on String {
  /// Converts a [String] to a [FhirId].
  FhirId get toFhirId => FhirId(this);
}

/// Represents the FHIR primitive type `id`.
class FhirId extends PrimitiveType<String> {
  /// Public constructor with input validation.
  FhirId(String? input, [Element? element])
      : super(
          input != null ? _validateId(input) : null,
          element,
        );

  /// Factory constructor to create [FhirId] from JSON input.
  factory FhirId.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;

    if (value == null) {
      throw const FormatException('Invalid input for FhirId: value is null');
    }

    return FhirId(value, element);
  }

  /// Factory constructor to create [FhirId] from YAML input.
  static FhirId fromYaml(dynamic yaml) => yaml is String
      ? FhirId.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        )
      : yaml is YamlMap
          ? FhirId.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            )
          : throw ArgumentError(
              'FhirId cannot be constructed from provided input. '
              'It must be a YAML string or YAML map.');

  /// Static method to try parsing the input.
  static FhirId? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirId(input);
      } catch (e) {
        return null;
      }
    }
    return null;
  }

  /// Ensures the input is a valid FHIR ID.
  static String _validateId(String input) {
    final regex = RegExp(r'^[A-Za-z0-9\-\.]{1,64}$');
    if (regex.hasMatch(input)) return input;
    throw FormatException('Invalid FhirId: "$input"');
  }

  /// Boolean checks for the presence of a value only.
  bool get valueOnly => value != null && element == null;

  /// Boolean checks for the presence of an element only.
  bool get elementOnly => value == null && element != null;

  /// Boolean checks for the presence of both value and element.
  bool get valueAndElement => value != null && element != null;

  /// Returns the FHIR type as a [String].
  @override
  String get fhirType => 'id';

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [FhirId] instances.
  static List<FhirId> fromJsonList(
    List<dynamic> values,
    List<dynamic>? elements,
  ) {
    if (elements != null && elements.length != values.length) {
      throw const FormatException(
        'Values and elements must have the same length',
      );
    }

    return List.generate(values.length, (i) {
      final value = values[i] as String?;
      final element = elements?[i] != null
          ? Element.fromJson(elements![i] as Map<String, dynamic>)
          : null;
      return FhirId(value, element);
    });
  }

  /// Converts a list of [FhirId] instances to a JSON-compatible map.
  static Map<String, dynamic> toJsonList(List<FhirId> ids) {
    return {
      'value': ids.map((id) => id.value).toList(),
      '_value': ids.map((id) => id.element?.toJson()).toList(),
    };
  }

  /// Provides a string representation of the instance.
  @override
  String toString() => value ?? '';

  /// Overrides equality operator.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirId && other.value == value) ||
      (other is String && other == value);

  /// Overrides `hashCode` for use in hash-based collections.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  /// Creates a deep copy of the instance.
  @override
  FhirId clone() => FhirId(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  FhirId setElement(String name, dynamic elementValue) {
    return FhirId(value, element?.setProperty(name, elementValue));
  }

  /// Creates a modified copy of the instance with updated properties.
  @override
  FhirId copyWith({
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
    return FhirId(
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
}
