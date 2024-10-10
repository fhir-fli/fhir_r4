import 'dart:convert';

import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

extension FhirDecimalExtension on num {
  FhirDecimal get toFhirDecimal => FhirDecimal(this);
}

class FhirDecimal extends FhirNumber {
  @override
  final double value;
  final bool isInt;

  // Constructor enforces valid input
  FhirDecimal(num input, {super.element})
      : value = input.toDouble(),
        isInt = input is int,
        super(input.toDouble());

  // Handle construction from other valid types like FhirInteger
  factory FhirDecimal.fromFhirInteger(FhirInteger integer, [Element? element]) {
    return FhirDecimal(integer.value, element: element);
  }

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

  // fromJson accepts dynamic input and validates
  factory FhirDecimal.fromJson(dynamic json, {Element? element}) {
    if (json is num) {
      return FhirDecimal(json, element: element);
    } else {
      throw FormatException('Invalid input for FhirDecimal: $json');
    }
  }

  // fromYaml accepts dynamic input and validates
  factory FhirDecimal.fromYaml(dynamic yaml, {Element? element}) {
    if (yaml is String) {
      return FhirDecimal.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))),
          element: element);
    } else if (yaml is YamlMap) {
      return FhirDecimal.fromJson(jsonDecode(jsonEncode(yaml)),
          element: element);
    } else {
      throw const FormatException('Invalid Yaml format for FhirDecimal');
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
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirDecimal && other.value == value) ||
      (other is num && other == value);

  @override
  FhirDecimal clone() =>
      FhirDecimal(value, element: element?.clone() as Element?);

  @override
  FhirDecimal setElement(String name, dynamic elementValue) {
    return FhirDecimal(value,
        element: element?.setProperty(name, elementValue));
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
