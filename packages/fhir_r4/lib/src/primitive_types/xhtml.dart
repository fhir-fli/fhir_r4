part of 'primitive_types.dart';

/// Extension methods on [String] to easily convert to [FhirXhtml].
extension FhirXhtmlExtension on String {
  /// Returns a new [FhirXhtml] from this [String].
  FhirXhtml get toFhirXhtml => FhirXhtml(this);
}

/// Represents the FHIR primitive type `xhtml`.
///
/// XHTML must meet certain constraints
/// (e.g., valid XML, correct namespace, etc.).
/// We provide a validation step in [_validateXhtml].
class FhirXhtml extends PrimitiveType {
  // --------------------------------------------------------------------------
  // Private Internal Constructor
  // --------------------------------------------------------------------------

  /// Private underscore constructor calling `super._`.
  const FhirXhtml._({
    required super.valueString,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  // --------------------------------------------------------------------------
  // Public Factories
  // --------------------------------------------------------------------------

  /// Constructs a [FhirXhtml] from [rawValue], which can be `null`
  /// or a [String].
  ///
  /// If non-null, validates via [_validateXhtml]. Otherwise, if null and
  /// [element] is also null, an error is thrown by the parent constructor.
  // ignore: sort_unnamed_constructors_first
  factory FhirXhtml(
    dynamic rawValue, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    if (rawValue != null && rawValue is! String) {
      throw ArgumentError(
        'Invalid type for FhirXhtml. '
        'Expected String, got ${rawValue.runtimeType}.',
      );
    }
    final validated =
        rawValue != null ? _validateXhtml(rawValue as String) : null;
    return FhirXhtml._(
      valueString: validated,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Constructs a [FhirXhtml] from an already validated XHTML string.
  /// Bypasses the final `_validateXhtml`.
  factory FhirXhtml.fromValidatedXhtml(
    String? xhtml, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    return FhirXhtml._(
      valueString: xhtml,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  // --------------------------------------------------------------------------
  // JSON / YAML Constructors
  // --------------------------------------------------------------------------

  /// Constructs a [FhirXhtml] from a JSON [Map].
  factory FhirXhtml.fromJson(Map<String, dynamic> json) {
    final rawValue = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement =
        elementJson == null ? null : Element.fromJson(elementJson);
    return FhirXhtml(rawValue, element: parsedElement);
  }

  /// Constructs a [FhirXhtml] from a YAML [String] or [YamlMap].
  factory FhirXhtml.fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirXhtml.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirXhtml.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw ArgumentError(
        'FhirXhtml cannot be constructed from the provided input. '
        'It is neither a YAML string nor a YAML map.',
      );
    }
  }

  /// Attempts to parse [input] as [FhirXhtml]. Returns `null` if it fails.
  static FhirXhtml? tryParse(dynamic input) {
    if (input is String) {
      try {
        final validated = _validateXhtml(input);
        return FhirXhtml(validated);
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

  @override
  FhirXhtml clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  $FhirXhtmlCopyWithImpl<FhirXhtml> get copyWith =>
      $FhirXhtmlCopyWithImpl<FhirXhtml>(this, (value) => value);

  // --------------------------------------------------------------------------
  // Equality
  // --------------------------------------------------------------------------

  @override
  bool equalsDeep(FhirBase? other) =>
      other is FhirXhtml &&
      other.valueString == valueString &&
      ((element == null && other.element == null) ||
          (element != null && element!.equalsDeep(other.element)));

  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirXhtml && other.valueString == valueString) ||
      (other is String && other == valueString);

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(valueString, element);
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class $FhirXhtmlCopyWithImpl<T> implements $PrimitiveTypeCopyWith<T> {
  /// Constructor for the copyWith implementation.
  $FhirXhtmlCopyWithImpl(this._value, this._then);

  final FhirXhtml _value;
  final T Function(FhirXhtml) _then;

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      FhirXhtml(
        identical(newValue, fhirSentinel) ? _value.valueString : newValue,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
