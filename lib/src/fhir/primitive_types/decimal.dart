import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// Extension to convert a Dart number to a [FhirDecimal].
extension FhirDecimalExtension on num {
  /// Converts a Dart number to a [FhirDecimal].
  FhirDecimal get toFhirDecimal => FhirDecimal(this);
}

/// This class represents the FHIR primitive type `decimal`.
class FhirDecimal extends FhirNumber {
  /// Public constructor that enforces valid input.
  FhirDecimal(num? input, [Element? element])
      : isInt = input is int,
        super(input?.toDouble(), element);

  /// Factory constructor to create a [FhirDecimal] from a [FhirInteger].
  factory FhirDecimal.fromFhirInteger(FhirInteger integer, [Element? element]) {
    return FhirDecimal(integer.value, element);
  }

  /// Factory constructor to create a [FhirDecimal] from a JSON input.
  factory FhirDecimal.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as num?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;

    if (value == null) {
      throw const FormatException(
        'Invalid input for FhirDecimal: value is null',
      );
    }
    return FhirDecimal(value, element);
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
                'FhirDecimal cannot be constructed from provided input. '
                'It must be a YAML string or map.');
  }

  /// Attempts to parse a [dynamic] input as [FhirDecimal], returns `null`
  /// if it fails.
  static FhirDecimal? tryParse(dynamic input) {
    if (input is num) {
      try {
        return FhirDecimal(input);
      } catch (_) {
        return null;
      }
    }
    return null;
  }

  /// Boolean getter to determine if only a value is present.
  bool get valueOnly => value != null && element == null;

  /// Boolean getter to determine if only an element is present.
  bool get elementOnly => value == null && element != null;

  /// Boolean getter to determine if both value and element are present.
  bool get valueAndElement => value != null && element != null;

  /// Boolean flag to track if the input was originally an integer.
  final bool isInt;

  /// Returns the FHIR type as 'decimal'.
  @override
  String get fhirType => 'decimal';

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null) 'value': isInt ? value?.toInt() : value,
        if (element != null) '_value': element?.toJson(),
      };

  /// Converts a list of JSON values to a list of [FhirDecimal] instances.
  static List<FhirDecimal> fromJsonList(
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
      return FhirDecimal(value, element);
    });
  }

  /// Converts a list of [FhirDecimal] instances to a JSON-compatible map.
  static Map<String, dynamic> toJsonList(List<FhirDecimal> decimals) {
    return {
      'value':
          decimals.map((d) => d.isInt ? d.value?.toInt() : d.value).toList(),
      '_value': decimals.map((d) => d.element?.toJson()).toList(),
    };
  }

  /// Returns a string representation of the instance.
  @override
  String toString() =>
      isInt ? value?.toInt().toString() ?? '' : value.toString();

  /// Overrides the `hashCode` for use in hash-based collections.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  /// Overrides equality operator for comparing two [FhirDecimal] instances.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirDecimal && other.value == value) ||
      (other is num && other == value);

  /// Clones the current instance of [FhirDecimal].
  @override
  FhirDecimal clone() => FhirDecimal(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element] and returns a new instance.
  @override
  FhirDecimal setElement(String name, dynamic elementValue) {
    return FhirDecimal(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Creates a modified copy with updated properties.
  @override
  FhirDecimal copyWith({
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
    return FhirDecimal(
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
