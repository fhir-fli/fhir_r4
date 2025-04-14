part of 'primitive_types.dart';

/// Extension on [DateTime] to convert to a [FhirDateBuilder].
extension FhirDateBuilderExtension on DateTime {
  /// Converts [DateTime] to [FhirDateBuilder].
  FhirDateBuilder get toFhirDateBuilder => FhirDateBuilder.fromDateTime(this);
}

/// Extension on [String] to convert to a [FhirDateBuilder].
extension FhirDateStringBuilderExtension on String {
  /// Converts [String] to a [FhirDateBuilder].
  FhirDateBuilder get toFhirDateBuilder => FhirDateBuilder.fromString(this);
}

/// [FhirDateBuilder] represents a date-only type in FHIR
/// (potentially partial, e.g. YYYY, YYYY-MM, or YYYY-MM-DD).
class FhirDateBuilder extends FhirDateTimeBaseBuilder
    implements
        ValueXAdministrableProductDefinitionPropertyBuilder,
        TimingXClaimSupportingInfoBuilder,
        ServicedXClaimItemBuilder,
        ServicedXClaimResponseAddItemBuilder,
        ValueXContractAnswerBuilder,
        ServicedXCoverageEligibilityRequestBuilder,
        ServicedXCoverageEligibilityResponseBuilder,
        TimingXExplanationOfBenefitSupportingInfoBuilder,
        ServicedXExplanationOfBenefitItemBuilder,
        ServicedXExplanationOfBenefitAddItemBuilder,
        BornXFamilyMemberHistoryBuilder,
        DeceasedXFamilyMemberHistoryBuilder,
        DueXGoalTargetBuilder,
        ValueXManufacturedItemDefinitionPropertyBuilder,
        ValueXMedicinalProductDefinitionCharacteristicBuilder,
        ValueXPackagedProductDefinitionPropertyBuilder,
        ValueXParametersParameterBuilder,
        AnswerXQuestionnaireEnableWhenBuilder,
        ValueXQuestionnaireAnswerOptionBuilder,
        ValueXQuestionnaireInitialBuilder,
        ValueXQuestionnaireResponseAnswerBuilder,
        DefaultValueXStructureMapSourceBuilder,
        ValueXSubstanceDefinitionPropertyBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        MinValueXElementDefinitionBuilder,
        MaxValueXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder,
        TimingXTriggerDefinitionBuilder,
        StartXGoalBuilder {
  // --------------------------------------------------------------------------
  // Private Internal Constructor
  // --------------------------------------------------------------------------

  /// Private underscore constructor delegating to [FhirDateTimeBaseBuilder].
  FhirDateBuilder._({
    required super.valueString,
    required super.year,
    required super.month,
    required super.day,
    required super.isUtc,
    super.timeZoneOffset,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Date',
  }) : super._();

  // --------------------------------------------------------------------------
  // Public Factories
  // --------------------------------------------------------------------------

  /// Creates a [FhirDateBuilder] from the base fields.
  factory FhirDateBuilder.fromBase({
    required String? valueString,
    required int? year,
    required int? month,
    required int? day,
    required bool isUtc,
    num? timeZoneOffset,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Date',
  }) {
    return FhirDateBuilder._(
      valueString: valueString,
      year: year,
      month: month,
      day: day,
      isUtc: isUtc,
      timeZoneOffset: timeZoneOffset,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates a [FhirDateBuilder] from individual date components
  /// (year, [month], [day]).
  factory FhirDateBuilder.fromUnits({
    required int year,
    int? month,
    int? day,
    bool? isUtc,
    ElementBuilder? element,
  }) =>
      FhirDateTimeBaseBuilder.fromUnits<FhirDateBuilder>(
        year: year,
        month: month,
        day: day,
        isUtc: isUtc ?? false,
        element: element,
      ) as FhirDateBuilder;

  /// Creates a [FhirDateBuilder] from a raw string.
  factory FhirDateBuilder.fromString(
    String input, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) =>
      FhirDateTimeBaseBuilder.constructor<FhirDateBuilder>(
        input: input,
        element: element,
        id: id,
        extension_: extension_,
        userData: userData,
        formatCommentsPre: formatCommentsPre,
        formatCommentsPost: formatCommentsPost,
        annotations: annotations,
        objectPath: objectPath,
      ) as FhirDateBuilder;

  /// Creates a [FhirDateBuilder] from a [DateTime].
  factory FhirDateBuilder.fromDateTime(
    DateTime input, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) =>
      FhirDateTimeBaseBuilder.constructor<FhirDateBuilder>(
        input: input,
        element: element,
        id: id,
        extension_: extension_,
        userData: userData,
        formatCommentsPre: formatCommentsPre,
        formatCommentsPost: formatCommentsPost,
        annotations: annotations,
      ) as FhirDateBuilder;

  /// Creates an empty [FhirDateBuilder].
  factory FhirDateBuilder.empty() => FhirDateBuilder.fromBase(
        valueString: null,
        year: null,
        month: null,
        day: null,
        isUtc: false,
        element: ElementBuilder.empty(),
      );

  /// Creates a [FhirDateBuilder] from JSON.
  factory FhirDateBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'];
    final element = json['_value'] is Map<String, dynamic>
        ? ElementBuilder.fromJson(json['_value'] as Map<String, dynamic>)
        : null;

    if (value is String) {
      return FhirDateBuilder.fromString(value, element: element);
    } else if (value is DateTime) {
      return FhirDateBuilder.fromDateTime(value, element: element);
    } else if (value == null) {
      return FhirDateTimeBaseBuilder.constructor<FhirDateBuilder>(
        element: element,
      ) as FhirDateBuilder;
    } else {
      throw const FormatException(
        'Invalid input for FhirDate: must be a String or DateTime',
      );
    }
  }

  /// Creates a [FhirDateBuilder] from YAML input.
  static FhirDateBuilder fromYaml(dynamic yaml) => yaml is String
      ? FhirDateBuilder.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        )
      : yaml is YamlMap
          ? FhirDateBuilder.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            )
          : throw ArgumentError(
              'FhirDate cannot be constructed from provided YAML input.',
            );

  /// Tries to parse [value] into a [FhirDateBuilder].
  static FhirDateBuilder? tryParse(dynamic value) {
    try {
      if (value is DateTime) {
        return FhirDateBuilder.fromDateTime(value);
      } else if (value is String) {
        return FhirDateBuilder.fromString(value);
      }
    } catch (_) {
      return null;
    }
    return null;
  }

  // --------------------------------------------------------------------------
  // Overrides
  // --------------------------------------------------------------------------

  @override
  String get fhirType => 'date';

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => valueString.hashCode;

  @override
  bool equalsDeep(FhirBaseBuilder? other) =>
      other is FhirDateBuilder &&
      other.valueString == valueString &&
      other.element == element;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  @override
  bool equals(Object other) => isEqual(other) ?? false;

  /// Arithmetic
  ///
  /// Adds or subtracts an [ExtendedDuration] to/from this [FhirDateBuilder].
  ///
  /// [ExtendedDuration] is a custom class that represents a duration of time.
  /// The `plus` and `minus` methods are used to add or subtract the duration
  /// from the [FhirDateBuilder].
  ///
  /// The `operator +` and `operator -` methods are overridden to provide
  /// shorthand syntax for adding or subtracting the duration.
  ///
  /// The `plus` method returns a new [FhirDateBuilder] with the duration added.
  FhirDateBuilder plus(ExtendedDuration other) =>
      FhirDateTimeBaseBuilder.plus<FhirDateBuilder>(this, other)
          as FhirDateBuilder;

  /// The `minus` method returns a new [FhirDateBuilder] with the
  /// duration subtracted.
  FhirDateBuilder minus(ExtendedDuration other) =>
      FhirDateTimeBaseBuilder.minus<FhirDateBuilder>(this, other)
          as FhirDateBuilder;

  /// The `operator +` method returns a new [FhirDateBuilder] with the
  /// duration added.
  @override
  FhirDateBuilder operator +(ExtendedDuration other) =>
      FhirDateTimeBaseBuilder.plus<FhirDateBuilder>(this, other)
          as FhirDateBuilder;

  /// The `operator -` method returns a new [FhirDateBuilder] with the
  /// duration subtracted.
  @override
  FhirDateBuilder operator -(ExtendedDuration other) =>
      FhirDateTimeBaseBuilder.minus<FhirDateBuilder>(this, other)
          as FhirDateBuilder;

  /// The `subtract` method is an alias for the `minus` method.
  FhirDateBuilder subtract(ExtendedDuration other) =>
      FhirDateTimeBaseBuilder.minus<FhirDateBuilder>(this, other)
          as FhirDateBuilder;

  /// Clone
  @override
  FhirDateBuilder clone() => FhirDateBuilder.fromJson(toJson());

  /// JSON
  @override
  Map<String, dynamic> toJson() => {
        if (valueString?.isNotEmpty ?? false) 'value': valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// Method to convert the builder object to the original Element object
  @override
  FhirDate build() => FhirDate.fromJson(toJson());

  // --------------------------------------------------------------------------
  // copyWith
  // --------------------------------------------------------------------------

  /// Creates a new [FhirDateBuilder] instance with updated properties.
  @override
  FhirDateBuilder copyWith({
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
    return FhirDateTimeBaseBuilder.constructor<FhirDateBuilder>(
      input: newValue ?? valueString,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    ) as FhirDateBuilder;
  }

  /// Shorthand to set `disallowExtensions = true`.
  FhirDateBuilder noExtensions() => copyWith(disallowExtensions: true);

  /// Creates an empty property in the object.
  @override
  FhirDateBuilder createProperty(String propertyName) => this;
}
