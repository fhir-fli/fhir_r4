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

/// [FhirDateTime] represents FHIR-compliant date and time, extending
/// [FhirDateTimeBase].
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
  /// Private underscore constructor.
  /// Notice it calls `super._internal(...)` with the final fields.
  /// We do NO extra runtime logic here—just assignment.
  FhirDateTime._({
    required super.validatedValue,
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

  /// Public **factory** that replaces your old `fromBase` constructor logic.
  /// We parse or assign the provided fields, then call the private underscore.
  factory FhirDateTime.fromBase({
    required String? value,
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
    // If you need any specialized logic, do it here.
    // Otherwise, just pass everything to the private constructor:
    return FhirDateTime._(
      validatedValue: value,
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

  /// Factory constructor to create a [FhirDateTime] from individual units.
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

  /// Factory constructor to create a [FhirDateTime] from a [String].
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

  /// Factory constructor to create a [FhirDateTime] from a [DateTime].
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

  /// Creates empty [FhirDateTime] object
  factory FhirDateTime.empty() => FhirDateTime.fromBase(
        value: null,
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

  /// Factory constructor to create a [FhirDateTime] from JSON input.
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
        'Invalid input for FhirDateTime: Input must be a String or DateTime',
      );
    }
  }

  /// Factory constructor to create [FhirDateTime] from YAML.
  static FhirDateTime fromYaml(dynamic yaml) => yaml is String
      ? FhirDateTime.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        )
      : yaml is YamlMap
          ? FhirDateTime.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            )
          : throw ArgumentError(
              'FhirDateTime cannot be constructed from the provided input,'
              ' it must be a YAML string or map.');

  /// Attempts to parse a value as [FhirDateTime], returns `null` if parsing
  /// fails.
  static FhirDateTime? tryParse(dynamic value) {
    try {
      if (value is DateTime) {
        return FhirDateTime.fromDateTime(value);
      } else if (value is String) {
        return FhirDateTime.fromString(value);
      }
    } catch (e) {
      return null;
    }
    return null;
  }

  /// Returns the FHIR type as a [String], which is 'dateTime' in this case.
  @override
  String get fhirType => 'dateTime';

  /// Overrides the [hashCode] method to generate the hash code based on the
  /// value.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => value.hashCode;

  @override
  bool equalsDeep(FhirBase? other) =>
      other is FhirDateTime && other.value == value && other.element == element;

  /// Overrides the equality operator to compare two [FhirDateTime] objects.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  /// Checks for equality between this object and another [FhirDateTime].
  @override
  bool equals(Object other) => isEqual(other) ?? false;

  /// Adds a duration ([ExtendedDuration]) to the current [FhirDateTime].
  FhirDateTime plus(ExtendedDuration other) =>
      FhirDateTimeBase.plus<FhirDateTime>(this, other) as FhirDateTime;

  /// Subtracts a duration ([ExtendedDuration]) from the current [FhirDateTime].
  FhirDateTime subtract(ExtendedDuration other) =>
      FhirDateTimeBase.minus<FhirDateTime>(this, other) as FhirDateTime;

  /// Subtracts a duration ([ExtendedDuration]) from the current [FhirDateTime].
  FhirDateTime minus(ExtendedDuration other) =>
      FhirDateTimeBase.minus<FhirDateTime>(this, other) as FhirDateTime;

  /// Adds an [ExtendedDuration] to the current [FhirDateTime] using the `+`
  /// operator.
  @override
  FhirDateTime operator +(ExtendedDuration other) =>
      FhirDateTimeBase.plus<FhirDateTime>(this, other) as FhirDateTime;

  /// Subtracts an [ExtendedDuration] from the current [FhirDateTime] using
  /// the `-` operator.
  @override
  FhirDateTime operator -(ExtendedDuration other) =>
      FhirDateTimeBase.minus<FhirDateTime>(this, other) as FhirDateTime;

  /// Clones the current [FhirDateTime] and returns a new instance.
  @override
  FhirDateTime clone() => FhirDateTime.fromJson(toJson());

  @override
  Map<String, dynamic> toJson() => {
        if (valueString.isNotEmpty) 'value': valueString,
        if (element != null) '_value': element?.toJson(),
      };

  /// Copies the current [FhirDateTime], allowing for changes to its properties.
  ///
  /// Supports changing the [value] and associated [element], as well as other
  /// optional metadata.
  /// Creates a modified copy with updated properties.
  @override
  FhirDateTime copyWith({
    String? newValue,
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
      input: value ?? value,
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

  /// Returns a new [FhirDateTime] with extensions disallowed.
  FhirDateTime noExtensions() => copyWith(disallowExtensions: true);

  /// Creates an empty property in the object
  @override
  FhirDateTime createProperty(String propertyName) => this;

  /// Clears the specified fields in a [FhirDateTime] object
  @override
  FhirDateTime clear({
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirDateTime.fromString(
      valueString,
      element: element,
      extension_: extension_ ? <FhirExtension>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
