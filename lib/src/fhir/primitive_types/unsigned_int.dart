import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

extension FhirUnsignedIntExtension on num {
  FhirUnsignedInt get toFhirInteger => this is int
      ? FhirUnsignedInt(this as int)
      : int.tryParse(toString()) != null
          ? FhirUnsignedInt(int.parse(toString()))
          : throw FormatException('Invalid input for FhirInteger: $this');
}

@Entity()
class FhirUnsignedInt extends FhirNumber {
  @override
  final int value;

  // Constructor enforces valid input
  FhirUnsignedInt(int super.input, {super.element})
      : assert(input >= 0, 'UnsignedInt must be 0 or greater'),
        value = input;

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

  // fromJson accepts dynamic input and validates
  factory FhirUnsignedInt.fromJson(dynamic json) {
    if (json is int && json >= 0) {
      return FhirUnsignedInt(json);
    } else if (json is num && json >= 0) {
      return FhirUnsignedInt(json.toInt());
    }
    throw FormatException('Invalid input for FhirUnsignedInt: $json');
  }

  // fromYaml accepts dynamic input and validates
  factory FhirUnsignedInt.fromYaml(dynamic yaml) => yaml is String
      ? FhirUnsignedInt.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? FhirUnsignedInt.fromJson(jsonDecode(jsonEncode(yaml)))
          : throw const FormatException(
              'Invalid Yaml format for FhirUnsignedInt');

  @override
  @Id()
  int dbId = 0;

  @override
  String get fhirType => 'unsignedInt';

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
      (other is FhirUnsignedInt && other.value == value) ||
      (other is int && other == value);

  @override
  FhirUnsignedInt clone() =>
      FhirUnsignedInt(value, element: element?.clone() as Element?);

  @override
  FhirUnsignedInt setElement(String name, dynamic elementValue) {
    return FhirUnsignedInt(value,
        element: element?.setProperty(name, elementValue));
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
