part of 'primitive_types.dart';

/// Extension to convert a [num] to a [FhirPositiveIntBuilder].
extension FhirPositiveIntBuilderExtension on num {
  /// Converts a [num] to a [FhirPositiveIntBuilder].
  FhirPositiveIntBuilder get toFhirPositiveIntBuilder => this is int
      ? FhirPositiveIntBuilder(this as int)
      : int.tryParse(toString()) != null
          ? FhirPositiveIntBuilder(int.parse(toString()))
          : throw FormatException(
              'Invalid input for FhirPositiveIntBuilder: $this');
}

/// Represents the FHIR primitive type `positiveInt`.
class FhirPositiveIntBuilder extends FhirNumberBuilder
    implements
        DoseNumberXImmunizationProtocolAppliedBuilder,
        SeriesDosesXImmunizationProtocolAppliedBuilder,
        DoseNumberXImmunizationEvaluationBuilder,
        SeriesDosesXImmunizationEvaluationBuilder,
        DoseNumberXImmunizationRecommendationRecommendationBuilder,
        SeriesDosesXImmunizationRecommendationRecommendationBuilder,
        ValueXParametersParameterBuilder,
        DefaultValueXStructureMapSourceBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        MinValueXElementDefinitionBuilder,
        MaxValueXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder {
  /// Private underscore constructor
  FhirPositiveIntBuilder._({
    required int? validatedValue,
    this.input,
    this.element,
    this.id,
    this.extension_,
    this.disallowExtensions,
    this.objectPath = 'PositiveInt',
  }) : super._(validatedValue: validatedValue);

  /// Public factory constructor that does validation
  // ignore: sort_unnamed_constructors_first
  factory FhirPositiveIntBuilder(
    dynamic rawInput, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String? objectPath = 'PositiveInt',
  }) {
    // 1) Validate
    int? finalInt;
    if (rawInput == null && element == null) {
      throw ArgumentError(
        'A value or element is required for FhirPositiveIntBuilder.',
      );
    }
    if (rawInput is num) {
      final validated = _validatePositiveInt(rawInput);
      finalInt = validated;
    } else if (rawInput != null) {
      throw FormatException(
        'FhirPositiveIntBuilder supports only num or null, got: $rawInput',
      );
    }

    // 2) Return the private constructor
    return FhirPositiveIntBuilder._(
      validatedValue: finalInt,
      input: rawInput is num ? rawInput : null,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates empty [FhirPositiveIntBuilder] object
  factory FhirPositiveIntBuilder.empty() =>
      FhirPositiveIntBuilder(null, element: ElementBuilder.empty());

  /// Factory constructor to create [FhirPositiveIntBuilder] from JSON input.
  factory FhirPositiveIntBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as num?;
    final elemJson = json['_value'] as Map<String, dynamic>?;
    final element = elemJson == null ? null : ElementBuilder.fromJson(elemJson);
    final objectPath = json['objectPath'] as String? ?? 'PositiveInt';

    return FhirPositiveIntBuilder(value,
        element: element, objectPath: objectPath);
  }

  /// Factory constructor to create [FhirPositiveIntBuilder] from YAML input.
  static FhirPositiveIntBuilder fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirPositiveIntBuilder.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirPositiveIntBuilder.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw const FormatException(
        'Invalid input for FhirPositiveIntBuilder: not a valid YAML string or map.',
      );
    }
  }

  /// Static method to try parsing input as [FhirPositiveIntBuilder], returns `null`
  /// if unsuccessful.
  static FhirPositiveIntBuilder? tryParse(dynamic input) {
    try {
      return FhirPositiveIntBuilder(input);
    } catch (_) {
      return null;
    }
  }

  /// Validates that the input is a positive integer.
  static int _validatePositiveInt(num input) {
    if (input <= 0 || input is! int) {
      throw FormatException(
        'Invalid FhirPositiveInt value: $input. Must be int > 0.',
      );
    }
    return input;
  }

  /// The original input value (for serialization purposes)
  num? input;

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

  /// Returns the FHIR type as a string.
  @override
  String get fhirType => 'positiveInt';

  /// Serializes the instance to JSON with standardized keys.
  @override
  Map<String, dynamic> toJson() {
    return {
      if (value != null) 'value': value,
      if (element != null) '_value': element!.toJson(),
    };
  }

  /// Provides a string representation of the instance.
  @override
  String toString() => value?.toString() ?? 'null';

  /// Retrieves the primitive value of the object.
  @override
  String? get primitiveValue => value?.toString();

  @override
  bool equalsDeep(FhirBaseBuilder? other) =>
      other is FhirPositiveIntBuilder &&
      other.value == value &&
      other.element == element;

  /// Overrides equality operator to compare instances.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirPositiveIntBuilder && other.value == value) ||
      (other is int && other == value);

  /// Overrides hashCode for use in hash-based collections.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  // Clone / copyWith
  @override
  FhirPositiveIntBuilder clone() => FhirPositiveIntBuilder(value,
      element: element?.clone() as ElementBuilder?);

  /// Sets disallowExtensions to true.
  FhirPositiveIntBuilder noExtensions() => copyWith(disallowExtensions: true);

  /// Creates a modified copy with updated properties.
  @override
  FhirPositiveIntBuilder copyWith({
    num? newValue,
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
    return FhirPositiveIntBuilder(
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

  /// Creates an empty property in the object
  @override
  FhirPositiveIntBuilder createProperty(String propertyName) => this;

  /// Clears the specified fields in a [FhirPositiveIntBuilder] object
  @override
  FhirPositiveIntBuilder clear({
    bool input = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirPositiveIntBuilder(
      input ? null : this.input,
      element: element,
      extension_: extension_ ? <FhirExtensionBuilder>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
