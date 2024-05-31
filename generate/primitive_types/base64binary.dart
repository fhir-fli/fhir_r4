// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:meta/meta.dart';
import 'package:yaml/yaml.dart';

import 'primitive_types.dart';

@immutable
class FhirBase64Binary implements PrimitiveType {
  const FhirBase64Binary._(
      this._valueString, this._valueBase64Binary, this._isValid);

  factory FhirBase64Binary(dynamic inValue) =>
      inValue is String && inValue.length % 4 == 0
          ? FhirBase64Binary._(inValue, inValue, true)
          : FhirBase64Binary._(inValue.toString(), null, false);

  factory FhirBase64Binary.fromJson(dynamic json) => FhirBase64Binary(json);

  factory FhirBase64Binary.fromYaml(dynamic yaml) => yaml is String
      ? FhirBase64Binary.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? FhirBase64Binary.fromJson(jsonDecode(jsonEncode(yaml)))
          : throw YamlFormatException<FhirBase64Binary>(
              'FormatException: "$yaml" is not a valid Yaml string or YamlMap.');

  @override
  String get fhirType => 'base64Binary';

  final String _valueString;
  final String? _valueBase64Binary;
  final bool _isValid;

  @override
  bool get isValid => _isValid;
  @override
  int get hashCode => _valueString.hashCode;
  @override
  String? get value => _valueBase64Binary;

  @override
  String toString() => _valueString;
  @override
  String toJson() => _valueString;
  @override
  String toYaml() => _valueString;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirBase64Binary && other.value == _valueBase64Binary) ||
      (other is String && other == _valueString);
}
