part of 'primitive_types.dart';

/// Extension methods on [num] to easily convert to [FhirDecimalBuilder].
extension FhirDecimalBuilderExtension on num {
  /// Returns a new [FhirDecimalBuilder] constructed from this [num].
  FhirDecimalBuilder get toFhirDecimalBuilder => FhirDecimalBuilder(this);
}

/// A FHIR primitive type representing `decimal`.
///
/// Subclass of [FhirNumberBuilder], able to represent fractional values.
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
  // --------------------------------------------------------------------------
  // Private Internal Constructor
  // --------------------------------------------------------------------------

  /// Private underscore constructor that simply assigns [valueString]
  /// and [isInt].
  FhirDecimalBuilder._({
    required super.valueString,
    required this.isInt,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Decimal',
  }) : super._();

  // --------------------------------------------------------------------------
  // Public Factories
  // --------------------------------------------------------------------------

  /// Creates a [FhirDecimalBuilder] from [rawValue], which can be:
  /// - `null` (element-only usage if [element] is not null),
  /// - A numeric type [num],
  /// - A [String] that parses to a double.
  // ignore: sort_unnamed_constructors_first
  factory FhirDecimalBuilder(
    dynamic rawValue, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Decimal',
  }) {
    String? valueString;
    var isInt = false;

    if (rawValue == null && element == null) {
      throw ArgumentError('A value or element is required for FhirDecimal.');
    }
    if (rawValue is num) {
      valueString = rawValue.toString();
      isInt = rawValue is int;
    } else if (rawValue is String) {
      // Attempt parse
      final possibleInt = int.tryParse(rawValue);
      if (possibleInt != null) {
        // Then also store as double to preserve decimal format
        // e.g. "4" -> 4.0 for consistent decimal representation
        isInt = true;
        valueString = rawValue;
      } else {
        final parsedDouble = double.tryParse(rawValue);
        if (parsedDouble == null) {
          throw ArgumentError(
            'FhirDecimal only supports numeric input or null, got: $rawValue',
          );
        }
        valueString = rawValue;
      }
    } else if (rawValue != null) {
      throw ArgumentError(
        'FhirDecimal only supports a num or string or null, got: $rawValue',
      );
    }

    return FhirDecimalBuilder._(
      valueString: valueString,
      isInt: isInt,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates a [FhirDecimalBuilder] from a [FhirIntegerBuilder].
  factory FhirDecimalBuilder.fromFhirInteger(
    FhirIntegerBuilder integer, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
  }) {
    return FhirDecimalBuilder(
      integer.valueString,
      element: element,
      id: id,
      extension_: extension_,
    );
  }

  /// Creates an empty [FhirDecimalBuilder].
  factory FhirDecimalBuilder.empty() =>
      FhirDecimalBuilder(null, element: ElementBuilder.empty());

  /// Creates a [FhirDecimalBuilder] from JSON.
  factory FhirDecimalBuilder.fromJson(Map<String, dynamic> json) {
    final rawValue = json['value'] as num?;
    final elemJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement =
        elemJson == null ? null : ElementBuilder.fromJson(elemJson);
    final objectPath = json['objectPath'] as String? ?? 'Decimal';
    return FhirDecimalBuilder(
      rawValue,
      element: parsedElement,
      objectPath: objectPath,
    );
  }

  /// Creates a [FhirDecimalBuilder] from a YAML input ([String] or [YamlMap]).
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
        'FhirDecimal cannot be constructed from the provided input. '
        'It must be a YAML string or map.',
      );
    }
  }

  /// Attempts to parse [input] as a [FhirDecimalBuilder]. Returns `null` if
  /// it fails.
  static FhirDecimalBuilder? tryParse(dynamic input) {
    try {
      return FhirDecimalBuilder(input);
    } catch (_) {
      return null;
    }
  }

  // --------------------------------------------------------------------------
  // Fields / Getters
  // --------------------------------------------------------------------------

  /// Flag indicating whether the original input was an integer or not.
  final bool isInt;

  /// Returns this decimal as a [num], overriding [FhirNumberBuilder.valueNum].
  @override
  num? get valueNum => valueString == null ? null : num.parse(valueString!);

  /// Returns this decimal as a [double], if non-null.
  double? get valueDouble =>
      valueString == null ? null : double.parse(valueString!);

  /// Returns this decimal as an [int], or `null` if [isInt] is `false`.
  int? get valueInt =>
      (valueString != null && isInt) ? int.parse(valueString!) : null;

  // --------------------------------------------------------------------------
  // Overrides
  // --------------------------------------------------------------------------

  /// Returns `"decimal"`.
  @override
  String get fhirType => 'decimal';

  /// Serializes the instance to JSON.
  @override
  Map<String, dynamic> toJson() {
    return {
      // If it's an integer, store as int; otherwise store as double
      if (valueNum != null) 'value': valueInt ?? valueNum,
      if (element != null) '_value': element!.toJson(),
    };
  }

  /// Method to convert the builder object to the original Element object
  @override
  FhirDecimal build() => FhirDecimal.fromJson(toJson());

  /// Returns the string or `''`.
  @override
  String toString() => valueString ?? '';

  @override
  bool equalsDeep(FhirBaseBuilder? other) =>
      other is FhirDecimalBuilder &&
      other.valueNum == valueNum &&
      other.element == element;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirDecimalBuilder && other.valueNum == valueNum) ||
      (other is num && other == valueNum);

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(valueString, element);

  // --------------------------------------------------------------------------
  // Clone / Copy
  // --------------------------------------------------------------------------

  @override
  FhirDecimalBuilder clone() => FhirDecimalBuilder(
        valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns a copy with [disallowExtensions] set to `true`.
  FhirDecimalBuilder noExtensions() => copyWith(disallowExtensions: true);

  /// Creates a modified copy of the instance.
  @override
  FhirDecimalBuilder copyWith({
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
    return FhirDecimalBuilder(
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

  /// No-op property creator.
  @override
  FhirDecimalBuilder createProperty(String propertyName) => this;

  /// Clears specified fields in this [FhirDecimalBuilder].
  @override
  FhirDecimalBuilder clear({
    bool value = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirDecimalBuilder(
      value ? null : valueString,
      element: element,
      extension_: extension_ ? <FhirExtensionBuilder>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
