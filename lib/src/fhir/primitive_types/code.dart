import 'dart:convert';
import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

class FhirCode extends PrimitiveType<String> {
  FhirCode._(this._valueString, this._valueCode, this._isValid,
      [Element? element])
      : super(fhirType: 'code', element: element);

  factory FhirCode(dynamic inValue, [Element? element]) =>
      inValue is String && RegExp(r'^[^\s]+(\s[^\s]+)*$').hasMatch(inValue)
          ? FhirCode._(inValue, inValue, true, element)
          : FhirCode._(inValue.toString(), null, false, element);

  factory FhirCode.fromJson(dynamic json) => FhirCode(json);

  factory FhirCode.fromYaml(dynamic yaml) => yaml is String
      ? FhirCode.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? FhirCode.fromJson(jsonDecode(jsonEncode(yaml)))
          : throw YamlFormatException<FhirCode>(
              'FormatException: "$yaml" is not a valid Yaml string or YamlMap.');

  final String _valueString;
  final String? _valueCode;
  final bool _isValid;

  @override
  bool get isValid => _isValid;
  @override
  String? get value => _valueCode;

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
      (other is FhirCode && other.value == _valueCode) ||
      (other is String && other == _valueString);

  @override
  FhirCode clone() => FhirCode._(
        _valueString,
        _valueCode,
        _isValid,
        element?.clone() as Element?,
      );

  @override
  FhirCode setElement(String name, dynamic elementValue) {
    return FhirCode(value, element?.setProperty(name, elementValue));
  }
}