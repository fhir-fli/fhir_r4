part of 'primitive_types.dart';

/// Extension to convert a Dart number to a [FhirDecimalBuilder].
extension FhirDecimalBuilderExtension on num {
  /// Converts a Dart number to a [FhirDecimalBuilder].
  FhirDecimalBuilder get toFhirDecimalBuilder => FhirDecimalBuilder(this);
}

/// Represents the FHIR primitive type `decimal`.
class FhirDecimalBuilder extends FhirNumberBuilder
    implements
        ValueXCodeSystemPropertyBuilder,
        ValueXContractAnswerBuilder,
        ValueXParametersParameterBuilder,
        AnswerXQuestionnaireEnableWhenBuilder,
        ValueXQuestionnaireInitialBuilder,
        ValueXQuestionnaireResponseAnswerBuilder,
        ProbabilityXRiskAssessmentPredictionBuilder,
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
  /// Private underscore constructor — no logic, only field assignment.
  FhirDecimalBuilder._({
    required super.validatedValue,
    required bool isInt,
    this.input,
    this.element,
    this.id,
    this.extension_,
    this.disallowExtensions,
    this.objectPath = 'Decimal',
  })  : _isInt = isInt,
        super._();

  /// Public factory constructor that does any parsing/validation,
  /// then calls the private constructor.
  // ignore: sort_unnamed_constructors_first
  factory FhirDecimalBuilder(
    dynamic rawInput, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String? objectPath = 'Decimal',
  }) {
    // 1) Check if rawInput is null or a num
    num? finalNum;
    var isInt = false;

    if (rawInput == null && element == null) {
      throw ArgumentError(
          'A value or element is required for FhirDecimalBuilder.');
    }
    if (rawInput is num) {
      finalNum = rawInput;
      isInt = rawInput is int;
    } else if (rawInput != null) {
      // If it's a string, you could parse it. If that's not your library's
      // intent,
      // just throw an error:
      throw ArgumentError(
        'FhirDecimalBuilder only supports a num or null, got: $rawInput',
      );
    }

    // 2) Return the private constructor
    return FhirDecimalBuilder._(
      validatedValue: finalNum?.toDouble(),
      input: finalNum,
      isInt: isInt,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Factory constructor to create a [FhirDecimalBuilder] from a [FhirIntegerBuilder].
  factory FhirDecimalBuilder.fromFhirInteger(
    FhirIntegerBuilder integer, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
  }) {
    // just funnel into the main constructor
    return FhirDecimalBuilder(
      integer.value,
      element: element,
      id: id,
      extension_: extension_,
    );
  }

  /// Creates empty [FhirDecimalBuilder] object
  factory FhirDecimalBuilder.empty() =>
      FhirDecimalBuilder(null, element: ElementBuilder.empty());

  /// Factory constructor to create a [FhirDecimalBuilder] from JSON input.
  factory FhirDecimalBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as num?;
    final elemJson = json['_value'] as Map<String, dynamic>?;
    final element = elemJson == null ? null : ElementBuilder.fromJson(elemJson);
    final objectPath = json['objectPath'] as String? ?? 'Decimal';
    return FhirDecimalBuilder(value, element: element, objectPath: objectPath);
  }

  /// Factory constructor to create a [FhirDecimalBuilder] from YAML input.
  static FhirDecimalBuilder fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirDecimalBuilder.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirDecimalBuilder.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw ArgumentError(
        'FhirDecimalBuilder cannot be constructed from the provided input. '
        'It must be a YAML string or map.',
      );
    }
  }

  /// Attempts to parse a [dynamic] input as [FhirDecimalBuilder], returns `null` if
  /// parsing fails.
  static FhirDecimalBuilder? tryParse(dynamic input) {
    try {
      return FhirDecimalBuilder(input);
    } catch (_) {
      return null;
    }
  }

  /// The original input value (stored for serialization purposes).
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

  /// Boolean flag to track if the input was originally an integer.
  bool _isInt; // rename from isInt → private?

  /// Returns the FHIR type as 'decimal'.
  @override
  String get fhirType => 'decimal';

  /// Converts this instance to a [FhirDecimal] object
  @override
  FhirDecimal build() => FhirDecimal.fromJson(toJson());

  /// Serializes the instance to JSON with standardized keys.
  @override
  Map<String, dynamic> toJson() {
    return {
      if (input != null) 'value': _isInt ? input!.toInt() : input,
      if (element != null) '_value': element!.toJson(),
    };
  }

  /// Provides a string representation of the instance.
  @override
  String toString() =>
      _isInt ? value?.toInt().toString() ?? '' : value?.toString() ?? '';

  /// Retrieves the primitive value of the object.
  @override
  String? get primitiveValue => value?.toString();

  @override
  bool equalsDeep(FhirBaseBuilder? other) =>
      other is FhirDecimalBuilder &&
      other.value == value &&
      other.element == element;

  /// Overrides equality operator for comparing two [FhirDecimalBuilder] instances.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirDecimalBuilder && other.value == value) ||
      (other is num && other == value);

  /// Overrides `hashCode` for use in hash-based collections.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  // Clone, copyWith, etc.

  @override
  FhirDecimalBuilder clone() =>
      FhirDecimalBuilder(input, element: element?.clone() as ElementBuilder?);

  /// Sets disallowExtensions to true
  FhirDecimalBuilder noExtensions() => copyWith(disallowExtensions: true);

  /// Creates a modified copy with updated properties.
  @override
  FhirDecimalBuilder copyWith({
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
    return FhirDecimalBuilder(
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

  /// Creates an empty property in the object
  @override
  FhirDecimalBuilder createProperty(String propertyName) => this;

  /// Clears the specified fields in a [FhirDecimalBuilder] object
  @override
  FhirDecimalBuilder clear({
    bool input = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirDecimalBuilder(
      input ? null : this.input,
      element: element,
      extension_: extension_ ? <FhirExtensionBuilder>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
