import 'dart:convert';
import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

extension FhirStringExtension on String {
  FhirString get toFhirString => FhirString(this);
}

class FhirString extends PrimitiveType<String> {
  final String _valueString;
  final dynamic _value;
  final bool _isValid;

  FhirString._(this._valueString, this._value, this._isValid,
      [Element? element])
      : super(element: element);

  factory FhirString(dynamic inValue, [Element? element]) => inValue is String
      ? FhirString._(inValue, inValue, true, element)
      : FhirString._(inValue.toString(), inValue, false, element);

  factory FhirString.fromJson(dynamic json) => FhirString(json);

  factory FhirString.fromYaml(dynamic yaml) => yaml is String
      ? FhirString.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? FhirString.fromJson(jsonDecode(jsonEncode(yaml)))
          : throw YamlFormatException<FhirString>(
              'FormatException: "$yaml" is not a valid Yaml string or YamlMap.');

  @override
  String get fhirType => 'string';

  @override
  bool get isValid => _isValid;

  @override
  String? get value => _isValid ? _valueString : null;

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
      (other is FhirString && other.value == _valueString) ||
      (other is String && other == _valueString);

  @override
  FhirString clone() => FhirString._(
        _valueString,
        _value,
        _isValid,
        element?.clone() as Element?,
      );

  @override
  FhirString setElement(String name, dynamic elementValue) {
    return FhirString(value, element?.setProperty(name, elementValue));
  }

  int get length => _valueString.length;

  bool get isStringEmpty => _valueString.isEmpty;

  bool get isNotEmpty => _valueString.isNotEmpty;

  int codeUnitAt(int index) => _valueString.codeUnitAt(index);

  bool endsWith(dynamic other) => other is String
      ? _valueString.endsWith(other)
      : other is FhirString && _valueString.endsWith(other.toString());

  bool startsWith(Pattern pattern, [int index = 0]) =>
      _valueString.startsWith(pattern, index);

  int indexOf(Pattern pattern, [int start = 0]) =>
      _valueString.indexOf(pattern, start);

  int lastIndexOf(Pattern pattern, [int? start]) =>
      _valueString.lastIndexOf(pattern, start);

  String operator +(dynamic other) => _valueString + other.toString();

  String operator [](int index) => _valueString[index];

  String substring(int start, [int? end]) => _valueString.substring(start, end);

  String trim() => _valueString.trim();

  String trimLeft() => _valueString.trimLeft();

  String trimRight() => _valueString.trimRight();

  String operator *(int times) => _valueString * times;

  String padLeft(int width, [String padding = ' ']) =>
      _valueString.padLeft(width, padding);

  String padRight(int width, [String padding = ' ']) =>
      _valueString.padRight(width, padding);

  bool contains(Pattern other, [int startIndex = 0]) =>
      _valueString.contains(other, startIndex);

  String replaceFirst(Pattern from, String to, [int startIndex = 0]) =>
      _valueString.replaceFirst(from, to, startIndex);

  String replaceFirstMapped(Pattern from, String Function(Match) replace,
          [int startIndex = 0]) =>
      _valueString.replaceFirstMapped(from, replace, startIndex);

  String replaceAll(Pattern from, String replace) =>
      _valueString.replaceAll(from, replace);

  String replaceAllMapped(Pattern from, String Function(Match) replace) =>
      _valueString.replaceAllMapped(from, replace);

  String replaceRange(int start, int? end, String replacement) =>
      _valueString.replaceRange(start, end, replacement);

  List<String> split(Pattern pattern) => _valueString.split(pattern);

  String splitMapJoin(Pattern pattern,
          {String Function(Match)? onMatch,
          String Function(String)? onNonMatch}) =>
      _valueString.splitMapJoin(pattern,
          onMatch: onMatch, onNonMatch: onNonMatch);

  List<int> get codeUnits => _valueString.codeUnits;

  Runes get runes => _valueString.runes;

  String toLowerCase() => _valueString.toLowerCase();

  String toUpperCase() => _valueString.toUpperCase();

  @override
  FhirString copyWith({
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return FhirString._(
      _valueString,
      _value,
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
