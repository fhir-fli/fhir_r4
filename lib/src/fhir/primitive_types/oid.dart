import 'dart:convert';
import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

extension FhirOidExtension on String {
  FhirOid get toFhirOid => FhirOid(this);
}

class FhirOid extends PrimitiveType<String> {
  FhirOid._(this._valueString, this._valueOid, this._isValid,
      [Element? element])
      : super(fhirType: 'oid', element: element);

  factory FhirOid(dynamic inValue, [Element? element]) => inValue is String &&
          RegExp(r'^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$').hasMatch(inValue)
      ? FhirOid._(inValue, inValue, true, element)
      : FhirOid._(inValue.toString(), null, false, element);

  factory FhirOid.fromJson(dynamic json) => FhirOid(json);

  factory FhirOid.fromYaml(dynamic yaml) => yaml is String
      ? FhirOid.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? FhirOid.fromJson(jsonDecode(jsonEncode(yaml)))
          : throw YamlFormatException<FhirOid>(
              'FormatException: "$yaml" is not a valid Yaml string or YamlMap.');

  final String _valueString;
  final String? _valueOid;
  final bool _isValid;

  @override
  bool get isValid => _isValid;
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
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirOid && other.value == _valueOid) ||
      (other is String && other == _valueString);

  @override
  FhirOid clone() => FhirOid._(
        _valueString,
        _valueOid,
        _isValid,
        element?.clone() as Element?,
      );

  @override
  FhirOid setElement(String name, dynamic value) {
    return FhirOid(value, element?.setProperty(name, value));
  }
}
