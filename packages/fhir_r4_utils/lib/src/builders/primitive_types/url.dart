part of 'primitive_types.dart';

/// Extension methods on [String] to easily convert to [FhirUrlBuilder].
extension FhirUrlBuilderExtension on String {
  /// Returns a new [FhirUrlBuilder] constructed from this [String].
  FhirUrlBuilder get toFhirUrlBuilder => FhirUrlBuilder(this);
}

/// Extension methods on [Uri] to easily convert to [FhirUrlBuilder].
extension FhirUrlBuilderUriExtension on Uri {
  /// Returns a new [FhirUrlBuilder] constructed from this [Uri].
  FhirUrlBuilder get toFhirUrlBuilder => FhirUrlBuilder.fromUri(this);
}

/// A specialized URI-type in FHIR known as `url`.
///
/// Internally extends [FhirUriBuilder]. This type typically indicates an
/// absolute URL addressing something on the web, though FHIR treats it
/// similarly to `uri`.
class FhirUrlBuilder extends FhirUriBuilder
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
  // --------------------------------------------------------------------------
  // Private Internal Constructor
  // --------------------------------------------------------------------------

  /// Private underscore constructor delegating to [FhirUriBuilder]'s
  /// internal constructor.
  FhirUrlBuilder._({
    required super.valueString,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Url',
  }) : super._();

  // --------------------------------------------------------------------------
  // Public Factories
  // --------------------------------------------------------------------------

  /// Creates a [FhirUrlBuilder] by parsing [rawValue] as either a [String]
  /// or [Uri].
  ///
  /// - If [rawValue] is `null`, [element] must be non-null (element-only).
  /// - If [rawValue] is a [String], it is validated via
  /// [FhirUriBuilder.validateUri].
  /// - If [rawValue] is a [Uri], we store its string form.
  /// - Otherwise, throws an [ArgumentError].
  // ignore: sort_unnamed_constructors_first
  factory FhirUrlBuilder(
    dynamic rawValue, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Url',
  }) {
    String? parsedValue;
    if (rawValue == null && element == null) {
      throw ArgumentError('A value or element is required for FhirUrlBuilder.');
    } else if (rawValue is String) {
      parsedValue = FhirUriBuilder.validateUri(rawValue);
    } else if (rawValue is Uri) {
      parsedValue = rawValue.toString();
    } else if (rawValue != null) {
      throw ArgumentError(
        'FhirUrlBuilder only supports a String or Uri. Got: $rawValue',
      );
    }

    return FhirUrlBuilder._(
      valueString: parsedValue,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates an empty [FhirUrlBuilder] object with an [ElementBuilder.empty]
  /// for metadata.
  factory FhirUrlBuilder.empty() =>
      FhirUrlBuilder(null, element: ElementBuilder.empty());

  /// Creates a [FhirUrlBuilder] from a [Uri] object.
  factory FhirUrlBuilder.fromUri(
    Uri input, [
    ElementBuilder? element,
  ]) {
    return FhirUrlBuilder(
      input,
      element: element,
    );
  }

  // --------------------------------------------------------------------------
  // JSON / YAML Constructors
  // --------------------------------------------------------------------------

  /// Constructs a [FhirUrlBuilder] from a JSON [Map].
  factory FhirUrlBuilder.fromJson(Map<String, dynamic> json) {
    final rawValue = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement =
        elementJson == null ? null : ElementBuilder.fromJson(elementJson);
    final objectPath = json['objectPath'] as String? ?? 'Url';

    return FhirUrlBuilder(
      rawValue,
      element: parsedElement,
      objectPath: objectPath,
    );
  }

  /// Constructs a [FhirUrlBuilder] from a YAML input.
  ///
  /// Accepts [String] or [YamlMap].
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

  /// Attempts to parse [input] as a [FhirUrlBuilder]. Returns `null` if
  /// parsing fails.
  static FhirUrlBuilder? tryParse(dynamic input) {
    try {
      return FhirUrlBuilder(input);
    } catch (_) {
      return null;
    }
  }

  // --------------------------------------------------------------------------
  // JSON Serialization
  // --------------------------------------------------------------------------

  /// Converts this [FhirUrlBuilder] into a JSON map.
  @override
  Map<String, dynamic> toJson() => {
        if (valueString != null) 'value': valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// Method to convert the builder object to the original Element object
  @override
  FhirUrl build() => FhirUrl.fromJson(toJson());

  /// Converts parallel [values] and [elements] into a list of [FhirUrlBuilder].
  static List<FhirUrlBuilder> fromJsonList(
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
      return FhirUrlBuilder(val, element: elem);
    });
  }

  /// Converts a list of [FhirUrlBuilder] to a JSON map with parallel `'value'`/`'_value'`.
  static Map<String, dynamic> toJsonList(List<FhirUrlBuilder> values) => {
        'value': values.map((val) => val.valueString).toList(),
        '_value': values.map((val) => val.element?.toJson()).toList(),
      };

  // --------------------------------------------------------------------------
  // Overrides
  // --------------------------------------------------------------------------

  /// Returns the FHIR type `"url"`.
  @override
  String get fhirType => 'url';

  /// Returns the string or `"null"`.
  @override
  String toString() => valueString ?? 'null';

  /// Deep equality check for [FhirUrlBuilder].
  @override
  bool equalsDeep(FhirBaseBuilder? other) =>
      other is FhirUrlBuilder &&
      other.valueString == valueString &&
      other.element == element;

  /// Checks equality with [FhirUrlBuilder], [Uri], or [String].
  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirUrlBuilder && other.valueString == valueString) ||
      (other is Uri && other == valueUri) ||
      (other is String && other == valueString);

  /// Operator `==` override.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(valueString, element);

  /// Returns `true` if the Type is considered string-based, otherwise `false`
  @override
  bool get stringBased => true;

  // --------------------------------------------------------------------------
  // Clone / Copy
  // --------------------------------------------------------------------------

  /// Clones this [FhirUrlBuilder].
  @override
  FhirUrlBuilder clone() => FhirUrlBuilder(
        valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Creates a new [FhirUrlBuilder] with updated properties.
  @override
  FhirUrlBuilder copyWith({
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
    return FhirUrlBuilder(
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

  /// Creates a property. No-op for [FhirUrlBuilder].
  @override
  FhirUrlBuilder createProperty(String propertyName) => this;

  /// Clears selected fields from this [FhirUrlBuilder].
  @override
  FhirUrlBuilder clear({
    bool value = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirUrlBuilder(
      value ? null : valueString,
      element: element,
      extension_: extension_ ? <FhirExtensionBuilder>[] : this.extension_,
      id: id ? null : this.id,
    );
  }

  // --------------------------------------------------------------------------
  // Additional Convenience (Unchanged from your code)
  // --------------------------------------------------------------------------

  /// Encodes a query component as per HTML 4.01 rules.
  static String encodeQueryComponent(String text, {Encoding encoding = utf8}) {
    return Uri.encodeQueryComponent(text, encoding: encoding);
  }

  /// Decodes a percent-encoded query component.
  static String decodeQueryComponent(String text, {Encoding encoding = utf8}) {
    return Uri.decodeQueryComponent(text, encoding: encoding);
  }

  /// Splits a query string into a map of keys to a list of values.
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
}
