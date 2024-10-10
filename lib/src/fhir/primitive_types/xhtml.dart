import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:xml/xml.dart';
import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

extension FhirXhtmlExtension on String {
  FhirXhtml get toFhirXhtml => FhirXhtml(this);
}

@Entity()
class FhirXhtml extends PrimitiveType<String> {
  @override
  final String value; // Store the validated XHTML value

  // Constructor only accepts valid XHTML string input
  FhirXhtml(String input, [Element? element])
      : value = _validateXhtml(input)
            ? input
            : throw FormatException('Invalid XHTML String: $input'),
        super(element: element);

  FhirXhtml.fromValidatedXhtml(String validatedInput, [Element? element])
      : value = validatedInput,
        super(element: element);

  static FhirXhtml? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirXhtml(input);
      } catch (e) {
        return null;
      }
    } else {
      return null;
    }
  }

  // Validation logic for the XHTML input
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

      return _validateElement(rootElement, true);
    } catch (e) {
      // ignore: avoid_print
      print('Error parsing XHTML: $e');
      return false;
    }
  }

  // Recursive validation for XHTML elements
  static bool _validateElement(XmlElement element, [bool isRoot = false]) {
    if (!_allowedElements.contains(element.name.local) &&
        _prohibitedElements.contains(element.name.local)) {
      return false;
    }

    for (final XmlAttribute attribute in element.attributes) {
      if (attribute.name.local == 'style' ||
          attribute.name.local == 'class' ||
          (attribute.name.local == 'src' && attribute.value.startsWith('#')) ||
          (isRoot &&
              attribute.name.local == 'xmlns' &&
              attribute.value == 'http://www.w3.org/1999/xhtml') ||
          (element.name.local == 'a' && attribute.name.local == 'href') ||
          attribute.name.local == 'xml:id' ||
          attribute.name.local == 'lang') {
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

    return !(element.name.local == 'div' && element.innerText.trim().isEmpty);
  }

  // fromJson only accepts a String and validates it
  factory FhirXhtml.fromJson(dynamic json) {
    if (json is String && _validateXhtml(json)) {
      return FhirXhtml.fromValidatedXhtml(json);
    } else {
      throw const FormatException('Invalid input for FhirXhtml');
    }
  }

  factory FhirXhtml.fromYaml(String yaml) =>
      FhirXhtml.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))) as String);

  @override
  @Id()
  int dbId = 0;

  @override
  String get fhirType => 'xhtml';

  // Convert the stored XHTML back to a string for output formats
  @override
  String toJson() => value;
  @override
  String toYaml() => value;
  @override
  String toString() => value;
  @override
  String toJsonString() => jsonEncode(toJson());

  // Equality check
  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirXhtml && other.value == value) ||
      (other is String && other == value);

  // Clone the object
  @override
  FhirXhtml clone() =>
      FhirXhtml.fromValidatedXhtml(value, element?.clone() as Element?);

  // Allowed and prohibited elements
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

  // Copy with updated elements or fields
  @override
  FhirXhtml setElement(String name, dynamic elementValue) {
    return FhirXhtml.fromValidatedXhtml(
        value, element?.setProperty(name, elementValue));
  }

  @override
  FhirXhtml copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return FhirXhtml.fromValidatedXhtml(
      newValue ?? value,
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
