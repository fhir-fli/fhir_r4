part of 'primitive_types.dart';

/// Extension methods on [String] to easily convert to [FhirOidBuilder].
extension FhirOidBuilderExtension on String {
  /// Returns a new [FhirOidBuilder] from this [String].
  FhirOidBuilder get toFhirOidBuilder => FhirOidBuilder(this);
}

/// Extension methods on [Uri] to easily convert to [FhirOidBuilder].
extension FhirOidUriBuilderExtension on Uri {
  /// Returns a new [FhirOidBuilder] from this [Uri].
  FhirOidBuilder get toFhirOidBuilder => FhirOidBuilder.fromUri(this);
}

/// A specialized URI-type in FHIR known as `oid`.
///
/// The string must match the OID pattern, e.g. `"urn:oid:1.2.3.4"`.
/// Internally extends [FhirUriBuilder].
class FhirOidBuilder extends FhirUriBuilder
    implements
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
  FhirOidBuilder._({
    required super.valueString,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Oid',
  }) : super._();

  // --------------------------------------------------------------------------
  // Public Factories
  // --------------------------------------------------------------------------

  /// Creates a [FhirOidBuilder] by parsing [rawValue] as [String] or [Uri].
  ///
  /// - If [rawValue] is `null`, [element] must be non-null.
  /// - If [rawValue] is a [String], it must match the OID pattern.
  /// - If [rawValue] is a [Uri], its `.toString()` is used
  /// (not fully validated).
  // ignore: sort_unnamed_constructors_first
  factory FhirOidBuilder(
    dynamic rawValue, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Oid',
  }) {
    String? parsedValue;
    if (rawValue == null && element == null) {
      throw ArgumentError('A value or element is required for FhirOid.');
    } else if (rawValue is String) {
      parsedValue = _validateOid(rawValue);
    } else if (rawValue is Uri) {
      parsedValue = rawValue.toString();
      // Note: We do not re-validate OIDs if it's passed as a Uri.
    } else if (rawValue != null) {
      throw ArgumentError(
        'FhirOid only supports a String or Uri. Got: $rawValue',
      );
    }
    return FhirOidBuilder._(
      valueString: parsedValue,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates an empty [FhirOidBuilder] with [ElementBuilder.empty].
  factory FhirOidBuilder.empty() =>
      FhirOidBuilder(null, element: ElementBuilder.empty());

  /// Creates a [FhirOidBuilder] from a [Uri].
  factory FhirOidBuilder.fromUri(
    Uri input, [
    ElementBuilder? element,
  ]) {
    return FhirOidBuilder(
      input,
      element: element,
    );
  }

  // --------------------------------------------------------------------------
  // JSON / YAML Constructors
  // --------------------------------------------------------------------------

  /// Constructs a [FhirOidBuilder] from a JSON [Map].
  factory FhirOidBuilder.fromJson(Map<String, dynamic> json) {
    final rawValue = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement =
        elementJson == null ? null : ElementBuilder.fromJson(elementJson);
    final objectPath = json['objectPath'] as String? ?? 'Oid';
    return FhirOidBuilder(
      rawValue,
      element: parsedElement,
      objectPath: objectPath,
    );
  }

  /// Constructs a [FhirOidBuilder] from a YAML input.
  factory FhirOidBuilder.fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirOidBuilder.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirOidBuilder.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw ArgumentError(
        'FhirOid cannot be constructed from the provided input. '
        'It is neither a YAML string nor a YAML map.',
      );
    }
  }

  /// Attempts to parse [input] as a [FhirOidBuilder]. Returns `null` if
  /// parsing fails.
  static FhirOidBuilder? tryParse(dynamic input) {
    try {
      return FhirOidBuilder(input);
    } catch (_) {
      return null;
    }
  }

  // --------------------------------------------------------------------------
  // Validation
  // --------------------------------------------------------------------------

  /// Validates a [String] against the OID pattern `"urn:oid:[0-2](\.(0|[1-9][0-9]*))+"`.
  static String? _validateOid(String? input) {
    if (input == null) return null;
    final pattern = RegExp(r'^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$');
    if (pattern.hasMatch(input)) {
      return input;
    }
    throw FormatException('Invalid FhirOid: $input');
  }

  // --------------------------------------------------------------------------
  // JSON Serialization
  // --------------------------------------------------------------------------

  /// Converts this [FhirOidBuilder] into a JSON map.
  @override
  Map<String, dynamic> toJson() => {
        if (valueString != null) 'value': valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// Method to convert the builder object to the original Element object
  @override
  FhirOid build() => FhirOid.fromJson(toJson());

  /// Converts parallel lists of [values] and [elements] into a list of
  /// [FhirOidBuilder].
  static List<FhirOidBuilder> fromJsonList(
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
      return FhirOidBuilder(val, element: elem);
    });
  }

  /// Converts a list of [FhirOidBuilder] into a JSON map with `'value'` and
  /// `'_value'` arrays.
  static Map<String, dynamic> toJsonList(List<FhirOidBuilder> values) => {
        'value': values.map((val) => val.valueString).toList(),
        '_value': values.map((val) => val.element?.toJson()).toList(),
      };

  // --------------------------------------------------------------------------
  // Overrides
  // --------------------------------------------------------------------------

  /// Returns `"oid"` as the FHIR type name.
  @override
  String get fhirType => 'oid';

  /// Returns a string representation of the instance.
  @override
  String toString() => valueString ?? 'null';

  /// The primitive value as a string.
  @override
  String? get primitiveValue => valueString;

  /// Deep equality check for [FhirOidBuilder].
  @override
  bool equalsDeep(FhirBaseBuilder? other) =>
      other is FhirOidBuilder &&
      other.valueString == valueString &&
      other.element == element;

  /// Checks equality with [FhirOidBuilder] or [String].
  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirOidBuilder && other.valueString == valueString) ||
      (other is String && other == valueString);

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

  /// Clones this [FhirOidBuilder].
  @override
  FhirOidBuilder clone() => FhirOidBuilder(
        valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Creates a new [FhirOidBuilder] with updated properties.
  @override
  FhirOidBuilder copyWith({
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
    return FhirOidBuilder(
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

  /// Creates a property. No-op for [FhirOidBuilder].
  @override
  FhirOidBuilder createProperty(String propertyName) => this;
}
