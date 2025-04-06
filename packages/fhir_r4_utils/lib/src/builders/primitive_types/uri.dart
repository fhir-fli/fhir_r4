part of 'primitive_types.dart';

/// Extension methods on [String] to easily convert to [FhirUriBuilder].
extension FhirUriBuilderExtension on String {
  /// Returns a new [FhirUriBuilder] from this [String].
  FhirUriBuilder get toFhirUriBuilder => FhirUriBuilder(this);
}

/// Extension methods on [Uri] to easily convert to [FhirUriBuilder].
extension FhirUriUriBuilderExtension on Uri {
  /// Returns a new [FhirUriBuilder] from this [Uri].
  FhirUriBuilder get toFhirUriBuilder => FhirUriBuilder.fromUri(this);
}

/// A FHIR primitive type representing `uri`.
///
/// Internally stores the raw string plus optional metadata, but can also
/// parse to a Dart [Uri] via [valueUri].
class FhirUriBuilder extends PrimitiveTypeBuilder
    implements
        TargetXCitationRelatesToBuilder,
        TargetXCitationRelatesTo1Builder,
        SourceXConceptMapBuilder,
        TargetXConceptMapBuilder,
        ValueXContractAnswerBuilder,
        ModuleXGuidanceResponseBuilder,
        EventXMessageDefinitionBuilder,
        EventXMessageHeaderBuilder,
        ValueXParametersParameterBuilder,
        DefinitionXPlanDefinitionActionBuilder,
        ValueXQuestionnaireInitialBuilder,
        ValueXQuestionnaireResponseAnswerBuilder,
        DefaultValueXStructureMapSourceBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        ValueXValueSetParameterBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder {
  // --------------------------------------------------------------------------
  // Private Internal Constructor
  // --------------------------------------------------------------------------

  /// Private underscore constructor that sets [valueString] and calls
  /// [super._].
  FhirUriBuilder._({
    required super.valueString,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Uri',
  }) : super._();

  // --------------------------------------------------------------------------
  // Public Factories
  // --------------------------------------------------------------------------

  /// Creates a [FhirUriBuilder] by parsing [rawValue] as [String] or [Uri].
  ///
  /// - If [rawValue] is `null`, [element] must be non-null
  /// (element-only usage).
  /// - If [rawValue] is a [String], it must be parseable by [Uri.parse].
  /// - If [rawValue] is a [Uri], we store its `.toString()`.
  // ignore: sort_unnamed_constructors_first
  factory FhirUriBuilder(
    dynamic rawValue, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Uri',
  }) {
    String? parsedValue;
    if (rawValue == null && element == null) {
      throw ArgumentError('A value or element is required for FhirUri.');
    } else if (rawValue is String) {
      parsedValue = validateUri(rawValue);
    } else if (rawValue is Uri) {
      parsedValue = rawValue.toString();
    } else if (rawValue != null) {
      throw ArgumentError(
        'FhirUri only supports a String or Uri. Got: $rawValue',
      );
    }

    return FhirUriBuilder._(
      valueString: parsedValue,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates an empty [FhirUriBuilder] with [ElementBuilder.empty] metadata.
  factory FhirUriBuilder.empty() =>
      FhirUriBuilder(null, element: ElementBuilder.empty());

  /// Creates a [FhirUriBuilder] from a [Uri] instance.
  factory FhirUriBuilder.fromUri(
    Uri input, [
    ElementBuilder? element,
  ]) {
    return FhirUriBuilder(
      input,
      element: element,
    );
  }

  // --------------------------------------------------------------------------
  // JSON / YAML Constructors
  // --------------------------------------------------------------------------

  /// Constructs a [FhirUriBuilder] from a JSON [Map].
  factory FhirUriBuilder.fromJson(Map<String, dynamic> json) {
    final rawValue = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement =
        elementJson == null ? null : ElementBuilder.fromJson(elementJson);
    final objectPath = json['objectPath'] as String? ?? 'Uri';

    return FhirUriBuilder(
      rawValue,
      element: parsedElement,
      objectPath: objectPath,
    );
  }

  /// Constructs a [FhirUriBuilder] from a YAML input.
  ///
  /// Accepts [String] or [YamlMap].
  static FhirUriBuilder fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirUriBuilder.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirUriBuilder.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw ArgumentError(
        'FhirUri cannot be constructed from the provided input. '
        'It is neither a YAML string nor a YAML map.',
      );
    }
  }

  /// Attempts to parse [input] as a [FhirUriBuilder]. Returns `null` if
  /// parsing fails.
  static FhirUriBuilder? tryParse(dynamic input) {
    try {
      return FhirUriBuilder(input);
    } catch (_) {
      return null;
    }
  }

  // --------------------------------------------------------------------------
  // Validation
  // --------------------------------------------------------------------------

  /// Validates that [raw] is a valid URI string (parsable by [Uri.parse]).
  static String validateUri(String raw) {
    final parsed = Uri.tryParse(raw);
    if (parsed != null) {
      return raw;
    }
    throw FormatException('Invalid URI string: $raw');
  }

  // --------------------------------------------------------------------------
  // Getters / Properties
  // --------------------------------------------------------------------------

  /// Returns the [valueString] parsed as a Dart [Uri], or `null` if
  /// [valueString] is `null`.
  Uri? get valueUri => valueString == null ? null : Uri.parse(valueString!);

  // --------------------------------------------------------------------------
  // Booleans
  // --------------------------------------------------------------------------

  /// Returns `true` if there is a [valueString] but no [element].
  bool get valueOnly => valueString != null && element == null;

  /// Returns `true` if there is an [element] but no [valueString].
  bool get hasElementOnly => valueString == null && element != null;

  /// Returns `true` if both [valueString] and [element] are non-null.
  bool get valueAndElement => valueString != null && element != null;

  // --------------------------------------------------------------------------
  // JSON Serialization
  // --------------------------------------------------------------------------

  /// Converts this [FhirUriBuilder] into a JSON [Map].
  @override
  Map<String, dynamic> toJson() => {
        if (valueString != null) 'value': valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// Method to convert the builder object to the original Element object
  @override
  FhirUri build() => FhirUri.fromJson(toJson());

  /// Converts a parallel list of [values] and [elements] into a list of
  /// [FhirUriBuilder].
  static List<FhirUriBuilder> fromJsonList(
    List<dynamic> values,
    List<dynamic>? elements,
  ) {
    if (elements != null && elements.length != values.length) {
      throw const FormatException(
        'Values and elements must have the same length.',
      );
    }
    return List.generate(values.length, (i) {
      final val = values[i] as String?;
      final elem = elements?[i] != null
          ? ElementBuilder.fromJson(elements![i] as Map<String, dynamic>)
          : null;
      return FhirUriBuilder(val, element: elem);
    });
  }

  /// Converts a list of [FhirUriBuilder] into a JSON map with `'value'` and
  /// `'_value'` arrays.
  static Map<String, dynamic> toJsonList(List<FhirUriBuilder> items) => {
        'value': items.map((val) => val.valueString).toList(),
        '_value': items.map((val) => val.element?.toJson()).toList(),
      };

  // --------------------------------------------------------------------------
  // Overrides
  // --------------------------------------------------------------------------

  /// Returns the FHIR type `"uri"`.
  @override
  String get fhirType => 'uri';

  /// Returns a string representation or `"null"`.
  @override
  String toString() => valueString ?? 'null';

  /// The primitive value as a string.
  @override
  String? get primitiveValue => valueString;

  /// Deep equality check for [FhirUriBuilder].
  @override
  bool equalsDeep(FhirBaseBuilder? other) =>
      other is FhirUriBuilder &&
      other.valueString == valueString &&
      other.element == element;

  /// Checks equality with [FhirUriBuilder], [Uri], or [String].
  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirUriBuilder && other.valueString == valueString) ||
      (other is Uri && other == valueUri) ||
      (other is String && other == valueString);

  /// Operator `==` override.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  /// Hash code override.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(valueString, element);

  /// Returns `true` if the Type is considered string-based, otherwise `false`
  @override
  bool get stringBased => true;

  // --------------------------------------------------------------------------
  // Clone / Copy
  // --------------------------------------------------------------------------

  /// Clones this [FhirUriBuilder].
  @override
  FhirUriBuilder clone() => FhirUriBuilder(
        valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Creates a new [FhirUriBuilder] with updated properties.
  @override
  FhirUriBuilder copyWith({
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
    return FhirUriBuilder(
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

  /// Returns a copy that disallows further extensions.
  FhirUriBuilder noExtensions() => copyWith(disallowExtensions: true);

  /// Creates a property. No-op for [FhirUriBuilder].
  @override
  FhirUriBuilder createProperty(String propertyName) => this;

  /// Clears selected fields in this [FhirUriBuilder].
  @override
  FhirUriBuilder clear({
    bool value = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirUriBuilder(
      value ? null : valueString,
      element: element,
      extension_: extension_ ? <FhirExtensionBuilder>[] : this.extension_,
      id: id ? null : this.id,
    );
  }

  // --------------------------------------------------------------------------
  // Additional Convenience Getters
  // --------------------------------------------------------------------------

  /// Returns the list of path segments in the URI.
  List<String>? get pathSegments => valueUri?.pathSegments;

  /// Converts the URI to a file path, respecting [windows] if needed.
  String? toFilePath({bool? windows}) => valueUri?.toFilePath(windows: windows);

  /// Returns the host portion of the URI, if any.
  String? get host => valueUri?.host;

  /// Returns the userInfo portion of the URI, if any.
  String? get userInfo => valueUri?.userInfo;

  /// Returns the port of the URI, if any.
  int? get port => valueUri?.port;

  /// Returns the authority portion of the URI, if any.
  String? get authority => valueUri?.authority;

  /// Returns the query string portion of the URI, if any.
  String? get query => valueUri?.query;

  /// Splits [query] into a map, with each key mapping to a list of
  /// decoded values.
  static Map<String, List<String>> splitQueryStringAll(
    String query, {
    Encoding encoding = utf8,
  }) {
    return Uri.splitQueryString(query, encoding: encoding).map(
      (key, value) => MapEntry<String, List<String>>(
        key,
        value.isEmpty ? <String>[] : <String>[value],
      ),
    );
  }

  /// Encodes [text] as a query component using the HTML 4.01 rules.
  static String encodeQueryComponent(String text, {Encoding encoding = utf8}) {
    return Uri.encodeQueryComponent(text, encoding: encoding);
  }

  /// Decodes a query component [text] from its percent-encoded form.
  static String decodeQueryComponent(String text, {Encoding encoding = utf8}) {
    return Uri.decodeQueryComponent(text, encoding: encoding);
  }
}
