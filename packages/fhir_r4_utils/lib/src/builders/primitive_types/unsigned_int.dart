part of 'primitive_types.dart';

/// Extension to convert a [num] to a [FhirUnsignedIntBuilder].
extension FhirUnsignedIntBuilderExtension on num {
  /// Converts a [num] to a [FhirUnsignedIntBuilder].
  FhirUnsignedIntBuilder get toFhirUnsignedIntBuilder => this is int
      ? FhirUnsignedIntBuilder(this as int)
      : int.tryParse(toString()) != null
          ? FhirUnsignedIntBuilder(int.parse(toString()))
          : throw FormatException('Invalid input for FhirUnsignedInt: $this');
}

/// Represents the FHIR primitive type `unsignedInt`.
class FhirUnsignedIntBuilder extends FhirNumberBuilder
    implements
        AllowedXCoverageEligibilityResponseBenefitBuilder,
        UsedXCoverageEligibilityResponseBenefitBuilder,
        AllowedXExplanationOfBenefitFinancialBuilder,
        UsedXExplanationOfBenefitFinancialBuilder,
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
  FhirUnsignedIntBuilder._({
    required int? validatedValue,
    this.input,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'PositiveInt',
  }) : super._(validatedValue: validatedValue);

  /// Public factory constructor that does validation
  // ignore: sort_unnamed_constructors_first
  factory FhirUnsignedIntBuilder(
    dynamic rawInput, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'PositiveInt',
  }) {
    // 1) Validate
    int? finalInt;
    if (rawInput == null && element == null) {
      throw ArgumentError(
        'A value or element is required for FhirUnsignedInt.',
      );
    }
    if (rawInput is num) {
      final validated = _validatePositiveInt(rawInput);
      finalInt = validated;
    } else if (rawInput != null) {
      throw FormatException(
        'FhirUnsignedInt supports only num or null, got: $rawInput',
      );
    }

    // 2) Return the private constructor
    return FhirUnsignedIntBuilder._(
      validatedValue: finalInt,
      input: rawInput is num ? rawInput : null,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates empty [FhirUnsignedIntBuilder] object
  factory FhirUnsignedIntBuilder.empty() =>
      FhirUnsignedIntBuilder(null, element: ElementBuilder.empty());

  /// Factory constructor to create [FhirUnsignedIntBuilder] from JSON input.
  factory FhirUnsignedIntBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as num?;
    final elemJson = json['_value'] as Map<String, dynamic>?;
    final element = elemJson == null ? null : ElementBuilder.fromJson(elemJson);
    final objectPath = json['objectPath'] as String? ?? 'PositiveInt';

    return FhirUnsignedIntBuilder(value,
        element: element, objectPath: objectPath);
  }

  /// Factory constructor to create [FhirUnsignedIntBuilder] from YAML input.
  static FhirUnsignedIntBuilder fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirUnsignedIntBuilder.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirUnsignedIntBuilder.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw const FormatException(
        'Invalid input for FhirUnsignedInt: not a valid YAML string or map.',
      );
    }
  }

  /// Static method to try parsing input as [FhirUnsignedIntBuilder], returns `null`
  /// if unsuccessful.
  static FhirUnsignedIntBuilder? tryParse(dynamic input) {
    try {
      return FhirUnsignedIntBuilder(input);
    } catch (_) {
      return null;
    }
  }

  /// Validates that the input is a positive integer.

  static int _validatePositiveInt(num input) {
    if (input < 0 || input is! int) {
      throw FormatException(
        'Invalid FhirUnsignedInt value: $input. Must be int > 0.',
      );
    }
    return input;
  }

  /// The original input value (for serialization purposes)
  num? input;

  /// Returns the FHIR type as a string.
  @override
  String get fhirType => 'unsignedInt';

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
      other is FhirUnsignedIntBuilder &&
      other.value == value &&
      other.element == element;

  /// Overrides equality operator to compare instances.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirUnsignedIntBuilder && other.value == value) ||
      (other is int && other == value);

  /// Overrides hashCode for use in hash-based collections.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  // Clone / copyWith
  @override
  FhirUnsignedIntBuilder clone() => FhirUnsignedIntBuilder(value,
      element: element?.clone() as ElementBuilder?);

  /// Sets disallowExtensions to true.
  FhirUnsignedIntBuilder noExtensions() => copyWith(disallowExtensions: true);

  /// Creates a modified copy with updated properties.
  @override
  FhirUnsignedIntBuilder copyWith({
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
    return FhirUnsignedIntBuilder(
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

  /// Creates an empty property in the object
  @override
  FhirUnsignedIntBuilder createProperty(String propertyName) => this;

  /// Clears the specified fields in a [FhirUnsignedIntBuilder] object
  @override
  FhirUnsignedIntBuilder clear({
    bool input = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirUnsignedIntBuilder(
      input ? null : this.input,
      element: element,
      extension_: extension_ ? <FhirExtensionBuilder>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
