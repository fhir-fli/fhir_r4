import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:yaml/yaml.dart';

import 'number.dart';
import 'primitive_type_exceptions.dart';

@immutable
class FhirPositiveInt extends FhirNumber {
  FhirPositiveInt._(super.valueString, super.valueNumber, super.isValid);

  factory FhirPositiveInt(dynamic inValue) {
    if (inValue is int) {
      return inValue > 0
          ? FhirPositiveInt._(inValue.toString(), inValue, true)
          : FhirPositiveInt._(inValue.toString(), null, false);
    } else if (inValue is num) {
      final int? tempPositiveInt = int.tryParse(inValue.toString());
      return tempPositiveInt == null
          ? FhirPositiveInt._(inValue.toString(), null, false)
          : tempPositiveInt > 0
              ? FhirPositiveInt._(inValue.toString(), tempPositiveInt, true)
              : FhirPositiveInt._(inValue.toString(), null, false);
    }
    throw CannotBeConstructed<FhirPositiveInt>(
        'PositiveInt cannot be constructed from $inValue.');
  }

  factory FhirPositiveInt.fromJson(dynamic json) => FhirPositiveInt(json);

  factory FhirPositiveInt.fromYaml(dynamic yaml) => yaml is String
      ? FhirPositiveInt.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? FhirPositiveInt.fromJson(jsonDecode(jsonEncode(yaml)))
          : throw YamlFormatException<FhirPositiveInt>(
              'FormatException: "$yaml" is not a valid Yaml string or YamlMap.');

  @override
  String get fhirType => 'positiveInt';

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
  FhirPositiveInt clone() => FhirPositiveInt.fromJson(toJson());
}
