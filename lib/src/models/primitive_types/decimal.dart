import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// Extension to convert a Dart number to a [FhirDecimal].
extension FhirDecimalExtension on num {
  /// Converts a Dart number to a [FhirDecimal].
  FhirDecimal get toFhirDecimal => FhirDecimal(input: this);
}

/// This class represents the FHIR primitive type `decimal`.
class FhirDecimal extends FhirNumber {
  /// Public constructor with validation and storage of the original input.
  FhirDecimal({
    required this.input,
    super.element,
    super.id,
    super.extension_,
  })  : isInt = input is int,
        super(value: input?.toDouble()) {
    if (value == null && element == null) {
      throw ArgumentError('A value or element is required');
    }
  }

  /// Factory constructor to create a [FhirDecimal] from a [FhirInteger].
  factory FhirDecimal.fromFhirInteger(
    FhirInteger integer, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
  }) {
    return FhirDecimal(
      input: integer.value,
      element: element,
      id: id,
      extension_: extension_,
    );
  }

  /// Factory constructor to create a [FhirDecimal] from JSON input.
  factory FhirDecimal.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as num?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    return FhirDecimal(input: value, element: element);
  }

  /// Factory constructor to create a [FhirDecimal] from YAML input.
  static FhirDecimal fromYaml(dynamic yaml) {
    return yaml is String
        ? FhirDecimal.fromJson(
            jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
          )
        : yaml is YamlMap
            ? FhirDecimal.fromJson(
                jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
              )
            : throw ArgumentError(
                'FhirDecimal cannot be constructed from the provided input. '
                'It must be a YAML string or map.');
  }

  /// Attempts to parse a [dynamic] input as [FhirDecimal], returns `null` if
  /// it fails.
  static FhirDecimal? tryParse(dynamic input) {
    if (input is num) {
      try {
        return FhirDecimal(input: input);
      } catch (_) {
        return null;
      }
    }
    return null;
  }

  /// The original input value (stored for serialization purposes).
  final num? input;

  /// Boolean flag to track if the input was originally an integer.
  final bool isInt;

  /// Boolean getter to determine if only a value is present.
  bool get valueOnly => value != null && element == null;

  /// Boolean getter to determine if only an element is present.
  bool get elementOnly => value == null && element != null;

  /// Boolean getter to determine if both value and element are present.
  bool get valueAndElement => value != null && element != null;

  /// Returns the FHIR type as 'decimal'.
  @override
  String get fhirType => 'decimal';

  /// Serializes the instance to JSON with standardized keys.
  @override
  Map<String, dynamic> toJson() => {
        if (input != null) 'value': isInt ? input!.toInt() : input,
        if (element != null) '_value': element?.toJson(),
      };

  /// Converts a list of JSON values to a list of [FhirDecimal] instances.
  static List<FhirDecimal> fromJsonList(
    List<dynamic> values,
    List<dynamic>? elements,
  ) {
    if (elements != null && elements.length != values.length) {
      throw const FormatException(
        'Values and elements must have the same length.',
      );
    }
    return List.generate(values.length, (i) {
      final value = values[i] as num?;
      final element = elements?[i] != null
          ? Element.fromJson(elements![i] as Map<String, dynamic>)
          : null;
      return FhirDecimal(input: value, element: element);
    });
  }

  /// Converts a list of [FhirDecimal] instances to a JSON-compatible map.
  static Map<String, dynamic> toJsonList(List<FhirDecimal> decimals) => {
        'value': decimals
            .map(
              (decimal) =>
                  decimal.isInt ? decimal.input?.toInt() : decimal.input,
            )
            .toList(),
        '_value': decimals.map((decimal) => decimal.element?.toJson()).toList(),
      };

  /// Returns a string representation of the instance.
  @override
  String toString() =>
      isInt ? value?.toInt().toString() ?? '' : value.toString();

  /// Overrides equality operator for comparing two [FhirDecimal] instances.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirDecimal && other.value == value) ||
      (other is num && other == value);

  /// Overrides `hashCode` for use in hash-based collections.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  /// Clones the current instance of [FhirDecimal].
  @override
  FhirDecimal clone() =>
      FhirDecimal(input: input, element: element?.clone() as Element?);

  /// Creates a modified copy with updated properties.
  @override
  FhirDecimal copyWith({
    num? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return FhirDecimal(
      input: newValue ?? input,
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
