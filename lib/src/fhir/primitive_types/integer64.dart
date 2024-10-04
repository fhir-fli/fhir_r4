import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:yaml/yaml.dart';

import '../fhir_primitives.dart';

@immutable
class FhirInteger64 extends PrimitiveType implements Comparable<FhirInteger64> {
  FhirInteger64._(this.valueString, this.valueNumber, this.isValid);

  factory FhirInteger64(dynamic inValue) {
    if (inValue is int) {
      return FhirInteger64._(inValue.toString(), BigInt.from(inValue), true);
    } else if (inValue is BigInt) {
      return FhirInteger64._(inValue.toString(), inValue, true);
    } else if (inValue is String) {
      final BigInt? tempInteger64 = BigInt.tryParse(inValue);
      return tempInteger64 == null
          ? FhirInteger64._(inValue, null, false)
          : FhirInteger64._(inValue, tempInteger64, true);
    }
    throw CannotBeConstructed<FhirInteger64>(
        'Integer64 cannot be constructed from '
        '$inValue (which is an ${inValue.runtimeType}).');
  }

  factory FhirInteger64.fromJson(dynamic json) => FhirInteger64(json);

  factory FhirInteger64.fromYaml(dynamic yaml) => yaml is String
      ? FhirInteger64.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? FhirInteger64.fromJson(jsonDecode(jsonEncode(yaml)))
          : throw YamlFormatException<FhirInteger64>(
              'FormatException: "$yaml" is not a valid Yaml string or YamlMap.');

  @override
  String get fhirType => 'integer64';

  @override
  BigInt? get value => valueNumber;
  final String valueString;
  final BigInt? valueNumber;
  @override
  final bool isValid;

  @override
  int get hashCode => valueString.hashCode;

  @override
  String toString() => valueString;
  @override
  String toJson() => valueString;
  @override
  String toYaml() => valueString;
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirInteger64 && other.valueNumber == valueNumber) ||
      (other is BigInt && other == valueNumber);

  bool operator >(Object o) => valueNumber == null ||
          (o is! FhirInteger64 && o is! BigInt) ||
          (o is FhirInteger64 && o.valueNumber == null)
      ? throw InvalidTypes<FhirInteger64>(
          'One of the values is not valid or null\n'
          'This number is: ${toString()}, compared number is $o')
      : o is FhirInteger64
          ? valueNumber! > o.valueNumber!
          : valueNumber! > (o as BigInt);

  bool operator >=(Object o) => this == o || this > o;

  bool operator <(Object o) => valueNumber == null ||
          (o is! FhirInteger64 && o is! BigInt) ||
          (o is FhirInteger64 && o.valueNumber == null)
      ? throw InvalidTypes<FhirInteger64>(
          'One of the values is not valid or null\n'
          'This number is: ${toString()}, compared number is $o')
      : o is FhirInteger64
          ? valueNumber! < o.valueNumber!
          : valueNumber! < (o as BigInt);

  bool operator <=(Object o) => this == o || this < o;

  @override
  int compareTo(FhirInteger64 other) {
    if (other.isValid && isValid) {
      return valueNumber!.compareTo(other.valueNumber!);
    } else {
      throw InvalidTypes<FhirNumber>('One of the values is not valid or null\n'
          'This number is: ${toString()}, compared number is $other');
    }
  }

  @override
  FhirInteger64 clone() => FhirInteger64.fromJson(toJson());
}
