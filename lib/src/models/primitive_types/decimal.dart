part of 'primitive_types.dart';

/// Extension to convert a Dart number to a [FhirDecimal].
extension FhirDecimalExtension on num {
  /// Converts a Dart number to a [FhirDecimal].
  FhirDecimal get toFhirDecimal => FhirDecimal(this);
}

/// Represents the FHIR primitive type `decimal`.
class FhirDecimal extends FhirNumber
    implements
        ValueXCodeSystemProperty,
        ValueXContractAnswer,
        ValueXParametersParameter,
        AnswerXQuestionnaireEnableWhen,
        ValueXQuestionnaireInitial,
        ValueXQuestionnaireResponseAnswer,
        ProbabilityXRiskAssessmentPrediction,
        DefaultValueXStructureMapSource,
        ValueXStructureMapParameter,
        ValueXTaskInput,
        ValueXTaskOutput,
        ValueXValueSetParameter,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        MinValueXElementDefinition,
        MaxValueXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  /// Private underscore constructor — no logic, only field assignment.
  FhirDecimal._({
    required super.validatedValue,
    this.input,
    required bool isInt,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Decimal',
  })  : _isInt = isInt,
        super._();

  /// Public factory constructor that does any parsing/validation,
  /// then calls the private constructor.
  // ignore: sort_unnamed_constructors_first
  factory FhirDecimal(
    dynamic rawInput, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Decimal',
  }) {
    // 1) Check if rawInput is null or a num
    num? finalNum;
    var isInt = false;

    if (rawInput == null && element == null) {
      throw ArgumentError('A value or element is required for FhirDecimal.');
    }
    if (rawInput is num) {
      finalNum = rawInput;
      isInt = rawInput is int;
    } else if (rawInput != null) {
      // If it's a string, you could parse it. If that’s not your library’s
      // intent,
      // just throw an error:
      throw ArgumentError(
        'FhirDecimal only supports a num or null, got: $rawInput',
      );
    }

    // 2) Return the private constructor
    return FhirDecimal._(
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

  /// Factory constructor to create a [FhirDecimal] from a [FhirInteger].
  factory FhirDecimal.fromFhirInteger(
    FhirInteger integer, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
  }) {
    // just funnel into the main constructor
    return FhirDecimal(
      integer.value,
      element: element,
      id: id,
      extension_: extension_,
    );
  }

  /// Creates empty [FhirDecimal] object
  factory FhirDecimal.empty() => FhirDecimal(null, element: Element.empty());

  /// Factory constructor to create a [FhirDecimal] from JSON input.
  factory FhirDecimal.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as num?;
    final elemJson = json['_value'] as Map<String, dynamic>?;
    final element = elemJson == null ? null : Element.fromJson(elemJson);
    final objectPath = json['objectPath'] as String? ?? 'Decimal';
    return FhirDecimal(value, element: element, objectPath: objectPath);
  }

  /// Factory constructor to create a [FhirDecimal] from YAML input.
  static FhirDecimal fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirDecimal.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirDecimal.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw ArgumentError(
        'FhirDecimal cannot be constructed from the provided input. '
        'It must be a YAML string or map.',
      );
    }
  }

  /// Attempts to parse a [dynamic] input as [FhirDecimal], returns `null` if
  /// parsing fails.
  static FhirDecimal? tryParse(dynamic input) {
    try {
      return FhirDecimal(input);
    } catch (_) {
      return null;
    }
  }

  /// The original input value (stored for serialization purposes).
  final num? input;

  /// Boolean flag to track if the input was originally an integer.
  final bool _isInt; // rename from isInt → private?

  /// Returns the FHIR type as 'decimal'.
  @override
  String get fhirType => 'decimal';

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
  bool equalsDeep(FhirBase? other) =>
      other is FhirDecimal && other.value == value && other.element == element;

  /// Overrides equality operator for comparing two [FhirDecimal] instances.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirDecimal && other.value == value) ||
      (other is num && other == value);

  /// Overrides `hashCode` for use in hash-based collections.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  // Clone, copyWith, etc.

  @override
  FhirDecimal clone() =>
      FhirDecimal(input, element: element?.clone() as Element?);

  /// Sets disallowExtensions to true
  FhirDecimal noExtensions() => copyWith(disallowExtensions: true);

  /// Creates a modified copy with updated properties.
  @override
  FhirDecimal copyWith({
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
    return FhirDecimal(
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

  /// Creates an empty property in the object
  @override
  FhirDecimal createProperty(String propertyName) => this;

  /// Clears the specified fields in a [FhirDecimal] object
  @override
  FhirDecimal clear({
    bool input = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirDecimal(
      input ? null : this.input,
      element: element,
      extension_: extension_ ? <FhirExtension>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
