import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart' as uuid;
import 'package:yaml/yaml.dart';

import '../fhir_primitives.dart';

/// returns the same resource with a new ID (even if there is already an ID present)
FhirId generateNewUUidFhirId() => FhirId(const uuid.Uuid().v4());

String generateNewUuidString() => const uuid.Uuid().v4();

@immutable
class FhirId extends PrimitiveType {
  FhirId._(this._valueString, this._valueId, this._isValid);

  factory FhirId(dynamic inValue) =>
      inValue is String && RegExp(r'^[A-Za-z0-9\-\.]{1,64}$').hasMatch(inValue)
          ? FhirId._(inValue, inValue, true)
          : FhirId._(inValue.toString(), null, false);

  factory FhirId.fromJson(dynamic json) => FhirId(json);

  factory FhirId.fromYaml(dynamic yaml) => yaml is String
      ? FhirId.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? FhirId.fromJson(jsonDecode(jsonEncode(yaml)))
          : throw YamlFormatException<FhirId>(
              'FormatException: "$yaml" is not a valid Yaml string or YamlMap.');

  @override
  String get fhirType => 'id';

  final String _valueString;
  final String? _valueId;
  final bool _isValid;

  @override
  bool get isValid => _isValid;
  @override
  int get hashCode => _valueString.hashCode;
  @override
  String? get value => _valueId;

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
      (other is FhirId && other.value == _valueId) ||
      (other is String && other == _valueString);

  @override
  FhirId clone() => FhirId.fromJson(toJson());
}
