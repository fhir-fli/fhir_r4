import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// Extension to add `toFhirCode` method on all [String] instances
extension FhirCodeExtension on String {
  /// Converts a [String] to a [FhirCode]
  FhirCode get toFhirCode => FhirCode(input: this);
}

/// FHIR primitive type `code`
class FhirCode extends PrimitiveType<String> {
  /// Constructor with input validation and storage
  FhirCode({
    required this.input,
    super.element,
    super.id,
    super.extension_,
  }) : super(value: input != null ? _validateCode(input) : null) {
    if (value == null && element == null) {
      throw ArgumentError('A value or element is required');
    }
  }

  /// Factory constructor to create a [FhirCode] from JSON
  factory FhirCode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    return FhirCode(input: value, element: element);
  }

  /// Factory constructor to create a [FhirCode] from YAML
  static FhirCode fromYaml(dynamic yaml) => yaml is String
      ? FhirCode.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        )
      : yaml is YamlMap
          ? FhirCode.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            )
          : throw ArgumentError(
              'FhirCode cannot be constructed from the provided input,'
              ' it is neither a YAML string nor a YAML map.');

  /// Attempts to parse the input as a [FhirCode], returning `null` if
  /// parsing fails
  static FhirCode? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirCode(input: input);
      } catch (_) {
        return null;
      }
    }
    return null;
  }

  /// Validates the input string as a valid FHIR code
  static String _validateCode(String input) {
    final regex = RegExp(r'^[^\s]+(\s[^\s]+)*$');
    if (regex.hasMatch(input)) {
      return input;
    }
    throw FormatException('Invalid FHIR Code: "$input"');
  }

  /// The original input value (for serialization purposes)
  final String? input;

  /// Boolean checks for the presence of a value only
  bool get valueOnly => value != null && element == null;

  /// Boolean checks for the presence of an element only
  bool get elementOnly => value == null && element != null;

  /// Boolean checks for the presence of both value and element
  bool get valueAndElement => value != null && element != null;

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (input != null) 'value': input,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [FhirCode] instances
  static List<FhirCode> fromJsonList(
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
      return FhirCode(input: value, element: element);
    });
  }

  /// Converts a list of [FhirCode] instances to a JSON-compatible map
  static Map<String, dynamic> toJsonList(List<FhirCode> codes) => {
        'value': codes.map((code) => code.input).toList(),
        '_value': codes.map((code) => code.element?.toJson()).toList(),
      };

  /// Returns the FHIR type as a [String]
  @override
  String get fhirType => 'code';

  /// Returns the [FhirCode] as a [String]
  @override
  String toString() => value ?? '';

  /// Overrides equality operator
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirCode && other.input == input) ||
      (other is String && other == value);

  /// Overrides `hashCode` for use in hash-based collections
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(input, element);

  /// Creates a deep copy of the instance
  @override
  FhirCode clone() =>
      FhirCode(input: input, element: element?.clone() as Element?);

  /// Creates a modified copy with updated properties
  @override
  FhirCode copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return FhirCode(
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
