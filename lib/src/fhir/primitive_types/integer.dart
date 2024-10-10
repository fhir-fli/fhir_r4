import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

extension FhirIntegerExtension on num {
  FhirInteger get toFhirInteger => this is int
      ? FhirInteger(this as int)
      : int.tryParse(toString()) != null
          ? FhirInteger(int.parse(toString()))
          : throw FormatException('Invalid input for FhirInteger: $this');
}

@Entity()
class FhirInteger extends FhirNumber {
  @override
  final int value;

  // Constructor enforces valid input
  FhirInteger(int super.input, {super.element}) : value = input;

  static FhirInteger? tryParse(dynamic input) {
    if (input is int) {
      try {
        return FhirInteger(input);
      } catch (e) {
        return null;
      }
    } else {
      return null;
    }
  }

  // fromJson accepts dynamic input and validates
  factory FhirInteger.fromJson(dynamic json) {
    if (json is int) {
      return FhirInteger(json);
    } else if (json is num) {
      return FhirInteger(json.toInt());
    }
    throw FormatException('Invalid input for FhirInteger: $json');
  }

  // fromYaml accepts dynamic input and validates
  factory FhirInteger.fromYaml(dynamic yaml) => yaml is String
      ? FhirInteger.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? FhirInteger.fromJson(jsonDecode(jsonEncode(yaml)))
          : throw const FormatException('Invalid Yaml format for FhirInteger');

  @override
  @Id()
  int dbId = 0;

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
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirInteger && other.value == value) ||
      (other is int && other == value);

  @override
  FhirInteger clone() =>
      FhirInteger(value, element: element?.clone() as Element?);

  @override
  FhirInteger setElement(String name, dynamic elementValue) {
    return FhirInteger(value,
        element: element?.setProperty(name, elementValue));
  }

  @override
  FhirInteger copyWith({
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
    return FhirInteger(
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
