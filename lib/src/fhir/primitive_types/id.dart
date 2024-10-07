import 'dart:convert';
import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

extension FhirIdExtension on String {
  FhirId get toFhirId => FhirId(this);
}

class FhirId extends PrimitiveType<String> {
  FhirId._(this._valueString, this._valueId, this._isValid, [Element? element])
      : super(fhirType: 'id', element: element);

  factory FhirId(dynamic inValue, [Element? element]) =>
      inValue is String && RegExp(r'^[A-Za-z0-9\-\.]{1,64}$').hasMatch(inValue)
          ? FhirId._(inValue, inValue, true, element)
          : FhirId._(inValue.toString(), null, false, element);

  factory FhirId.fromJson(dynamic json) => FhirId(json);

  factory FhirId.fromYaml(dynamic yaml) => yaml is String
      ? FhirId.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? FhirId.fromJson(jsonDecode(jsonEncode(yaml)))
          : throw YamlFormatException<FhirId>(
              'FormatException: "$yaml" is not a valid Yaml string or YamlMap.');

  final String _valueString;
  final String? _valueId;
  final bool _isValid;

  @override
  bool get isValid => _isValid;
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
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirId && other.value == _valueId) ||
      (other is String && other == _valueString);

  @override
  FhirId clone() => FhirId._(
        _valueString,
        _valueId,
        _isValid,
        element?.clone() as Element?,
      );

  @override
  FhirId setElement(String name, dynamic elementValue) {
    return FhirId(value, element?.setProperty(name, elementValue));
  }

  @override
  FhirId copyWith({
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return FhirId._(
      _valueString,
      _valueId,
      _isValid,
      element?.copyWith(
        userData: userData,
        formatCommentsPre: formatCommentsPre,
        formatCommentsPost: formatCommentsPost,
        annotations: annotations,
        children: children,
        namedChildren: namedChildren,
      ),
    );
  }
}
