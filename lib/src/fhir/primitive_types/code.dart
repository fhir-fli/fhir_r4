import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:yaml/yaml.dart';

import '../fhir_primitives.dart';

@immutable
class FhirCode extends PrimitiveType {
  FhirCode._(this._valueString, this._valueCode, this._isValid);

  /// Construct a [FhirCode] constant at compile time
  FhirCode.asConst(String code)
      : _valueString = code,
        _valueCode = code,
        _isValid = true;

  factory FhirCode(dynamic inValue) =>
      inValue is String && RegExp(r'^[^\s]+(\s[^\s]+)*$').hasMatch(inValue)
          ? FhirCode._(inValue, inValue, true)
          : FhirCode._(inValue.toString(), null, false);

  factory FhirCode.fromJson(dynamic json) => FhirCode(json);

  factory FhirCode.fromYaml(dynamic yaml) => yaml is String
      ? FhirCode.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? FhirCode.fromJson(jsonDecode(jsonEncode(yaml)))
          : throw YamlFormatException<FhirCode>(
              'FormatException: "$yaml" is not a valid Yaml string or YamlMap.');

  @override
  String get fhirType => 'code';

  final String _valueString;
  final String? _valueCode;
  final bool _isValid;

  @override
  bool get isValid => _isValid;
  @override
  int get hashCode => _valueString.hashCode;
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirCode && other.value == _valueCode) ||
      (other is String && other == _valueString);

  @override
  FhirCode clone() => FhirCode.fromJson(toJson());
}
