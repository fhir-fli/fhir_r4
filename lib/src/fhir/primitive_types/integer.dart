import 'dart:convert';
import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

class FhirInteger extends FhirNumber {
  FhirInteger._(super.valueString, super.valueNumber, super.isValid,
      {super.element})
      : super(fhirType: 'integer');

  factory FhirInteger(dynamic inValue, {Element? element}) {
    if (inValue is int) {
      return FhirInteger._(inValue.toString(), inValue, true, element: element);
    } else if (inValue is num) {
      return FhirInteger._(inValue.toString(), int.tryParse(inValue.toString()),
          int.tryParse(inValue.toString()) != null,
          element: element);
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
  int? get value => valueNumber as int?;

  @override
  FhirInteger clone() => FhirInteger._(valueString, valueNumber, isValid,
      element: element?.clone() as Element?);

  @override
  FhirInteger setElement(String name, dynamic elementValue) {
    return FhirInteger(value,
        element: element?.setProperty(name, elementValue));
  }
}
