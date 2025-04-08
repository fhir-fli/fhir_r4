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
  const FhirDateTime._({
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
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
      userData: userData,
      formatCommentsPre: formatCommentsPre,
      formatCommentsPost: formatCommentsPost,
      annotations: annotations,
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
  FhirDateTime clone() => copyWith();

  /// JSON
  @override
  Map<String, dynamic> toJson() => {
        if (valueString?.isNotEmpty ?? false) 'value': valueString,
        if (element != null) '_value': element!.toJson(),
      };

  // --------------------------------------------------------------------------
  // copyWith
  // --------------------------------------------------------------------------

  FhirDateTime _copyWith({
    required FhirDateTime Function(FhirDateTime) then,
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
    Object? userData = fhirSentinel,
    Object? formatCommentsPre = fhirSentinel,
    Object? formatCommentsPost = fhirSentinel,
    Object? annotations = fhirSentinel,
    Object? objectPath = fhirSentinel,
  }) {
    return then(
      FhirDateTimeBase.constructor<FhirDateTime>(
        input: identical(newValue, fhirSentinel) ? valueString : newValue,
        element: identical(element, fhirSentinel)
            ? this.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? this.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? this.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? this.disallowExtensions
            : disallowExtensions as bool?,
        userData: identical(userData, fhirSentinel)
            ? this.userData
            : userData as Map<String, dynamic>?,
        formatCommentsPre: identical(formatCommentsPre, fhirSentinel)
            ? this.formatCommentsPre
            : formatCommentsPre as List<String>?,
        formatCommentsPost: identical(formatCommentsPost, fhirSentinel)
            ? this.formatCommentsPost
            : formatCommentsPost as List<String>?,
        annotations: identical(annotations, fhirSentinel)
            ? this.annotations
            : annotations as List<dynamic>?,
        objectPath: identical(objectPath, fhirSentinel)
            ? this.objectPath ?? 'DateTime'
            : objectPath as String? ?? 'DateTime',
      ) as FhirDateTime,
    );
  }

  /// Creates a new instance with the specified fields replaced.
  @override
  FhirDateTime copyWith({
    dynamic newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return _copyWith(
      then: (value) => value,
      newValue: newValue,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      userData: userData,
      formatCommentsPre: formatCommentsPre,
      formatCommentsPost: formatCommentsPost,
      annotations: annotations,
      objectPath: objectPath,
    );
  }

  /// Shorthand to set `disallowExtensions = true`.
  FhirDateTime noExtensions() => copyWith(disallowExtensions: true);
}
