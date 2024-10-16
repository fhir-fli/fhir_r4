import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// Extension to convert a [bool] to [FhirBoolean]
extension FhirBooleanExtension on bool {
  /// Converts a [bool] to [FhirBoolean]
  FhirBoolean get toFhirBoolean => FhirBoolean(this);
}

/// [FhirBoolean] class representing the FHIR primitive type `boolean`
class FhirBoolean extends PrimitiveType<bool> {
  /// Public generative constructor
  // ignore: avoid_positional_boolean_parameters
  FhirBoolean(super.input, [super.element]);

  /// Factory constructor to create a [FhirBoolean] from JSON
  factory FhirBoolean.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as bool?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null) {
      throw const FormatException(
        'Invalid input for FhirBoolean: value is null',
      );
    }
    return FhirBoolean(value, element);
  }

  /// Factory constructor to create a [FhirBoolean] from YAML
  static FhirBoolean fromYaml(dynamic yaml) => yaml is String
      ? FhirBoolean.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        )
      : yaml is YamlMap
          ? FhirBoolean.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            )
          : throw ArgumentError(
              'FhirBoolean cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Boolean getter to determine if only a value is present
  bool get valueOnly => value != null && element == null;

  /// Boolean getter to determine if only an element is present
  bool get elementOnly => value == null && element != null;

  /// Boolean getter to determine if both value and element are present
  bool get valueAndElement => value != null && element != null;

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': value,
        '_value': element?.toJson(),
      };

  /// Converts a list of JSON values to a list of [FhirBoolean] instances
  static List<FhirBoolean> fromJsonList(
    List<dynamic> values,
    List<dynamic>? elements,
  ) {
    if (elements != null && elements.length != values.length) {
      throw const FormatException(
        'Values and elements must have the same length',
      );
    }

    return List.generate(values.length, (i) {
      final value = values[i] as bool?;
      final element = elements?[i] != null
          ? Element.fromJson(elements![i] as Map<String, dynamic>)
          : null;
      return FhirBoolean(value, element);
    });
  }

  /// Converts a list of [FhirBoolean] instances to a JSON-compatible map
  static Map<String, dynamic> toJsonList(List<FhirBoolean> booleans) {
    return {
      'value': booleans.map((boolean) => boolean.value).toList(),
      '_value': booleans.map((boolean) => boolean.element?.toJson()).toList(),
    };
  }

  /// Provides a string representation of the instance
  @override
  String toString() => value.toString();

  /// Overrides equality operator
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirBoolean && other.value == value) ||
      (other is bool && other == value);

  /// Overrides `hashCode` for use in hash-based collections
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  /// Creates a deep copy of the instance
  @override
  FhirBoolean clone() => FhirBoolean(value, element?.clone() as Element?);

  /// Sets a new element and returns a modified instance
  @override
  FhirBoolean setElement(String name, dynamic elementValue) {
    return FhirBoolean(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Creates a modified copy with updated properties
  @override
  FhirBoolean copyWith({
    bool? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return FhirBoolean(
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
