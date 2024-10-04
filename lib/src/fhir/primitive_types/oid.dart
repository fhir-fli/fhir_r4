import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:yaml/yaml.dart';

import '../fhir_primitives.dart';

@immutable
class FhirOid extends PrimitiveType {
  FhirOid._(this._valueString, this._valueOid, this._isValid);

  factory FhirOid(dynamic inValue) => inValue is String &&
          RegExp(r'^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$').hasMatch(inValue)
      ? FhirOid._(inValue, inValue, true)
      : FhirOid._(inValue.toString(), null, false);

  factory FhirOid.fromJson(dynamic json) => FhirOid(json);

  factory FhirOid.fromYaml(dynamic yaml) => yaml is String
      ? FhirOid.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? FhirOid.fromJson(jsonDecode(jsonEncode(yaml)))
          : throw YamlFormatException<FhirOid>(
              'FormatException: "$yaml" is not a valid Yaml string or YamlMap.');

  @override
  String get fhirType => 'oid';

  final String _valueString;
  final String? _valueOid;
  final bool _isValid;

  @override
  bool get isValid => _isValid;
  @override
  int get hashCode => _valueString.hashCode;
  @override
  String? get value => _valueOid;

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
      (other is FhirOid && other.value == _valueOid) ||
      (other is String && other == _valueString);

  @override
  FhirOid clone() => FhirOid.fromJson(toJson());
}
