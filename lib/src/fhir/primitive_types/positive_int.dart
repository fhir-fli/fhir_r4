import 'dart:convert';
import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

extension FhirPositiveIntExtension on num {
  FhirPositiveInt get toFhirPositiveInt => FhirPositiveInt(this);
}

class FhirPositiveInt extends FhirNumber {
  FhirPositiveInt._(super.valueString, super.valueNumber, super.isValid,
      {super.element})
      : super(fhirType: 'positiveInt');

  factory FhirPositiveInt(dynamic inValue, {Element? element}) {
    if (inValue is int) {
      return inValue > 0
          ? FhirPositiveInt._(inValue.toString(), inValue, true,
              element: element)
          : FhirPositiveInt._(inValue.toString(), null, false,
              element: element);
    } else if (inValue is num) {
      final int? tempPositiveInt = int.tryParse(inValue.toString());
      return tempPositiveInt == null
          ? FhirPositiveInt._(inValue.toString(), null, false, element: element)
          : tempPositiveInt > 0
              ? FhirPositiveInt._(inValue.toString(), tempPositiveInt, true,
                  element: element)
              : FhirPositiveInt._(inValue.toString(), null, false,
                  element: element);
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
  int? get value => valueNumber as int?;

  @override
  int? toJson() => valueNumber as int?;

  @override
  FhirPositiveInt clone() =>
      FhirPositiveInt._(valueString, valueNumber, isValid,
          element: element?.clone() as Element?);

  @override
  FhirPositiveInt setElement(String name, dynamic elementValue) {
    return FhirPositiveInt(value,
        element: element?.setProperty(name, elementValue));
  }
}
