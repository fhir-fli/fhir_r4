import 'dart:convert';
import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

class FhirUri extends PrimitiveType<Uri> {
  FhirUri._(this._valueString, this._valueUri, this._isValid,
      [Element? element])
      : super(fhirType: 'uri', element: element);

  factory FhirUri(dynamic inValue, [Element? element]) {
    if (inValue is Uri) {
      return FhirUri._(inValue.toString(), inValue, true, element);
    } else if (inValue is String) {
      final Uri? tempUri = Uri.tryParse(inValue);
      return FhirUri._(inValue, tempUri, tempUri != null, element);
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

  final String _valueString;
  final Uri? _valueUri;
  final bool _isValid;

  @override
  bool get isValid => _isValid;
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
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirUri && other.value == _valueUri) ||
      (other is Uri && other == _valueUri) ||
      (other is String && other == _valueString);

  @override
  FhirUri clone() => FhirUri._(
        _valueString,
        _valueUri,
        _isValid,
        element?.clone() as Element?,
      );

  /// Mirroring common Uri methods

  // Path-related methods
  List<String>? get pathSegments => _valueUri?.pathSegments;

  String toFilePath({bool? windows}) {
    if (_valueUri != null) {
      return _valueUri.toFilePath(windows: windows);
    }
    throw UnsupportedError('No Uri to extract file path from.');
  }

  // Authority-related methods
  String? get host => _valueUri?.host;
  String? get userInfo => _valueUri?.userInfo;
  int? get port => _valueUri?.port;

  String get authority => _valueUri?.authority ?? '';

  // Query-related methods
  String? get query => _valueUri?.query;

  Map<String, List<String>> splitQueryStringAll(String query,
      {Encoding encoding = utf8}) {
    // Use a public alternative to `_splitQueryStringAll` (e.g., manual parsing)
    return Uri.splitQueryString(query, encoding: encoding).map(
        (String key, String value) => MapEntry<String, List<String>>(
            key, value.isEmpty ? <String>[] : <String>[value]));
  }

  // Encoding/decoding (using public Uri methods)
  static String encodeQueryComponent(String text, {Encoding encoding = utf8}) {
    return Uri.encodeQueryComponent(text, encoding: encoding);
  }

  static String decodeQueryComponent(String text, {Encoding encoding = utf8}) {
    return Uri.decodeQueryComponent(text, encoding: encoding);
  }

  @override
  FhirUri setElement(String name, dynamic value) {
    return FhirUri(value, element?.setProperty(name, value));
  }
}
