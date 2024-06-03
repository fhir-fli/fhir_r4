/// /// [AdverseEvent] An event (i.e. any change to current patient status)
/// that may be related to unintended effects on a patient or research
/// participant. The unintended effects may require additional monitoring,
/// treatment, hospitalization, or may result in death. The AdverseEvent
/// resource also extends to potential or avoided events that could have had
/// such effects. There are two major domains where the AdverseEvent resource
/// is expected to be used. One is in clinical care reported adverse events and
/// the other is in reporting adverse events in clinical  research trial
/// management. Adverse events can be reported by healthcare providers,
/// patients, caregivers or by medical products manufacturers. Given the
/// differences between these two concepts, we recommend consulting the domain
/// specific implementation guides when implementing the AdverseEvent Resource.
/// The implementation guides include specific extensions, value sets and
/// constraints.

@freezed
class AdverseEvent with _$AdverseEvent {
  const AdverseEvent._();

  const factory AdverseEvent({
/// /// [resourceType] This is a AdverseEvent resource

    @JsonKey(name: 'resourceType') dynamic? resourceType,
/// /// [id] The logical id of the resource, as used in the URL for the
/// resource. Once assigned, this value never changes.

    @JsonKey(name: 'id') FhirId? id,
/// /// [meta] The metadata about the resource. This is content that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.

    @JsonKey(name: 'meta') FhirMeta? meta,
/// /// [implicitRules] A reference to a set of rules that were followed when
/// the resource was constructed, and which must be understood when processing
/// the content. Often, this is a reference to an implementation guide that
/// defines the special rules along with other profiles etc.

    @JsonKey(name: 'implicitRules') FhirUri? implicitRules,
/// /// [_implicitRules] Extensions for implicitRules

    @JsonKey(name: '_implicitRules') FhirElement? implicitRulesElement,
/// /// [language] The base language in which the resource is written.

    @JsonKey(name: 'language') FhirCode? language,
/// /// [_language] Extensions for language

    @JsonKey(name: '_language') FhirElement? languageElement,
/// /// [text] A human-readable narrative that contains a summary of the
/// resource and can be used to represent the content of the resource to a
/// human. The narrative need not encode all the structured data, but is
/// required to contain sufficient detail to make it "clinically safe" for a
/// human to just read the narrative. Resource definitions may define what
/// content should be represented in the narrative to ensure clinical safety.

    @JsonKey(name: 'text') Narrative? text,
/// /// [contained] These resources do not have an independent existence apart
/// from the resource that contains them - they cannot be identified
/// independently, nor can they have their own independent transaction scope.
/// This is allowed to be a Parameters resource if and only if it is referenced
/// by a resource that provides context/meaning.

    @JsonKey(name: 'contained') List<List<ResourceList>>? contained,
/// /// [extension] May be used to represent additional information that is not
/// part of the basic definition of the resource. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// /// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the resource and that modifies
/// the understanding of the element that contains it and/or the understanding
/// of the containing element's descendants. Usually modifier elements provide
/// negation or qualification. To make the use of extensions safe and
/// managable, there is a strict set of governance applied to the definition
/// and use of extensions. Though any implementer is allowed to define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// /// [identifier] Business identifiers assigned to this adverse event by the
/// performer or other systems which remain constant as the resource is updated
/// and propagates from server to server.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// /// [status] The current state of the adverse event or potential adverse
/// event.

    @JsonKey(name: 'status') FhirCode? status,
/// /// [_status] Extensions for status

    @JsonKey(name: '_status') FhirElement? statusElement,
/// /// [actuality] Whether the event actually happened or was a near miss.
/// Note that this is independent of whether anyone was affected or harmed or
/// how severely.

    @JsonKey(name: 'actuality') FhirCode? actuality,
/// /// [_actuality] Extensions for actuality

    @JsonKey(name: '_actuality') FhirElement? actualityElement,
/// /// [category] The overall type of event, intended for search and filtering
/// purposes.

    @JsonKey(name: 'category') List<List<CodeableConcept>>? category,
/// /// [code] Specific event that occurred or that was averted, such as
/// patient fall, wrong organ removed, or wrong blood transfused.

    @JsonKey(name: 'code') CodeableConcept? code,
/// /// [subject] This subject or group impacted by the event.

    @JsonKey(name: 'subject') Reference? subject,
/// /// [encounter] The Encounter associated with the start of the
/// AdverseEvent.

    @JsonKey(name: 'encounter') Reference? encounter,
/// /// [causeDateTime] The date (and perhaps time) when the cause of the
/// AdverseEvent occurred.

    @JsonKey(name: 'causeDateTime') FhirDateTime? causeDateTime,
/// /// [_causeDateTime] Extensions for causeDateTime

    @JsonKey(name: '_causeDateTime') FhirElement? causeDateTimeElement,
/// /// [causePeriod] The date (and perhaps time) when the cause of the
/// AdverseEvent occurred.

    @JsonKey(name: 'causePeriod') Period? causePeriod,
/// /// [effectDateTime] The date (and perhaps time) when the effect of the
/// AdverseEvent occurred.

    @JsonKey(name: 'effectDateTime') FhirDateTime? effectDateTime,
/// /// [_effectDateTime] Extensions for effectDateTime

    @JsonKey(name: '_effectDateTime') FhirElement? effectDateTimeElement,
/// /// [effectPeriod] The date (and perhaps time) when the effect of the
/// AdverseEvent occurred.

    @JsonKey(name: 'effectPeriod') Period? effectPeriod,
/// /// [detected] Estimated or actual date the AdverseEvent began, in the
/// opinion of the reporter.

    @JsonKey(name: 'detected') FhirDateTime? detected,
/// /// [_detected] Extensions for detected

    @JsonKey(name: '_detected') FhirElement? detectedElement,
/// /// [recordedDate] The date on which the existence of the AdverseEvent was
/// first recorded.

    @JsonKey(name: 'recordedDate') FhirDateTime? recordedDate,
/// /// [_recordedDate] Extensions for recordedDate

    @JsonKey(name: '_recordedDate') FhirElement? recordedDateElement,
/// /// [resultingEffect] Information about the condition that occurred as a
/// result of the adverse event, such as hives due to the exposure to a
/// substance (for example, a drug or a chemical) or a broken leg as a result
/// of the fall.

    @JsonKey(name: 'resultingEffect') List<List<Reference>>? resultingEffect,
/// /// [location] The information about where the adverse event occurred.

    @JsonKey(name: 'location') Reference? location,
/// /// [seriousness] Assessment whether this event, or averted event, was of
/// clinical importance.

    @JsonKey(name: 'seriousness') CodeableConcept? seriousness,
/// /// [outcome] Describes the type of outcome from the adverse event, such as
/// resolved, recovering, ongoing, resolved-with-sequelae, or fatal.

    @JsonKey(name: 'outcome') List<List<CodeableConcept>>? outcome,
/// /// [recorder] Information on who recorded the adverse event.  May be the
/// patient or a practitioner.

    @JsonKey(name: 'recorder') Reference? recorder,
/// /// [participant] Indicates who or what participated in the adverse event
/// and how they were involved.

    @JsonKey(name: 'participant') List<List<AdverseEvent_Participant>>? participant,
/// /// [study] The research study that the subject is enrolled in.

    @JsonKey(name: 'study') List<List<Reference>>? study,
/// /// [expectedInResearchStudy] Considered likely or probable or anticipated
/// in the research study.  Whether the reported event matches any of the
/// outcomes for the patient that are considered by the study as known or
/// likely.

    @JsonKey(name: 'expectedInResearchStudy') FhirBoolean? expectedInResearchStudy,
/// /// [_expectedInResearchStudy] Extensions for expectedInResearchStudy

    @JsonKey(name: '_expectedInResearchStudy') FhirElement? expectedInResearchStudyElement,
/// /// [suspectEntity] Describes the entity that is suspected to have caused
/// the adverse event.

    @JsonKey(name: 'suspectEntity') List<List<AdverseEvent_SuspectEntity>>? suspectEntity,
/// /// [contributingFactor] The contributing factors suspected to have
/// increased the probability or severity of the adverse event.

    @JsonKey(name: 'contributingFactor') List<List<AdverseEvent_ContributingFactor>>? contributingFactor,
/// /// [preventiveAction] Preventive actions that contributed to avoiding the
/// adverse event.

    @JsonKey(name: 'preventiveAction') List<List<AdverseEvent_PreventiveAction>>? preventiveAction,
/// /// [mitigatingAction] The ameliorating action taken after the adverse
/// event occured in order to reduce the extent of harm.

    @JsonKey(name: 'mitigatingAction') List<List<AdverseEvent_MitigatingAction>>? mitigatingAction,
/// /// [supportingInfo] Supporting information relevant to the event.

    @JsonKey(name: 'supportingInfo') List<List<AdverseEvent_SupportingInfo>>? supportingInfo,
/// /// [note] Comments made about the adverse event by the performer, subject
/// or other participants.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
  }) = _$AdverseEvent;

  @override
  String get fhirType => 'AdverseEvent';

  factory AdverseEvent.fromJson(Map<String, dynamic> json) =>
      _$AdverseEventFromJson(json);

  factory AdverseEvent.fromYaml(dynamic yaml) => yaml is String
      ? AdverseEvent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? AdverseEvent.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'AdverseEvent cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory AdverseEvent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AdverseEventFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
