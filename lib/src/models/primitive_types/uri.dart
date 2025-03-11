part of 'primitive_types.dart';

/// Extension to convert a [String] to a [FhirUri]
extension FhirUriExtension on String {
  /// Converts a [String] to a [FhirUri]
  FhirUri get toFhirUri => FhirUri(this);
}

/// Extension to convert a [Uri] to a [FhirUri]
extension FhirUriUriExtension on Uri {
  /// Converts a [Uri] to a [FhirUri]
  FhirUri get toFhirUri => FhirUri.fromUri(this);
}

/// Represents a canonical URL in FHIR as a [PrimitiveType] of [Uri]
class FhirUri extends PrimitiveType<Uri>
    implements
        TargetXCitationRelatesTo,
        TargetXCitationRelatesTo1,
        SourceXConceptMap,
        TargetXConceptMap,
        ValueXContractAnswer,
        ModuleXGuidanceResponse,
        EventXMessageDefinition,
        EventXMessageHeader,
        ValueXParametersParameter,
        DefinitionXPlanDefinitionAction,
        ValueXQuestionnaireInitial,
        ValueXQuestionnaireResponseAnswer,
        DefaultValueXStructureMapSource,
        ValueXTaskInput,
        ValueXTaskOutput,
        ValueXValueSetParameter,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  /// Private underscore constructor that takes a validated [Uri?] plus the
  /// original input string.
  FhirUri._({
    required Uri? validatedUri,
    this.input,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Canonical',
  }) : super._(value: validatedUri);

  /// Single public factory for creating a [FhirUri].
  // ignore: sort_unnamed_constructors_first
  factory FhirUri(
    dynamic rawInput, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Canonical',
  }) {
    // 1) Validate/parse
    //    - If rawInput is null and no element, throw
    //    - If rawInput is a string, parse it as Uri
    //    - If rawInput is a Uri, we can accept it directly
    Uri? finalUri;
    String? originalString;
    if (rawInput == null && element == null) {
      throw ArgumentError('A value or element is required for FhirUri.');
    } else if (rawInput is String) {
      finalUri = _validateCanonical(rawInput);
      originalString = rawInput;
    } else if (rawInput is Uri) {
      finalUri = rawInput;
      originalString = rawInput.toString();
    } else if (rawInput != null) {
      throw ArgumentError(
        'FhirUri only supports a String or Uri, got: $rawInput',
      );
    }

    // 2) Construct via the private underscore constructor
    return FhirUri._(
      validatedUri: finalUri,
      input: originalString,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates empty [FhirUri] object
  factory FhirUri.empty() => FhirUri(null, element: Element.empty());

  /// Constructs a [FhirUri] from a [Uri] object
  factory FhirUri.fromUri(
    Uri input, [
    Element? element,
  ]) {
    return FhirUri(
      input,
      element: element,
    );
  }

  /// Named constructor to create [FhirUri] from JSON
  factory FhirUri.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson == null ? null : Element.fromJson(elementJson);
    final objectPath = json['objectPath'] as String? ?? 'Canonical';

    return FhirUri(
      value,
      element: element,
      objectPath: objectPath,
    );
  }

  /// Named constructor to create [FhirUri] from YAML
  static FhirUri fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirUri.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirUri.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw ArgumentError(
        'FhirUri cannot be constructed from the provided input. '
        'It is neither a YAML string nor a YAML map.',
      );
    }
  }

  /// Attempts to parse the input as a [FhirUri].
  /// Returns `null` if parsing fails.
  static FhirUri? tryParse(dynamic input) {
    try {
      return FhirUri(input);
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
  final String? input;

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

  /// Converts a list of JSON values to a list of [FhirUri] instances
  static List<FhirUri> fromJsonList(
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
          ? Element.fromJson(elements![i] as Map<String, dynamic>)
          : null;
      return FhirUri(val, element: elem);
    });
  }

  /// Converts a list of [FhirUri] to a JSON map
  static Map<String, dynamic> toJsonList(List<FhirUri> canonicals) => {
        'value': canonicals.map((c) => c.input).toList(),
        '_value': canonicals.map((c) => c.element?.toJson()).toList(),
      };

  // ──────────────────────────────────────────────────────────────────────────
  // Overrides
  // ──────────────────────────────────────────────────────────────────────────

  @override
  String get fhirType => 'uri';

  @override
  String toString() => value?.toString() ?? 'null';

  @override
  String? get primitiveValue => value?.toString();

  @override
  bool equalsDeep(FhirBase? other) =>
      other is FhirUri && other.value == value && other.element == element;

  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirUri && other.value == value) ||
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

  /// Clones this [FhirUri] instance
  @override
  FhirUri clone() => FhirUri(
        input,
        element: element?.clone() as Element?,
      );

  /// Creates a modified copy with updated properties
  @override
  FhirUri copyWith({
    Uri? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    return FhirUri(
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
      objectPath: objectPath ?? this.objectPath!,
    );
  }

  /// Sets [disallowExtensions] to true
  FhirUri noExtensions() => copyWith(disallowExtensions: true);

  @override
  FhirUri createProperty(String propertyName) => this;

  @override
  FhirUri clear({
    bool input = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirUri(
      input ? null : this.input,
      element: element,
      extension_: extension_ ? <FhirExtension>[] : this.extension_,
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
