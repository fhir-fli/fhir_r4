import 'dart:convert';
import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

extension FhirBase64BinaryExtension on String {
  FhirBase64Binary get toFhirBase64Binary => FhirBase64Binary(this);
}

class FhirBase64Binary extends PrimitiveType<String> {
  FhirBase64Binary._(this._valueString, this._valueBase64Binary, this._isValid,
      [Element? element])
      : super(fhirType: 'base64Binary', element: element);

  factory FhirBase64Binary(dynamic inValue, [Element? element]) {
    try {
      if (inValue is String && inValue.length % 4 == 0) {
        base64.decode(inValue); // Validates base64
        return FhirBase64Binary._(inValue, inValue, true, element);
      }
    } catch (e) {
      // Handle invalid base64 string
    }
    return FhirBase64Binary._(inValue.toString(), null, false, element);
  }

  factory FhirBase64Binary.fromJson(dynamic json) => FhirBase64Binary(json);

  factory FhirBase64Binary.fromYaml(dynamic yaml) => yaml is String
      ? FhirBase64Binary.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? FhirBase64Binary.fromJson(jsonDecode(jsonEncode(yaml)))
          : throw YamlFormatException<FhirBase64Binary>(
              'FormatException: "$yaml" is not a valid Yaml string or YamlMap.');

  final String _valueString;
  final String? _valueBase64Binary;
  final bool _isValid;

  @override
  bool get isValid {
    try {
      base64.decode(_valueString); // Validates base64
      return _isValid;
    } catch (e) {
      return false;
    }
  }

  @override
  String? get value => _valueBase64Binary;

  @override
  String toString() => _valueString;
  @override
  String toJson() => _valueString;
  @override
  String toYaml() => _valueString;
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirBase64Binary && other.value == _valueBase64Binary);

  @override
  FhirBase64Binary clone() => FhirBase64Binary._(
        _valueString,
        _valueBase64Binary,
        _isValid,
        element?.clone() as Element?,
      );

  /// Sets a property value.
  @override
  FhirBase64Binary setElement(String name, dynamic elementValue) {
    return FhirBase64Binary(value, element?.setProperty(name, elementValue));
  }
}
