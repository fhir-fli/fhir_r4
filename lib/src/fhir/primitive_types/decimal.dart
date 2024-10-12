import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// FhirDecimal is a type of decimal that is used in FHIR resources
extension FhirDecimalExtension on num {
  /// This method converts a Dart decimal to a FHIR decimal
  FhirDecimal get toFhirDecimal => FhirDecimal(this);
}

/// This class represents the FHIR primitive type `decimal`
class FhirDecimal extends FhirNumber {
  /// Constructor enforces valid input
  FhirDecimal(num input, {super.element})
      : value = input.toDouble(),
        isInt = input is int,
        super(input.toDouble());

  /// Handle construction from other valid types like FhirInteger
  factory FhirDecimal.fromFhirInteger(FhirInteger integer, [Element? element]) {
    return FhirDecimal(integer.value, element: element);
  }

  /// fromJson accepts dynamic input and validates
  factory FhirDecimal.fromJson(dynamic json, {Element? element}) {
    if (json is num) {
      return FhirDecimal(json, element: element);
    } else {
      throw FormatException('Invalid input for FhirDecimal: $json');
    }
  }

  /// fromYaml accepts dynamic input and validates
  factory FhirDecimal.fromYaml(dynamic yaml, {Element? element}) {
    if (yaml is String) {
      return FhirDecimal.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))),
        element: element,
      );
    } else if (yaml is YamlMap) {
      return FhirDecimal.fromJson(
        jsonDecode(jsonEncode(yaml)),
        element: element,
      );
    } else {
      throw const FormatException('Invalid Yaml format for FhirDecimal');
    }
  }
  @override
  final double value;

  /// This method tries to parse a dynamic input into a FHIR decimal
  final bool isInt;

  /// Try to parse a dynamic input into a [FhirDecimal]
  static FhirDecimal? tryParse(dynamic input) {
    if (input is num) {
      try {
        return FhirDecimal(input);
      } catch (e) {
        return null;
      }
    } else {
      return null;
    }
  }

  @override
  String get fhirType => 'decimal';

  @override
  num toJson() => isInt ? value.toInt() : value;

  @override
  num toYaml() => toJson();

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
      (other is FhirDecimal && other.value == value) ||
      (other is num && other == value);

  @override
  FhirDecimal clone() =>
      FhirDecimal(value, element: element?.clone() as Element?);

  @override
  FhirDecimal setElement(String name, dynamic elementValue) {
    return FhirDecimal(
      value,
      element: element?.setProperty(name, elementValue),
    );
  }

  @override
  FhirDecimal copyWith({
    num? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return FhirDecimal(
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
