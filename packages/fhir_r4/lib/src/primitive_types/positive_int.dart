part of 'primitive_types.dart';

/// Extension to convert a [num] to a [FhirPositiveInt].
extension FhirPositiveIntExtension on num {
  /// Converts a [num] to a [FhirPositiveInt].
  FhirPositiveInt get toFhirPositiveInt => this is int
      ? FhirPositiveInt(this as int)
      : int.tryParse(toString()) != null
          ? FhirPositiveInt(int.parse(toString()))
          : throw FormatException('Invalid input for FhirPositiveInt: $this');
}

/// Represents the FHIR primitive type `positiveInt`.
class FhirPositiveInt extends FhirNumber
    implements
        DoseNumberXImmunizationProtocolApplied,
        SeriesDosesXImmunizationProtocolApplied,
        DoseNumberXImmunizationEvaluation,
        SeriesDosesXImmunizationEvaluation,
        DoseNumberXImmunizationRecommendationRecommendation,
        SeriesDosesXImmunizationRecommendationRecommendation,
        ValueXParametersParameter,
        DefaultValueXStructureMapSource,
        ValueXTaskInput,
        ValueXTaskOutput,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        MinValueXElementDefinition,
        MaxValueXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  /// Private underscore constructor
  FhirPositiveInt._({
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
  factory FhirPositiveInt(
    dynamic rawInput, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'PositiveInt',
  }) {
    // 1) Validate
    int? finalInt;
    if (rawInput == null && element == null) {
      throw ArgumentError(
        'A value or element is required for FhirPositiveInt.',
      );
    }
    if (rawInput is num) {
      final validated = _validatePositiveInt(rawInput);
      finalInt = validated;
    } else if (rawInput != null) {
      throw FormatException(
        'FhirPositiveInt supports only num or null, got: $rawInput',
      );
    }

    // 2) Return the private constructor
    return FhirPositiveInt._(
      validatedValue: finalInt,
      input: rawInput is num ? rawInput : null,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates empty [FhirPositiveInt] object
  factory FhirPositiveInt.empty() =>
      FhirPositiveInt(null, element: Element.empty());

  /// Factory constructor to create [FhirPositiveInt] from JSON input.
  factory FhirPositiveInt.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as num?;
    final elemJson = json['_value'] as Map<String, dynamic>?;
    final element = elemJson == null ? null : Element.fromJson(elemJson);
    final objectPath = json['objectPath'] as String? ?? 'PositiveInt';

    return FhirPositiveInt(value, element: element, objectPath: objectPath);
  }

  /// Factory constructor to create [FhirPositiveInt] from YAML input.
  static FhirPositiveInt fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirPositiveInt.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirPositiveInt.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw const FormatException(
        'Invalid input for FhirPositiveInt: not a valid YAML string or map.',
      );
    }
  }

  /// Static method to try parsing input as [FhirPositiveInt], returns `null`
  /// if unsuccessful.
  static FhirPositiveInt? tryParse(dynamic input) {
    try {
      return FhirPositiveInt(input);
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
  final num? input;

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
  bool equalsDeep(FhirBase? other) =>
      other is FhirPositiveInt &&
      other.value == value &&
      other.element == element;

  /// Overrides equality operator to compare instances.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirPositiveInt && other.value == value) ||
      (other is int && other == value);

  /// Overrides hashCode for use in hash-based collections.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  // Clone / copyWith
  @override
  FhirPositiveInt clone() =>
      FhirPositiveInt(value, element: element?.clone() as Element?);

  /// Sets disallowExtensions to true.
  FhirPositiveInt noExtensions() => copyWith(disallowExtensions: true);

  /// Creates a modified copy with updated properties.
  @override
  FhirPositiveInt copyWith({
    num? newValue,
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
    return FhirPositiveInt(
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
  FhirPositiveInt createProperty(String propertyName) => this;

  /// Clears the specified fields in a [FhirPositiveInt] object
  @override
  FhirPositiveInt clear({
    bool input = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirPositiveInt(
      input ? null : this.input,
      element: element,
      extension_: extension_ ? <FhirExtension>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
