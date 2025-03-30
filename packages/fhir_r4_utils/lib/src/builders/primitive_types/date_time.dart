part of 'primitive_types.dart';

/// Extension on [DateTime] to convert it to a [FhirDateTimeBuilder].
extension FhirDateTimeBuilderExtension on DateTime {
  /// Converts a [DateTime] to a [FhirDateTimeBuilder].
  FhirDateTimeBuilder get toFhirDateTimeBuilder =>
      FhirDateTimeBuilder.fromDateTime(this);
}

/// Extension on [String] to convert it to a [FhirDateTimeBuilder].
extension FhirDateTimeBuilderStringExtension on String {
  /// Converts a [String] to a [FhirDateTimeBuilder].
  FhirDateTimeBuilder get toFhirDateTimeBuilder =>
      FhirDateTimeBuilder.fromString(this);
}

/// [FhirDateTimeBuilder] represents FHIR-compliant date and time, extending
/// [FhirDateTimeBaseBuilder].
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
  /// Private underscore constructor.
  /// Notice it calls `super._internal(...)` with the final fields.
  /// We do NO extra runtime logic here—just assignment.
  FhirDateTimeBuilder._({
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
  factory FhirDateTimeBuilder.fromBase({
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
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String? objectPath = 'DateTime',
  }) {
    // If you need any specialized logic, do it here.
    // Otherwise, just pass everything to the private constructor:
    return FhirDateTimeBuilder._(
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

  /// Factory constructor to create a [FhirDateTimeBuilder]
  /// from individual units.
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

  /// Factory constructor to create a [FhirDateTimeBuilder] from a [String].
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

  /// Factory constructor to create a [FhirDateTimeBuilder] from a [DateTime].
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

  /// Creates empty [FhirDateTimeBuilder] object
  factory FhirDateTimeBuilder.empty() => FhirDateTimeBuilder.fromBase(
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
        element: ElementBuilder.empty(),
      );

  /// Factory constructor to create a [FhirDateTimeBuilder] from JSON input.
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
        'Invalid input for FhirDateTimeBuilder: '
        'Input must be a String or DateTime',
      );
    }
  }

  /// Factory constructor to create [FhirDateTimeBuilder] from YAML.
  static FhirDateTimeBuilder fromYaml(dynamic yaml) => yaml is String
      ? FhirDateTimeBuilder.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        )
      : yaml is YamlMap
          ? FhirDateTimeBuilder.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            )
          : throw ArgumentError(
              'FhirDateTimeBuilder cannot be constructed from the provided '
              'input, it must be a YAML string or map.');

  /// Attempts to parse a value as [FhirDateTimeBuilder],
  /// returns `null` if parsing fails.
  static FhirDateTimeBuilder? tryParse(dynamic value) {
    try {
      if (value is DateTime) {
        return FhirDateTimeBuilder.fromDateTime(value);
      } else if (value is String) {
        return FhirDateTimeBuilder.fromString(value);
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
  bool equalsDeep(FhirBaseBuilder? other) =>
      other is FhirDateTimeBuilder &&
      other.value == value &&
      other.element == element;

  /// Overrides the equality operator to compare two
  /// [FhirDateTimeBuilder] objects.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  /// Checks for equality between this object and another [FhirDateTimeBuilder].
  @override
  bool equals(Object other) => isEqual(other) ?? false;

  /// Adds a duration ([ExtendedDuration]) to the current [FhirDateTimeBuilder].
  FhirDateTimeBuilder plus(ExtendedDuration other) =>
      FhirDateTimeBaseBuilder.plus<FhirDateTimeBuilder>(this, other)
          as FhirDateTimeBuilder;

  /// Subtracts a duration ([ExtendedDuration])
  /// from the current [FhirDateTimeBuilder].
  FhirDateTimeBuilder subtract(ExtendedDuration other) =>
      FhirDateTimeBaseBuilder.minus<FhirDateTimeBuilder>(this, other)
          as FhirDateTimeBuilder;

  /// Subtracts a duration ([ExtendedDuration])
  /// from the current [FhirDateTimeBuilder].
  FhirDateTimeBuilder minus(ExtendedDuration other) =>
      FhirDateTimeBaseBuilder.minus<FhirDateTimeBuilder>(this, other)
          as FhirDateTimeBuilder;

  /// Adds an [ExtendedDuration] to the current
  /// [FhirDateTimeBuilder] using the `+` operator.
  @override
  FhirDateTimeBuilder operator +(ExtendedDuration other) =>
      FhirDateTimeBaseBuilder.plus<FhirDateTimeBuilder>(this, other)
          as FhirDateTimeBuilder;

  /// Subtracts an [ExtendedDuration] from the current [FhirDateTimeBuilder]
  /// using the `-` operator.
  @override
  FhirDateTimeBuilder operator -(ExtendedDuration other) =>
      FhirDateTimeBaseBuilder.minus<FhirDateTimeBuilder>(this, other)
          as FhirDateTimeBuilder;

  /// Clones the current [FhirDateTimeBuilder] and returns a new instance.
  @override
  FhirDateTimeBuilder clone() => FhirDateTimeBuilder.fromJson(toJson());

  /// Converts this instance to a [FhirDateTime] object
  @override
  FhirDateTime build() => FhirDateTime.fromJson(toJson());

  @override
  Map<String, dynamic> toJson() => {
        if (valueString.isNotEmpty) 'value': valueString,
        if (element != null) '_value': element?.toJson(),
      };

  /// Copies the current [FhirDateTimeBuilder],
  /// allowing for changes to its properties.
  ///
  /// Supports changing the [value] and associated [element], as well as other
  /// optional metadata.
  /// Creates a modified copy with updated properties.
  @override
  FhirDateTimeBuilder copyWith({
    String? newValue,
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
    ) as FhirDateTimeBuilder;
  }

  /// Returns a new [FhirDateTimeBuilder] with extensions disallowed.
  FhirDateTimeBuilder noExtensions() => copyWith(disallowExtensions: true);

  /// Creates an empty property in the object
  @override
  FhirDateTimeBuilder createProperty(String propertyName) => this;

  /// Clears the specified fields in a [FhirDateTimeBuilder] object
  @override
  FhirDateTimeBuilder clear({
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirDateTimeBuilder.fromString(
      valueString,
      element: element,
      extension_: extension_ ? <FhirExtensionBuilder>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
