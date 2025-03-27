part of 'primitive_types.dart';

/// Extension to add `toFhirCode` method on all [String] instances
extension FhirCodeExtension on String {
  /// Converts a [String] to a [FhirCode]
  FhirCode get toFhirCode => FhirCode(this);
}

/// FHIR primitive type `code`
class FhirCode extends PrimitiveType<String>
    implements
        ValueXCodeSystemProperty,
        ValueXParametersParameter,
        DefaultValueXStructureMapSource,
        ValueXTaskInput,
        ValueXTaskOutput,
        ValueXValueSetParameter,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  /// Private underscore constructor that simply calls
  /// `super._(value: validatedValue)`
  /// and performs the final check for `(value == null && element == null)`.
  ///
  /// Typically, any string validation (like `_validateCode`)
  /// is done before calling `_`.
  FhirCode._({
    required String? validatedValue,
    this.input,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._(value: validatedValue) {
    if (value == null && element == null) {
      throw ArgumentError('A value or element is required for FhirCode');
    }
  }

  /// Public constructor because not all classes exist in the Primitives Library
  FhirCode.public(
    String? rawInput, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
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
  factory FhirCode(
    String? rawInput, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    // If rawInput is non-null, validate it
    final validated = rawInput != null ? _validateCode(rawInput) : null;
    return FhirCode._(
      validatedValue: validated,
      input: rawInput,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates empty [FhirCode] object
  factory FhirCode.empty() => FhirCode(null, element: Element.empty());

  /// Factory constructor to create a [FhirCode] from JSON
  factory FhirCode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    final objectPath = json['objectPath'] as String? ?? 'Code';
    return FhirCode(
      value,
      element: element,
      objectPath: objectPath,
    );
  }

  /// Factory constructor to create a [FhirCode] from YAML
  static FhirCode fromYaml(dynamic yaml) => yaml is String
      ? FhirCode.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        )
      : yaml is YamlMap
          ? FhirCode.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            )
          : throw ArgumentError(
              'FhirCode cannot be constructed from the provided input,'
              ' it is neither a YAML string nor a YAML map.');

  /// Attempts to parse the input as a [FhirCode], returning `null` if
  /// parsing fails
  static FhirCode? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirCode(input);
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
  final String? input;

  /// Boolean checks for the presence of a value only
  bool get valueOnly => value != null && element == null;

  /// Boolean checks for the presence of an element only
  bool get hasElementOnly => value == null && element != null;

  /// Boolean checks for the presence of both value and element
  bool get valueAndElement => value != null && element != null;

  /// Returns the FHIR type as a [String]
  @override
  String get fhirType => 'code';

  /// Returns the [FhirCode] as a [String]
  @override
  String toString() => value.toString();

  /// Retrieves the primitive value of the object.
  @override
  String? get primitiveValue => value;

  @override
  bool equalsDeep(FhirBase? other) =>
      other is FhirCode && other.value == value && other.element == element;

  /// Overrides equality operator
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirCode && other.input == input) ||
      (other is String && other == value);

  /// Overrides `hashCode` for use in hash-based collections
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(input, element);

  /// Creates a deep copy of the instance
  @override
  FhirCode clone() => FhirCode(
        input,
        element: element?.clone() as Element?,
      );

  /// Creates a modified copy with updated properties
  @override
  FhirCode copyWith({
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
    return FhirCode(
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
      objectPath: objectPath ?? this.objectPath!,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (input != null) 'value': input,
        if (element != null) '_value': element!.toJson(),
      };

  /// Returns a new [FhirCode] with extensions disallowed.
  FhirCode noExtensions() => copyWith(disallowExtensions: true);

  /// Creates an empty property in the object
  @override
  FhirCode createProperty(String propertyName) => this;

  /// Clears the specified fields in a [FhirCode] object
  @override
  FhirCode clear({
    bool input = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirCode(
      input ? null : this.input,
      element: element,
      extension_: extension_ ? <FhirExtension>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
