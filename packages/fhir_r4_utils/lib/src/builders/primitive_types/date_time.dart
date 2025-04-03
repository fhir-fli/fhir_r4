part of 'primitive_types.dart';

/// Extension on [DateTime] to convert it to a [FhirDateTimeBuilder].
extension FhirDateTimeExtension on DateTime {
  /// Converts a [DateTime] to a [FhirDateTimeBuilder].
  FhirDateTimeBuilder get toFhirDateTimeBuilder =>
      FhirDateTimeBuilder.fromDateTime(this);
}

/// Extension on [String] to convert it to a [FhirDateTimeBuilder].
extension FhirDateTimeStringExtension on String {
  /// Converts a [String] to a [FhirDateTimeBuilder].
  FhirDateTimeBuilder get toFhirDateTimeBuilder =>
      FhirDateTimeBuilder.fromString(this);
}

/// [FhirDateTimeBuilder] represents FHIR-compliant date+time,
/// subclassing [FhirDateTimeBaseBuilder] for partial-precision logic.
class FhirDateTimeBuilder extends FhirDateTimeBaseBuilder
    implements
        TimingXActivityDefinitionBuilder,
        OnsetXAllergyIntoleranceBuilder,
        CollectedXBiologicallyDerivedProductCollectionBuilder,
        TimeXBiologicallyDerivedProductProcessingBuilder,
        TimeXBiologicallyDerivedProductManipulationBuilder,
        OccurrenceXChargeItemBuilder,
        EffectiveXClinicalImpressionBuilder,
        ValueXCodeSystemPropertyBuilder,
        OccurrenceXCommunicationRequestBuilder,
        OnsetXConditionBuilder,
        AbatementXConditionBuilder,
        ValueXContractAnswerBuilder,
        OccurrenceXContractActionBuilder,
        IdentifiedXDetectedIssueBuilder,
        OccurrenceXDeviceRequestBuilder,
        TimingXDeviceUseStatementBuilder,
        EffectiveXDiagnosticReportBuilder,
        OccurrenceXImmunizationBuilder,
        CreatedXMediaBuilder,
        EffectiveXMedicationAdministrationBuilder,
        EffectiveXMedicationStatementBuilder,
        EffectiveXObservationBuilder,
        ValueXObservationBuilder,
        ValueXObservationComponentBuilder,
        ValueXParametersParameterBuilder,
        DeceasedXPatientBuilder,
        TimingXPlanDefinitionActionBuilder,
        PerformedXProcedureBuilder,
        OccurredXProvenanceBuilder,
        AnswerXQuestionnaireEnableWhenBuilder,
        ValueXQuestionnaireInitialBuilder,
        ValueXQuestionnaireResponseAnswerBuilder,
        DateXRegulatedAuthorizationCaseBuilder,
        TimingXRequestGroupActionBuilder,
        StudyEffectiveXResearchElementDefinitionCharacteristicBuilder,
        ParticipantEffectiveXResearchElementDefinitionCharacteristicBuilder,
        OccurrenceXRiskAssessmentBuilder,
        OccurrenceXServiceRequestBuilder,
        CollectedXSpecimenCollectionBuilder,
        TimeXSpecimenProcessingBuilder,
        DefaultValueXStructureMapSourceBuilder,
        OccurrenceXSupplyDeliveryBuilder,
        OccurrenceXSupplyRequestBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        ValueXValueSetParameterBuilder,
        ValueXDataRequirementDateFilterBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        MinValueXElementDefinitionBuilder,
        MaxValueXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder,
        TimingXTriggerDefinitionBuilder {
  // --------------------------------------------------------------------------
  // Private Internal Constructor
  // --------------------------------------------------------------------------

  /// Private underscore constructor delegating to [FhirDateTimeBaseBuilder].
  FhirDateTimeBuilder._({
    required super.valueString,
    required super.year,
    required super.month,
    required super.day,
    required super.hour,
    required super.minute,
    required super.second,
    required super.millisecond,
    required super.microsecond,
    required super.timeZoneOffset,
    required super.isUtc,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'DateTime',
  }) : super._();

  // --------------------------------------------------------------------------
  // Public Factories
  // --------------------------------------------------------------------------

  /// Base constructor from the parsed/assigned fields in the map.
  factory FhirDateTimeBuilder.fromBase({
    required String? valueString,
    required int? year,
    required int? month,
    required int? day,
    required int? hour,
    required int? minute,
    required int? second,
    required int? millisecond,
    required String? microsecond,
    required num? timeZoneOffset,
    required bool isUtc,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'DateTime',
  }) {
    return FhirDateTimeBuilder._(
      valueString: valueString,
      year: year,
      month: month,
      day: day,
      hour: hour,
      minute: minute,
      second: second,
      millisecond: millisecond,
      microsecond: microsecond,
      timeZoneOffset: timeZoneOffset,
      isUtc: isUtc,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Constructs a [FhirDateTimeBuilder] from individual components.
  factory FhirDateTimeBuilder.fromUnits({
    required int year,
    int? month,
    int? day,
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
    int? microsecond,
    num? timeZoneOffset,
    bool? isUtc,
    ElementBuilder? element,
  }) =>
      FhirDateTimeBaseBuilder.fromUnits<FhirDateTimeBuilder>(
        year: year,
        month: month,
        day: day,
        hour: hour,
        minute: minute,
        second: second,
        millisecond: millisecond,
        microsecond: microsecond,
        timeZoneOffset: timeZoneOffset,
        isUtc: isUtc ?? false,
        element: element,
      ) as FhirDateTimeBuilder;

  /// Constructs a [FhirDateTimeBuilder] from a raw string.
  factory FhirDateTimeBuilder.fromString(
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
      FhirDateTimeBaseBuilder.constructor<FhirDateTimeBuilder>(
        input: input,
        element: element,
        id: id,
        extension_: extension_,
        userData: userData,
        formatCommentsPre: formatCommentsPre,
        formatCommentsPost: formatCommentsPost,
        annotations: annotations,
        objectPath: objectPath,
      ) as FhirDateTimeBuilder;

  /// Constructs a [FhirDateTimeBuilder] from a Dart [DateTime].
  factory FhirDateTimeBuilder.fromDateTime(
    DateTime input, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) =>
      FhirDateTimeBaseBuilder.constructor<FhirDateTimeBuilder>(
        input: input,
        element: element,
        id: id,
        extension_: extension_,
        userData: userData,
        formatCommentsPre: formatCommentsPre,
        formatCommentsPost: formatCommentsPost,
        annotations: annotations,
      ) as FhirDateTimeBuilder;

  /// Creates an empty [FhirDateTimeBuilder].
  factory FhirDateTimeBuilder.empty() => FhirDateTimeBuilder.fromBase(
        valueString: null,
        year: null,
        month: null,
        day: null,
        hour: null,
        minute: null,
        second: null,
        millisecond: null,
        microsecond: null,
        timeZoneOffset: null,
        isUtc: false,
        element: ElementBuilder.empty(),
      );

  /// Constructs a [FhirDateTimeBuilder] from JSON.
  factory FhirDateTimeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'];
    final element = json['_value'] is Map<String, dynamic>
        ? ElementBuilder.fromJson(json['_value'] as Map<String, dynamic>)
        : null;
    final objectPath = json['objectPath'] as String?;

    if (value is String) {
      return FhirDateTimeBuilder.fromString(
        value,
        element: element,
        objectPath: objectPath,
      );
    } else if (value is DateTime) {
      return FhirDateTimeBuilder.fromDateTime(value, element: element);
    } else if (value == null) {
      return FhirDateTimeBaseBuilder.constructor<FhirDateTimeBuilder>(
        element: element,
      ) as FhirDateTimeBuilder;
    } else {
      throw const FormatException(
        'Invalid FhirDateTime JSON: must be a String or DateTime',
      );
    }
  }

  /// Constructs a [FhirDateTimeBuilder] from YAML.
  static FhirDateTimeBuilder fromYaml(dynamic yaml) => yaml is String
      ? FhirDateTimeBuilder.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        )
      : yaml is YamlMap
          ? FhirDateTimeBuilder.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            )
          : throw ArgumentError(
              'FhirDateTime cannot be constructed from provided YAML input',
            );

  /// Tries to parse [value] into a [FhirDateTimeBuilder].
  static FhirDateTimeBuilder? tryParse(dynamic value) {
    try {
      if (value is DateTime) {
        return FhirDateTimeBuilder.fromDateTime(value);
      } else if (value is String) {
        return FhirDateTimeBuilder.fromString(value);
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
  String get fhirType => 'dateTime';

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => valueString.hashCode;

  @override
  bool equalsDeep(FhirBaseBuilder? other) =>
      other is FhirDateTimeBuilder &&
      other.valueString == valueString &&
      other.element == element;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  @override
  bool equals(Object other) => isEqual(other) ?? false;

  /// Arithmetic
  ///
  /// Adds or subtracts an [ExtendedDuration] to/from this [FhirDateTimeBuilder].
  ///
  /// [ExtendedDuration] is a custom class that represents a duration of time.
  /// The `plus` and `minus` methods are used to add or subtract the duration
  /// from the [FhirDateTimeBuilder].
  ///
  /// The `operator +` and `operator -` methods are overridden to provide
  /// shorthand syntax for adding or subtracting the duration.
  ///
  /// The `plus` method returns a new [FhirDateTimeBuilder] with the
  /// duration added.
  FhirDateTimeBuilder plus(ExtendedDuration other) =>
      FhirDateTimeBaseBuilder.plus<FhirDateTimeBuilder>(this, other)
          as FhirDateTimeBuilder;

  /// The `minus` method returns a new [FhirDateTimeBuilder] with the
  /// duration subtracted.
  FhirDateTimeBuilder minus(ExtendedDuration other) =>
      FhirDateTimeBaseBuilder.minus<FhirDateTimeBuilder>(this, other)
          as FhirDateTimeBuilder;

  /// The `operator +` method returns a new [FhirDateTimeBuilder] with the
  /// duration added.
  @override
  FhirDateTimeBuilder operator +(ExtendedDuration other) =>
      FhirDateTimeBaseBuilder.plus<FhirDateTimeBuilder>(this, other)
          as FhirDateTimeBuilder;

  /// The `operator -` method returns a new [FhirDateTimeBuilder] with the
  /// duration subtracted.
  @override
  FhirDateTimeBuilder operator -(ExtendedDuration other) =>
      FhirDateTimeBaseBuilder.minus<FhirDateTimeBuilder>(this, other)
          as FhirDateTimeBuilder;

  /// The `subtract` method is an alias for the `minus` method.
  FhirDateTimeBuilder subtract(ExtendedDuration other) =>
      FhirDateTimeBaseBuilder.minus<FhirDateTimeBuilder>(this, other)
          as FhirDateTimeBuilder;

  /// Clone
  @override
  FhirDateTimeBuilder clone() => FhirDateTimeBuilder.fromJson(toJson());

  /// JSON
  @override
  Map<String, dynamic> toJson() => {
        if (valueString?.isNotEmpty ?? false) 'value': valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// Method to convert the builder object to the original Element object
  @override
  FhirDateTime build() => FhirDateTime.fromJson(toJson());

  // --------------------------------------------------------------------------
  // copyWith
  // --------------------------------------------------------------------------

  /// Creates a new [FhirDateTimeBuilder] instance with updated properties.
  @override
  FhirDateTimeBuilder copyWith({
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
    return FhirDateTimeBaseBuilder.constructor<FhirDateTimeBuilder>(
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
    ) as FhirDateTimeBuilder;
  }

  /// Shorthand to set `disallowExtensions = true`.
  FhirDateTimeBuilder noExtensions() => copyWith(disallowExtensions: true);

  /// Creates an empty property in the object.
  @override
  FhirDateTimeBuilder createProperty(String propertyName) => this;

  /// Clears specified fields in a [FhirDateTimeBuilder].
  @override
  FhirDateTimeBuilder clear({
    bool value = false,
    bool element = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirDateTimeBuilder.fromBase(
      valueString: value ? null : valueString,
      year: value ? null : year,
      month: value ? null : month,
      day: value ? null : day,
      hour: value ? null : hour,
      minute: value ? null : minute,
      second: value ? null : second,
      millisecond: value ? null : millisecond,
      microsecond: value ? null : microsecond,
      timeZoneOffset: value ? null : timeZoneOffset,
      isUtc: value ? value : isUtc,
      element: element ? null : this.element,
      extension_: extension_ ? <FhirExtensionBuilder>[] : this.extension_,
      id: id ? null : this.id,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath!,
    );
  }
}
