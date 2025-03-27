part of 'primitive_types.dart';

/// Extension to convert a [num] to a [FhirInteger].
extension FhirIntegerExtension on num {
  /// Converts a [num] to a [FhirInteger].
  FhirInteger get toFhirInteger => this is int
      ? FhirInteger(this as int)
      : int.tryParse(toString()) != null
          ? FhirInteger(int.parse(toString()))
          : throw FormatException('Invalid input for FhirInteger: $this');
}

/// Represents the FHIR primitive type `integer`.
class FhirInteger extends FhirNumber
    implements
        ValueXCodeSystemProperty,
        ValueXContractAnswer,
        DetailXGoalTarget,
        ValueXObservation,
        ValueXObservationComponent,
        ValueXParametersParameter,
        MultipleBirthXPatient,
        AnswerXQuestionnaireEnableWhen,
        ValueXQuestionnaireAnswerOption,
        ValueXQuestionnaireInitial,
        ValueXQuestionnaireResponseAnswer,
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
  /// Private underscore constructor
  FhirInteger._({
    required int? validatedValue,
    this.input,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Integer',
  }) : super._(validatedValue: validatedValue);

  /// Public factory constructor that does any parsing/validation,
  /// then calls the private constructor.
  // ignore: sort_unnamed_constructors_first
  factory FhirInteger(
    dynamic rawInput, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Integer',
  }) {
    // 1) Check if rawInput is null or a num
    num? finalNum;

    if (rawInput == null && element == null) {
      throw ArgumentError('A value or element is required for FhirDecimal.');
    } else if (rawInput is num) {
      if (rawInput is! int) {
        throw ArgumentError('Invalid input for FhirInteger: $rawInput');
      } else {
        finalNum = rawInput;
      }
    } else if (rawInput != null) {
      // If it's a string, you could parse it. If that’s not your library’s
      // intent,
      // just throw an error:
      throw ArgumentError(
        'FhirDecimal only supports a num or null, got: $rawInput',
      );
    }

    // 2) Return the private constructor
    return FhirInteger._(
      validatedValue: finalNum! as int,
      input: finalNum,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates empty [FhirInteger] object
  factory FhirInteger.empty() => FhirInteger(null, element: Element.empty());

  /// Factory constructor to create [FhirInteger] from JSON input.
  factory FhirInteger.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as num?;
    final elemJson = json['_value'] as Map<String, dynamic>?;
    final element = elemJson == null ? null : Element.fromJson(elemJson);
    final objectPath = json['objectPath'] as String? ?? 'PositiveInt';

    return FhirInteger(value, element: element, objectPath: objectPath);
  }

  /// Factory constructor to create [FhirInteger] from YAML input.
  static FhirInteger fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirInteger.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirInteger.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw const FormatException(
        'Invalid input for FhirInteger: not a valid YAML string or map.',
      );
    }
  }

  /// Static method to try parsing input as [FhirInteger], returns `null`
  /// if unsuccessful.
  static FhirInteger? tryParse(dynamic input) {
    try {
      return FhirInteger(input);
    } catch (_) {
      return null;
    }
  }

  /// The original input value (for serialization purposes)
  final num? input;

  /// Returns the FHIR type as a string.
  @override
  String get fhirType => 'integer';

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
      other is FhirInteger && other.value == value && other.element == element;

  /// Overrides equality operator to compare instances.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirInteger && other.value == value) ||
      (other is int && other == value);

  /// Overrides hashCode for use in hash-based collections.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  // Clone / copyWith
  @override
  FhirInteger clone() =>
      FhirInteger(value, element: element?.clone() as Element?);

  /// Sets disallowExtensions to true.
  FhirInteger noExtensions() => copyWith(disallowExtensions: true);

  /// Creates a modified copy with updated properties.
  @override
  FhirInteger copyWith({
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
    return FhirInteger(
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
  FhirInteger createProperty(String propertyName) => this;

  /// Clears the specified fields in a [FhirInteger] object
  @override
  FhirInteger clear({
    bool input = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirInteger(
      input ? null : this.input,
      element: element,
      extension_: extension_ ? <FhirExtension>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
