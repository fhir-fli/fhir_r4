import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

extension FhirBase64BinaryExtension on String {
  FhirBase64Binary get toFhirBase64Binary => FhirBase64Binary(this);
}

@Entity()
class FhirBase64Binary extends PrimitiveType<String> {
  @override
  final String value;

  // Constructor enforces valid input
  FhirBase64Binary(String input, [Element? element])
      : value = _validateBase64(input),
        super(element: element);

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

  // Throw an exception if input is not valid base64
  static String _validateBase64(String input) {
    if (input.length % 4 == 0 && _isBase64(input)) {
      return input;
    } else {
      throw const FormatException('Invalid Base64 String');
    }
  }

  // Utility to check base64 validity
  static bool _isBase64(String input) {
    try {
      base64.decode(input);
      return true;
    } catch (_) {
      return false;
    }
  }

  // fromJson accepts dynamic input and validates
  factory FhirBase64Binary.fromJson(dynamic json) {
    if (json is String) {
      return FhirBase64Binary(json);
    } else {
      throw const FormatException('Invalid input for FhirBase64Binary');
    }
  }

  factory FhirBase64Binary.fromYaml(dynamic yaml) => yaml is String
      ? FhirBase64Binary.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : throw const FormatException('Invalid Yaml format for FhirBase64Binary');

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

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
      (other is FhirBase64Binary && other.value == value);

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
