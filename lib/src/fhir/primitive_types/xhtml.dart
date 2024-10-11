import 'dart:convert';

import 'package:xml/xml.dart';
import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

extension FhirXhtmlExtension on String {
  FhirXhtml get toFhirXhtml => FhirXhtml(this);
}

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

  static bool _validateXhtml(String xhtml) {
    try {
      final XmlDocument document = XmlDocument.parse(xhtml);

      final XmlElement rootElement = document.rootElement;

      // Check if root element is <div>
      if (rootElement.name.local != 'div') {
        return false;
      }

      // Check for the correct XHTML namespace
      final String? xmlns = rootElement.getAttribute('xmlns');
      if (xmlns != 'http://www.w3.org/1999/xhtml') {
        return false;
      }

      // Recursively validate elements
      final bool result = _validateElement(rootElement, isRoot: true);

      return result;
    } catch (e) {
      return false;
    }
  }

  static bool _validateElement(XmlElement element, {bool isRoot = false}) {
    // Check if the element is allowed
    if (!allowedElements.contains(element.name.local)) {
      return false;
    }

    // Validate attributes
    for (final XmlAttribute attribute in element.attributes) {
      if (_isValidAttribute(attribute, element.name.local, isRoot)) {
        continue;
      } else {
        return false;
      }
    }

    // Recursively validate child elements
    for (final XmlNode child in element.children) {
      if (child is XmlElement) {
        if (!_validateElement(child)) {
          return false;
        }
      }
    }

    // Ensure the root div has non-whitespace content
    if (element.name.local == 'div' && element.innerText.trim().isEmpty) {
      return false;
    }

    return true;
  }

// Helper method to validate XHTML attributes
  static bool _isValidAttribute(
      XmlAttribute attribute, String elementName, bool isRoot) {
    // Allowed attributes
    if (attribute.name.local == 'style') {
      return _validateStyleAttribute(
          attribute.value); // Only validate styles for style attribute
    } else if (attribute.name.local == 'class') {
      return true; // Class does not need style validation, just allowed as is
    } else if (attribute.name.local == 'src' &&
        attribute.value.startsWith('#')) {
      return true;
    } else if (attribute.name.local == 'xml:id' ||
        attribute.name.local == 'lang') {
      return true;
    } else if (isRoot &&
        attribute.name.local == 'xmlns' &&
        attribute.value == 'http://www.w3.org/1999/xhtml') {
      return true;
    } else if (elementName == 'a' &&
        (attribute.name.local == 'href' || attribute.name.local == 'name')) {
      return true;
    }

    // Disallowed event attributes (e.g., onClick, onLoad)
    if (attribute.name.local.startsWith('on')) {
      return false;
    }

    return false;
  }

// Method to validate allowed CSS properties in the 'style' attribute
  static bool _validateStyleAttribute(String style) {
    final List<String> allowedStyles = <String>[
      'font-weight',
      'font-style',
      'text-decoration',
      'text-align',
      'border-left',
      'border-right',
      'border-top',
      'border-bottom',
      'list-style-type',
      'color',
      'background-color',
      'white-space'
    ];

    final List<String> styles = style.split(';');
    for (final String styleProperty in styles) {
      final String property = styleProperty.split(':').first.trim();

      if (!allowedStyles.contains(property)) {
        return false;
      }
    }

    return true;
  }

// Allowed XHTML elements based on FHIR's specification
  static final List<String> allowedElements = <String>[
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

// Prohibited elements as per FHIR's specification
  static final List<String> prohibitedElements = <String>[
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
