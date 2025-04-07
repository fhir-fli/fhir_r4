part of 'primitive_types.dart';

/// Extension methods on [String] to easily convert to [FhirCanonical].
extension FhirCanonicalExtension on String {
  /// Returns a new [FhirCanonical] from this [String].
  FhirCanonical get toFhirCanonical => FhirCanonical(this);
}

/// Extension methods on [Uri] to easily convert to [FhirCanonical].
extension FhirCanonicalUriExtension on Uri {
  /// Returns a new [FhirCanonical] from this [Uri].
  FhirCanonical get toFhirCanonical => FhirCanonical.fromUri(this);
}

/// A specialized URI-type in FHIR known as `canonical`.
///
/// Typically indicates the canonical URL for a FHIR resource definition
/// (e.g., a profile or extension). Internally extends [FhirUri].
class FhirCanonical extends FhirUri
    implements
        SourceXConceptMap,
        TargetXConceptMap,
        DefinitionXEvidenceVariableCharacteristic,
        ModuleXGuidanceResponse,
        ExampleXImplementationGuideResource,
        ExampleXImplementationGuideResource1,
        ValueXParametersParameter,
        DefinitionXPlanDefinitionAction,
        DefinitionXResearchElementDefinitionCharacteristic,
        DefaultValueXStructureMapSource,
        ValueXTaskInput,
        ValueXTaskOutput,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension,
        SubjectXActivityDefinition,
        SubjectXPlanDefinitionAction,
        SubjectXPlanDefinition {
  // --------------------------------------------------------------------------
  // Private Internal Constructor
  // --------------------------------------------------------------------------

  /// Private underscore constructor delegating to [FhirUri].
  const FhirCanonical._({
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

  /// Creates a [FhirCanonical] by parsing [rawValue] as a [String] or [Uri].
  ///
  /// - If [rawValue] is `null`, [element] must be non-null.
  /// - Otherwise, validated via [FhirUri.validateUri].
  // ignore: sort_unnamed_constructors_first
  factory FhirCanonical(
    dynamic rawValue, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Canonical',
  }) {
    String? parsedValue;
    if (rawValue == null && element == null) {
      throw ArgumentError('A value or element is required for FhirCanonical.');
    } else if (rawValue is String) {
      parsedValue = FhirUri.validateUri(rawValue);
    } else if (rawValue is Uri) {
      parsedValue = rawValue.toString();
    } else if (rawValue != null) {
      throw ArgumentError(
        'FhirCanonical only supports a String or Uri. Got: $rawValue',
      );
    }

    return FhirCanonical._(
      valueString: parsedValue,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates an empty [FhirCanonical] with an [Element.empty].
  factory FhirCanonical.empty() =>
      FhirCanonical(null, element: Element.empty());

  /// Creates a [FhirCanonical] from a [Uri].
  factory FhirCanonical.fromUri(
    Uri input, [
    Element? element,
  ]) {
    return FhirCanonical(
      input,
      element: element,
    );
  }

  // --------------------------------------------------------------------------
  // JSON / YAML Constructors
  // --------------------------------------------------------------------------

  /// Constructs a [FhirCanonical] from a JSON [Map].
  factory FhirCanonical.fromJson(Map<String, dynamic> json) {
    final rawValue = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement =
        elementJson == null ? null : Element.fromJson(elementJson);
    final objectPath = json['objectPath'] as String? ?? 'Canonical';

    return FhirCanonical(
      rawValue,
      element: parsedElement,
      objectPath: objectPath,
    );
  }

  /// Constructs a [FhirCanonical] from a YAML input.
  ///
  /// Accepts [String] or [YamlMap].
  static FhirCanonical fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirCanonical.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirCanonical.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw ArgumentError(
        'FhirCanonical cannot be constructed from the provided input. '
        'It is neither a YAML string nor a YAML map.',
      );
    }
  }

  /// Attempts to parse [input] as a [FhirCanonical]. Returns `null` if
  /// parsing fails.
  static FhirCanonical? tryParse(dynamic input) {
    try {
      return FhirCanonical(input);
    } catch (_) {
      return null;
    }
  }

  // --------------------------------------------------------------------------
  // JSON Serialization
  // --------------------------------------------------------------------------

  /// Converts this [FhirCanonical] into a JSON map.
  @override
  Map<String, dynamic> toJson() => {
        if (valueString != null) 'value': valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts parallel [values] and [elements] into a list of [FhirCanonical].
  static List<FhirCanonical> fromJsonList(
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
          ? Element.fromJson(elements![i] as Map<String, dynamic>)
          : null;
      return FhirCanonical(val, element: elem);
    });
  }

  /// Converts a list of [FhirCanonical] into a JSON map with `'value'`
  /// and `'_value'`.
  static Map<String, dynamic> toJsonList(List<FhirCanonical> values) => {
        'value': values.map((val) => val.valueString).toList(),
        '_value': values.map((val) => val.element?.toJson()).toList(),
      };

  // --------------------------------------------------------------------------
  // Overrides
  // --------------------------------------------------------------------------

  /// Returns the FHIR type `"canonical"`.
  @override
  String get fhirType => 'canonical';

  /// Checks equality with [FhirCanonical], [Uri], or [String].
  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirCanonical && other.valueString == valueString) ||
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

  /// Clones this [FhirCanonical].
  @override
  FhirCanonical clone() => FhirCanonical(
        valueString,
        element: element?.clone() as Element?,
      );

  /// Creates a new [FhirCanonical] with updated properties.
  @override
  FhirCanonical copyWith({
    dynamic newValue,
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
    return FhirCanonical(
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

  /// Creates a property. No-op for [FhirCanonical].
  @override
  FhirCanonical createProperty(String propertyName) => this;

  /// Clears selected fields from this [FhirCanonical].
  @override
  FhirCanonical clear({
    bool value = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirCanonical(
      value ? null : valueString,
      element: element,
      extension_: extension_ ? <FhirExtension>[] : this.extension_,
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
