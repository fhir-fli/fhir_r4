import 'dart:convert';
import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

class FhirMarkdown extends PrimitiveType<String> {
  FhirMarkdown._(this._valueString, this._valueMarkdown, this._isValid,
      [Element? element])
      : super(fhirType: 'markdown', element: element);

  factory FhirMarkdown(dynamic inValue, [Element? element]) =>
      inValue is String && RegExp(r'[ \r\n\t\S]+').hasMatch(inValue)
          ? FhirMarkdown._(inValue, inValue, true, element)
          : FhirMarkdown._(inValue.toString(), null, false, element);

  factory FhirMarkdown.fromJson(dynamic json) => FhirMarkdown(json);

  factory FhirMarkdown.fromYaml(dynamic yaml) => yaml is String
      ? FhirMarkdown.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? FhirMarkdown.fromJson(jsonDecode(jsonEncode(yaml)))
          : throw YamlFormatException<FhirMarkdown>(
              'FormatException: "$yaml" is not a valid Yaml string or YamlMap.');

  final String _valueString;
  final String? _valueMarkdown;
  final bool _isValid;

  @override
  bool get isValid => _isValid;
  @override
  String? get value => _valueMarkdown;

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
      (other is FhirMarkdown && other.value == _valueMarkdown) ||
      (other is String && other == _valueString);

  @override
  FhirMarkdown clone() => FhirMarkdown._(
        _valueString,
        _valueMarkdown,
        _isValid,
        element?.clone() as Element?,
      );

  @override
  FhirMarkdown setElement(String name, dynamic value) {
    return FhirMarkdown(value, element?.setProperty(name, value));
  }
}
