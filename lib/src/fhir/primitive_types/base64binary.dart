import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// Simplifies getting a [FhirBase64Binary] from a [String]
extension FhirBase64BinaryExtension on String {
  /// Returns a [FhirBase64Binary] object from a [String]
  FhirBase64Binary get toFhirBase64Binary => FhirBase64Binary(this);
}

/// [FhirBase64Binary]
class FhirBase64Binary extends PrimitiveType<String> {
  /// Constructor enforces valid input
  FhirBase64Binary(String input, [Element? element])
      : value = _validateBase64(input),
        super(element: element);

  /// fromJson accepts dynamic input and validates
  factory FhirBase64Binary.fromJson(dynamic json) {
    if (json is String) {
      return FhirBase64Binary(json);
    } else {
      throw const FormatException('Invalid input for FhirBase64Binary');
    }
  }

  /// fromYaml accepts dynamic input and validates
  factory FhirBase64Binary.fromYaml(dynamic yaml) => yaml is String
      ? FhirBase64Binary.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : throw const FormatException('Invalid Yaml format for FhirBase64Binary');
  @override
  final String value;

  /// Try to parse a dynamic input into a [FhirBase64Binary]
  static FhirBase64Binary? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirBase64Binary(input);
      } catch (e) {
        return null;
      }
    } else {
      return null;
    }
  }

  /// Throw an exception if input is not valid base64
  static String _validateBase64(String input) {
    if (input.length % 4 == 0 && _isBase64(input)) {
      return input;
    } else {
      throw const FormatException('Invalid Base64 String');
    }
  }

  /// Utility to check base64 validity
  static bool _isBase64(String input) {
    try {
      base64.decode(input);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  String toJson() => value;

  @override
  String toYaml() => value;

  @override
  String toString() => value;

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => value.hashCode;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirBase64Binary && other.value == value) ||
      (other is String && other == value);

  @override
  FhirBase64Binary clone() =>
      FhirBase64Binary(value, element?.clone() as Element?);

  @override
  FhirBase64Binary setElement(String name, dynamic elementValue) {
    return FhirBase64Binary(value, element?.setProperty(name, elementValue));
  }

  @override
  FhirBase64Binary copyWith({
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
    return FhirBase64Binary(
      newValue ??
          value, // Use the new value if provided, otherwise the current value
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
