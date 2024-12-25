import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:xml/xml.dart';
import 'package:yaml/yaml.dart';

/// Extension to convert a [String] to a [FhirXhtml].
extension FhirXhtmlExtension on String {
  /// Converts a [String] to a [FhirXhtml].
  FhirXhtml get toFhirXhtml => FhirXhtml(this);
}

/// Represents the FHIR primitive type `xhtml`.
class FhirXhtml extends PrimitiveType<String?> {
  /// Constructor that accepts and validates an XHTML string, or allows `null`.
  FhirXhtml(
    String? input, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Xhtml',
  }) : super(input != null ? _validateXhtml(input) : null) {
    if (value == null && element == null) {
      throw ArgumentError('A value or element is required');
    }
  }

  /// Constructor that accepts already validated XHTML string, or `null`.
  FhirXhtml.fromValidatedXhtml(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  });

  /// Factory constructor to create [FhirXhtml] from JSON.
  factory FhirXhtml.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    final objectPath = json['objectPath'] as String?;
    return FhirXhtml(value, element: element, objectPath: objectPath);
  }

  /// Factory constructor to create [FhirXhtml] from YAML.
  factory FhirXhtml.fromYaml(String yaml) => FhirXhtml.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );

  /// Attempts to parse the input as [FhirXhtml].
  static FhirXhtml? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirXhtml(_validateXhtml(input));
      } catch (_) {
        return null;
      }
    }
    return null;
  }

  /// Validates an XHTML string against FHIR rules.
  static String _validateXhtml(String xhtml) {
    try {
      final document = XmlDocument.parse(xhtml);
      final rootElement = document.rootElement;

      if (!_allowedElements.contains(rootElement.name.local)) {
        throw FormatException(
          'Invalid root element: ${rootElement.name.local}. '
          'Allowed elements are: ${_allowedElements.join(', ')}.',
        );
      }

      final xmlns = rootElement.getAttribute('xmlns');
      if (xmlns != 'http://www.w3.org/1999/xhtml') {
        throw FormatException(
          'Invalid XHTML namespace. Expected "http://www.w3.org/1999/xhtml", '
          'but found "$xmlns".',
        );
      }

      if (!_validateElement(rootElement)) {
        throw const FormatException('Invalid structure in root element.');
      }

      return xhtml; // Return the valid XHTML string.
    } catch (e) {
      throw FormatException('Invalid XHTML: $e');
    }
  }

  /// Validates an element and its attributes recursively.
  static bool _validateElement(XmlElement element, {bool isRoot = false}) {
    if (!_allowedElements.contains(element.name.local)) {
      throw FormatException('Element ${element.name.local} is not allowed.');
    }

    for (final attribute in element.attributes) {
      if (!_allowedAttributes.contains(attribute.name.local) &&
          !(isRoot && attribute.name.local == 'xmlns')) {
        throw FormatException(
          'Invalid attribute "${attribute.name.local}" in element '
          '"${element.name.local}".',
        );
      }
    }

    for (final child in element.children) {
      if (child is XmlElement && !_validateElement(child)) {
        throw FormatException('Invalid child element: ${child.name.local}');
      }
    }

    return true;
  }

  /// Allowed elements for XHTML.
  static final List<String> _allowedElements = [
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
    'samp',
    'sup',
  ];

  /// Allowed attributes for XHTML elements.
  static final List<String> _allowedAttributes = [
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
  ];

  @override
  String get fhirType => 'xhtml';

  /// Serializes the instance to JSON with standardized keys.
  @override
  Map<String, dynamic> toJson() => {
        if (value != null) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// Returns the XHTML content as a string.
  @override
  String toString() => value.toString();

  /// Retrieves the primitive value of the object.
  @override
  String? get primitiveValue => value?.toString();

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
  FhirXhtml clone() => FhirXhtml.fromValidatedXhtml(
        value,
        element: element?.clone() as Element?,
      );

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
    bool? disallowExtensions,
  }) {
    return FhirXhtml.fromValidatedXhtml(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
    );
  }

  /// Returns a new [FhirXhtml] with extensions disallowed.
  FhirXhtml noExtensions() => copyWith(disallowExtensions: true);
}
