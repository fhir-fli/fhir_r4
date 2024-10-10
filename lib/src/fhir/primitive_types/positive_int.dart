import 'dart:convert';

import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

extension FhirPositiveIntExtension on num {
  FhirPositiveInt get toFhirInteger => this is int
      ? FhirPositiveInt(this as int)
      : int.tryParse(toString()) != null
          ? FhirPositiveInt(int.parse(toString()))
          : throw FormatException('Invalid input for FhirInteger: $this');
}

class FhirPositiveInt extends FhirNumber {
  @override
  final int value;

  // Constructor enforces valid input
  FhirPositiveInt(int super.input, {super.element})
      : assert(input > 0, 'PositiveInt must be greater than 0'),
        value = input;

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

  // fromJson accepts dynamic input and validates
  factory FhirPositiveInt.fromJson(dynamic json) {
    if (json is int && json > 0) {
      return FhirPositiveInt(json);
    } else if (json is num && json > 0) {
      return FhirPositiveInt(json.toInt());
    }
    throw FormatException('Invalid input for FhirPositiveInt: $json');
  }

  // fromYaml accepts dynamic input and validates
  factory FhirPositiveInt.fromYaml(dynamic yaml) => yaml is String
      ? FhirPositiveInt.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? FhirPositiveInt.fromJson(jsonDecode(jsonEncode(yaml)))
          : throw const FormatException(
              'Invalid Yaml format for FhirPositiveInt');

  @override
  String get fhirType => 'positiveInt';

  @override
  int toJson() => value;

  @override
  int toYaml() => value;

  @override
  String toString() => value.toString();

  @override
  String toJsonString() => jsonEncode(toJson());

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
    return FhirPositiveInt(value,
        element: element?.setProperty(name, elementValue));
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
