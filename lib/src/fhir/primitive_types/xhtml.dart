// ignore_for_file: invalid_annotation_target
import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:xml/xml.dart';
import 'package:yaml/yaml.dart';

import '../fhir_primitives.dart';

@immutable
class FhirXhtml extends PrimitiveType {
  FhirXhtml._(this._valueString, this._valueXhtml, this._isValid);

  factory FhirXhtml(dynamic inValue) =>
      inValue is String && _validateXhtml(inValue)
          ? FhirXhtml._(inValue, inValue, true)
          : FhirXhtml._(inValue.toString(), null, false);

  factory FhirXhtml.fromJson(dynamic json) => FhirXhtml(json);

  factory FhirXhtml.fromYaml(dynamic yaml) => yaml is String
      ? FhirXhtml.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? FhirXhtml.fromJson(jsonDecode(jsonEncode(yaml)))
          : throw YamlFormatException<FhirXhtml>(
              'FormatException: "$yaml" is not a valid Yaml string or YamlMap.');

  @override
  String get fhirType => 'xhtml';

  final String _valueString;
  final String? _valueXhtml;
  final bool _isValid;

  @override
  bool get isValid => _isValid;
  @override
  int get hashCode => _valueString.hashCode;
  @override
  String? get value => _valueXhtml;

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
      (other is FhirXhtml && other.value == _valueXhtml) ||
      (other is String && other == _valueString);

  String verbosePrint(int indent) => '${"  " * indent}HtmlCheckerParser';

  String prettyPrint([int indent = 2]) => '.htmlChecks()';

  static const List<String> _allowedElements = <String>[
    'div',
    'p',
    'b',
    'i',
    'em',
    'strong',
    'ul',
    'ol',
    'li',
    'span',
    'br',
    'a',
    'img',
    'h1',
    'h2',
    'h3',
    'h4',
    'h5',
    'h6',
    'table',
    'thead',
    'tbody',
    'tr',
    'th',
    'td'
  ];

  static const List<String> _prohibitedElements = <String>[
    'head',
    'body',
    'script',
    'form',
    'base',
    'link',
    'frame',
    'iframe',
    'object',
    'frameset',
    'meta',
    'input',
    'textarea',
    'button',
    'select',
    'option',
    'style'
  ];

  static bool _validateXhtml(String xhtml) {
    try {
      final XmlDocument document =
          XmlDocument.parse(xhtml.replaceAll(r'\"', r'"'));

      final XmlElement rootElement = document.rootElement;
      if (rootElement.name.local != 'div') {
        return false;
      }

      if (rootElement.getAttribute('xmlns') != 'http://www.w3.org/1999/xhtml') {
        return false;
      }

      return _validateElement(rootElement, isRoot: true);
    } catch (e) {
      print('Error parsing XHTML: $e');
      return false;
    }
  }

  static bool _validateElement(XmlElement element, {bool isRoot = false}) {
    if (!_allowedElements.contains(element.name.local) &&
        _prohibitedElements.contains(element.name.local)) {
      return false;
    }

    for (final XmlAttribute attribute in element.attributes) {
      if (attribute.name.local == 'style' || attribute.name.local == 'class') {
        continue;
      } else if (attribute.name.local == 'src' &&
          attribute.value.startsWith('#')) {
        continue;
      } else if (attribute.name.local == 'xml:id' ||
          attribute.name.local == 'lang') {
        continue;
      } else if (isRoot &&
          attribute.name.local == 'xmlns' &&
          attribute.value == 'http://www.w3.org/1999/xhtml') {
        continue;
      } else if (element.name.local == 'a' && attribute.name.local == 'href') {
        continue;
      } else {
        return false;
      }
    }

    for (final XmlNode child in element.children) {
      if (child is XmlElement && !_validateElement(child)) {
        return false;
      }
    }

    if (element.name.local == 'div' && element.innerText.trim().isEmpty) {
      return false;
    }

    return true;
  }

  @override
  FhirXhtml clone() => FhirXhtml.fromJson(toJson());
}
