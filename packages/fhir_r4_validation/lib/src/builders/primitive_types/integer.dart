part of 'primitive_types.dart';

/// Extension methods on [num] to easily convert to [FhirIntegerBuilder].
extension FhirIntegerBuilderExtension on num {
  /// Returns a new [FhirIntegerBuilder] from this [num], provided it's truly
  /// an [int].
  FhirIntegerBuilder get toFhirIntegerBuilder => this is int
      ? FhirIntegerBuilder(this as int)
      : int.tryParse(toString()) != null
          ? FhirIntegerBuilder(int.parse(toString()))
          : throw FormatException('Invalid input for FhirInteger: $this');
}

/// A FHIR primitive type representing `integer`.
///
/// Subclass of [FhirNumberBuilder]. Only allows whole numbers (no decimals).
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
  // --------------------------------------------------------------------------
  // Private Internal Constructor
  // --------------------------------------------------------------------------

  /// Private underscore constructor that just sets [valueString] on [super].
  FhirIntegerBuilder._({
    required super.valueString,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Integer',
  }) : super._();

  // --------------------------------------------------------------------------
  // Public Factories
  // --------------------------------------------------------------------------

  /// Creates a [FhirIntegerBuilder] from [rawValue], which can be:
  /// - `null` (element-only usage),
  /// - An integer [num],
  /// - A string that parses to an integer.
  // ignore: sort_unnamed_constructors_first
  factory FhirIntegerBuilder(
    dynamic rawValue, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Integer',
  }) {
    String? parsedString;

    if (rawValue == null && element == null) {
      throw ArgumentError('A value or element is required for FhirInteger.');
    }
    if (rawValue is num) {
      if (rawValue is int) {
        parsedString = rawValue.toString();
      } else {
        throw ArgumentError(
          'FhirInteger only supports an int or null, got: $rawValue',
        );
      }
    } else if (rawValue is String) {
      final asInt = int.tryParse(rawValue);
      if (asInt == null) {
        throw ArgumentError(
          'FhirInteger only supports an integer or null, got: $rawValue',
        );
      }
      parsedString = asInt.toString();
    } else if (rawValue != null) {
      throw ArgumentError(
        'FhirInteger only supports an int or String or null, got: $rawValue',
      );
    }

    return FhirIntegerBuilder._(
      valueString: parsedString,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates an empty [FhirIntegerBuilder].
  factory FhirIntegerBuilder.empty() =>
      FhirIntegerBuilder(null, element: ElementBuilder.empty());

  /// Creates a [FhirIntegerBuilder] from JSON.
  factory FhirIntegerBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as num?;
    final elemJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement =
        elemJson == null ? null : ElementBuilder.fromJson(elemJson);
    final objectPath = json['objectPath'] as String? ?? 'Integer';
    return FhirIntegerBuilder(
      value,
      element: parsedElement,
      objectPath: objectPath,
    );
  }

  /// Creates a [FhirIntegerBuilder] from a YAML input ([String] or [YamlMap]).
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
        'Invalid input for FhirInteger: must be a YAML string or map.',
      );
    }
  }

  /// Attempts to parse [input] as a [FhirIntegerBuilder]. Returns `null` if
  /// parsing fails.
  static FhirIntegerBuilder? tryParse(dynamic input) {
    try {
      return FhirIntegerBuilder(input);
    } catch (_) {
      return null;
    }
  }

  // --------------------------------------------------------------------------
  // Getters / Properties
  // --------------------------------------------------------------------------

  /// Returns the integer value, or `null` if [valueString] is null.
  @override
  int? get valueNum => valueString == null ? null : int.parse(valueString!);

  /// Alias for [valueNum], returning an [int].
  int? get valueInt => valueNum;

  // --------------------------------------------------------------------------
  // Overrides
  // --------------------------------------------------------------------------

  /// Returns `"integer"`.
  @override
  String get fhirType => 'integer';

  /// JSON serialization.
  @override
  Map<String, dynamic> toJson() {
    return {
      if (valueNum != null) 'value': valueNum,
      if (element != null) '_value': element!.toJson(),
    };
  }

  /// Method to convert the builder object to the original Element object
  @override
  FhirInteger build() => FhirInteger.fromJson(toJson());

  /// Returns the string form or `'null'`.
  @override
  String toString() => valueString ?? 'null';

  @override
  bool equalsDeep(FhirBaseBuilder? other) =>
      other is FhirIntegerBuilder &&
      other.valueString == valueString &&
      other.element == element;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirIntegerBuilder && other.valueString == valueString) ||
      (other is int && other == valueInt) ||
      (other is double && other == valueNum);

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(valueString, element);

  // --------------------------------------------------------------------------
  // Clone / Copy
  // --------------------------------------------------------------------------

  @override
  FhirIntegerBuilder clone() => FhirIntegerBuilder(
        valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns a copy with [disallowExtensions] set to `true`.
  FhirIntegerBuilder noExtensions() => copyWith(disallowExtensions: true);

  /// Creates a modified copy of the instance.
  @override
  FhirIntegerBuilder copyWith({
    dynamic newValue,
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
      newValue ?? valueString,
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

  /// No-op property creation.
  @override
  FhirIntegerBuilder createProperty(String propertyName) => this;
}
