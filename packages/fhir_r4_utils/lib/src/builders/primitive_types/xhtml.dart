part of 'primitive_types.dart';

/// Extension to convert a [String] to a [FhirXhtmlBuilder].
extension FhirXhtmlBuilderExtension on String {
  /// Converts a [String] to a [FhirXhtmlBuilder].
  FhirXhtmlBuilder get toFhirXhtmlBuilder => FhirXhtmlBuilder(this);
}

/// Represents the FHIR primitive type `xhtml`.
class FhirXhtmlBuilder extends PrimitiveTypeBuilder<String?> {
  /// Private underscore constructor that just assigns a validated XHTML
  /// (or null) to `super._(value: validatedValue)`, then checks if both are
  /// null => throw.
  FhirXhtmlBuilder._({
    required String? validatedValue,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Xhtml',
  }) : super._(value: validatedValue) {
    if (value == null && element == null) {
      throw ArgumentError(
        'A value or element is required for FhirXhtmlBuilder',
      );
    }
  }

  /// Public factory constructor that accepts and validates an XHTML string, or
  /// allows `null`. If it's non-null, it calls `_validateXhtml`.
  // ignore: sort_unnamed_constructors_first
  factory FhirXhtmlBuilder(
    String? input, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Xhtml',
  }) {
    final validated = input != null ? _validateXhtml(input) : null;
    return FhirXhtmlBuilder._(
      validatedValue: validated,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Constructor that accepts already validated XHTML string, or `null`.
  factory FhirXhtmlBuilder.fromValidatedXhtml(
    String? validatedValue, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String? objectPath = 'Xhtml',
  }) {
    // We skip the final validation because we trust it's already validated
    return FhirXhtmlBuilder._(
      validatedValue: validatedValue,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates empty [FhirXhtmlBuilder] object
  factory FhirXhtmlBuilder.empty() =>
      FhirXhtmlBuilder(null, element: ElementBuilder.empty());

  /// Factory constructor to create [FhirXhtmlBuilder]
  /// from JSON.
  factory FhirXhtmlBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    final objectPath = json['objectPath'] as String? ?? 'Xhtml';
    return FhirXhtmlBuilder(value, element: element, objectPath: objectPath);
  }

  /// Factory constructor to create [FhirXhtmlBuilder] from YAML.
  factory FhirXhtmlBuilder.fromYaml(String yaml) => FhirXhtmlBuilder.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );

  /// Attempts to parse the input as [FhirXhtmlBuilder].
  static FhirXhtmlBuilder? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirXhtmlBuilder(_validateXhtml(input));
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

  /// Converts this instance to a [FhirXhtml] object
  @override
  FhirXhtml build() => FhirXhtml.fromJson(toJson());

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

  @override
  bool equalsDeep(FhirBaseBuilder? other) =>
      other is FhirXhtmlBuilder &&
      other.value == value &&
      other.element == element;

  /// Equality and hashCode overrides to account for nullable values.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirXhtmlBuilder && other.value == value) ||
      (other is String && other == value);

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  /// Clones the object, including its [ElementBuilder] value.
  @override
  FhirXhtmlBuilder clone() => FhirXhtmlBuilder.fromValidatedXhtml(
        value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Creates a copy with optional modifications.
  @override
  FhirXhtmlBuilder copyWith({
    String? newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    return FhirXhtmlBuilder.fromValidatedXhtml(
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
      objectPath: objectPath ?? this.objectPath,
    );
  }

  /// Returns a new [FhirXhtmlBuilder] with extensions disallowed.
  FhirXhtmlBuilder noExtensions() => copyWith(disallowExtensions: true);

  /// Creates an empty property in the object
  @override
  FhirXhtmlBuilder createProperty(String propertyName) => this;

  /// Clears the specified fields in a [FhirXhtmlBuilder] object
  @override
  FhirXhtmlBuilder clear({
    bool input = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirXhtmlBuilder(
      input ? null : value,
      element: element,
      extension_: extension_ ? <FhirExtensionBuilder>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
