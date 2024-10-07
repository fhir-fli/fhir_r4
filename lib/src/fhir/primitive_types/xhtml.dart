import 'dart:convert';
import 'package:xml/xml.dart';
import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

extension FhirXhtmlExtension on String {
  FhirXhtml get toFhirXhtml => FhirXhtml(this);
}

class FhirXhtml extends PrimitiveType<String> {
  FhirXhtml._(this._valueString, this._valueXhtml, this._isValid,
      [Element? element])
      : super(fhirType: 'xhtml', element: element);

  factory FhirXhtml(dynamic inValue, [Element? element]) =>
      inValue is String && _validateXhtml(inValue)
          ? FhirXhtml._(inValue, inValue, true, element)
          : FhirXhtml._(inValue.toString(), null, false, element);

  factory FhirXhtml.fromJson(dynamic json) => FhirXhtml(json);

  factory FhirXhtml.fromYaml(dynamic yaml) => yaml is String
      ? FhirXhtml.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? FhirXhtml.fromJson(jsonDecode(jsonEncode(yaml)))
          : throw YamlFormatException<FhirXhtml>(
              'FormatException: "$yaml" is not a valid Yaml string or YamlMap.');

  final String _valueString;
  final String? _valueXhtml;
  final bool _isValid;

  @override
  bool get isValid => _isValid;
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
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirXhtml && other.value == _valueXhtml) ||
      (other is String && other == _valueString);

  @override
  FhirXhtml clone() => FhirXhtml._(
        _valueString,
        _valueXhtml,
        _isValid,
        element?.clone() as Element?,
      );

  @override
  FhirXhtml setElement(String name, dynamic elementValue) {
    return FhirXhtml(value, element?.setProperty(name, elementValue));
  }

  static bool _validateXhtml(String xhtml) {
    try {
      // Parse the XHTML string using XmlDocument parser
      final XmlDocument document =
          XmlDocument.parse(xhtml.replaceAll(r'\"', r'"'));

      // Get the root element and ensure it's a 'div'
      final XmlElement rootElement = document.rootElement;
      if (rootElement.name.local != 'div') {
        return false;
      }

      // Check if the xmlns attribute is correctly set
      if (rootElement.getAttribute('xmlns') != 'http://www.w3.org/1999/xhtml') {
        return false;
      }

      // Validate the root element and all of its children
      return _validateElement(rootElement, true);
    } catch (e) {
      // ignore: avoid_print
      print('Error parsing XHTML: $e');
      return false;
    }
  }

  static bool _validateElement(XmlElement element, [bool isRoot = false]) {
    // Check if the element's name is allowed or prohibited
    if (!_allowedElements.contains(element.name.local) &&
        _prohibitedElements.contains(element.name.local)) {
      return false;
    }

    // Validate the attributes of the element
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
        return false; // Invalid attribute found
      }
    }

    // Recursively validate child elements
    for (final XmlNode child in element.children) {
      if (child is XmlElement && !_validateElement(child)) {
        return false;
      }
    }

    // Check if 'div' elements are empty, which is not allowed
    if (element.name.local == 'div' && element.innerText.trim().isEmpty) {
      return false;
    }

    return true; // The element is valid
  }

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

  @override
  FhirXhtml copyWith({
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return FhirXhtml._(
      _valueString,
      _valueXhtml,
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
