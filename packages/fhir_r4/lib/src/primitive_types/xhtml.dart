part of 'primitive_types.dart';

/// Extension methods on [String] to easily convert to [FhirXhtml].
extension FhirXhtmlExtension on String {
  /// Returns a new [FhirXhtml] from this [String].
  FhirXhtml get toFhirXhtml => FhirXhtml(this);
}

/// Represents the FHIR primitive type `xhtml`.
///
/// A value must be a legal narrative; see [narrativeProblems].
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
    final rawValue = json['value'];
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

  /// Throws a [FormatException] naming the first of [narrativeProblems] in
  /// [xhtml], or returns [xhtml] when there is none.
  static String _validateXhtml(String xhtml) {
    final problems = narrativeProblems(xhtml);
    if (problems.isNotEmpty) {
      throw FormatException('Invalid XHTML: ${problems.first}');
    }
    return xhtml;
  }

  /// Why [xhtml] is not a legal narrative, or an empty list when it is.
  ///
  /// The rules are FHIR's Narrative.div constraints, txt-1 ("The narrative
  /// SHALL contain only the basic html formatting elements and attributes
  /// described in chapters 7-11 (except section 4 of chapter 9) and 15 of
  /// the HTML 4.0 standard, <a> elements (either name or href), images and
  /// internally contained style attributes") and txt-2 ("The narrative SHALL
  /// have some non-whitespace content"), the same in R4B, R5 and R6 (R6
  /// folds txt-2 into txt-1; profiles-types.json of each, read 2026-10-21),
  /// as HL7's own validator applies them (hapifhir/org.hl7.fhir.core at
  /// 430c03b, read 2026-10-21):
  ///
  /// - XML, with a `div` root in the XHTML namespace, and no DOCTYPE
  ///   (`XhtmlValidator.validate`, `checkInnerNames`).
  /// - Only the elements of [_elements], and only the attributes of
  ///   [_attributes], an `xmlns` declaration, or an element-and-attribute
  ///   pair of [_elementAttributes] (`XhtmlValidator`'s three lists;
  ///   `xml:space` is a hint there, not an error, and is allowed here).
  /// - No `javascript:` or `vbscript:` link in `a href`
  ///   (`InstanceValidator.isActiveScheme`).
  /// - Some non-whitespace text, or an image
  ///   (`FHIRPathEngine.checkForContent`, behind `htmlChecks2()`).
  ///
  /// HL7's further checks on link and image addresses (`UrlUtil`) and on
  /// internal references are not part of txt-1 and are not made here.
  static List<String> narrativeProblems(String xhtml) {
    final XmlDocument document;
    try {
      document = XmlDocument.parse(xhtml);
    } on XmlException catch (e) {
      return ['not XML: ${e.message}'];
    }
    final problems = <String>[];
    if (document.children.any((n) => n is XmlDoctype)) {
      problems.add('a DOCTYPE is not allowed');
    }
    final root = document.rootElement;
    if (root.name.local != 'div') {
      problems.add('the root element is <${root.name.local}>, not <div>');
    }
    final ns = root.getAttribute('xmlns');
    if (ns != _xhtmlNamespace) {
      problems.add(
        'the namespace is "$ns", not "$_xhtmlNamespace"',
      );
    }
    _checkElement(root, problems);
    if (!_hasContent(root)) {
      problems.add('there is no text and no image');
    }
    return problems;
  }

  static const _xhtmlNamespace = 'http://www.w3.org/1999/xhtml';

  static void _checkElement(XmlElement element, List<String> problems) {
    final name = element.name.local;
    if (!_elements.contains(name)) {
      problems.add('element <$name> is not allowed');
    }
    for (final attribute in element.attributes) {
      final a = attribute.name.qualified;
      if (a.startsWith('xmlns') ||
          a == 'xml:space' ||
          _attributes.contains(a) ||
          _elementAttributes.contains('$name.$a')) {
        if (name == 'a' && a == 'href' && _isActiveScheme(attribute.value)) {
          problems.add('a link to "${attribute.value}" is not allowed');
        }
        continue;
      }
      problems.add('attribute "$a" is not allowed on <$name>');
    }
    for (final child in element.childElements) {
      _checkElement(child, problems);
    }
  }

  /// `InstanceValidator.isActiveScheme`: the scheme of an absolute URL is
  /// `javascript` or `vbscript`.
  static bool _isActiveScheme(String href) {
    final colon = href.indexOf(':');
    if (colon < 0) return false;
    final scheme = href.substring(0, colon).trim().toLowerCase();
    return scheme == 'javascript' || scheme == 'vbscript';
  }

  static bool _hasContent(XmlNode node) {
    if (node is XmlText && node.value.trim().isNotEmpty) return true;
    if (node is XmlElement && node.name.local == 'img') return true;
    return node.children.any(_hasContent);
  }

  /// `XhtmlValidator.HTML_ELEMENTS`.
  static const _elements = {
    'p',
    'br',
    'div',
    'h1',
    'h2',
    'h3',
    'h4',
    'h5',
    'h6',
    'a',
    'span',
    'b',
    'em',
    'i',
    'strong',
    'small',
    'big',
    'tt',
    'dfn',
    'q',
    'var',
    'abbr',
    'acronym',
    'cite',
    'blockquote',
    'hr',
    'address',
    'bdo',
    'kbd',
    'sub',
    'sup',
    'ul',
    'ol',
    'li',
    'dl',
    'dt',
    'dd',
    'pre',
    'table',
    'caption',
    'colgroup',
    'col',
    'thead',
    'tr',
    'tfoot',
    'tbody',
    'th',
    'td',
    'code',
    'samp',
    'img',
    'map',
    'area',
  };

  /// `XhtmlValidator.HTML_ATTRIBUTES`: allowed on any element.
  static const _attributes = {
    'title',
    'style',
    'class',
    'id',
    'lang',
    'xml:lang',
    'dir',
    'accesskey',
    'tabindex',
    'span',
    'width',
    'align',
    'valign',
    'char',
    'charoff',
    'abbr',
    'axis',
    'headers',
    'scope',
    'rowspan',
    'colspan',
  };

  /// `XhtmlValidator.HTML_COMBO_LIST`: allowed only on the element named.
  static const _elementAttributes = {
    'a.href',
    'a.name',
    'img.src',
    'img.border',
    'div.xmlns',
    'blockquote.cite',
    'q.cite',
    'a.charset',
    'a.type',
    'a.hreflang',
    'a.rel',
    'a.rev',
    'a.shape',
    'a.coords',
    'img.alt',
    'img.longdesc',
    'img.height',
    'img.width',
    'img.usemap',
    'img.ismap',
    'map.name',
    'area.shape',
    'area.coords',
    'area.href',
    'area.nohref',
    'area.alt',
    'table.summary',
    'table.width',
    'table.border',
    'table.frame',
    'table.rules',
    'table.cellspacing',
    'table.cellpadding',
    'pre.space',
    'td.nowrap',
  };

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
