import 'dart:convert';
import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

class FhirUrl extends PrimitiveType<Uri> {
  FhirUrl._(this._valueString, this._valueUri, this._isValid,
      [Element? element])
      : super(fhirType: 'url', element: element);

  factory FhirUrl(dynamic inValue, [Element? element]) {
    if (inValue is Uri) {
      return FhirUrl._(inValue.toString(), inValue, true, element);
    } else if (inValue is String) {
      final Uri? tempUri = Uri.tryParse(inValue);
      return FhirUrl._(inValue, tempUri, tempUri != null, element);
    }
    return FhirUrl._(inValue.toString(), null, false, element);
  }

  factory FhirUrl.fromJson(dynamic json) => FhirUrl(json);

  factory FhirUrl.fromYaml(dynamic yaml) => yaml is String
      ? FhirUrl.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? FhirUrl.fromJson(jsonDecode(jsonEncode(yaml)))
          : throw YamlFormatException<FhirUrl>(
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
      (other is FhirUrl && other.value == _valueUri) ||
      (other is String && other == _valueString);

  @override
  FhirUrl clone() => FhirUrl._(
        _valueString,
        _valueUri,
        _isValid,
        element?.clone() as Element?,
      );

  /// Path-related methods
  List<String>? get pathSegments => _valueUri?.pathSegments;

  String toFilePath({bool? windows}) {
    if (_valueUri != null) {
      return _valueUri.toFilePath(windows: windows);
    }
    throw UnsupportedError('No Uri to extract file path from.');
  }

  /// Authority-related methods
  String? get host => _valueUri?.host;
  String? get userInfo => _valueUri?.userInfo;
  int? get port => _valueUri?.port;

  /// Query-related methods
  String? get query => _valueUri?.query;

  Map<String, String> splitQueryStringAll(String query,
      {Encoding encoding = utf8}) {
    return Uri.splitQueryString(query, encoding: encoding);
  }

  /// Encoding/decoding
  static String uriEncode(List<int> canonicalTable, String text,
      Encoding encoding, bool spaceToPlus) {
    return Uri.encodeComponent(text);
  }

  static String uriDecode(
      String text, int start, int end, Encoding encoding, bool plusToSpace) {
    final String decoded = Uri.decodeComponent(text.substring(start, end));
    return plusToSpace ? decoded.replaceAll('+', ' ') : decoded;
  }

  @override
  FhirUrl setElement(String name, dynamic value) {
    return FhirUrl(value, element?.setProperty(name, value));
  }
}
