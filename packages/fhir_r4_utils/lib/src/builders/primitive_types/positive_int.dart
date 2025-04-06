part of 'primitive_types.dart';

/// Extension methods on [num] to easily convert to [FhirPositiveIntBuilder].
extension FhirPositiveIntBuilderExtension on num {
  /// Returns a [FhirPositiveIntBuilder] from this [num],
  /// if it's an integer > 0.
  ///
  /// Otherwise throws a [FormatException].
  FhirPositiveIntBuilder get toFhirPositiveIntBuilder => this is int
      ? FhirPositiveIntBuilder(this as int)
      : int.tryParse(toString()) != null
          ? FhirPositiveIntBuilder(int.parse(toString()))
          : throw FormatException('Invalid input for FhirPositiveInt: $this');
}

/// A FHIR primitive type representing `positiveInt`.
///
/// Subclass of [FhirNumberBuilder]. Only allows strictly positive integers
/// ([1..∞]).
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
  // --------------------------------------------------------------------------
  // Private Internal Constructor
  // --------------------------------------------------------------------------

  /// Private underscore constructor, calls [super._].
  FhirPositiveIntBuilder._({
    required super.valueString,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'PositiveInt',
  }) : super._();

  // --------------------------------------------------------------------------
  // Public Factories
  // --------------------------------------------------------------------------

  /// Creates a [FhirPositiveIntBuilder] from [rawValue], which must be an
  /// [int] > 0 or a [String] that parses to an int > 0, or `null`
  /// (with [element]).
  // ignore: sort_unnamed_constructors_first
  factory FhirPositiveIntBuilder(
    dynamic rawValue, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'PositiveInt',
  }) {
    String? parsedString;

    if (rawValue == null && element == null) {
      throw ArgumentError(
        'A value or element is required for FhirPositiveInt.',
      );
    }
    if (rawValue is num) {
      if (rawValue is int) {
        if (rawValue <= 0) {
          throw ArgumentError(
            'FhirPositiveInt only supports positive integers, got: $rawValue',
          );
        }
        parsedString = rawValue.toString();
      } else {
        throw ArgumentError(
          'FhirPositiveInt only supports an int or null, got: $rawValue',
        );
      }
    } else if (rawValue is String) {
      final asInt = int.tryParse(rawValue);
      if (asInt == null || asInt <= 0) {
        throw ArgumentError(
          'FhirPositiveInt only supports positive integers, got: $rawValue',
        );
      }
      parsedString = asInt.toString();
    } else if (rawValue != null) {
      throw ArgumentError(
        'FhirPositiveInt only supports an int or null, got: $rawValue',
      );
    }

    return FhirPositiveIntBuilder._(
      valueString: parsedString,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates an empty [FhirPositiveIntBuilder] (with [ElementBuilder.empty]
  /// for metadata).
  factory FhirPositiveIntBuilder.empty() =>
      FhirPositiveIntBuilder(null, element: ElementBuilder.empty());

  // --------------------------------------------------------------------------
  // JSON / YAML Constructors
  // --------------------------------------------------------------------------

  /// Constructs a [FhirPositiveIntBuilder] from a JSON [Map].
  factory FhirPositiveIntBuilder.fromJson(Map<String, dynamic> json) {
    final rawValue = json['value'] as num?;
    final elemJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement =
        elemJson == null ? null : ElementBuilder.fromJson(elemJson);
    final objectPath = json['objectPath'] as String? ?? 'PositiveInt';
    return FhirPositiveIntBuilder(
      rawValue,
      element: parsedElement,
      objectPath: objectPath,
    );
  }

  /// Constructs a [FhirPositiveIntBuilder] from a YAML input ([String] or
  /// [YamlMap]).
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
        'Invalid input for FhirPositiveInt: not a valid YAML string or map.',
      );
    }
  }

  /// Attempts to parse [input] as a [FhirPositiveIntBuilder]. Returns `null`
  /// if unsuccessful.
  static FhirPositiveIntBuilder? tryParse(dynamic input) {
    try {
      return FhirPositiveIntBuilder(input);
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

  /// Same as [valueNum].
  int? get valueInt => valueNum;

  // --------------------------------------------------------------------------
  // Overrides
  // --------------------------------------------------------------------------

  /// Returns `"positiveInt"`.
  @override
  String get fhirType => 'positiveInt';

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
  FhirPositiveInt build() => FhirPositiveInt.fromJson(toJson());

  /// Returns the string form or `'null'`.
  @override
  String toString() => valueString ?? 'null';

  @override
  bool equalsDeep(FhirBaseBuilder? other) =>
      other is FhirPositiveIntBuilder &&
      other.valueString == valueString &&
      other.element == element;

  /// Equality checks [FhirPositiveIntBuilder], or an [int]/[double] with the same value.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirPositiveIntBuilder && other.valueString == valueString) ||
      (other is int && other == valueInt) ||
      (other is double && other == valueNum);

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(valueString, element);

  // --------------------------------------------------------------------------
  // Clone / Copy
  // --------------------------------------------------------------------------

  @override
  FhirPositiveIntBuilder clone() => FhirPositiveIntBuilder(
        valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns a copy with [disallowExtensions] set to `true`.
  FhirPositiveIntBuilder noExtensions() => copyWith(disallowExtensions: true);

  /// Creates a modified copy with updated properties.
  @override
  FhirPositiveIntBuilder copyWith({
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
    return FhirPositiveIntBuilder(
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

  @override
  FhirPositiveIntBuilder createProperty(String propertyName) => this;

  @override
  FhirPositiveIntBuilder clear({
    bool value = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirPositiveIntBuilder(
      value ? null : valueString,
      element: element,
      extension_: extension_ ? <FhirExtensionBuilder>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
