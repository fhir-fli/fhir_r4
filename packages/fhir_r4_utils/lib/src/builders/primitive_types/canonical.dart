part of 'primitive_types.dart';

/// Extension methods on [String] to easily convert to [FhirCanonicalBuilder].
extension FhirCanonicalBuilderExtension on String {
  /// Returns a new [FhirCanonicalBuilder] from this [String].
  FhirCanonicalBuilder get toFhirCanonicalBuilder => FhirCanonicalBuilder(this);
}

/// Extension methods on [Uri] to easily convert to [FhirCanonicalBuilder].
extension FhirCanonicalUriBuilderExtension on Uri {
  /// Returns a new [FhirCanonicalBuilder] from this [Uri].
  FhirCanonicalBuilder get toFhirCanonicalBuilder =>
      FhirCanonicalBuilder.fromUri(this);
}

/// A specialized URI-type in FHIR known as `canonical`.
///
/// Typically indicates the canonical URL for a FHIR resource definition
/// (e.g., a profile or extension). Internally extends [FhirUriBuilder].
class FhirCanonicalBuilder extends FhirUriBuilder
    implements
        SourceXConceptMapBuilder,
        TargetXConceptMapBuilder,
        DefinitionXEvidenceVariableCharacteristicBuilder,
        ModuleXGuidanceResponseBuilder,
        ExampleXImplementationGuideResourceBuilder,
        ExampleXImplementationGuideResource1Builder,
        ValueXParametersParameterBuilder,
        DefinitionXPlanDefinitionActionBuilder,
        DefinitionXResearchElementDefinitionCharacteristicBuilder,
        DefaultValueXStructureMapSourceBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder,
        SubjectXActivityDefinitionBuilder,
        SubjectXPlanDefinitionActionBuilder,
        SubjectXPlanDefinitionBuilder {
  // --------------------------------------------------------------------------
  // Private Internal Constructor
  // --------------------------------------------------------------------------

  /// Private underscore constructor delegating to [FhirUriBuilder].
  FhirCanonicalBuilder._({
    required super.valueString,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Canonical',
  }) : super._();

  // --------------------------------------------------------------------------
  // Public Factories
  // --------------------------------------------------------------------------

  /// Creates a [FhirCanonicalBuilder] by parsing [rawValue] as a
  /// [String] or [Uri].
  // ignore: sort_unnamed_constructors_first
  factory FhirCanonicalBuilder(
    dynamic rawValue, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Canonical',
  }) {
    String? parsedValue;
    if (rawValue == null && element == null) {
      throw ArgumentError('A value or element is required for FhirCanonical.');
    } else if (rawValue is String) {
      parsedValue = FhirUriBuilder.validateUri(rawValue);
    } else if (rawValue is Uri) {
      parsedValue = rawValue.toString();
    } else if (rawValue != null) {
      throw ArgumentError(
        'FhirCanonical only supports a String or Uri. Got: $rawValue',
      );
    }

    return FhirCanonicalBuilder._(
      valueString: parsedValue,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates an empty [FhirCanonicalBuilder] with an [Element.empty].
  factory FhirCanonicalBuilder.empty() =>
      FhirCanonicalBuilder(null, element: ElementBuilder.empty());

  /// Creates a [FhirCanonicalBuilder] from a [Uri].
  factory FhirCanonicalBuilder.fromUri(
    Uri input, [
    ElementBuilder? element,
  ]) {
    return FhirCanonicalBuilder(
      input,
      element: element,
    );
  }

  // --------------------------------------------------------------------------
  // JSON / YAML Constructors
  // --------------------------------------------------------------------------

  /// Constructs a [FhirCanonicalBuilder] from a JSON [Map].
  factory FhirCanonicalBuilder.fromJson(Map<String, dynamic> json) {
    final rawValue = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement =
        elementJson == null ? null : ElementBuilder.fromJson(elementJson);
    final objectPath = json['objectPath'] as String? ?? 'Canonical';

    return FhirCanonicalBuilder(
      rawValue,
      element: parsedElement,
      objectPath: objectPath,
    );
  }

  /// Constructs a [FhirCanonicalBuilder] from a YAML input.
  ///
  /// Accepts [String] or [YamlMap].
  static FhirCanonicalBuilder fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirCanonicalBuilder.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirCanonicalBuilder.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw ArgumentError(
        'FhirCanonical cannot be constructed from the provided input. '
        'It is neither a YAML string nor a YAML map.',
      );
    }
  }

  /// Attempts to parse [input] as a [FhirCanonicalBuilder]. Returns `null`
  /// if parsing fails.
  static FhirCanonicalBuilder? tryParse(dynamic input) {
    try {
      return FhirCanonicalBuilder(input);
    } catch (_) {
      return null;
    }
  }

  // --------------------------------------------------------------------------
  // JSON Serialization
  // --------------------------------------------------------------------------

  /// Converts this [FhirCanonicalBuilder] into a JSON map.
  @override
  Map<String, dynamic> toJson() => {
        if (valueString != null) 'value': valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// Method to convert the builder object to the original Element object
  @override
  FhirCanonical build() => FhirCanonical.fromJson(toJson());

  /// Converts parallel [values] and [elements] into a list of
  /// [FhirCanonicalBuilder].
  static List<FhirCanonicalBuilder> fromJsonList(
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
      return FhirCanonicalBuilder(val, element: elem);
    });
  }

  /// Converts a list of [FhirCanonicalBuilder] into a JSON map with `'value'`
  /// and `'_value'`.
  static Map<String, dynamic> toJsonList(List<FhirCanonicalBuilder> values) => {
        'value': values.map((val) => val.valueString).toList(),
        '_value': values.map((val) => val.element?.toJson()).toList(),
      };

  // --------------------------------------------------------------------------
  // Overrides
  // --------------------------------------------------------------------------

  /// Returns the FHIR type `"canonical"`.
  @override
  String get fhirType => 'canonical';

  /// Checks equality with [FhirCanonicalBuilder], [Uri], or [String].
  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirCanonicalBuilder && other.valueString == valueString) ||
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

  /// Clones this [FhirCanonicalBuilder].
  @override
  FhirCanonicalBuilder clone() => FhirCanonicalBuilder(
        valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Creates a new [FhirCanonicalBuilder] with updated properties.
  @override
  FhirCanonicalBuilder copyWith({
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
    return FhirCanonicalBuilder(
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

  /// Creates a property. No-op for [FhirCanonicalBuilder].
  @override
  FhirCanonicalBuilder createProperty(String propertyName) => this;

  /// Clears selected fields from this [FhirCanonicalBuilder].
  @override
  FhirCanonicalBuilder clear({
    bool value = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirCanonicalBuilder(
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
