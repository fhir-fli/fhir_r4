import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// FhirMarkdown is a type of string that is used in FHIR resources
extension FhirMarkdownExtension on String {
  /// This method converts a Dart string to a FHIR markdown
  FhirMarkdown get toFhirMarkdown => FhirMarkdown(this);
}

/// This class represents the FHIR primitive type `markdown`
class FhirMarkdown extends PrimitiveType<String> {
  /// Constructor enforces valid input
  FhirMarkdown(String input, [Element? element])
      : value = _validateMarkdown(input),
        super(element: element);

  /// fromJson accepts dynamic input and validates
  factory FhirMarkdown.fromJson(dynamic json) {
    if (json is String) {
      return FhirMarkdown(json);
    }
    throw FormatException('Invalid input for FhirMarkdown: $json');
  }

  /// fromYaml accepts dynamic input and validates
  factory FhirMarkdown.fromYaml(dynamic yaml) => yaml is String
      ? FhirMarkdown.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : throw const FormatException('Invalid YAML format for FhirMarkdown');
  @override
  final String value;

  /// Static method to try parsing the input
  static FhirMarkdown? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirMarkdown(input);
      } catch (e) {
        return null;
      }
    } else {
      return null;
    }
  }

  static String _validateMarkdown(String input) {
    if (RegExp(r'[ \r\n\t\S]+').hasMatch(input)) {
      return input;
    }
    throw FormatException('Invalid FhirMarkdown: $input');
  }

  @override
  String get fhirType => 'markdown';

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
      (other is FhirMarkdown && other.value == value) ||
      (other is String && other == value);

  @override
  FhirMarkdown clone() => FhirMarkdown(value, element?.clone() as Element?);

  @override
  FhirMarkdown setElement(String name, dynamic elementValue) {
    return FhirMarkdown(value, element?.setProperty(name, elementValue));
  }

  @override
  FhirMarkdown copyWith({
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
    return FhirMarkdown(
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
