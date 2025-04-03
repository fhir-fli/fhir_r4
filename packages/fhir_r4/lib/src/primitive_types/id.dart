part of 'primitive_types.dart';

/// Extension methods on [String] to easily convert to [FhirId].
extension FhirIdExtension on String {
  /// Returns a new [FhirId] constructed from this string.
  FhirId get toFhirId => FhirId(this);
}

/// A subclass of [FhirUri] representing the FHIR primitive type `id`.
///
/// According to FHIR, an `id` is a string of length 1..64 matching
/// the pattern:
///
///   `[A-Za-z0-9\-\.]{1}[A-Za-z0-9\-\.]{0,63}`
///
/// (with a slight variation for underscores).
class FhirId extends FhirUri
    implements
        ValueXParametersParameter,
        DefaultValueXStructureMapSource,
        ValueXStructureMapParameter,
        ValueXTaskInput,
        ValueXTaskOutput,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  // --------------------------------------------------------------------------
  // Private Internal Constructor
  // --------------------------------------------------------------------------

  /// Private underscore constructor delegating to [FhirUri]'s
  /// internal constructor.
  FhirId._({
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

  /// Creates a [FhirId] by validating [rawValue] as a [String] or [Uri].
  ///
  /// - If [rawValue] is `null`, then [element] must be non-null (element-only).
  /// - If [rawValue] is a [String], it must pass [_validateId].
  /// - If [rawValue] is a [Uri], we convert it to a string and validate.
  /// - Otherwise, an [ArgumentError] is thrown.
  // ignore: sort_unnamed_constructors_first
  factory FhirId(
    dynamic rawValue, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
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

    return FhirId._(
      valueString: parsedValue,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates an empty [FhirId] object (with a default [Element.empty]
  /// for metadata).
  factory FhirId.empty() => FhirId(null, element: Element.empty());

  // --------------------------------------------------------------------------
  // JSON / YAML Constructors
  // --------------------------------------------------------------------------

  /// Constructs a [FhirId] from a JSON [Map].
  factory FhirId.fromJson(Map<String, dynamic> json) {
    final rawValue = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement =
        elementJson == null ? null : Element.fromJson(elementJson);
    final objectPath = json['objectPath'] as String? ?? 'Id';

    return FhirId(rawValue, element: parsedElement, objectPath: objectPath);
  }

  /// Constructs a [FhirId] from a YAML input ([String] or [YamlMap]).
  static FhirId fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirId.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirId.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw ArgumentError(
        'FhirId cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Attempts to parse [input] as a [FhirId].
  /// Returns `null` if parsing fails.
  static FhirId? tryParse(dynamic input) {
    try {
      return FhirId(input);
    } catch (_) {
      return null;
    }
  }

  // --------------------------------------------------------------------------
  // Validation
  // --------------------------------------------------------------------------

  /// Validates the string against the FHIR `id` pattern:
  ///   `[A-Za-z0-9\-\.]{1}[A-Za-z0-9\-._]{0,63}`
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

  /// Converts this [FhirId] into a JSON [Map].
  @override
  Map<String, dynamic> toJson() => {
        if (valueString != null) 'value': valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts parallel lists of [values] and [elements]
  /// into a list of [FhirId].
  static List<FhirId> fromJsonList(
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
      return FhirId(val, element: elem);
    });
  }

  /// Converts a list of [FhirId] to a JSON map with `'value'`
  /// and `'_value'` arrays.
  static Map<String, dynamic> toJsonList(List<FhirId> values) => {
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

  /// Deep equality check for [FhirId].
  @override
  bool equalsDeep(FhirBase? other) =>
      other is FhirId &&
      other.valueString == valueString &&
      other.element == element;

  /// Checks equality with [FhirId] or [String].
  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirId && other.valueString == valueString) ||
      (other is String && other == valueString);

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(valueString, element);

  // --------------------------------------------------------------------------
  // Clone / Copy
  // --------------------------------------------------------------------------

  /// Creates a deep copy of this [FhirId].
  @override
  FhirId clone() => FhirId(
        valueString,
        element: element?.clone() as Element?,
      );

  /// Creates a new [FhirId] with updated properties.
  @override
  FhirId copyWith({
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
    return FhirId(
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

  /// Creates a property. No-op for [FhirId].
  @override
  FhirId createProperty(String propertyName) => this;

  /// Clears selected fields in this [FhirId].
  @override
  FhirId clear({
    bool value = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirId(
      value ? null : valueString,
      element: element,
      extension_: extension_ ? <FhirExtension>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
