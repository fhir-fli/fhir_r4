import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:yaml/yaml.dart';

import 'number.dart';
import 'primitive_type_exceptions.dart';

@immutable
class FhirUnsignedInt extends FhirNumber {
  FhirUnsignedInt._(super.valueString, super.valueNumber, super.isValid);

  factory FhirUnsignedInt(dynamic inValue) {
    if (inValue is int) {
      return inValue >= 0
          ? FhirUnsignedInt._(inValue.toString(), inValue, true)
          : FhirUnsignedInt._(inValue.toString(), null, false);
    } else if (inValue is num) {
      final int? tempUnsignedInt = int.tryParse(inValue.toString());
      return tempUnsignedInt == null
          ? FhirUnsignedInt._(inValue.toString(), null, false)
          : tempUnsignedInt >= 0
              ? FhirUnsignedInt._(inValue.toString(), tempUnsignedInt, true)
              : FhirUnsignedInt._(inValue.toString(), null, false);
    }
    throw CannotBeConstructed<FhirUnsignedInt>(
        'UnsignedInt cannot be constructed from $inValue.');
  }

  factory FhirUnsignedInt.fromJson(dynamic json) => FhirUnsignedInt(json);

  factory FhirUnsignedInt.fromYaml(dynamic yaml) => yaml is String
      ? FhirUnsignedInt.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? FhirUnsignedInt.fromJson(jsonDecode(jsonEncode(yaml)))
          : throw YamlFormatException<FhirUnsignedInt>(
              'FormatException: "$yaml" is not a valid Yaml string or YamlMap.');

  @override
  String get fhirType => 'unsignedInt';

  @override
  int? get value => valueNumber as int?;

  @override
  int compareTo(FhirNumber other) {
    if (other.isValid && isValid) {
      return valueNumber!.compareTo(other.valueNumber!);
    } else {
      throw InvalidTypes<FhirNumber>('One of the values is not valid or null\n'
          'This number is: ${toString()}, compared number is $other');
    }
  }

  @override
  FhirUnsignedInt clone() => FhirUnsignedInt.fromJson(toJson());
}
