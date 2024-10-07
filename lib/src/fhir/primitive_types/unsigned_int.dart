import 'dart:convert';
import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

extension FhirUnsignedIntExtension on num {
  FhirUnsignedInt get toFhirUnsignedInt => FhirUnsignedInt(this);
}

class FhirUnsignedInt extends FhirNumber {
  FhirUnsignedInt._(super.valueString, super.valueNumber, super.isValid,
      {super.element})
      : super(fhirType: 'unsignedInt');

  factory FhirUnsignedInt(dynamic inValue, {Element? element}) {
    if (inValue is int) {
      return inValue >= 0
          ? FhirUnsignedInt._(inValue.toString(), inValue, true,
              element: element)
          : FhirUnsignedInt._(inValue.toString(), null, false,
              element: element);
    } else if (inValue is num) {
      final int? tempUnsignedInt = int.tryParse(inValue.toString());
      return tempUnsignedInt == null
          ? FhirUnsignedInt._(inValue.toString(), null, false, element: element)
          : tempUnsignedInt >= 0
              ? FhirUnsignedInt._(inValue.toString(), tempUnsignedInt, true,
                  element: element)
              : FhirUnsignedInt._(inValue.toString(), null, false,
                  element: element);
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
  int? get value => valueNumber as int?;

  @override
  int? toJson() => valueNumber as int?;

  @override
  FhirUnsignedInt clone() =>
      FhirUnsignedInt._(valueString, valueNumber, isValid,
          element: element?.clone() as Element?);

  @override
  FhirUnsignedInt setElement(String name, dynamic elementValue) {
    return FhirUnsignedInt(value,
        element: element?.setProperty(name, elementValue));
  }
}
