import 'dart:convert';

import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

extension FhirCodeExtension on String {
  FhirCode get toFhirCode => FhirCode(this);
}

class FhirCode extends PrimitiveType<String> {
  @override
  final String value;

  // Constructor enforces valid input
  FhirCode(String input, [Element? element])
      : value = _validateCode(input),
        super(element: element);

  static FhirCode? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirCode(input);
      } catch (e) {
        return null;
      }
    } else {
      return null;
    }
  }

  // Validation method for the FHIR Code format
  static String _validateCode(String input) {
    final RegExp regex = RegExp(r'^[^\s]+(\s[^\s]+)*$');
    if (regex.hasMatch(input)) {
      return input;
    } else {
      throw const FormatException('Invalid FHIR Code');
    }
  }

  // fromJson accepts dynamic input and validates
  factory FhirCode.fromJson(dynamic json) {
    if (json is String) {
      return FhirCode(json);
    } else {
      throw const FormatException('Invalid input for FhirCode');
    }
  }

  factory FhirCode.fromYaml(dynamic yaml) => yaml is String
      ? FhirCode.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : throw const FormatException('Invalid Yaml format for FhirCode');

  @override
  String get fhirType => 'code';

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
      (other is FhirCode && other.value == value) ||
      (other is String && other == value);

  @override
  FhirCode clone() => FhirCode(value, element?.clone() as Element?);

  @override
  FhirCode setElement(String name, dynamic elementValue) {
    return FhirCode(value, element?.setProperty(name, elementValue));
  }

  @override
  FhirCode copyWith({
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
    return FhirCode(
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
