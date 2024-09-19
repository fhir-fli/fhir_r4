// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'observation.freezed.dart';
part 'observation.g.dart';

/// [Observation] Measurements and simple assertions made about a patient,
@freezed
class Observation extends DomainResource with _$Observation {
  /// [Observation] Measurements and simple assertions made about a patient,
  Observation._();

  /// [Observation] Measurements and simple assertions made about a patient,
  ///  device or other subject.
  ///
  /// [resourceType] This is a Observation resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [identifier] A unique identifier assigned to this observation.
  ///
  /// [basedOn] A plan, proposal or order that is fulfilled in whole or in part
  /// by this event.  For example, a MedicationRequest may require a patient to
  ///  have laboratory test performed before  it is dispensed.
  ///
  /// [partOf] A larger event of which this particular Observation is a
  ///  component or step.  For example,  an observation as part of a procedure.
  ///
  /// [status] The status of the result value.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [category] A code that classifies the general type of observation being
  ///  made.
  ///
  /// [code] Describes what was observed. Sometimes this is called the
  ///  observation "name".
  ///
  /// [subject] The patient, or group of patients, location, or device this
  /// observation is about and into whose record the observation is placed. If
  /// the actual focus of the observation is different from the subject (or a
  /// sample of, part, or region of the subject), the `focus` element or the
  ///  `code` itself specifies the actual focus of the observation.
  ///
  /// [focus] The actual focus of an observation when it is not the patient of
  /// record representing something or someone associated with the patient such
  /// as a spouse, parent, fetus, or donor. For example, fetus observations in a
  /// mother's record.  The focus of an observation could also be an existing
  /// condition,  an intervention, the subject's diet,  another observation of
  /// the subject,  or a body structure such as tumor or implanted device.   An
  /// example use case would be using the Observation resource to capture
  /// whether the mother is trained to change her child's tracheostomy tube. In
  /// this example, the child is the patient of record and the mother is the
  ///  focus.
  ///
  /// [encounter] The healthcare event  (e.g. a patient and healthcare provider
  ///  interaction) during which this observation is made.
  ///
  /// [effectiveDateTime] The time or time-period the observed value is
  /// asserted as being true. For biological subjects - e.g. human patients -
  /// this is usually called the "physiologically relevant time". This is
  /// usually either the time of the procedure or of specimen collection, but
  /// very often the source of the date/time is not known, only the date/time
  ///  itself.
  ///
  /// [effectiveDateTimeElement] Extensions for effectiveDateTime
  ///
  /// [effectivePeriod] The time or time-period the observed value is asserted
  /// as being true. For biological subjects - e.g. human patients - this is
  /// usually called the "physiologically relevant time". This is usually either
  /// the time of the procedure or of specimen collection, but very often the
  ///  source of the date/time is not known, only the date/time itself.
  ///
  /// [effectiveTiming] The time or time-period the observed value is asserted
  /// as being true. For biological subjects - e.g. human patients - this is
  /// usually called the "physiologically relevant time". This is usually either
  /// the time of the procedure or of specimen collection, but very often the
  ///  source of the date/time is not known, only the date/time itself.
  ///
  /// [effectiveInstant] The time or time-period the observed value is asserted
  /// as being true. For biological subjects - e.g. human patients - this is
  /// usually called the "physiologically relevant time". This is usually either
  /// the time of the procedure or of specimen collection, but very often the
  ///  source of the date/time is not known, only the date/time itself.
  ///
  /// [effectiveInstantElement] Extensions for effectiveInstant
  ///
  /// [issued] The date and time this version of the observation was made
  /// available to providers, typically after the results have been reviewed and
  ///  verified.
  ///
  /// [issuedElement] Extensions for issued
  ///
  /// [performer] Who was responsible for asserting the observed value as
  ///  "true".
  ///
  /// [valueQuantity] The information determined as a result of making the
  ///  observation, if the information has a simple value.
  ///
  /// [valueCodeableConcept] The information determined as a result of making
  ///  the observation, if the information has a simple value.
  ///
  /// [valueString] The information determined as a result of making the
  ///  observation, if the information has a simple value.
  ///
  /// [valueStringElement] Extensions for valueString
  ///
  /// [valueBoolean] The information determined as a result of making the
  ///  observation, if the information has a simple value.
  ///
  /// [valueBooleanElement] Extensions for valueBoolean
  ///
  /// [valueInteger] The information determined as a result of making the
  ///  observation, if the information has a simple value.
  ///
  /// [valueIntegerElement] Extensions for valueInteger
  ///
  /// [valueRange] The information determined as a result of making the
  ///  observation, if the information has a simple value.
  ///
  /// [valueRatio] The information determined as a result of making the
  ///  observation, if the information has a simple value.
  ///
  /// [valueSampledData] The information determined as a result of making the
  ///  observation, if the information has a simple value.
  ///
  /// [valueTime] The information determined as a result of making the
  ///  observation, if the information has a simple value.
  ///
  /// [valueTimeElement] Extensions for valueTime
  ///
  /// [valueDateTime] The information determined as a result of making the
  ///  observation, if the information has a simple value.
  ///
  /// [valueDateTimeElement] Extensions for valueDateTime
  ///
  /// [valuePeriod] The information determined as a result of making the
  ///  observation, if the information has a simple value.
  ///
  /// [dataAbsentReason] Provides a reason why the expected value in the
  ///  element Observation.value[x] is missing.
  ///
  /// [interpretation] A categorical assessment of an observation value.  For
  ///  example, high, low, normal.
  ///
  /// [note] Comments about the observation or the results.
  ///
  /// [bodySite] Indicates the site on the subject's body where the observation
  ///  was made (i.e. the target site).
  ///
  /// [method] Indicates the mechanism used to perform the observation.
  ///
  /// [specimen] The specimen that was used when this observation was made.
  ///
  /// [device] The device used to generate the observation data.
  ///
  /// [referenceRange] Guidance on how to interpret the value by comparison to
  /// a normal or recommended range.  Multiple reference ranges are interpreted
  /// as an "OR".   In other words, to represent two distinct target
  ///  populations, two `referenceRange` elements would be used.
  ///
  /// [hasMember] This observation is a group observation (e.g. a battery, a
  /// panel of tests, a set of vital sign measurements) that includes the target
  ///  as a member of the group.
  ///
  /// [derivedFrom] The target resource that represents a measurement from
  /// which this observation value is derived. For example, a calculated anion
  ///  gap or a fetal measurement based on an ultrasound image.
  ///
  /// [component] Some observations have multiple component observations.
  /// These component observations are expressed as separate code value pairs
  /// that share the same attributes.  Examples include systolic and diastolic
  /// component observations for blood pressure measurement and multiple
  ///  component observations for genetics observations.
  factory Observation({
    @Default(R4ResourceType.Observation)
    @JsonKey(unknownEnumValue: R4ResourceType.Observation)

    /// [resourceType] This is a Observation resource
    R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource.
    ///  Once assigned, this value never changes.
    String? id,

    /// [meta] The metadata about the resource. This is content that is
    /// maintained by the infrastructure. Changes to the content might not always
    ///  be associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the
    /// resource was constructed, and which must be understood when processing the
    /// content. Often, this is a reference to an implementation guide that
    ///  defines the special rules along with other profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] Extensions for implicitRules
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] Extensions for language
    @JsonKey(name: '_language') PrimitiveElement? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource
    /// and can be used to represent the content of the resource to a human. The
    /// narrative need not encode all the structured data, but is required to
    /// contain sufficient detail to make it "clinically safe" for a human to just
    /// read the narrative. Resource definitions may define what content should be
    ///  represented in the narrative to ensure clinical safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart
    /// from the resource that contains them - they cannot be identified
    /// independently, and nor can they have their own independent transaction
    ///  scope.
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the resource. To make the use of
    /// extensions safe and manageable, there is a strict set of governance
    /// applied to the definition and use of extensions. Though any implementer
    /// can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the resource and that modifies the
    /// understanding of the element that contains it and/or the understanding of
    /// the containing element's descendants. Usually modifier elements provide
    /// negation or qualification. To make the use of extensions safe and
    /// manageable, there is a strict set of governance applied to the definition
    /// and use of extensions. Though any implementer is allowed to define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [identifier] A unique identifier assigned to this observation.
    List<Identifier>? identifier,

    /// [basedOn] A plan, proposal or order that is fulfilled in whole or in part
    /// by this event.  For example, a MedicationRequest may require a patient to
    ///  have laboratory test performed before  it is dispensed.
    List<Reference>? basedOn,

    /// [partOf] A larger event of which this particular Observation is a
    ///  component or step.  For example,  an observation as part of a procedure.
    List<Reference>? partOf,

    /// [status] The status of the result value.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [category] A code that classifies the general type of observation being
    ///  made.
    List<CodeableConcept>? category,

    /// [code] Describes what was observed. Sometimes this is called the
    ///  observation "name".
    required CodeableConcept code,

    /// [subject] The patient, or group of patients, location, or device this
    /// observation is about and into whose record the observation is placed. If
    /// the actual focus of the observation is different from the subject (or a
    /// sample of, part, or region of the subject), the `focus` element or the
    ///  `code` itself specifies the actual focus of the observation.
    Reference? subject,

    /// [focus] The actual focus of an observation when it is not the patient of
    /// record representing something or someone associated with the patient such
    /// as a spouse, parent, fetus, or donor. For example, fetus observations in a
    /// mother's record.  The focus of an observation could also be an existing
    /// condition,  an intervention, the subject's diet,  another observation of
    /// the subject,  or a body structure such as tumor or implanted device.   An
    /// example use case would be using the Observation resource to capture
    /// whether the mother is trained to change her child's tracheostomy tube. In
    /// this example, the child is the patient of record and the mother is the
    ///  focus.
    List<Reference>? focus,

    /// [encounter] The healthcare event  (e.g. a patient and healthcare provider
    ///  interaction) during which this observation is made.
    Reference? encounter,

    /// [effectiveDateTime] The time or time-period the observed value is
    /// asserted as being true. For biological subjects - e.g. human patients -
    /// this is usually called the "physiologically relevant time". This is
    /// usually either the time of the procedure or of specimen collection, but
    /// very often the source of the date/time is not known, only the date/time
    ///  itself.
    FhirDateTime? effectiveDateTime,

    /// [effectiveDateTimeElement] Extensions for effectiveDateTime
    @JsonKey(name: '_effectiveDateTime')
    PrimitiveElement? effectiveDateTimeElement,

    /// [effectivePeriod] The time or time-period the observed value is asserted
    /// as being true. For biological subjects - e.g. human patients - this is
    /// usually called the "physiologically relevant time". This is usually either
    /// the time of the procedure or of specimen collection, but very often the
    ///  source of the date/time is not known, only the date/time itself.
    Period? effectivePeriod,

    /// [effectiveTiming] The time or time-period the observed value is asserted
    /// as being true. For biological subjects - e.g. human patients - this is
    /// usually called the "physiologically relevant time". This is usually either
    /// the time of the procedure or of specimen collection, but very often the
    ///  source of the date/time is not known, only the date/time itself.
    Timing? effectiveTiming,

    /// [effectiveInstant] The time or time-period the observed value is asserted
    /// as being true. For biological subjects - e.g. human patients - this is
    /// usually called the "physiologically relevant time". This is usually either
    /// the time of the procedure or of specimen collection, but very often the
    ///  source of the date/time is not known, only the date/time itself.
    FhirInstant? effectiveInstant,

    /// [effectiveInstantElement] Extensions for effectiveInstant
    @JsonKey(name: '_effectiveInstant')
    PrimitiveElement? effectiveInstantElement,

    /// [issued] The date and time this version of the observation was made
    /// available to providers, typically after the results have been reviewed and
    ///  verified.
    FhirInstant? issued,

    /// [issuedElement] Extensions for issued
    @JsonKey(name: '_issued') PrimitiveElement? issuedElement,

    /// [performer] Who was responsible for asserting the observed value as
    ///  "true".
    List<Reference>? performer,

    /// [valueQuantity] The information determined as a result of making the
    ///  observation, if the information has a simple value.
    Quantity? valueQuantity,

    /// [valueCodeableConcept] The information determined as a result of making
    ///  the observation, if the information has a simple value.
    CodeableConcept? valueCodeableConcept,

    /// [valueString] The information determined as a result of making the
    ///  observation, if the information has a simple value.
    String? valueString,

    /// [valueStringElement] Extensions for valueString
    @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,

    /// [valueBoolean] The information determined as a result of making the
    ///  observation, if the information has a simple value.
    FhirBoolean? valueBoolean,

    /// [valueBooleanElement] Extensions for valueBoolean
    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,

    /// [valueInteger] The information determined as a result of making the
    ///  observation, if the information has a simple value.
    FhirInteger? valueInteger,

    /// [valueIntegerElement] Extensions for valueInteger
    @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,

    /// [valueRange] The information determined as a result of making the
    ///  observation, if the information has a simple value.
    Range? valueRange,

    /// [valueRatio] The information determined as a result of making the
    ///  observation, if the information has a simple value.
    Ratio? valueRatio,

    /// [valueSampledData] The information determined as a result of making the
    ///  observation, if the information has a simple value.
    SampledData? valueSampledData,

    /// [valueTime] The information determined as a result of making the
    ///  observation, if the information has a simple value.
    FhirTime? valueTime,

    /// [valueTimeElement] Extensions for valueTime
    @JsonKey(name: '_valueTime') PrimitiveElement? valueTimeElement,

    /// [valueDateTime] The information determined as a result of making the
    ///  observation, if the information has a simple value.
    FhirDateTime? valueDateTime,

    /// [valueDateTimeElement] Extensions for valueDateTime
    @JsonKey(name: '_valueDateTime') PrimitiveElement? valueDateTimeElement,

    /// [valuePeriod] The information determined as a result of making the
    ///  observation, if the information has a simple value.
    Period? valuePeriod,

    /// [dataAbsentReason] Provides a reason why the expected value in the
    ///  element Observation.value[x] is missing.
    CodeableConcept? dataAbsentReason,

    /// [interpretation] A categorical assessment of an observation value.  For
    ///  example, high, low, normal.
    List<CodeableConcept>? interpretation,

    /// [note] Comments about the observation or the results.
    List<Annotation>? note,

    /// [bodySite] Indicates the site on the subject's body where the observation
    ///  was made (i.e. the target site).
    CodeableConcept? bodySite,

    /// [method] Indicates the mechanism used to perform the observation.
    CodeableConcept? method,

    /// [specimen] The specimen that was used when this observation was made.
    Reference? specimen,

    /// [device] The device used to generate the observation data.
    Reference? device,

    /// [referenceRange] Guidance on how to interpret the value by comparison to
    /// a normal or recommended range.  Multiple reference ranges are interpreted
    /// as an "OR".   In other words, to represent two distinct target
    ///  populations, two `referenceRange` elements would be used.
    List<ObservationReferenceRange>? referenceRange,

    /// [hasMember] This observation is a group observation (e.g. a battery, a
    /// panel of tests, a set of vital sign measurements) that includes the target
    ///  as a member of the group.
    List<Reference>? hasMember,

    /// [derivedFrom] The target resource that represents a measurement from
    /// which this observation value is derived. For example, a calculated anion
    ///  gap or a fetal measurement based on an ultrasound image.
    List<Reference>? derivedFrom,

    /// [component] Some observations have multiple component observations.
    /// These component observations are expressed as separate code value pairs
    /// that share the same attributes.  Examples include systolic and diastolic
    /// component observations for blood pressure measurement and multiple
    ///  component observations for genetics observations.
    List<ObservationComponent>? component,
  }) = _Observation;

  @override
  String get fhirType => 'Observation';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Observation.fromYaml(dynamic yaml) => yaml is String
      ? Observation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Observation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Observation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Observation.fromJson(Map<String, dynamic> json) =>
      _$ObservationFromJson(json);

  /// Acts like a constructor, returns a [Observation], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Observation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ObservationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  Resource newId() => copyWith(id: generateNewUuidString());

  @override
  Resource newIdIfNoId() => id == null ? newId() : this;

  @override
  String get path => '$fhirType/$id';

  @override
  String get resourceTypeString => fhirType;

  @override
  Reference get thisReference =>
      Reference(reference: path, type: FhirUri(resourceTypeString));

  @override
  String toYaml() => json2yaml(toJson());

  @override
  Resource updateVersion({FhirMeta? oldMeta, bool versionIdAsTime = false}) =>
      copyWith(meta: updateFhirMetaVersion(oldMeta ?? meta, versionIdAsTime));
}

/// [ObservationReferenceRange] Measurements and simple assertions made
@freezed

/// [ObservationReferenceRange] Measurements and simple assertions made
@freezed
class ObservationReferenceRange extends BackboneElement
    with _$ObservationReferenceRange {
  /// [ObservationReferenceRange] Measurements and simple assertions made
  ObservationReferenceRange._();

  /// [ObservationReferenceRange] Measurements and simple assertions made
  ///  about a patient, device or other subject.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [low] The value of the low bound of the reference range.  The low bound
  /// of the reference range endpoint is inclusive of the value (e.g.  reference
  /// range is >=5 - <=9). If the low bound is omitted,  it is assumed to be
  ///  meaningless (e.g. reference range is <=2.3).
  ///
  /// [high] The value of the high bound of the reference range.  The high
  /// bound of the reference range endpoint is inclusive of the value (e.g.
  /// reference range is >=5 - <=9). If the high bound is omitted,  it is
  ///  assumed to be meaningless (e.g. reference range is >= 2.3).
  ///
  /// [type] Codes to indicate the what part of the targeted reference
  ///  population it applies to. For example, the normal or therapeutic range.
  ///
  /// [appliesTo] Codes to indicate the target population this reference range
  /// applies to.  For example, a reference range may be based on the normal
  /// population or a particular sex or race.  Multiple `appliesTo`  are
  /// interpreted as an "AND" of the target populations.  For example, to
  /// represent a target population of African American females, both a code of
  ///  female and a code for African American would be used.
  ///
  /// [age] The age at which this reference range is applicable. This is a
  ///  neonatal age (e.g. number of weeks at term) if the meaning says so.
  ///
  /// [text] Text based reference range in an observation which may be used
  /// when a quantitative range is not appropriate for an observation.  An
  /// example would be a reference value of "Negative" or a list or table of
  ///  "normals".
  ///
  /// [textElement] Extensions for text
  factory ObservationReferenceRange({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [low] The value of the low bound of the reference range.  The low bound
    /// of the reference range endpoint is inclusive of the value (e.g.  reference
    /// range is >=5 - <=9). If the low bound is omitted,  it is assumed to be
    ///  meaningless (e.g. reference range is <=2.3).
    Quantity? low,

    /// [high] The value of the high bound of the reference range.  The high
    /// bound of the reference range endpoint is inclusive of the value (e.g.
    /// reference range is >=5 - <=9). If the high bound is omitted,  it is
    ///  assumed to be meaningless (e.g. reference range is >= 2.3).
    Quantity? high,

    /// [type] Codes to indicate the what part of the targeted reference
    ///  population it applies to. For example, the normal or therapeutic range.
    CodeableConcept? type,

    /// [appliesTo] Codes to indicate the target population this reference range
    /// applies to.  For example, a reference range may be based on the normal
    /// population or a particular sex or race.  Multiple `appliesTo`  are
    /// interpreted as an "AND" of the target populations.  For example, to
    /// represent a target population of African American females, both a code of
    ///  female and a code for African American would be used.
    List<CodeableConcept>? appliesTo,

    /// [age] The age at which this reference range is applicable. This is a
    ///  neonatal age (e.g. number of weeks at term) if the meaning says so.
    Range? age,

    /// [text] Text based reference range in an observation which may be used
    /// when a quantitative range is not appropriate for an observation.  An
    /// example would be a reference value of "Negative" or a list or table of
    ///  "normals".
    String? text,

    /// [textElement] Extensions for text
    @JsonKey(name: '_text') PrimitiveElement? textElement,
  }) = _ObservationReferenceRange;

  @override
  String get fhirType => 'ObservationReferenceRange';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ObservationReferenceRange.fromYaml(dynamic yaml) => yaml is String
      ? ObservationReferenceRange.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ObservationReferenceRange.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ObservationReferenceRange cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ObservationReferenceRange.fromJson(Map<String, dynamic> json) =>
      _$ObservationReferenceRangeFromJson(json);

  /// Acts like a constructor, returns a [ObservationReferenceRange], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ObservationReferenceRange.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ObservationReferenceRangeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [ObservationComponent] Measurements and simple assertions made about a
@freezed

/// [ObservationComponent] Measurements and simple assertions made about a
@freezed
class ObservationComponent extends BackboneElement with _$ObservationComponent {
  /// [ObservationComponent] Measurements and simple assertions made about a
  ObservationComponent._();

  /// [ObservationComponent] Measurements and simple assertions made about a
  ///  patient, device or other subject.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [code] Describes what was observed. Sometimes this is called the
  ///  observation "code".
  ///
  /// [valueQuantity] The information determined as a result of making the
  ///  observation, if the information has a simple value.
  ///
  /// [valueCodeableConcept] The information determined as a result of making
  ///  the observation, if the information has a simple value.
  ///
  /// [valueString] The information determined as a result of making the
  ///  observation, if the information has a simple value.
  ///
  /// [valueStringElement] Extensions for valueString
  ///
  /// [valueBoolean] The information determined as a result of making the
  ///  observation, if the information has a simple value.
  ///
  /// [valueBooleanElement] Extensions for valueBoolean
  ///
  /// [valueInteger] The information determined as a result of making the
  ///  observation, if the information has a simple value.
  ///
  /// [valueIntegerElement] Extensions for valueInteger
  ///
  /// [valueRange] The information determined as a result of making the
  ///  observation, if the information has a simple value.
  ///
  /// [valueRatio] The information determined as a result of making the
  ///  observation, if the information has a simple value.
  ///
  /// [valueSampledData] The information determined as a result of making the
  ///  observation, if the information has a simple value.
  ///
  /// [valueTime] The information determined as a result of making the
  ///  observation, if the information has a simple value.
  ///
  /// [valueTimeElement] Extensions for valueTime
  ///
  /// [valueDateTime] The information determined as a result of making the
  ///  observation, if the information has a simple value.
  ///
  /// [valueDateTimeElement] Extensions for valueDateTime
  ///
  /// [valuePeriod] The information determined as a result of making the
  ///  observation, if the information has a simple value.
  ///
  /// [dataAbsentReason] Provides a reason why the expected value in the
  ///  element Observation.component.value[x] is missing.
  ///
  /// [interpretation] A categorical assessment of an observation value.  For
  ///  example, high, low, normal.
  ///
  /// [referenceRange] Guidance on how to interpret the value by comparison to
  ///  a normal or recommended range.
  factory ObservationComponent({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [code] Describes what was observed. Sometimes this is called the
    ///  observation "code".
    required CodeableConcept code,

    /// [valueQuantity] The information determined as a result of making the
    ///  observation, if the information has a simple value.
    Quantity? valueQuantity,

    /// [valueCodeableConcept] The information determined as a result of making
    ///  the observation, if the information has a simple value.
    CodeableConcept? valueCodeableConcept,

    /// [valueString] The information determined as a result of making the
    ///  observation, if the information has a simple value.
    String? valueString,

    /// [valueStringElement] Extensions for valueString
    @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,

    /// [valueBoolean] The information determined as a result of making the
    ///  observation, if the information has a simple value.
    FhirBoolean? valueBoolean,

    /// [valueBooleanElement] Extensions for valueBoolean
    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,

    /// [valueInteger] The information determined as a result of making the
    ///  observation, if the information has a simple value.
    FhirInteger? valueInteger,

    /// [valueIntegerElement] Extensions for valueInteger
    @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,

    /// [valueRange] The information determined as a result of making the
    ///  observation, if the information has a simple value.
    Range? valueRange,

    /// [valueRatio] The information determined as a result of making the
    ///  observation, if the information has a simple value.
    Ratio? valueRatio,

    /// [valueSampledData] The information determined as a result of making the
    ///  observation, if the information has a simple value.
    SampledData? valueSampledData,

    /// [valueTime] The information determined as a result of making the
    ///  observation, if the information has a simple value.
    FhirTime? valueTime,

    /// [valueTimeElement] Extensions for valueTime
    @JsonKey(name: '_valueTime') PrimitiveElement? valueTimeElement,

    /// [valueDateTime] The information determined as a result of making the
    ///  observation, if the information has a simple value.
    FhirDateTime? valueDateTime,

    /// [valueDateTimeElement] Extensions for valueDateTime
    @JsonKey(name: '_valueDateTime') PrimitiveElement? valueDateTimeElement,

    /// [valuePeriod] The information determined as a result of making the
    ///  observation, if the information has a simple value.
    Period? valuePeriod,

    /// [dataAbsentReason] Provides a reason why the expected value in the
    ///  element Observation.component.value[x] is missing.
    CodeableConcept? dataAbsentReason,

    /// [interpretation] A categorical assessment of an observation value.  For
    ///  example, high, low, normal.
    List<CodeableConcept>? interpretation,

    /// [referenceRange] Guidance on how to interpret the value by comparison to
    ///  a normal or recommended range.
    List<ObservationReferenceRange>? referenceRange,
  }) = _ObservationComponent;

  @override
  String get fhirType => 'ObservationComponent';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ObservationComponent.fromYaml(dynamic yaml) => yaml is String
      ? ObservationComponent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ObservationComponent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ObservationComponent cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ObservationComponent.fromJson(Map<String, dynamic> json) =>
      _$ObservationComponentFromJson(json);

  /// Acts like a constructor, returns a [ObservationComponent], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ObservationComponent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ObservationComponentFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
