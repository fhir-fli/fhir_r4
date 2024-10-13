import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// A string is a sequence of characters used to represent text.
extension FhirStringExtension on String {
  /// Returns a [FhirString] object from a [String].
  FhirString get toFhirString => FhirString(this);
}

/// FhirString is a string of characters used to represent text.
class FhirString extends PrimitiveType<String> {
  /// FhirString is a string of characters used to represent text.
  FhirString(String input, [Element? element])
      : value = input,
        super(element: element);

  /// FhirString is a string of characters used to represent text.
  factory FhirString.fromJson(dynamic json) {
    if (json is String) {
      return FhirString(json);
    }
    throw FormatException('Invalid input for FhirString: $json');
  }

  /// FhirString is a string of characters used to represent text.
  factory FhirString.fromYaml(dynamic yaml) => yaml is String
      ? FhirString.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : throw const FormatException('Invalid YAML format for FhirString');
  @override
  final String value;

  /// Returns the FhirString object from a [String].
  static FhirString? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirString(input);
      } catch (e) {
        return null;
      }
    } else {
      return null;
    }
  }

  @override
  String get fhirType => 'string';

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
      (other is FhirString && other.value == value) ||
      (other is String && other == value);

  @override
  FhirString clone() => FhirString(value, element?.clone() as Element?);

  @override
  FhirString setElement(String name, dynamic elementValue) {
    return FhirString(value, element?.setProperty(name, elementValue));
  }

  @override
  FhirString copyWith({
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
    return FhirString(
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

  /// Returns the character at the specified index.
  int get length => value.length;

  /// Returns the character at the specified index.
  bool get isEmptyString => value.isEmpty;

  /// Returns the character at the specified index.
  bool get isNotEmpty => value.isNotEmpty;

  /// Returns the character at the specified index.
  String operator +(String other) => value + other;

  /// Returns the character at the specified index.
  String substring(int start, [int? end]) => value.substring(start, end);

  /// Returns the character at the specified index.
  String trim() => value.trim();
}
