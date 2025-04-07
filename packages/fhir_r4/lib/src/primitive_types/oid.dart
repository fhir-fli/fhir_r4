part of 'primitive_types.dart';

/// Extension methods on [String] to easily convert to [FhirOid].
extension FhirOidExtension on String {
  /// Returns a new [FhirOid] from this [String].
  FhirOid get toFhirOid => FhirOid(this);
}

/// Extension methods on [Uri] to easily convert to [FhirOid].
extension FhirOidUriExtension on Uri {
  /// Returns a new [FhirOid] from this [Uri].
  FhirOid get toFhirOid => FhirOid.fromUri(this);
}

/// A specialized URI-type in FHIR known as `oid`.
///
/// The string must match the OID pattern, e.g. `"urn:oid:1.2.3.4"`.
/// Internally extends [FhirUri].
class FhirOid extends FhirUri
    implements
        ValueXParametersParameter,
        DefaultValueXStructureMapSource,
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

  /// Private underscore constructor delegating to [FhirUri].
  const FhirOid._({
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

  /// Creates a [FhirOid] by parsing [rawValue] as [String] or [Uri].
  ///
  /// - If [rawValue] is `null`, [element] must be non-null.
  /// - If [rawValue] is a [String], it must match the OID pattern.
  /// - If [rawValue] is a [Uri], its `.toString()` is used
  /// (not fully validated).
  // ignore: sort_unnamed_constructors_first
  factory FhirOid(
    dynamic rawValue, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
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

    return FhirOid._(
      valueString: parsedValue,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates an empty [FhirOid] with [Element.empty].
  factory FhirOid.empty() => FhirOid(null, element: Element.empty());

  /// Creates a [FhirOid] from a [Uri].
  factory FhirOid.fromUri(
    Uri input, [
    Element? element,
  ]) {
    return FhirOid(
      input,
      element: element,
    );
  }

  // --------------------------------------------------------------------------
  // JSON / YAML Constructors
  // --------------------------------------------------------------------------

  /// Constructs a [FhirOid] from a JSON [Map].
  factory FhirOid.fromJson(Map<String, dynamic> json) {
    final rawValue = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement =
        elementJson == null ? null : Element.fromJson(elementJson);
    final objectPath = json['objectPath'] as String? ?? 'Oid';

    return FhirOid(
      rawValue,
      element: parsedElement,
      objectPath: objectPath,
    );
  }

  /// Constructs a [FhirOid] from a YAML input.
  ///
  /// Accepts [String] or [YamlMap].
  factory FhirOid.fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirOid.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirOid.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw ArgumentError(
        'FhirOid cannot be constructed from the provided input. '
        'It is neither a YAML string nor a YAML map.',
      );
    }
  }

  /// Attempts to parse [input] as a [FhirOid]. Returns `null` if parsing fails.
  static FhirOid? tryParse(dynamic input) {
    try {
      return FhirOid(input);
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

  /// Converts this [FhirOid] into a JSON map.
  @override
  Map<String, dynamic> toJson() => {
        if (valueString != null) 'value': valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON [values] and [elements] into a list of [FhirOid].
  static List<FhirOid> fromJsonList(
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
      return FhirOid(val, element: elem);
    });
  }

  /// Converts a list of [FhirOid] into a JSON map with `'value'` and
  /// `'_value'`.
  static Map<String, dynamic> toJsonList(List<FhirOid> values) => {
        'value': values.map((val) => val.valueString).toList(),
        '_value': values.map((val) => val.element?.toJson()).toList(),
      };

  // --------------------------------------------------------------------------
  // Overrides
  // --------------------------------------------------------------------------

  /// Returns `"oid"` as the FHIR type name.
  @override
  String get fhirType => 'oid';

  /// Returns a string representation or `"null"`.
  @override
  String toString() => valueString ?? 'null';

  /// Deep equality check for [FhirOid].
  @override
  bool equalsDeep(FhirBase? other) =>
      other is FhirOid &&
      other.valueString == valueString &&
      other.element == element;

  /// Checks equality with [FhirOid] or [String].
  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirOid && other.valueString == valueString) ||
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

  /// Clones this [FhirOid].
  @override
  FhirOid clone() => FhirOid(
        valueString,
        element: element?.clone() as Element?,
      );

  /// Creates a new [FhirOid] with updated properties.
  @override
  FhirOid copyWith({
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
    return FhirOid(
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

  // --------------------------------------------------------------------------
  // Additional Overrides
  // --------------------------------------------------------------------------

  /// Creates a property. No-op for [FhirOid].
  @override
  FhirOid createProperty(String propertyName) => this;

  /// Clears selected fields from this [FhirOid].
  @override
  FhirOid clear({
    bool value = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirOid(
      value ? null : valueString,
      element: element,
      extension_: extension_ ? <FhirExtension>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
