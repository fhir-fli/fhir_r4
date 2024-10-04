import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:yaml/yaml.dart';

import '../fhir_primitives.dart';

@immutable
class FhirMarkdown extends PrimitiveType {
  FhirMarkdown._(this._valueString, this._valueMarkdown, this._isValid);

  factory FhirMarkdown(dynamic inValue) =>
      inValue is String && RegExp(r'[ \r\n\t\S]+').hasMatch(inValue)
          ? FhirMarkdown._(inValue, inValue, true)
          : FhirMarkdown._(inValue.toString(), null, false);

  factory FhirMarkdown.fromJson(dynamic json) => FhirMarkdown(json);

  factory FhirMarkdown.fromYaml(dynamic yaml) => yaml is String
      ? FhirMarkdown.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? FhirMarkdown.fromJson(jsonDecode(jsonEncode(yaml)))
          : throw YamlFormatException<FhirMarkdown>(
              'FormatException: "$yaml" is not a valid Yaml string or YamlMap.');

  @override
  String get fhirType => 'markdown';

  final String _valueString;
  final String? _valueMarkdown;
  final bool _isValid;

  @override
  bool get isValid => _isValid;
  @override
  int get hashCode => _valueString.hashCode;
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirMarkdown && other.value == _valueMarkdown) ||
      (other is String && other == _valueString);

  @override
  FhirMarkdown clone() => FhirMarkdown.fromJson(toJson());
}
