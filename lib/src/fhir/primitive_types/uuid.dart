import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:yaml/yaml.dart';

import '../fhir_primitives.dart';

@immutable
class FhirUuid extends PrimitiveType {
  FhirUuid._(this._valueString, this._valueUuid, this._isValid);

  factory FhirUuid(dynamic inValue) => inValue is String &&
          RegExp(r'^[0-9A-F]{8}-[0-9A-F]{4}-4[0-9A-F]{3}-[8-9A-B][0-9A-F]{3}-[0-9A-F]{12}$')
              .hasMatch(inValue)
      ? FhirUuid._(inValue, inValue, true)
      : FhirUuid._(inValue.toString(), null, false);

  factory FhirUuid.fromJson(dynamic json) => FhirUuid(json);

  factory FhirUuid.fromYaml(dynamic yaml) => yaml is String
      ? FhirUuid.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? FhirUuid.fromJson(jsonDecode(jsonEncode(yaml)))
          : throw YamlFormatException<FhirUuid>(
              'FormatException: "$yaml" is not a valid Yaml string or YamlMap.');

  @override
  String get fhirType => 'uuid';

  final String _valueString;
  final String? _valueUuid;
  final bool _isValid;

  @override
  bool get isValid => _isValid;
  @override
  int get hashCode => _valueString.hashCode;
  @override
  String? get value => _valueUuid;

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
      (other is FhirUuid && other.value == _valueUuid) ||
      (other is String && other == _valueString);

  @override
  FhirUuid clone() => FhirUuid.fromJson(toJson());
}
