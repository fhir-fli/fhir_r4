import 'dart:convert';
import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

class FhirCanonical extends PrimitiveType<Uri> {
  FhirCanonical._(this._valueString, this._valueCanonical, this._isValid,
      [Element? element])
      : super(fhirType: 'canonical', element: element);

  factory FhirCanonical(dynamic inValue, [Element? element]) {
    if (inValue is Uri) {
      return FhirCanonical._(inValue.toString(), inValue, true, element);
    } else if (inValue is String) {
      final Uri? tempUri = Uri.tryParse(inValue);
      return FhirCanonical._(inValue, tempUri, tempUri != null, element);
    }
    throw CannotBeConstructed<FhirCanonical>(
        'Canonical cannot be constructed from $inValue.');
  }

  factory FhirCanonical.fromJson(dynamic json) => FhirCanonical(json);

  factory FhirCanonical.fromYaml(dynamic yaml) => yaml is String
      ? FhirCanonical.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? FhirCanonical.fromJson(jsonDecode(jsonEncode(yaml)))
          : throw YamlFormatException<FhirCanonical>(
              'FormatException: "$yaml" is not a valid Yaml string or YamlMap.');

  final String _valueString;
  final Uri? _valueCanonical;
  final bool _isValid;

  @override
  bool get isValid => _isValid;
  @override
  Uri? get value => _valueCanonical;

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
      (other is FhirCanonical && other.value == _valueCanonical) ||
      (other is String && other == _valueString);

  @override
  FhirCanonical clone() => FhirCanonical._(
        _valueString,
        _valueCanonical,
        _isValid,
        element?.clone() as Element?,
      );

  /// Path-related methods
  List<String>? get pathSegments => _valueCanonical?.pathSegments;

  String toFilePath({bool? windows}) {
    if (_valueCanonical != null) {
      return _valueCanonical.toFilePath(windows: windows);
    }
    throw UnsupportedError('No Uri to extract file path from.');
  }

  /// Authority-related methods
  String? get host => _valueCanonical?.host;
  String? get userInfo => _valueCanonical?.userInfo;
  int? get port => _valueCanonical?.port;

  /// Query-related methods
  String? get query => _valueCanonical?.query;

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
  FhirCanonical setElement(String name, dynamic value) {
    return FhirCanonical(value, element?.setProperty(name, value));
  }
}
