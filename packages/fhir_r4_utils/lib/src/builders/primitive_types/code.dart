part of 'primitive_types.dart';

/// Extension to convert a [FhirCode] to a [FhirCodeBuilder]
extension BuilderFhirCode on FhirCode {
  /// Converts this instance to a [FhirCodeBuilder]
  FhirCodeBuilder get toBuilder => FhirCodeBuilder.fromJson(toJson());
}

/// Extension to add `toFhirCodeBuilder` method on all [String] instances
extension FhirCodeBuilderExtension on String {
  /// Converts a [String] to a [FhirCodeBuilder]
  FhirCodeBuilder get toFhirCodeBuilder => FhirCodeBuilder(this);
}

/// FHIR primitive type `code`
class FhirCodeBuilder extends PrimitiveTypeBuilder<String>
    implements
        ValueXCodeSystemPropertyBuilder,
        ValueXParametersParameterBuilder,
        DefaultValueXStructureMapSourceBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        ValueXValueSetParameterBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder {
  /// Private underscore constructor that simply calls
  /// `super._(value: validatedValue)`
  /// and performs the final check for `(value == null && element == null)`.
  ///
  /// Typically, any string validation (like `_validateCode`)
  /// is done before calling `_`.
  FhirCodeBuilder._({
    required String? validatedValue,
    this.input,
    this.element,
    this.id,
    this.extension_,
    this.disallowExtensions,
    this.objectPath = 'Code',
  }) : super._(value: validatedValue) {
    if (value == null && element == null) {
      throw ArgumentError('A value or element is required for FhirCodeBuilder');
    }
  }

  /// Public constructor because not all classes exist in the Primitives Library
  FhirCodeBuilder.public(
    String? rawInput, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) : this._(
          validatedValue: rawInput != null ? _validateCode(rawInput) : null,
          input: rawInput,
          element: element,
          id: id,
          extension_: extension_,
          disallowExtensions: disallowExtensions,
          objectPath: objectPath,
        );

  /// Public factory constructor with input validation
  // ignore: sort_unnamed_constructors_first
  factory FhirCodeBuilder(
    String? rawInput, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String? objectPath = 'Code',
  }) {
    // If rawInput is non-null, validate it
    final validated = rawInput != null ? _validateCode(rawInput) : null;
    return FhirCodeBuilder._(
      validatedValue: validated,
      input: rawInput,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates empty [FhirCodeBuilder] object
  factory FhirCodeBuilder.empty() =>
      FhirCodeBuilder(null, element: ElementBuilder.empty());

  /// Factory constructor to create a [FhirCodeBuilder] from JSON
  factory FhirCodeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    final objectPath = json['objectPath'] as String? ?? 'Code';
    return FhirCodeBuilder(
      value,
      element: element,
      objectPath: objectPath,
    );
  }

  /// Factory constructor to create a [FhirCodeBuilder] from YAML
  static FhirCodeBuilder fromYaml(dynamic yaml) => yaml is String
      ? FhirCodeBuilder.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        )
      : yaml is YamlMap
          ? FhirCodeBuilder.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            )
          : throw ArgumentError(
              'FhirCodeBuilder cannot be constructed from the provided input,'
              ' it is neither a YAML string nor a YAML map.');

  /// Attempts to parse the input as a [FhirCodeBuilder], returning `null` if
  /// parsing fails
  static FhirCodeBuilder? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirCodeBuilder(input);
      } catch (_) {
        return null;
      }
    }
    return null;
  }

  /// Validates the input string as a valid FHIR code
  static String _validateCode(String raw) {
    final regex = RegExp(r'^[^\s]+(\s[^\s]+)*$');
    if (regex.hasMatch(raw)) {
      return raw;
    }
    throw FormatException('Invalid FHIR Code:$raw');
  }

  /// The original input value (for serialization purposes)
  String? input;

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

  /// Boolean checks for the presence of a value only
  bool get valueOnly => value != null && element == null;

  /// Boolean checks for the presence of an element only
  bool get hasElementOnly => value == null && element != null;

  /// Boolean checks for the presence of both value and element
  bool get valueAndElement => value != null && element != null;

  /// Returns the FHIR type as a [String]
  @override
  String get fhirType => 'code';

  /// Returns the [FhirCodeBuilder] as a [String]
  @override
  String toString() => value.toString();

  /// Retrieves the primitive value of the object.
  @override
  String? get primitiveValue => value;

  @override
  bool equalsDeep(FhirBaseBuilder? other) =>
      other is FhirCodeBuilder &&
      other.value == value &&
      other.element == element;

  /// Overrides equality operator
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirCodeBuilder && other.input == input) ||
      (other is String && other == value);

  /// Overrides `hashCode` for use in hash-based collections
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(input, element);

  /// Creates a deep copy of the instance
  @override
  FhirCodeBuilder clone() => FhirCodeBuilder(
        input,
        element: element?.clone() as ElementBuilder?,
      );

  /// Creates a modified copy with updated properties
  @override
  FhirCodeBuilder copyWith({
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
    return FhirCodeBuilder(
      newValue ?? input,
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

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (input != null) 'value': input,
        if (element != null) '_value': element!.toJson(),
      };

  /// Returns a new [FhirCodeBuilder] with extensions disallowed.
  FhirCodeBuilder noExtensions() => copyWith(disallowExtensions: true);

  /// Creates an empty property in the object
  @override
  FhirCodeBuilder createProperty(String propertyName) => this;

  /// Clears the specified fields in a [FhirCodeBuilder] object
  @override
  FhirCodeBuilder clear({
    bool input = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirCodeBuilder(
      input ? null : this.input,
      element: element,
      extension_: extension_ ? <FhirExtensionBuilder>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
