import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// Extension to convert a [num] to a [FhirPositiveInt].
extension FhirPositiveIntExtension on num {
  /// Converts a [num] to a [FhirPositiveInt].
  FhirPositiveInt get toFhirPositiveInt => this is int
      ? FhirPositiveInt(this as int)
      : int.tryParse(toString()) != null
          ? FhirPositiveInt(int.parse(toString()))
          : throw FormatException('Invalid input for FhirPositiveInt: $this');
}

/// Represents the FHIR primitive type `integer`.
class FhirPositiveInt extends FhirNumber {
  /// Constructor that ensures valid input.
  FhirPositiveInt(int? super.input, [super.element]);

  /// Factory constructor to create [FhirPositiveInt] from JSON input.
  factory FhirPositiveInt.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as num?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;

    if (value == null) {
      throw const FormatException(
        'Invalid input for FhirPositiveInt: value is null',
      );
    }

    return FhirPositiveInt(value.toInt(), element);
  }

  /// Factory constructor to create [FhirPositiveInt] from YAML input.
  static FhirPositiveInt fromYaml(dynamic yaml) {
    return yaml is String
        ? FhirPositiveInt.fromJson(
            jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
          )
        : yaml is YamlMap
            ? FhirPositiveInt.fromJson(
                jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
              )
            : throw const FormatException(
                'Invalid input for FhirPositiveInt: not a valid YAML string or map.',
              );
  }

  /// Static method to try parsing input as [FhirPositiveInt], returns `null`
  /// if unsuccessful.
  static FhirPositiveInt? tryParse(dynamic input) {
    if (input is int) {
      try {
        return FhirPositiveInt(input);
      } catch (e) {
        return null;
      }
    }
    return null;
  }

  /// Returns the FHIR type as a string.
  @override
  String get fhirType => 'integer';

  /// Corrected `toJson()` method to return a proper map.
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (value != null) json['value'] = value;
    if (element != null) json['_value'] = element!.toJson();
    return json;
  }

  /// Converts a list of JSON values to a list of [FhirPositiveInt] instances.
  static List<FhirPositiveInt> fromJsonList(
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
      return FhirPositiveInt(value?.toInt(), element);
    });
  }

  /// Converts a list of [FhirPositiveInt] instances to a JSON-compatible map.
  static Map<String, dynamic> toJsonList(List<FhirPositiveInt> integers) {
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
      (other is FhirPositiveInt && other.value == value) ||
      (other is int && other == value);

  /// Overrides hashCode for use in hash-based collections.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  /// Clones the current instance.
  @override
  FhirPositiveInt clone() =>
      FhirPositiveInt(value as int?, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  FhirPositiveInt setElement(String name, dynamic elementValue) {
    return FhirPositiveInt(
      value as int?,
      element?.setProperty(name, elementValue),
    );
  }

  /// Creates a modified copy with updated properties.
  @override
  FhirPositiveInt copyWith({
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
      throw ArgumentError('Invalid input for FhirPositiveInt: $newValue');
    }
    return FhirPositiveInt(
      (newValue ?? value) as int?,
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
