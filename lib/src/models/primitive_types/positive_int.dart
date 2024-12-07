import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// Extension to convert a [num] to a [FhirPositiveInt].
extension FhirPositiveIntExtension on num {
  /// Converts a [num] to a [FhirPositiveInt].
  FhirPositiveInt get toFhirPositiveInt => this is int
      ? FhirPositiveInt(input: this as int)
      : int.tryParse(toString()) != null
          ? FhirPositiveInt(input: int.parse(toString()))
          : throw FormatException('Invalid input for FhirPositiveInt: $this');
}

/// Represents the FHIR primitive type `integer`.
class FhirPositiveInt extends FhirNumber {
  /// Constructor that ensures valid input.
  FhirPositiveInt({
    required int? input,
    super.element,
    super.id,
    super.extension_,
  }) : super(value: input) {
    if (value == null && element == null) {
      throw ArgumentError('A value or element is required');
    }
  }

  /// Factory constructor to create [FhirPositiveInt] from JSON input.
  factory FhirPositiveInt.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as num?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    return FhirPositiveInt(input: value?.toInt(), element: element);
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
                'Invalid input for FhirPositiveInt: '
                'not a valid YAML string or map.',
              );
  }

  /// Static method to try parsing input as [FhirPositiveInt], returns `null`
  /// if unsuccessful.
  static FhirPositiveInt? tryParse(dynamic input) {
    if (input is int) {
      try {
        return FhirPositiveInt(input: input);
      } catch (_) {
        return null;
      }
    }
    return null;
  }

  /// Returns the FHIR type as a string.
  @override
  String get fhirType => 'integer';

  /// Serializes the instance to JSON with standardized keys.
  @override
  Map<String, dynamic> toJson() => {
        if (value != null) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

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
      return FhirPositiveInt(input: value?.toInt(), element: element);
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
  FhirPositiveInt clone() => FhirPositiveInt(
        input: value as int?,
        element: element?.clone() as Element?,
      );

  /// Creates a modified copy with updated properties.
  @override
  FhirPositiveInt copyWith({
    num? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirPositiveInt: $newValue');
    }
    return FhirPositiveInt(
      input: (newValue ?? value) as int?,
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
}
