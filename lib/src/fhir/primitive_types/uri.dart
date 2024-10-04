import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:yaml/yaml.dart';

import '../fhir_primitives.dart';

@immutable
class FhirUri extends PrimitiveType {
  FhirUri._(this._valueString, this._valueUri, this._isValid);

  factory FhirUri(dynamic inValue) {
    if (inValue is Uri) {
      return FhirUri._(inValue.toString(), inValue, true);
    } else if (inValue is String) {
      final Uri? tempUri = Uri.tryParse(inValue);
      return FhirUri._(inValue, tempUri, tempUri != null);
    }
    throw CannotBeConstructed<FhirUri>(
        'FhirUri cannot be constructed from $inValue.');
  }

  factory FhirUri.fromJson(dynamic json) => FhirUri(json);

  factory FhirUri.fromYaml(dynamic yaml) => yaml is String
      ? FhirUri.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? FhirUri.fromJson(jsonDecode(jsonEncode(yaml)))
          : throw YamlFormatException<FhirUri>(
              'FormatException: "$yaml" is not a valid Yaml string or YamlMap.');

  @override
  String get fhirType => 'uri';

  final String _valueString;
  final Uri? _valueUri;
  final bool _isValid;

  @override
  bool get isValid => _isValid;
  @override
  int get hashCode => _valueString.hashCode;
  @override
  Uri? get value => _valueUri;

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
      (other is FhirUri && other.value == _valueUri) ||
      (other is Uri && other == _valueUri) ||
      (other is String && other == _valueString);

  @override
  FhirUri clone() => FhirUri.fromJson(toJson());
}
