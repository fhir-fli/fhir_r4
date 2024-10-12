import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// FhirId is a type of string that is used in FHIR resources
extension FhirIdExtension on String {
  /// This method converts a Dart string to a FHIR id
  FhirId get toFhirId => FhirId(this);
}

/// This class represents the FHIR primitive type `id`
class FhirId extends PrimitiveType<String> {
  /// Constructor enforces valid input
  FhirId(String input, [Element? element])
      : value = _validateId(input),
        super(element: element);

  /// fromJson accepts dynamic input and validates
  factory FhirId.fromJson(dynamic json) {
    if (json is String) {
      return FhirId(json);
    }
    throw FormatException('Invalid input for FhirId: $json');
  }

  /// fromYaml accepts dynamic input and validates
  factory FhirId.fromYaml(dynamic yaml) => yaml is String
      ? FhirId.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : throw const FormatException('Invalid YAML format for FhirId');
  @override
  final String value;

  /// Static method to try parsing the input
  static FhirId? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirId(input);
      } catch (e) {
        return null;
      }
    } else {
      return null;
    }
  }

  static String _validateId(String input) {
    if (RegExp(r'^[A-Za-z0-9\-\.]{1,64}$').hasMatch(input)) {
      return input;
    }
    throw FormatException('Invalid FhirId: $input');
  }

  @override
  String get fhirType => 'id';

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
      (other is FhirId && other.value == value) ||
      (other is String && other == value);

  @override
  FhirId clone() => FhirId(value, element?.clone() as Element?);

  @override
  FhirId setElement(String name, dynamic elementValue) {
    return FhirId(value, element?.setProperty(name, elementValue));
  }

  @override
  FhirId copyWith({
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
    return FhirId(
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
