import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// FhirPositiveInt is a type of integer that is used in FHIR resources
extension FhirPositiveIntExtension on num {
  /// This method converts a Dart integer to a FHIR integer
  FhirPositiveInt get toFhirPositiveInt => this is int
      ? FhirPositiveInt(this as int)
      : int.tryParse(toString()) != null
          ? FhirPositiveInt(int.parse(toString()))
          : throw FormatException('Invalid input for FhirPositiveInt: $this');
}

/// This class represents the FHIR primitive type `integer`
class FhirPositiveInt extends FhirNumber {
  /// Constructor enforces valid input
  FhirPositiveInt(int super.input, {super.element}) : value = input;

  /// fromJson accepts dynamic input and validates
  factory FhirPositiveInt.fromJson(dynamic json) {
    if (json is int) {
      return FhirPositiveInt(json);
    } else if (json is num) {
      return FhirPositiveInt(json.toInt());
    }
    throw FormatException('Invalid input for FhirPositiveInt: $json');
  }

  /// fromYaml accepts dynamic input and validates
  factory FhirPositiveInt.fromYaml(dynamic yaml) => yaml is String
      ? FhirPositiveInt.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? FhirPositiveInt.fromJson(jsonDecode(jsonEncode(yaml)))
          : throw const FormatException(
              'Invalid Yaml format for FhirPositiveInt',
            );
  @override
  final int value;

  /// This method tries to parse a dynamic input into a FHIR integer
  static FhirPositiveInt? tryParse(dynamic input) {
    if (input is int) {
      try {
        return FhirPositiveInt(input);
      } catch (e) {
        return null;
      }
    } else {
      return null;
    }
  }

  @override
  String get fhirType => 'integer';

  @override
  int toJson() => value;

  @override
  int toYaml() => value;

  @override
  String toString() => value.toString();

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
      (other is FhirPositiveInt && other.value == value) ||
      (other is int && other == value);

  @override
  FhirPositiveInt clone() =>
      FhirPositiveInt(value, element: element?.clone() as Element?);

  @override
  FhirPositiveInt setElement(String name, dynamic elementValue) {
    return FhirPositiveInt(
      value,
      element: element?.setProperty(name, elementValue),
    );
  }

  @override
  FhirPositiveInt copyWith({
    int? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return FhirPositiveInt(
      newValue ?? value,
      element: element?.copyWith(
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
