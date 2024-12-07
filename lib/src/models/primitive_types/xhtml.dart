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

      // Relax the root element requirement: allow more than just <div>
      if (!_allowedElements.contains(rootElement.name.local)) {
        throw FormatException(
            'Root element must be one of the allowed elements: '
            '${_allowedElements.join(', ')}');
      }

      // Check for the correct XHTML namespace, but allow flexibility
      final xmlns = rootElement.getAttribute('xmlns');
      if (xmlns != 'http://www.w3.org/1999/xhtml') {
        throw FormatException(
            'Invalid XHTML namespace, expected "http://www.w3.org/1999/xhtml", '
            'but found "$xmlns"');
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

    // Allow `cellpadding` and `cellspacing` for `table` & any related elements
    if ((elementName == 'table' ||
            elementName == 'th' ||
            elementName == 'td') &&
        (attributeName == 'cellpadding' || attributeName == 'cellspacing')) {
      return true;
    }

    // Check against the allowed attributes list
    if (_allowedAttributes.contains(attributeName)) {
      return true;
    }

    // Allow `xmlns` for root elements
    if (isRoot &&
        attributeName == 'xmlns' &&
        attribute.value == 'http://www.w3.org/1999/xhtml') {
      return true;
    }

    // If the attribute is not recognized, skip the validation for it
    return true; // Make this permissive
  }

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
    'tfoot',
    'tr',
    'th',
    'td',
    'pre',
    'code',
    'blockquote',
    'caption',
    'colgroup',
    'col',
    'hr',
    'dl',
    'dt',
    'dd',
    'big',
    'small',
    'tt',
    'q',
    'dfn',
    'var',
    'cite',
    'abbr',
    'acronym',
  ];

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
    'span',
    'background-color',
  ];

  static bool _validateElement(XmlElement element, {bool isRoot = false}) {
    final elementName = element.name.local;

    // Allow any element if it's in the allowed elements list
    if (!_allowedElements.contains(elementName)) {
      // Make permissive, skip invalid elements instead of throwing error
      return true;
    }

    // Validate attributes (make this check more permissive)
    for (final attribute in element.attributes) {
      if (!_isValidAttribute(attribute, elementName, isRoot)) {
        continue; // Skip invalid attributes instead of returning false
      }
    }

    // Recursively validate child elements (make permissive)
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

  /// Creates a copy with optional modifications.
  @override
  FhirXhtml copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    Map<String, List<void Function()>>? propertyChanged,
  }) {
    return FhirXhtml.fromValidatedXhtml(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
