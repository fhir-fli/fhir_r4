part of 'primitive_types.dart';

/// Extension to convert a [num] to a [FhirIntegerBuilder].
extension FhirIntegerBuilderExtension on num {
  /// Converts a [num] to a [FhirIntegerBuilder].
  FhirIntegerBuilder get toFhirIntegerBuilder => this is int
      ? FhirIntegerBuilder(this as int)
      : int.tryParse(toString()) != null
          ? FhirIntegerBuilder(int.parse(toString()))
          : throw FormatException(
              'Invalid input for FhirIntegerBuilder: $this');
}

/// Represents the FHIR primitive type `integer`.
class FhirIntegerBuilder extends FhirNumberBuilder
    implements
        ValueXCodeSystemPropertyBuilder,
        ValueXContractAnswerBuilder,
        DetailXGoalTargetBuilder,
        ValueXObservationBuilder,
        ValueXObservationComponentBuilder,
        ValueXParametersParameterBuilder,
        MultipleBirthXPatientBuilder,
        AnswerXQuestionnaireEnableWhenBuilder,
        ValueXQuestionnaireAnswerOptionBuilder,
        ValueXQuestionnaireInitialBuilder,
        ValueXQuestionnaireResponseAnswerBuilder,
        DefaultValueXStructureMapSourceBuilder,
        ValueXStructureMapParameterBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        ValueXValueSetParameterBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        MinValueXElementDefinitionBuilder,
        MaxValueXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder {
  /// Private underscore constructor
  FhirIntegerBuilder._({
    required int? validatedValue,
    this.input,
    this.element,
    this.id,
    this.extension_,
    this.disallowExtensions,
    this.objectPath = 'Integer',
  }) : super._(validatedValue: validatedValue);

  /// Public factory constructor that does any parsing/validation,
  /// then calls the private constructor.
  // ignore: sort_unnamed_constructors_first
  factory FhirIntegerBuilder(
    dynamic rawInput, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String? objectPath = 'Integer',
  }) {
    // 1) Check if rawInput is null or a num
    num? finalNum;

    if (rawInput == null && element == null) {
      throw ArgumentError(
          'A value or element is required for FhirIntegerBuilder.');
    } else if (rawInput is num) {
      if (rawInput is! int) {
        throw ArgumentError('Invalid input for FhirIntegerBuilder: $rawInput');
      } else {
        finalNum = rawInput;
      }
    } else if (rawInput != null) {
      // If it's a string, you could parse it. If that's not your library's
      // intent,
      // just throw an error:
      throw ArgumentError(
        'FhirIntegerBuilder only supports a num or null, got: $rawInput',
      );
    }

    // 2) Return the private constructor
    return FhirIntegerBuilder._(
      validatedValue: finalNum! as int,
      input: finalNum,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates empty [FhirIntegerBuilder] object
  factory FhirIntegerBuilder.empty() =>
      FhirIntegerBuilder(null, element: ElementBuilder.empty());

  /// Factory constructor to create [FhirIntegerBuilder] from JSON input.
  factory FhirIntegerBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as num?;
    final elemJson = json['_value'] as Map<String, dynamic>?;
    final element = elemJson == null ? null : ElementBuilder.fromJson(elemJson);
    final objectPath = json['objectPath'] as String? ?? 'PositiveInt';

    return FhirIntegerBuilder(value, element: element, objectPath: objectPath);
  }

  /// Factory constructor to create [FhirIntegerBuilder] from YAML input.
  static FhirIntegerBuilder fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirIntegerBuilder.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirIntegerBuilder.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw const FormatException(
        'Invalid input for FhirIntegerBuilder: not a valid YAML string or map.',
      );
    }
  }

  /// Static method to try parsing input as [FhirIntegerBuilder], returns `null`
  /// if unsuccessful.
  static FhirIntegerBuilder? tryParse(dynamic input) {
    try {
      return FhirIntegerBuilder(input);
    } catch (_) {
      return null;
    }
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
  String get fhirType => 'integer';

  /// Converts this instance to a [FhirInteger] object
  ///
  @override
  FhirInteger build() => FhirInteger.fromJson(toJson());

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
      other is FhirIntegerBuilder &&
      other.value == value &&
      other.element == element;

  /// Overrides equality operator to compare instances.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirIntegerBuilder && other.value == value) ||
      (other is int && other == value);

  /// Overrides hashCode for use in hash-based collections.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  // Clone / copyWith
  @override
  FhirIntegerBuilder clone() =>
      FhirIntegerBuilder(value, element: element?.clone() as ElementBuilder?);

  /// Sets disallowExtensions to true.
  FhirIntegerBuilder noExtensions() => copyWith(disallowExtensions: true);

  /// Creates a modified copy with updated properties.
  @override
  FhirIntegerBuilder copyWith({
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
    return FhirIntegerBuilder(
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
  FhirIntegerBuilder createProperty(String propertyName) => this;

  /// Clears the specified fields in a [FhirIntegerBuilder] object
  @override
  FhirIntegerBuilder clear({
    bool input = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirIntegerBuilder(
      input ? null : this.input,
      element: element,
      extension_: extension_ ? <FhirExtensionBuilder>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
