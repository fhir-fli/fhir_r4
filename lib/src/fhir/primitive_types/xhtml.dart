import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:xml/xml.dart';
import 'package:yaml/yaml.dart';

/// Extension to convert a [String] to a [FhirXhtml].
extension FhirXhtmlExtension on String {
  /// Converts a [String] to a [FhirXhtml].
  FhirXhtml get toFhirXhtml => FhirXhtml(this);
}

/// This class represents the FHIR primitive type `xhtml`.
class FhirXhtml extends PrimitiveType<String?> {
  /// Constructor that accepts and validates an XHTML string, or allows `null`.
  FhirXhtml(String? input, [Element? element])
      : super(input != null ? _validateXhtml(input) : null, element) {
    if (value == null && element == null) {
      throw ArgumentError('A value or element is required');
    }
  }

  /// Constructor that accepts already validated XHTML string, or `null`.
  FhirXhtml.fromValidatedXhtml(super.validatedInput, [super.element]);

  /// Factory constructor to create [FhirXhtml] from JSON.
  factory FhirXhtml.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    return FhirXhtml(value, element);
  }

  /// Factory constructor to create [FhirXhtml] from YAML.
  factory FhirXhtml.fromYaml(String yaml) {
    return FhirXhtml.fromJson(
      jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
    );
  }

  /// Static method to try parsing the input
  static FhirXhtml? tryParse(dynamic input) {
    if (input is String) {
      try {
        final validatedString = _validateXhtml(input);
        return FhirXhtml(validatedString);
      } catch (e) {
        return null;
      }
    } else {
      return null;
    }
  }

  static String _validateXhtml(String xhtml) {
    try {
      final document = XmlDocument.parse(xhtml);
      final rootElement = document.rootElement;

      // Check if root element is <div>
      if (rootElement.name.local != 'div') {
        throw const FormatException('Root element must be <div>');
      }

      // Check for the correct XHTML namespace
      final xmlns = rootElement.getAttribute('xmlns');
      if (xmlns != 'http://www.w3.org/1999/xhtml') {
        throw const FormatException('Invalid XHTML namespace');
      }

      // Recursively validate elements
      if (!_validateElement(rootElement, isRoot: true)) {
        throw FormatException(
          'Invalid XHTML element structure ${rootElement.name.local}',
        );
      }

      return xhtml; // Return the valid XHTML string
    } catch (e) {
      throw FormatException('Invalid XHTML: $e');
    }
  }

  static bool _isValidAttribute(
    XmlAttribute attribute,
    String elementName,
    bool isRoot,
  ) {
    final attributeName = attribute.name.local;

    /// Allow `cellpadding` only for `table` elements
    if (elementName == 'table' && attributeName == 'cellpadding') {
      return true;
    }

    /// Check allowed attributes or additional allowed attributes
    if (_allowedAttributes.contains(attributeName)) {
      return true;
    }

    if (attributeName == 'cellspacing') {
      throw Exception(
        'Checking attribute :$attributeName: :$_allowedAttributes:',
      );
    }

    if (isRoot &&
        attributeName == 'xmlns' &&
        attribute.value == 'http://www.w3.org/1999/xhtml') {
      return true;
    }

    return false;
  }

  /// Allowed XHTML elements based on FHIR's specification, plus custom ones
  static final List<String> _allowedElements = <String>[
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
    'td',
    'pre',
    'code',
    'blockquote',
  ];

  /// Allowed XHTML attributes (expanded to be more flexible)
  static final List<String> _allowedAttributes = <String>[
    'style',
    'class',
    'src',
    'xml:id',
    'lang',
    'href',
    'name',
    'alt',
    'title',
    'colspan',
    'rowspan',
    'width',
    'height',
    'align',
    'valign',
    'border',
    'xmlns',
    'cellpadding',
    'cellspacing',
  ];

  static bool _validateElement(XmlElement element, {bool isRoot = false}) {
    final elementName = element.name.local;

    /// Allow `div` inside `table`, `tr`, and `td` elements
    if ((elementName == 'table' ||
            elementName == 'tr' ||
            elementName == 'td') &&
        element.children
            .any((child) => child is XmlElement && child.name.local == 'div')) {
      return true; // Explicitly allow `div` inside `table`, `tr`, and `td`
    }

    /// Check if the element is allowed in the base list or additional list
    if (!_allowedElements.contains(elementName)) {
      return false;
    }

    /// Validate attributes
    for (final attribute in element.attributes) {
      if (_isValidAttribute(attribute, elementName, isRoot)) {
        continue;
      } else {
        return false;
      }
    }

    /// Recursively validate child elements
    for (final child in element.children) {
      if (child is XmlElement) {
        if (!_validateElement(child)) {
          return false;
        }
      }
    }

    return true;
  }

  @override
  String get fhirType => 'xhtml';

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// Returns the stored XHTML as a string.
  @override
  String toString() => value ?? 'null';

  /// Converts the XHTML content to a JSON-encoded string.
  @override
  String toJsonString() => jsonEncode(toJson());

  /// Equality and hashCode overrides to account for nullable values.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirXhtml && other.value == value) ||
      (other is String && other == value);

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  /// Clones the object, including its [Element] value.
  @override
  FhirXhtml clone() =>
      FhirXhtml.fromValidatedXhtml(value, element?.clone() as Element?);

  /// Sets an element property and returns a new instance.
  @override
  FhirXhtml setElement(String name, dynamic elementValue) {
    return FhirXhtml.fromValidatedXhtml(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Creates a copy with optional modifications.
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
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
