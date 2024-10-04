import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:yaml/yaml.dart';

import 'number.dart';
import 'primitive_type_exceptions.dart';

@immutable
class FhirInteger extends FhirNumber {
  FhirInteger._(super.valueString, super.valueNumber, super.isValid);

  factory FhirInteger(dynamic inValue) {
    if (inValue is int) {
      return FhirInteger._(inValue.toString(), inValue, true);
    } else if (inValue is num) {
      return FhirInteger._(inValue.toString(), int.tryParse(inValue.toString()),
          int.tryParse(inValue.toString()) != null);
    }
    throw CannotBeConstructed<FhirInteger>(
        'Integer cannot be constructed from $inValue.');
  }

  factory FhirInteger.fromJson(dynamic json) => FhirInteger(json);

  factory FhirInteger.fromYaml(dynamic yaml) => yaml is String
      ? FhirInteger.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? FhirInteger.fromJson(jsonDecode(jsonEncode(yaml)))
          : throw YamlFormatException<FhirInteger>(
              'FormatException: "$yaml" is not a valid Yaml string or YamlMap.');

  @override
  String get fhirType => 'integer';

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
  FhirInteger clone() => FhirInteger.fromJson(toJson());
}
