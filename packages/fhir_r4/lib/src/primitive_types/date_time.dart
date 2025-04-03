part of 'primitive_types.dart';

/// Extension on [DateTime] to convert it to a [FhirDateTime].
extension FhirDateTimeExtension on DateTime {
  /// Converts a [DateTime] to a [FhirDateTime].
  FhirDateTime get toFhirDateTime => FhirDateTime.fromDateTime(this);
}

/// Extension on [String] to convert it to a [FhirDateTime].
extension FhirDateTimeStringExtension on String {
  /// Converts a [String] to a [FhirDateTime].
  FhirDateTime get toFhirDateTime => FhirDateTime.fromString(this);
}

/// [FhirDateTime] represents FHIR-compliant date+time,
/// subclassing [FhirDateTimeBase] for partial-precision logic.
class FhirDateTime extends FhirDateTimeBase
    implements
        TimingXActivityDefinition,
        OnsetXAllergyIntolerance,
        CollectedXBiologicallyDerivedProductCollection,
        TimeXBiologicallyDerivedProductProcessing,
        TimeXBiologicallyDerivedProductManipulation,
        OccurrenceXChargeItem,
        EffectiveXClinicalImpression,
        ValueXCodeSystemProperty,
        OccurrenceXCommunicationRequest,
        OnsetXCondition,
        AbatementXCondition,
        ValueXContractAnswer,
        OccurrenceXContractAction,
        IdentifiedXDetectedIssue,
        OccurrenceXDeviceRequest,
        TimingXDeviceUseStatement,
        EffectiveXDiagnosticReport,
        OccurrenceXImmunization,
        CreatedXMedia,
        EffectiveXMedicationAdministration,
        EffectiveXMedicationStatement,
        EffectiveXObservation,
        ValueXObservation,
        ValueXObservationComponent,
        ValueXParametersParameter,
        DeceasedXPatient,
        TimingXPlanDefinitionAction,
        PerformedXProcedure,
        OccurredXProvenance,
        AnswerXQuestionnaireEnableWhen,
        ValueXQuestionnaireInitial,
        ValueXQuestionnaireResponseAnswer,
        DateXRegulatedAuthorizationCase,
        TimingXRequestGroupAction,
        StudyEffectiveXResearchElementDefinitionCharacteristic,
        ParticipantEffectiveXResearchElementDefinitionCharacteristic,
        OccurrenceXRiskAssessment,
        OccurrenceXServiceRequest,
        CollectedXSpecimenCollection,
        TimeXSpecimenProcessing,
        DefaultValueXStructureMapSource,
        OccurrenceXSupplyDelivery,
        OccurrenceXSupplyRequest,
        ValueXTaskInput,
        ValueXTaskOutput,
        ValueXValueSetParameter,
        ValueXDataRequirementDateFilter,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        MinValueXElementDefinition,
        MaxValueXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension,
        TimingXTriggerDefinition {
  // --------------------------------------------------------------------------
  // Private Internal Constructor
  // --------------------------------------------------------------------------

  /// Private underscore constructor delegating to [FhirDateTimeBase].
  FhirDateTime._({
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
  factory FhirDateTime.fromBase({
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
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'DateTime',
  }) {
    return FhirDateTime._(
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

  /// Constructs a [FhirDateTime] from individual components.
  factory FhirDateTime.fromUnits({
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
    Element? element,
  }) =>
      FhirDateTimeBase.fromUnits<FhirDateTime>(
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
      ) as FhirDateTime;

  /// Constructs a [FhirDateTime] from a raw string.
  factory FhirDateTime.fromString(
    String input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) =>
      FhirDateTimeBase.constructor<FhirDateTime>(
        input: input,
        element: element,
        id: id,
        extension_: extension_,
        userData: userData,
        formatCommentsPre: formatCommentsPre,
        formatCommentsPost: formatCommentsPost,
        annotations: annotations,
        objectPath: objectPath,
      ) as FhirDateTime;

  /// Constructs a [FhirDateTime] from a Dart [DateTime].
  factory FhirDateTime.fromDateTime(
    DateTime input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) =>
      FhirDateTimeBase.constructor<FhirDateTime>(
        input: input,
        element: element,
        id: id,
        extension_: extension_,
        userData: userData,
        formatCommentsPre: formatCommentsPre,
        formatCommentsPost: formatCommentsPost,
        annotations: annotations,
      ) as FhirDateTime;

  /// Creates an empty [FhirDateTime].
  factory FhirDateTime.empty() => FhirDateTime.fromBase(
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
        element: Element.empty(),
      );

  /// Constructs a [FhirDateTime] from JSON.
  factory FhirDateTime.fromJson(Map<String, dynamic> json) {
    final value = json['value'];
    final element = json['_value'] is Map<String, dynamic>
        ? Element.fromJson(json['_value'] as Map<String, dynamic>)
        : null;
    final objectPath = json['objectPath'] as String?;

    if (value is String) {
      return FhirDateTime.fromString(
        value,
        element: element,
        objectPath: objectPath,
      );
    } else if (value is DateTime) {
      return FhirDateTime.fromDateTime(value, element: element);
    } else if (value == null) {
      return FhirDateTimeBase.constructor<FhirDateTime>(
        element: element,
      ) as FhirDateTime;
    } else {
      throw const FormatException(
        'Invalid FhirDateTime JSON: must be a String or DateTime',
      );
    }
  }

  /// Constructs a [FhirDateTime] from YAML.
  static FhirDateTime fromYaml(dynamic yaml) => yaml is String
      ? FhirDateTime.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        )
      : yaml is YamlMap
          ? FhirDateTime.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            )
          : throw ArgumentError(
              'FhirDateTime cannot be constructed from provided YAML input',
            );

  /// Tries to parse [value] into a [FhirDateTime].
  static FhirDateTime? tryParse(dynamic value) {
    try {
      if (value is DateTime) {
        return FhirDateTime.fromDateTime(value);
      } else if (value is String) {
        return FhirDateTime.fromString(value);
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
  bool equalsDeep(FhirBase? other) =>
      other is FhirDateTime &&
      other.valueString == valueString &&
      other.element == element;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  @override
  bool equals(Object other) => isEqual(other) ?? false;

  /// Arithmetic
  ///
  /// Adds or subtracts an [ExtendedDuration] to/from this [FhirDateTime].
  ///
  /// [ExtendedDuration] is a custom class that represents a duration of time.
  /// The `plus` and `minus` methods are used to add or subtract the duration
  /// from the [FhirDateTime].
  ///
  /// The `operator +` and `operator -` methods are overridden to provide
  /// shorthand syntax for adding or subtracting the duration.
  ///

  /// The `plus` method returns a new [FhirDateTime] with the duration added.
  FhirDateTime plus(ExtendedDuration other) =>
      FhirDateTimeBase.plus<FhirDateTime>(this, other) as FhirDateTime;

  /// The `minus` method returns a new [FhirDateTime] with the
  /// duration subtracted.
  FhirDateTime minus(ExtendedDuration other) =>
      FhirDateTimeBase.minus<FhirDateTime>(this, other) as FhirDateTime;

  /// The `operator +` method returns a new [FhirDateTime] with the
  /// duration added.
  @override
  FhirDateTime operator +(ExtendedDuration other) =>
      FhirDateTimeBase.plus<FhirDateTime>(this, other) as FhirDateTime;

  /// The `operator -` method returns a new [FhirDateTime] with the
  /// duration subtracted.
  @override
  FhirDateTime operator -(ExtendedDuration other) =>
      FhirDateTimeBase.minus<FhirDateTime>(this, other) as FhirDateTime;

  /// The `subtract` method is an alias for the `minus` method.
  FhirDateTime subtract(ExtendedDuration other) =>
      FhirDateTimeBase.minus<FhirDateTime>(this, other) as FhirDateTime;

  /// Clone
  @override
  FhirDateTime clone() => FhirDateTime.fromJson(toJson());

  /// JSON
  @override
  Map<String, dynamic> toJson() => {
        if (valueString?.isNotEmpty ?? false) 'value': valueString,
        if (element != null) '_value': element!.toJson(),
      };

  // --------------------------------------------------------------------------
  // copyWith
  // --------------------------------------------------------------------------

  /// Creates a new [FhirDateTime] instance with updated properties.
  @override
  FhirDateTime copyWith({
    dynamic newValue,
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
    return FhirDateTimeBase.constructor<FhirDateTime>(
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
    ) as FhirDateTime;
  }

  /// Shorthand to set `disallowExtensions = true`.
  FhirDateTime noExtensions() => copyWith(disallowExtensions: true);

  /// Creates an empty property in the object
  @override
  FhirDateTime createProperty(String propertyName) => this;

  /// Clears specified fields in a [FhirDateTime].
  @override
  FhirDateTime clear({
    bool value = false,
    bool element = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirDateTime.fromBase(
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
      extension_: extension_ ? <FhirExtension>[] : this.extension_,
      id: id ? null : this.id,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath!,
    );
  }
}
