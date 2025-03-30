part of 'primitive_types.dart';

/// Extension to convert a [String] to [FhirIdBuilder].
extension FhirIdBuilderExtension on String {
  /// Converts a [String] to a [FhirIdBuilder].
  FhirIdBuilder get toFhirIdBuilder => FhirIdBuilder(this);
}

/// Represents the FHIR primitive type `id`.
class FhirIdBuilder extends PrimitiveTypeBuilder<String>
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
  /// Private underscore constructor that performs no external validation,
  /// but checks if both [validatedValue] and [element] are null afterward.
  FhirIdBuilder._({
    required String? validatedValue,
    this.element,
    this.id,
    this.extension_,
    this.disallowExtensions,
    this.objectPath = 'Id',
  }) : super._(value: validatedValue) {
    // Retain the original runtime check: if no value & no element => throw.
    if (value == null && element == null) {
      throw ArgumentError('A value or element is required for FhirIdBuilder');
    }
  }

  /// Public factory constructor with input validation.
  // ignore: sort_unnamed_constructors_first
  factory FhirIdBuilder(
    String? input, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String? objectPath = 'Id',
  }) {
    // If [input] is non-null, validate it; else remain null if also no element.
    final validated = input != null ? _validateId(input) : null;

    return FhirIdBuilder._(
      validatedValue: validated,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates empty [FhirIdBuilder] object
  factory FhirIdBuilder.empty() =>
      FhirIdBuilder(null, element: ElementBuilder.empty());

  /// Factory constructor to create [FhirIdBuilder] from JSON input.
  factory FhirIdBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    final objectPath = json['objectPath'] as String? ?? 'Id';
    return FhirIdBuilder(value, element: element, objectPath: objectPath);
  }

  /// Factory constructor to create [FhirIdBuilder] from YAML input.
  static FhirIdBuilder fromYaml(dynamic yaml) {
    return yaml is String
        ? FhirIdBuilder.fromJson(
            jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
          )
        : yaml is YamlMap
            ? FhirIdBuilder.fromJson(
                jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
              )
            : throw ArgumentError(
                'FhirIdBuilder cannot be constructed from provided input. '
                'It must be a YAML string or YAML map.',
              );
  }

  /// Static method to try parsing the input as [FhirIdBuilder].
  static FhirIdBuilder? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirIdBuilder(input);
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

  /// Element property
  ElementBuilder? element;

  /// ID property
  FhirStringBuilder? id;

  /// Extensions property
  List<FhirExtensionBuilder>? extension_;

  /// DisallowExtensions property
  bool? disallowExtensions;

  /// ObjectPath property
  String? objectPath;

  /// Boolean checks for the presence of a value only.
  bool get valueOnly => value != null && element == null;

  /// Boolean checks for the presence of an element only.
  bool get hasElementOnly => value == null && element != null;

  /// Boolean checks for the presence of both value and element.
  bool get valueAndElement => value != null && element != null;

  /// Returns the FHIR type as a [String].
  @override
  String get fhirType => 'id';

  /// Converts this instance to a [FhirId] object
  @override
  FhirId build() => FhirId.fromJson(toJson());

  /// Serializes the instance to JSON with standardized keys.
  @override
  Map<String, dynamic> toJson() {
    return {
      if (value != null) 'value': value,
      if (element != null) '_value': element!.toJson(),
    };
  }

  /// Converts a list of JSON values to a list of [FhirIdBuilder] instances.
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

  /// Converts a list of [FhirIdBuilder] instances to a JSON-compatible map.
  static Map<String, dynamic> toJsonList(List<FhirIdBuilder> ids) {
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
  bool equalsDeep(FhirBaseBuilder? other) =>
      other is FhirIdBuilder &&
      other.value == value &&
      other.element == element;

  /// Overrides equality operator.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirIdBuilder && other.value == value) ||
      (other is String && other == value);

  /// Overrides `hashCode` for use in hash-based collections.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  /// Creates a deep copy of the instance.
  @override
  FhirIdBuilder clone() => FhirIdBuilder(
        value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Creates a modified copy of the instance with updated properties.
  @override
  FhirIdBuilder copyWith({
    String? newValue,
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
      objectPath: objectPath ?? this.objectPath,
    );
  }

  /// Returns a new [FhirIdBuilder] with extensions disallowed.
  FhirIdBuilder noExtensions() => copyWith(disallowExtensions: true);

  /// Creates an empty property in the object
  @override
  FhirIdBuilder createProperty(String propertyName) => this;

  /// Clears the specified fields in a [FhirIdBuilder] object
  @override
  FhirIdBuilder clear({
    bool input = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirIdBuilder(
      input ? null : value,
      element: element,
      extension_: extension_ ? <FhirExtensionBuilder>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
