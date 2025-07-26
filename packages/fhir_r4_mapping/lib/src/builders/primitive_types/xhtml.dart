part of 'primitive_types.dart';

/// Extension methods on [String] to easily convert to [FhirXhtmlBuilder].
extension FhirXhtmlBuilderExtension on String {
  /// Returns a new [FhirXhtmlBuilder] from this [String].
  FhirXhtmlBuilder get toFhirXhtmlBuilder => FhirXhtmlBuilder(this);
}

/// Represents the FHIR primitive type `xhtml`.
///
/// XHTML must meet certain constraints
/// (e.g., valid XML, correct namespace, etc.).
/// We provide a validation step in [_validateXhtml].
class FhirXhtmlBuilder extends PrimitiveTypeBuilder {
  // --------------------------------------------------------------------------
  // Private Internal Constructor
  // --------------------------------------------------------------------------

  /// Private underscore constructor calling `super._`.
  FhirXhtmlBuilder._({
    required super.valueString,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Xhtml',
  }) : super._();

  // --------------------------------------------------------------------------
  // Public Factories
  // --------------------------------------------------------------------------

  /// Constructs a [FhirXhtmlBuilder] from [rawValue], which can be `null`
  /// or a [String].
  ///
  /// If non-null, validates via [_validateXhtml]. Otherwise, if null and
  /// [element] is also null, an error is thrown by the parent constructor.
  // ignore: sort_unnamed_constructors_first
  factory FhirXhtmlBuilder(
    dynamic rawValue, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Xhtml',
  }) {
    if (rawValue != null && rawValue is! String) {
      throw ArgumentError(
        'Invalid type for FhirXhtmlBuilder. '
        'Expected String, got ${rawValue.runtimeType}.',
      );
    }
    final validated =
        rawValue != null ? _validateXhtml(rawValue as String) : null;
    return FhirXhtmlBuilder._(
      valueString: validated,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Constructs a [FhirXhtmlBuilder] from an already validated XHTML string.
  /// Bypasses the final `_validateXhtml`.
  factory FhirXhtmlBuilder.fromValidatedXhtml(
    String? xhtml, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Xhtml',
  }) {
    return FhirXhtmlBuilder._(
      valueString: xhtml,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates an empty [FhirXhtmlBuilder] object.
  factory FhirXhtmlBuilder.empty() =>
      FhirXhtmlBuilder(null, element: ElementBuilder.empty());

  // --------------------------------------------------------------------------
  // JSON / YAML Constructors
  // --------------------------------------------------------------------------

  /// Constructs a [FhirXhtmlBuilder] from a JSON [Map].
  factory FhirXhtmlBuilder.fromJson(Map<String, dynamic> json) {
    final rawValue = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement =
        elementJson == null ? null : ElementBuilder.fromJson(elementJson);
    final objectPath = json['objectPath'] as String? ?? 'Xhtml';
    return FhirXhtmlBuilder(
      rawValue,
      element: parsedElement,
      objectPath: objectPath,
    );
  }

  /// Constructs a [FhirXhtmlBuilder] from a YAML [String] or [YamlMap].
  factory FhirXhtmlBuilder.fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirXhtmlBuilder.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirXhtmlBuilder.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw ArgumentError(
        'FhirXhtmlBuilder cannot be constructed from the provided input. '
        'It is neither a YAML string nor a YAML map.',
      );
    }
  }

  /// Attempts to parse [input] as [FhirXhtmlBuilder]. Returns `null`
  /// if it fails.
  static FhirXhtmlBuilder? tryParse(dynamic input) {
    if (input is String) {
      try {
        final validated = _validateXhtml(input);
        return FhirXhtmlBuilder(validated);
      } catch (_) {
        return null;
      }
    }
    return null;
  }

  // --------------------------------------------------------------------------
  // Validation
  // --------------------------------------------------------------------------

  /// Ensures [xhtml] is valid XML, with the correct namespace,
  /// using [xml] package.
  static String _validateXhtml(String xhtml) {
    try {
      final document = XmlDocument.parse(xhtml);
      final root = document.rootElement;
      if (!_allowedElements.contains(root.name.local)) {
        throw FormatException(
          'Invalid root element: ${root.name.local}. '
          'Allowed elements: ${_allowedElements.join(', ')}.',
        );
      }

      final xmlns = root.getAttribute('xmlns');
      if (xmlns != 'http://www.w3.org/1999/xhtml') {
        throw FormatException(
          'Invalid XHTML namespace. Expected "http://www.w3.org/1999/xhtml", '
          'but found "$xmlns".',
        );
      }

      _validateElement(root);
      return xhtml; // Successfully validated
    } catch (e) {
      throw FormatException('Invalid XHTML: $e');
    }
  }

  /// Validates [element] and its children/attributes.
  static void _validateElement(XmlElement element) {
    if (!_allowedElements.contains(element.name.local)) {
      throw FormatException('Element <${element.name.local}> is not allowed.');
    }

    for (final attr in element.attributes) {
      if (!_allowedAttributes.contains(attr.name.local) &&
          !(attr.name.local == 'xmlns' && element.parent == null)) {
        throw FormatException(
          'Invalid attribute "${attr.name.local}" in <${element.name.local}>.',
        );
      }
    }

    for (final child in element.children.whereType<XmlElement>()) {
      _validateElement(child);
    }
  }

  /// Set of allowed root/child element names.
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

  /// Set of allowed attributes on XHTML elements.
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

  // --------------------------------------------------------------------------
  // FHIR Overrides
  // --------------------------------------------------------------------------

  /// Returns `"xhtml"`.
  @override
  String get fhirType => 'xhtml';

  /// Returns the XHTML content or `''`.
  @override
  String toString() => valueString ?? '';

  /// The primitive value as a string.
  @override
  String? get primitiveValue => valueString;

  /// Returns `true` if the Type is considered string-based, otherwise `false`
  @override
  bool get stringBased => true;

  // --------------------------------------------------------------------------
  // Clone / Copy
  // --------------------------------------------------------------------------

  /// Method to convert the builder object to the original Element object
  @override
  FhirXhtml build() => FhirXhtml.fromJson(toJson());

  @override
  FhirXhtmlBuilder clone() => FhirXhtmlBuilder.fromValidatedXhtml(
        valueString,
        element: element?.clone() as ElementBuilder?,
        id: id,
        extension_: extension_?.map((e) => e.clone()).toList(),
        disallowExtensions: disallowExtensions,
        objectPath: objectPath!,
      );

  @override
  FhirXhtmlBuilder copyWith({
    dynamic newValue,
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
    return FhirXhtmlBuilder(
      newValue ?? valueString,
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
      objectPath: objectPath ?? this.objectPath!,
    );
  }

  // --------------------------------------------------------------------------
  // Equality
  // --------------------------------------------------------------------------

  @override
  bool equalsDeep(FhirBaseBuilder? other) =>
      other is FhirXhtmlBuilder &&
      other.valueString == valueString &&
      other.element == element;

  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirXhtmlBuilder && other.valueString == valueString) ||
      (other is String && other == valueString);

  /// Operator `==` overrides [equals].
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(valueString, element);

  // --------------------------------------------------------------------------
  // Subclass Contract
  // --------------------------------------------------------------------------

  @override
  FhirXhtmlBuilder createProperty(String propertyName) => this;
}
