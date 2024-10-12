import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// FhirUnsignedInt is a type of integer that is used in FHIR resources
extension FhirUnsignedIntExtension on num {
  /// This method converts a Dart integer to a FHIR integer
  FhirUnsignedInt get toFhirUnsignedInt => this is int
      ? FhirUnsignedInt(this as int)
      : int.tryParse(toString()) != null
          ? FhirUnsignedInt(int.parse(toString()))
          : throw FormatException('Invalid input for FhirUnsignedInt: $this');
}

/// This class represents the FHIR primitive type `integer`
class FhirUnsignedInt extends FhirNumber {
  /// Constructor enforces valid input
  FhirUnsignedInt(int super.input, {super.element}) : value = input;

  /// fromJson accepts dynamic input and validates
  factory FhirUnsignedInt.fromJson(dynamic json) {
    if (json is int) {
      return FhirUnsignedInt(json);
    } else if (json is num) {
      return FhirUnsignedInt(json.toInt());
    }
    throw FormatException('Invalid input for FhirUnsignedInt: $json');
  }

  /// fromYaml accepts dynamic input and validates
  factory FhirUnsignedInt.fromYaml(dynamic yaml) => yaml is String
      ? FhirUnsignedInt.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? FhirUnsignedInt.fromJson(jsonDecode(jsonEncode(yaml)))
          : throw const FormatException(
              'Invalid Yaml format for FhirUnsignedInt',
            );
  @override
  final int value;

  /// This method tries to parse a dynamic input into a FHIR integer
  static FhirUnsignedInt? tryParse(dynamic input) {
    if (input is int) {
      try {
        return FhirUnsignedInt(input);
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
      (other is FhirUnsignedInt && other.value == value) ||
      (other is int && other == value);

  @override
  FhirUnsignedInt clone() =>
      FhirUnsignedInt(value, element: element?.clone() as Element?);

  @override
  FhirUnsignedInt setElement(String name, dynamic elementValue) {
    return FhirUnsignedInt(
      value,
      element: element?.setProperty(name, elementValue),
    );
  }

  @override
  FhirUnsignedInt copyWith({
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
    return FhirUnsignedInt(
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
