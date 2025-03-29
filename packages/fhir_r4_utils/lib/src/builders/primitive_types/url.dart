part of 'primitive_types.dart';

/// Extension to convert a [FhirUrl] to a [FhirUrlBuilder]
extension BuilderFhirUrl on FhirUrl {
  /// Converts this instance to a [FhirUrlBuilder]
  FhirUrlBuilder get toBuilder => FhirUrlBuilder.fromJson(toJson());
}

/// Extension to convert a [String] to a [FhirUrlBuilder]
extension FhirUrlBuilderExtension on String {
  /// Converts a [String] to a [FhirUrlBuilder]
  FhirUrlBuilder get toFhirUrlBuilder => FhirUrlBuilder(this);
}

/// Extension to convert a [Uri] to a [FhirUrlBuilder]
extension FhirUrlBuilderUriExtension on Uri {
  /// Converts a [Uri] to a [FhirUrlBuilder]
  FhirUrlBuilder get toFhirUrlBuilder => FhirUrlBuilder.fromUri(this);
}

/// Represents a canonical URL in FHIR as a [PrimitiveTypeBuilder] of [Uri]
class FhirUrlBuilder extends PrimitiveTypeBuilder<Uri>
    implements
        NameXImplementationGuidePageBuilder,
        ValueXParametersParameterBuilder,
        DefaultValueXStructureMapSourceBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder {
  /// Private underscore constructor that takes a validated [Uri?] plus the
  /// original input string.
  FhirUrlBuilder._({
    required Uri? validatedUri,
    this.input,
    this.element,
    this.id,
    this.extension_,
    this.disallowExtensions,
    this.objectPath = 'Canonical',
  }) : super._(value: validatedUri);

  /// Single public factory for creating a [FhirUrlBuilder].
  // ignore: sort_unnamed_constructors_first
  factory FhirUrlBuilder(
    dynamic rawInput, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String? objectPath = 'Canonical',
  }) {
    // 1) Validate/parse
    //    - If rawInput is null and no element, throw
    //    - If rawInput is a string, parse it as Uri
    //    - If rawInput is a Uri, we can accept it directly
    Uri? finalUri;
    String? originalString;
    if (rawInput == null && element == null) {
      throw ArgumentError('A value or element is required for FhirUrlBuilder.');
    } else if (rawInput is String) {
      finalUri = _validateCanonical(rawInput);
      originalString = rawInput;
    } else if (rawInput is Uri) {
      finalUri = rawInput;
      originalString = rawInput.toString();
    } else if (rawInput != null) {
      throw ArgumentError(
        'FhirUrlBuilder only supports a String or Uri, got: $rawInput',
      );
    }

    // 2) Construct via the private underscore constructor
    return FhirUrlBuilder._(
      validatedUri: finalUri,
      input: originalString,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates empty [FhirUrlBuilder] object
  factory FhirUrlBuilder.empty() =>
      FhirUrlBuilder(null, element: ElementBuilder.empty());

  /// Constructs a [FhirUrlBuilder] from a [Uri] object
  factory FhirUrlBuilder.fromUri(
    Uri input, [
    ElementBuilder? element,
  ]) {
    return FhirUrlBuilder(
      input,
      element: element,
    );
  }

  /// Named constructor to create [FhirUrlBuilder] from JSON
  factory FhirUrlBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson == null ? null : ElementBuilder.fromJson(elementJson);
    final objectPath = json['objectPath'] as String? ?? 'Canonical';

    return FhirUrlBuilder(
      value,
      element: element,
      objectPath: objectPath,
    );
  }

  /// Named constructor to create [FhirUrlBuilder] from YAML
  static FhirUrlBuilder fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirUrlBuilder.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirUrlBuilder.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw ArgumentError(
        'FhirUrlBuilder cannot be constructed from the provided input. '
        'It is neither a YAML string nor a YAML map.',
      );
    }
  }

  /// Attempts to parse the input as a [FhirUrlBuilder].
  /// Returns `null` if parsing fails.
  static FhirUrlBuilder? tryParse(dynamic input) {
    try {
      return FhirUrlBuilder(input);
    } catch (_) {
      return null;
    }
  }

  /// Validates the input string as a valid [Uri]
  static Uri _validateCanonical(String raw) {
    final parsed = Uri.tryParse(raw);
    if (parsed != null) return parsed;
    throw FormatException('Invalid Canonical String: $raw');
  }

  /// The original input value (for serialization)
  String? input;

  /// Element property
  ElementBuilder? element;

  /// ID property
  FhirStringBuilder? id;

  /// Extensions property
  List<FhirExtensionBuilder>? extension_;

  /// DisallowExtensions property
  bool? disallowExtensions;

  /// ObjectPath property
  String? objectPath;

  /// Boolean checks
  bool get valueOnly => value != null && element == null;

  /// Boolean checks
  bool get hasElementOnly => value == null && element != null;

  /// Boolean checks
  bool get valueAndElement => value != null && element != null;

  /// Converts this instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (input != null) 'value': input,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [FhirUrlBuilder] instances
  static List<FhirUrlBuilder> fromJsonList(
    List<dynamic> values,
    List<dynamic>? elements,
  ) {
    if (elements != null && elements.length != values.length) {
      throw const FormatException(
        'Values and elements must have the same length',
      );
    }
    return List.generate(values.length, (i) {
      final val = values[i] as String?;
      final elem = elements?[i] != null
          ? ElementBuilder.fromJson(elements![i] as Map<String, dynamic>)
          : null;
      return FhirUrlBuilder(val, element: elem);
    });
  }

  /// Converts a list of [FhirUrlBuilder] to a JSON map
  static Map<String, dynamic> toJsonList(List<FhirUrlBuilder> canonicals) => {
        'value': canonicals.map((c) => c.input).toList(),
        '_value': canonicals.map((c) => c.element?.toJson()).toList(),
      };

  // ──────────────────────────────────────────────────────────────────────────
  // Overrides
  // ──────────────────────────────────────────────────────────────────────────

  @override
  String get fhirType => 'url';

  @override
  String toString() => value?.toString() ?? 'null';

  @override
  String? get primitiveValue => value?.toString();

  @override
  bool equalsDeep(FhirBaseBuilder? other) =>
      other is FhirUrlBuilder &&
      other.value == value &&
      other.element == element;

  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirUrlBuilder && other.value == value) ||
      (other is Uri && other == value) ||
      (other is String && Uri.tryParse(other) == value);

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(input, element);

  // ──────────────────────────────────────────────────────────────────────────
  // Clone / Copy
  // ──────────────────────────────────────────────────────────────────────────

  /// Clones this [FhirUrlBuilder] instance
  @override
  FhirUrlBuilder clone() => FhirUrlBuilder(
        input,
        element: element?.clone() as ElementBuilder?,
      );

  /// Creates a modified copy with updated properties
  @override
  FhirUrlBuilder copyWith({
    Uri? newValue,
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
    return FhirUrlBuilder(
      newValue?.toString() ?? input,
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

  /// Sets [disallowExtensions] to true
  FhirUrlBuilder noExtensions() => copyWith(disallowExtensions: true);

  @override
  FhirUrlBuilder createProperty(String propertyName) => this;

  @override
  FhirUrlBuilder clear({
    bool input = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirUrlBuilder(
      input ? null : this.input,
      element: element,
      extension_: extension_ ? <FhirExtensionBuilder>[] : this.extension_,
      id: id ? null : this.id,
    );
  }

  // ──────────────────────────────────────────────────────────────────────────
  // Additional convenience getters (unchanged from your code)
  // ──────────────────────────────────────────────────────────────────────────

  /// Returns the list of path segments in the canonical URL
  List<String>? get pathSegments => value?.pathSegments;

  /// Converts the canonical URL to a file path string
  String? toFilePath({bool? windows}) => value?.toFilePath(windows: windows);

  /// Returns host of the canonical URL
  String? get host => value?.host;

  /// Returns the userinfo part of the canonical URL
  String? get userInfo => value?.userInfo;

  /// Returns the port of the canonical URL
  int? get port => value?.port;

  /// Resturns the authority of the canonical URL
  String? get authority => value?.authority;

  /// Returns the query parameters of the canonical URL
  String? get query => value?.query;

  /// Splits the [query] into a map according to the rules specified for FORM
  /// post in the HTML 4.01 specification section 17.13.4. Each key and value
  /// in the returned map has been decoded. If the [query] is the empty string,
  /// an empty map is returned.
  /// Keys in the query string that have no value are mapped to the empty
  /// string.
  /// Each query component will be decoded using [encoding]. The default
  /// encoding is UTF-8.
  static Map<String, List<String>> splitQueryStringAll(
    String query, {
    Encoding encoding = utf8,
  }) {
    return Uri.splitQueryString(query, encoding: encoding).map(
      (String key, String value) => MapEntry<String, List<String>>(
        key,
        value.isEmpty ? <String>[] : <String>[value],
      ),
    );
  }

  /// Encodes the string [component] according to the HTML 4.01 rules for
  /// encoding the posting of a HTML form as a query string component.
  /// The component is first encoded to bytes using [encoding]. The default is
  /// to use [utf8] encoding, which preserves all the characters that don't
  /// need encoding.
  /// Then the resulting bytes are "percent-encoded". This transforms spaces
  /// (U+0020) to a plus sign ('+') and all bytes that are not the ASCII
  /// decimal digits, letters or one of '-._~' are written as a percent sign
  /// '%' followed by the two-digit hexadecimal representation of the byte.
  /// Note that the set of characters which are percent-encoded is a superset
  /// of what HTML 4.01 requires, since it refers to RFC 1738 for reserved
  /// characters.
  /// When manually encoding query components remember to encode each part
  /// separately before building the query string.
  /// To avoid the need for explicitly encoding the query use the
  /// [queryParameters] optional named arguments when constructing a [Uri].
  /// See https://www.w3.org/TR/html401/interact/forms.html#h-17.13.4.2 for
  /// more details.
  static String encodeQueryComponent(String text, {Encoding encoding = utf8}) {
    return Uri.encodeQueryComponent(text, encoding: encoding);
  }

  /// Decodes the percent-encoding in [encodedComponent], converting pluses to
  /// spaces.
  /// It will create a byte-list of the decoded characters, and then use
  /// [encoding] to decode the byte-list to a String. The default encoding is
  /// UTF-8.
  static String decodeQueryComponent(String text, {Encoding encoding = utf8}) {
    return Uri.decodeQueryComponent(text, encoding: encoding);
  }
}
