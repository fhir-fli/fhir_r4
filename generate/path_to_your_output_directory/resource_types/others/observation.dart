import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Observation] Measurements and simple assertions made about a patient,
/// device or other subject.

@freezed
class Observation with _$Observation {
  const Observation._();

  const factory Observation({
/// [resourceType] This is a Observation resource

    @JsonKey(name: 'resourceType') dynamic? resourceType,
/// [id] The logical id of the resource, as used in the URL for the
/// resource. Once assigned, this value never changes.

    @JsonKey(name: 'id') FhirId? id,
/// [meta] The metadata about the resource. This is content that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.

    @JsonKey(name: 'meta') FhirMeta? meta,
/// [implicitRules] A reference to a set of rules that were followed when
/// the resource was constructed, and which must be understood when processing
/// the content. Often, this is a reference to an implementation guide that
/// defines the special rules along with other profiles etc.

    @JsonKey(name: 'implicitRules') FhirUri? implicitRules,
/// [_implicitRules] Extensions for implicitRules

    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
/// [language] The base language in which the resource is written.

    @JsonKey(name: 'language') FhirCode? language,
/// [_language] Extensions for language

    @JsonKey(name: '_language') PrimitiveElement? languageElement,
/// [text] A human-readable narrative that contains a summary of the
/// resource and can be used to represent the content of the resource to a
/// human. The narrative need not encode all the structured data, but is
/// required to contain sufficient detail to make it "clinically safe" for a
/// human to just read the narrative. Resource definitions may define what
/// content should be represented in the narrative to ensure clinical safety.

    @JsonKey(name: 'text') Narrative? text,
/// [contained] These resources do not have an independent existence apart
/// from the resource that contains them - they cannot be identified
/// independently, nor can they have their own independent transaction scope.
/// This is allowed to be a Parameters resource if and only if it is referenced
/// by a resource that provides context/meaning.

    @JsonKey(name: 'contained') List<List<ResourceList>>? contained,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the resource. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the resource and that modifies
/// the understanding of the element that contains it and/or the understanding
/// of the containing element's descendants. Usually modifier elements provide
/// negation or qualification. To make the use of extensions safe and
/// managable, there is a strict set of governance applied to the definition
/// and use of extensions. Though any implementer is allowed to define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [identifier] A unique identifier assigned to this observation.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [instantiatesCanonical] The reference to a FHIR ObservationDefinition
/// resource that provides the definition that is adhered to in whole or in
/// part by this Observation instance.

    @JsonKey(name: 'instantiatesCanonical') FhirCanonical? instantiatesCanonical,
/// [_instantiatesCanonical] Extensions for instantiatesCanonical

    @JsonKey(name: '_instantiatesCanonical') PrimitiveElement? instantiatesCanonicalElement,
/// [instantiatesReference] The reference to a FHIR ObservationDefinition
/// resource that provides the definition that is adhered to in whole or in
/// part by this Observation instance.

    @JsonKey(name: 'instantiatesReference') Reference? instantiatesReference,
/// [basedOn] A plan, proposal or order that is fulfilled in whole or in
/// part by this event.  For example, a MedicationRequest may require a patient
/// to have laboratory test performed before  it is dispensed.

    @JsonKey(name: 'basedOn') List<List<Reference>>? basedOn,
/// [triggeredBy] Identifies the observation(s) that triggered the
/// performance of this observation.

    @JsonKey(name: 'triggeredBy') List<List<Observation_TriggeredBy>>? triggeredBy,
/// [partOf] A larger event of which this particular Observation is a
/// component or step.  For example,  an observation as part of a procedure.

    @JsonKey(name: 'partOf') List<List<Reference>>? partOf,
/// [status] The status of the result value.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [category] A code that classifies the general type of observation being
/// made.

    @JsonKey(name: 'category') List<List<CodeableConcept>>? category,
/// [code] Describes what was observed. Sometimes this is called the
/// observation "name".

    @JsonKey(name: 'code') CodeableConcept? code,
/// [subject] The patient, or group of patients, location, device,
/// organization, procedure or practitioner this observation is about and into
/// whose or what record the observation is placed. If the actual focus of the
/// observation is different from the subject (or a sample of, part, or region
/// of the subject), the `focus` element or the `code` itself specifies the
/// actual focus of the observation.

    @JsonKey(name: 'subject') Reference? subject,
/// [focus] The actual focus of an observation when it is not the patient
/// of record representing something or someone associated with the patient
/// such as a spouse, parent, fetus, or donor. For example, fetus observations
/// in a mother's record.  The focus of an observation could also be an
/// existing condition,  an intervention, the subject's diet,  another
/// observation of the subject,  or a body structure such as tumor or implanted
/// device.   An example use case would be using the Observation resource to
/// capture whether the mother is trained to change her child's tracheostomy
/// tube. In this example, the child is the patient of record and the mother is
/// the focus.

    @JsonKey(name: 'focus') List<List<Reference>>? focus,
/// [encounter] The healthcare event  (e.g. a patient and healthcare
/// provider interaction) during which this observation is made.

    @JsonKey(name: 'encounter') Reference? encounter,
/// [effectiveDateTime] The time or time-period the observed value is
/// asserted as being true. For biological subjects - e.g. human patients -
/// this is usually called the "physiologically relevant time". This is usually
/// either the time of the procedure or of specimen collection, but very often
/// the source of the date/time is not known, only the date/time itself.

    @JsonKey(name: 'effectiveDateTime') FhirDateTime? effectiveDateTime,
/// [_effectiveDateTime] Extensions for effectiveDateTime

    @JsonKey(name: '_effectiveDateTime') PrimitiveElement? effectiveDateTimeElement,
/// [effectivePeriod] The time or time-period the observed value is
/// asserted as being true. For biological subjects - e.g. human patients -
/// this is usually called the "physiologically relevant time". This is usually
/// either the time of the procedure or of specimen collection, but very often
/// the source of the date/time is not known, only the date/time itself.

    @JsonKey(name: 'effectivePeriod') Period? effectivePeriod,
/// [effectiveTiming] The time or time-period the observed value is
/// asserted as being true. For biological subjects - e.g. human patients -
/// this is usually called the "physiologically relevant time". This is usually
/// either the time of the procedure or of specimen collection, but very often
/// the source of the date/time is not known, only the date/time itself.

    @JsonKey(name: 'effectiveTiming') Timing? effectiveTiming,
/// [effectiveInstant] The time or time-period the observed value is
/// asserted as being true. For biological subjects - e.g. human patients -
/// this is usually called the "physiologically relevant time". This is usually
/// either the time of the procedure or of specimen collection, but very often
/// the source of the date/time is not known, only the date/time itself.

    @JsonKey(name: 'effectiveInstant') FhirInstant? effectiveInstant,
/// [_effectiveInstant] Extensions for effectiveInstant

    @JsonKey(name: '_effectiveInstant') PrimitiveElement? effectiveInstantElement,
/// [issued] The date and time this version of the observation was made
/// available to providers, typically after the results have been reviewed and
/// verified.

    @JsonKey(name: 'issued') FhirInstant? issued,
/// [_issued] Extensions for issued

    @JsonKey(name: '_issued') PrimitiveElement? issuedElement,
/// [performer] Who was responsible for asserting the observed value as
/// "true".

    @JsonKey(name: 'performer') List<List<Reference>>? performer,
/// [valueQuantity] The information determined as a result of making the
/// observation, if the information has a simple value.

    @JsonKey(name: 'valueQuantity') Quantity? valueQuantity,
/// [valueCodeableConcept] The information determined as a result of making
/// the observation, if the information has a simple value.

    @JsonKey(name: 'valueCodeableConcept') CodeableConcept? valueCodeableConcept,
/// [valueString] The information determined as a result of making the
/// observation, if the information has a simple value.

    @JsonKey(name: 'valueString') String? valueString,
/// [_valueString] Extensions for valueString

    @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,
/// [valueBoolean] The information determined as a result of making the
/// observation, if the information has a simple value.

    @JsonKey(name: 'valueBoolean') FhirBoolean? valueBoolean,
/// [_valueBoolean] Extensions for valueBoolean

    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
/// [valueInteger] The information determined as a result of making the
/// observation, if the information has a simple value.

    @JsonKey(name: 'valueInteger') FhirInteger? valueInteger,
/// [_valueInteger] Extensions for valueInteger

    @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,
/// [valueRange] The information determined as a result of making the
/// observation, if the information has a simple value.

    @JsonKey(name: 'valueRange') Range? valueRange,
/// [valueRatio] The information determined as a result of making the
/// observation, if the information has a simple value.

    @JsonKey(name: 'valueRatio') Ratio? valueRatio,
/// [valueSampledData] The information determined as a result of making the
/// observation, if the information has a simple value.

    @JsonKey(name: 'valueSampledData') SampledData? valueSampledData,
/// [valueTime] The information determined as a result of making the
/// observation, if the information has a simple value.

    @JsonKey(name: 'valueTime') FhirTime? valueTime,
/// [_valueTime] Extensions for valueTime

    @JsonKey(name: '_valueTime') PrimitiveElement? valueTimeElement,
/// [valueDateTime] The information determined as a result of making the
/// observation, if the information has a simple value.

    @JsonKey(name: 'valueDateTime') FhirDateTime? valueDateTime,
/// [_valueDateTime] Extensions for valueDateTime

    @JsonKey(name: '_valueDateTime') PrimitiveElement? valueDateTimeElement,
/// [valuePeriod] The information determined as a result of making the
/// observation, if the information has a simple value.

    @JsonKey(name: 'valuePeriod') Period? valuePeriod,
/// [valueAttachment] The information determined as a result of making the
/// observation, if the information has a simple value.

    @JsonKey(name: 'valueAttachment') Attachment? valueAttachment,
/// [valueReference] The information determined as a result of making the
/// observation, if the information has a simple value.

    @JsonKey(name: 'valueReference') Reference? valueReference,
/// [dataAbsentReason] Provides a reason why the expected value in the
/// element Observation.value[x] is missing.

    @JsonKey(name: 'dataAbsentReason') CodeableConcept? dataAbsentReason,
/// [interpretation] A categorical assessment of an observation value.  For
/// example, high, low, normal.

    @JsonKey(name: 'interpretation') List<List<CodeableConcept>>? interpretation,
/// [note] Comments about the observation or the results.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// [bodySite] Indicates the site on the subject's body where the
/// observation was made (i.e. the target site).

    @JsonKey(name: 'bodySite') CodeableConcept? bodySite,
/// [bodyStructure] Indicates the body structure on the subject's body
/// where the observation was made (i.e. the target site).

    @JsonKey(name: 'bodyStructure') Reference? bodyStructure,
/// [method] Indicates the mechanism used to perform the observation.

    @JsonKey(name: 'method') CodeableConcept? method,
/// [specimen] The specimen that was used when this observation was made.

    @JsonKey(name: 'specimen') Reference? specimen,
/// [device] A reference to the device that generates the measurements or
/// the device settings for the device.

    @JsonKey(name: 'device') Reference? device,
/// [referenceRange] Guidance on how to interpret the value by comparison
/// to a normal or recommended range.  Multiple reference ranges are
/// interpreted as an "OR".   In other words, to represent two distinct target
/// populations, two `referenceRange` elements would be used.

    @JsonKey(name: 'referenceRange') List<List<Observation_ReferenceRange>>? referenceRange,
/// [hasMember] This observation is a group observation (e.g. a battery, a
/// panel of tests, a set of vital sign measurements) that includes the target
/// as a member of the group.

    @JsonKey(name: 'hasMember') List<List<Reference>>? hasMember,
/// [derivedFrom] The target resource that represents a measurement from
/// which this observation value is derived. For example, a calculated anion
/// gap or a fetal measurement based on an ultrasound image.

    @JsonKey(name: 'derivedFrom') List<List<Reference>>? derivedFrom,
/// [component] Some observations have multiple component observations.
/// These component observations are expressed as separate code value pairs
/// that share the same attributes.  Examples include systolic and diastolic
/// component observations for blood pressure measurement and multiple
/// component observations for genetics observations.

    @JsonKey(name: 'component') List<List<Observation_Component>>? component,
  }) = _$Observation;

  @override
  String get fhirType => 'Observation';

  factory Observation.fromJson(Map<String, dynamic> json) =>
      _$ObservationFromJson(json);

  factory Observation.fromYaml(dynamic yaml) => yaml is String
      ? Observation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Observation.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Observation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Observation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ObservationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
