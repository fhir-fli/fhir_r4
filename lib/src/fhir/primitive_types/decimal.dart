import 'dart:convert';

import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

extension FhirDecimalExtension on num {
  FhirDecimal get toFhirDecimal => FhirDecimal(this);
}

class FhirDecimal extends FhirNumber {
  FhirDecimal._(super.valueString, super.valueNumber, super.isValid, this.isInt,
      {super.element})
      : super(fhirType: 'decimal');

  factory FhirDecimal(dynamic inValue, {Element? element}) {
    if (inValue is FhirDecimal) {
      return inValue;
    } else if (inValue is FhirInteger) {
      return FhirDecimal._(
        inValue.toString(),
        inValue.value?.toDouble(),
        inValue.isValid,
        inValue.isValid,
        element: element,
      );
    } else if (inValue is num) {
      return FhirDecimal._(
        inValue.toString(),
        inValue.toDouble(),
        true,
        int.tryParse(inValue.toString()) != null,
        element: element,
      );
    }
    throw CannotBeConstructed<FhirDecimal>(
        'Decimal cannot be constructed from $inValue (${inValue.runtimeType})');
  }

  factory FhirDecimal.fromJson(dynamic json) => FhirDecimal(json);

  factory FhirDecimal.fromYaml(dynamic yaml) => yaml is String
      ? FhirDecimal.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? FhirDecimal.fromJson(jsonDecode(jsonEncode(yaml)))
          : throw YamlFormatException<FhirDecimal>(
              'FormatException: "$yaml" is not a valid Yaml string or YamlMap.');

  final bool isInt;
  @override
  double? get value => valueNumber as double?;

  @override
  num? toJson() => isInt ? valueNumber?.toInt() : valueNumber;

  @override
  dynamic toYaml() => isInt ? valueNumber?.toInt() : valueNumber;

  @override
  FhirDecimal clone() => FhirDecimal._(valueString, valueNumber, isValid, isInt,
      element: element?.clone() as Element?);

  @override
  FhirDecimal setElement(String name, dynamic elementValue) {
    return FhirDecimal(value,
        element: element?.setProperty(name, elementValue));
  }
}
