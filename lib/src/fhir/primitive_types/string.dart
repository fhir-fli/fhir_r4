import 'dart:convert';

import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

extension FhirStringExtension on String {
  FhirString get toFhirString => FhirString(this);
}

class FhirString extends PrimitiveType<String> {
  @override
  final String value;

  FhirString(String input, [Element? element])
      : value = input,
        super(element: element);

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

  factory FhirString.fromJson(dynamic json) {
    if (json is String) {
      return FhirString(json);
    }
    throw FormatException('Invalid input for FhirString: $json');
  }

  factory FhirString.fromYaml(dynamic yaml) => yaml is String
      ? FhirString.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : throw const FormatException('Invalid YAML format for FhirString');

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

  // Additional string-specific methods

  int get length => value.length;
  bool get isEmptyString => value.isEmpty;
  bool get isNotEmpty => value.isNotEmpty;

  String operator +(String other) => value + other;

  String substring(int start, [int? end]) => value.substring(start, end);

  String trim() => value.trim();
}
