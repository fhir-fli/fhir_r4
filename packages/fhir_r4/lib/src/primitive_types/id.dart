part of 'primitive_types.dart';

/// Extension to convert a [String] to [FhirId].
extension FhirIdExtension on String {
  /// Converts a [String] to a [FhirId].
  FhirId get toFhirId => FhirId(this);
}

/// Represents the FHIR primitive type `id`.
class FhirId extends FhirString
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
  /// Private underscore constructor that performs no external validation,
  /// but checks if both [validatedValue] and [element] are null afterward.
  FhirId._({
    required super.validatedValue,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Id',
  }) : super._() {
    // Retain the original runtime check: if no value & no element => throw.
    if (value == null && element == null) {
      throw ArgumentError('A value or element is required for FhirId');
    }
  }

  /// Public factory constructor with input validation.
  // ignore: sort_unnamed_constructors_first
  factory FhirId(
    String? input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Id',
  }) {
    // If [input] is non-null, validate it; else remain null if also no element.
    final validated = input != null ? _validateId(input) : null;

    return FhirId._(
      validatedValue: validated,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates empty [FhirId] object
  factory FhirId.empty() => FhirId(null, element: Element.empty());

  /// Factory constructor to create [FhirId] from JSON input.
  factory FhirId.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    final objectPath = json['objectPath'] as String? ?? 'Id';
    return FhirId(value, element: element, objectPath: objectPath);
  }

  /// Factory constructor to create [FhirId] from YAML input.
  static FhirId fromYaml(dynamic yaml) {
    return yaml is String
        ? FhirId.fromJson(
            jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
          )
        : yaml is YamlMap
            ? FhirId.fromJson(
                jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
              )
            : throw ArgumentError(
                'FhirId cannot be constructed from provided input. '
                'It must be a YAML string or YAML map.',
              );
  }

  /// Static method to try parsing the input as [FhirId].
  static FhirId? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirId(input);
      } catch (_) {
        return null;
      }
    }
    return null;
  }

  /// Ensures the input is a valid FHIR ID.
  static String _validateId(String input) {
    final regex = RegExp(r'^[A-Za-z0-9\-\.][A-Za-z0-9\-._]{0,63}$');
    if (regex.hasMatch(input)) return input;
    throw FormatException('Invalid FhirId:$input');
  }

  /// Boolean checks for the presence of a value only.
  bool get valueOnly => value != null && element == null;

  /// Boolean checks for the presence of an element only.
  bool get hasElementOnly => value == null && element != null;

  /// Boolean checks for the presence of both value and element.
  bool get valueAndElement => value != null && element != null;

  /// Returns the FHIR type as a [String].
  @override
  String get fhirType => 'id';

  /// Serializes the instance to JSON with standardized keys.
  @override
  Map<String, dynamic> toJson() {
    return {
      if (value != null) 'value': value,
      if (element != null) '_value': element!.toJson(),
    };
  }

  /// Converts a list of JSON values to a list of [FhirId] instances.
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

  /// Converts a list of [FhirId] instances to a JSON-compatible map.
  static Map<String, dynamic> toJsonList(List<FhirId> ids) {
    return {
      'value': ids.map((id) => id.value).toList(),
      '_value': ids.map((id) => id.element?.toJson()).toList(),
    };
  }

  /// Provides a string representation of the instance.
  @override
  String toString() => value.toString();

  /// Retrieves the primitive value of the object.
  @override
  String? get primitiveValue => value?.toString();

  @override
  bool equalsDeep(FhirBase? other) =>
      other is FhirId && other.value == value && other.element == element;

  /// Overrides equality operator.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirId && other.value == value) ||
      (other is String && other == value);

  /// Overrides `hashCode` for use in hash-based collections.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  /// Creates a deep copy of the instance.
  @override
  FhirId clone() => FhirId(
        value,
        element: element?.clone() as Element?,
      );

  /// Creates a modified copy of the instance with updated properties.
  @override
  FhirId copyWith({
    String? newValue,
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
      newValue ?? value,
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

  /// Returns a new [FhirId] with extensions disallowed.
  FhirId noExtensions() => copyWith(disallowExtensions: true);

  /// Creates an empty property in the object
  @override
  FhirId createProperty(String propertyName) => this;

  /// Clears the specified fields in a [FhirId] object
  @override
  FhirId clear({
    bool input = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirId(
      input ? null : value,
      element: element,
      extension_: extension_ ? <FhirExtension>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
