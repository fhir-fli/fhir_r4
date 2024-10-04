import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:yaml/yaml.dart';

import 'integer.dart';
import 'number.dart';
import 'primitive_type_exceptions.dart';

@immutable
class FhirDecimal extends FhirNumber {
  FhirDecimal._(
      super.valueString, super.valueNumber, super.isValid, this.isInt);

  factory FhirDecimal(dynamic inValue) {
    if (inValue is FhirDecimal) {
      return inValue;
    } else if (inValue is FhirInteger) {
      return FhirDecimal._(
        inValue.toString(),
        inValue.value?.toDouble(),
        inValue.isValid,
        inValue.isValid,
      );
    } else if (inValue is num) {
      return FhirDecimal._(
        inValue.toString(),
        inValue.toDouble(),
        true,
        int.tryParse(inValue.toString()) != null,
      );
    }
    throw CannotBeConstructed<FhirDecimal>(
        'Decimal cannot be constructed from $inValue ${inValue.runtimeType}');
  }

  factory FhirDecimal.fromJson(dynamic json) => FhirDecimal(json);

  factory FhirDecimal.fromYaml(dynamic yaml) => yaml is String
      ? FhirDecimal.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? FhirDecimal.fromJson(jsonDecode(jsonEncode(yaml)))
          : throw YamlFormatException<FhirDecimal>(
              'FormatException: "$yaml" is not a valid Yaml string or YamlMap.');

  @override
  String get fhirType => 'decimal';

  final bool isInt;
  @override
  double? get value => valueNumber as double?;

  @override
  dynamic toJson() => isInt ? valueNumber?.toInt() : valueNumber;

  @override
  dynamic toYaml() => isInt ? valueNumber?.toInt() : valueNumber;

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
  FhirDecimal clone() => FhirDecimal.fromJson(toJson());
}
