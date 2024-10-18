import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// Extension to convert a [num] to a [FhirUnsignedInt].
extension FhirUnsignedIntExtension on num {
  /// Converts a [num] to a [FhirUnsignedInt].
  FhirUnsignedInt get toFhirUnsignedInt => this is int
      ? FhirUnsignedInt(this as int)
      : int.tryParse(toString()) != null
          ? FhirUnsignedInt(int.parse(toString()))
          : throw FormatException('Invalid input for FhirUnsignedInt: $this');
}

/// Represents the FHIR primitive type `integer`.
class FhirUnsignedInt extends FhirNumber {
  /// Constructor that ensures valid input.
  FhirUnsignedInt(int? super.input, [super.element]) {
    if (value == null && element == null) {
      throw ArgumentError('A value or element is required');
    }
  }

  /// Factory constructor to create [FhirUnsignedInt] from JSON input.
  factory FhirUnsignedInt.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as num?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    return FhirUnsignedInt(value?.toInt(), element);
  }

  /// Factory constructor to create [FhirUnsignedInt] from YAML input.
  static FhirUnsignedInt fromYaml(dynamic yaml) {
    return yaml is String
        ? FhirUnsignedInt.fromJson(
            jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
          )
        : yaml is YamlMap
            ? FhirUnsignedInt.fromJson(
                jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
              )
            : throw const FormatException(
                'Invalid input for FhirUnsignedInt: '
                'not a valid YAML string or map.',
              );
  }

  /// Static method to try parsing input as [FhirUnsignedInt], returns `null`
  /// if unsuccessful.
  static FhirUnsignedInt? tryParse(dynamic input) {
    if (input is int) {
      try {
        return FhirUnsignedInt(input);
      } catch (e) {
        return null;
      }
    }
    return null;
  }

  /// Returns the FHIR type as a string.
  @override
  String get fhirType => 'integer';

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [FhirUnsignedInt] instances.
  static List<FhirUnsignedInt> fromJsonList(
    List<dynamic> values,
    List<dynamic>? elements,
  ) {
    if (elements != null && elements.length != values.length) {
      throw const FormatException(
        'Values and elements must have the same length',
      );
    }

    return List.generate(values.length, (i) {
      final value = values[i] as num?;
      final element = elements?[i] != null
          ? Element.fromJson(elements![i] as Map<String, dynamic>)
          : null;
      return FhirUnsignedInt(value?.toInt(), element);
    });
  }

  /// Converts a list of [FhirUnsignedInt] instances to a JSON-compatible map.
  static Map<String, dynamic> toJsonList(List<FhirUnsignedInt> integers) {
    return {
      'value': integers.map((integer) => integer.value).toList(),
      '_value': integers.map((integer) => integer.element?.toJson()).toList(),
    };
  }

  /// Provides a string representation of the instance.
  @override
  String toString() => value?.toString() ?? '';

  /// Overrides equality operator to compare instances.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirUnsignedInt && other.value == value) ||
      (other is int && other == value);

  /// Overrides hashCode for use in hash-based collections.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  /// Clones the current instance.
  @override
  FhirUnsignedInt clone() =>
      FhirUnsignedInt(value as int?, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  FhirUnsignedInt setElement(String name, dynamic elementValue) {
    return FhirUnsignedInt(
      value as int?,
      element?.setProperty(name, elementValue),
    );
  }

  /// Creates a modified copy with updated properties.
  @override
  FhirUnsignedInt copyWith({
    num? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirUnsignedInt: $newValue');
    }
    return FhirUnsignedInt(
      (newValue ?? value) as int?,
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
