part of 'primitive_types.dart';

/// Extension methods on [String] to easily convert to [FhirIdBuilder].
extension FhirIdBuilderExtension on String {
  /// Returns a new [FhirIdBuilder] constructed from this string.
  FhirIdBuilder get toFhirIdBuilder => FhirIdBuilder(this);
}

/// A subclass of [FhirUriBuilder] representing the FHIR primitive type `id`.
///
/// According to FHIR, an `id` is a string of length 1..64 matching
/// the pattern:
///
///   `[A-Za-z0-9\-\.]{1}[A-Za-z0-9\-._]{0,63}`
///
/// (with a slight variation for underscores).
class FhirIdBuilder extends FhirUriBuilder
    implements
        ValueXParametersParameterBuilder,
        DefaultValueXStructureMapSourceBuilder,
        ValueXStructureMapParameterBuilder,
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
  FhirIdBuilder._({
    required super.valueString,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Id',
  }) : super._();

  // --------------------------------------------------------------------------
  // Public Factories
  // --------------------------------------------------------------------------

  /// Creates a [FhirIdBuilder] by validating [rawValue] as a [String] or [Uri].
  ///
  /// - If [rawValue] is `null`, then [element] must be non-null (element-only).
  /// - If [rawValue] is a [String], it must pass [_validateId].
  /// - If [rawValue] is a [Uri], we convert it to a string and validate.
  /// - Otherwise, an [ArgumentError] is thrown.
  // ignore: sort_unnamed_constructors_first
  factory FhirIdBuilder(
    dynamic rawValue, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Id',
  }) {
    String? parsedValue;
    if (rawValue == null && element == null) {
      throw ArgumentError('A value or element is required for FhirId.');
    } else if (rawValue is String) {
      parsedValue = _validateId(rawValue);
    } else if (rawValue is Uri) {
      parsedValue = _validateId(rawValue.toString());
    } else if (rawValue != null) {
      throw ArgumentError(
        'FhirId cannot be constructed from provided input. '
        'It must be a String or Uri. Got: $rawValue',
      );
    }

    return FhirIdBuilder._(
      valueString: parsedValue,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates an empty [FhirIdBuilder] object (with a default
  /// [ElementBuilder.empty] for metadata).
  factory FhirIdBuilder.empty() =>
      FhirIdBuilder(null, element: ElementBuilder.empty());

  // --------------------------------------------------------------------------
  // JSON / YAML Constructors
  // --------------------------------------------------------------------------

  /// Constructs a [FhirIdBuilder] from a JSON [Map].
  factory FhirIdBuilder.fromJson(Map<String, dynamic> json) {
    final rawValue = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement =
        elementJson == null ? null : ElementBuilder.fromJson(elementJson);
    final objectPath = json['objectPath'] as String? ?? 'Id';

    return FhirIdBuilder(
      rawValue,
      element: parsedElement,
      objectPath: objectPath,
    );
  }

  /// Constructs a [FhirIdBuilder] from a YAML input ([String] or [YamlMap]).
  static FhirIdBuilder fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirIdBuilder.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirIdBuilder.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw ArgumentError(
        'FhirId cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Attempts to parse [input] as a [FhirIdBuilder].
  /// Returns `null` if parsing fails.
  static FhirIdBuilder? tryParse(dynamic input) {
    try {
      return FhirIdBuilder(input);
    } catch (_) {
      return null;
    }
  }

  // --------------------------------------------------------------------------
  // Validation
  // --------------------------------------------------------------------------

  /// Validates the string against the FHIR `id` pattern:
  ///   `[A-Za-z0-9\-\.][A-Za-z0-9\-._]{0,63}`
  ///
  /// Throws a [FormatException] if it fails.
  static String _validateId(String input) {
    final pattern = RegExp(r'^[A-Za-z0-9\-\.][A-Za-z0-9\-._]{0,63}$');
    if (pattern.hasMatch(input)) {
      return input;
    }
    throw FormatException('Invalid FhirId: $input');
  }

  // --------------------------------------------------------------------------
  // FHIR Overrides
  // --------------------------------------------------------------------------

  /// Returns `"id"` as the FHIR type.
  @override
  String get fhirType => 'id';

  /// Returns `true` if the Type is considered string-based, otherwise `false`
  @override
  bool get stringBased => true;

  // --------------------------------------------------------------------------
  // JSON Serialization
  // --------------------------------------------------------------------------

  /// Converts this [FhirIdBuilder] into a JSON [Map].
  @override
  Map<String, dynamic> toJson() => {
        if (valueString != null) 'value': valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// Method to convert the builder object to the original Element object
  @override
  FhirId build() => FhirId.fromJson(toJson());

  /// Converts parallel lists of [values] and [elements]
  /// into a list of [FhirIdBuilder].
  static List<FhirIdBuilder> fromJsonList(
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
      return FhirIdBuilder(val, element: elem);
    });
  }

  /// Converts a list of [FhirIdBuilder] to a JSON map with `'value'`
  /// and `'_value'` arrays.
  static Map<String, dynamic> toJsonList(List<FhirIdBuilder> values) => {
        'value': values.map((val) => val.valueString).toList(),
        '_value': values.map((val) => val.element?.toJson()).toList(),
      };

  // --------------------------------------------------------------------------
  // Overrides
  // --------------------------------------------------------------------------

  /// Provides a string representation of the instance.
  @override
  String toString() => valueString ?? '';

  /// The primitive value as a string.
  @override
  String? get primitiveValue => valueString;

  /// Deep equality check for [FhirIdBuilder].
  @override
  bool equalsDeep(FhirBaseBuilder? other) =>
      other is FhirIdBuilder &&
      other.valueString == valueString &&
      other.element == element;

  /// Checks equality with [FhirIdBuilder] or [String].
  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirIdBuilder && other.valueString == valueString) ||
      (other is String && other == valueString);

  /// Operator `==` override.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(valueString, element);

  // --------------------------------------------------------------------------
  // Clone / Copy
  // --------------------------------------------------------------------------

  /// Creates a deep copy of this [FhirIdBuilder].
  @override
  FhirIdBuilder clone() => FhirIdBuilder(
        valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Creates a new [FhirIdBuilder] with updated properties.
  @override
  FhirIdBuilder copyWith({
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
    return FhirIdBuilder(
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

  /// Creates a property. No-op for [FhirIdBuilder].
  @override
  FhirIdBuilder createProperty(String propertyName) => this;

  /// Clears selected fields in this [FhirIdBuilder].
  @override
  FhirIdBuilder clear({
    bool value = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirIdBuilder(
      value ? null : valueString,
      element: element,
      extension_: extension_ ? <FhirExtensionBuilder>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
