import 'dart:convert';

import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

extension FhirMarkdownExtension on String {
  FhirMarkdown get toFhirMarkdown => FhirMarkdown(this);
}

class FhirMarkdown extends PrimitiveType<String> {
  @override
  final String value;

  FhirMarkdown(String input, [Element? element])
      : value = _validateMarkdown(input),
        super(element: element);

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

  factory FhirMarkdown.fromJson(dynamic json) {
    if (json is String) {
      return FhirMarkdown(json);
    }
    throw FormatException('Invalid input for FhirMarkdown: $json');
  }

  factory FhirMarkdown.fromYaml(dynamic yaml) => yaml is String
      ? FhirMarkdown.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : throw const FormatException('Invalid YAML format for FhirMarkdown');

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
