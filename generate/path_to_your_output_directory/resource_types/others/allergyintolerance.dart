/// /// [AllergyIntolerance] Risk of harmful or undesirable physiological
/// response which is specific to an individual and associated with exposure to
/// a substance.

@freezed
class AllergyIntolerance with _$AllergyIntolerance {
  const AllergyIntolerance._();

  const factory AllergyIntolerance({
/// /// [resourceType] This is a AllergyIntolerance resource

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
/// /// [identifier] Business identifiers assigned to this AllergyIntolerance
/// by the performer or other systems which remain constant as the resource is
/// updated and propagates from server to server.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// /// [clinicalStatus] The clinical status of the allergy or intolerance.

    @JsonKey(name: 'clinicalStatus') CodeableConcept? clinicalStatus,
/// /// [verificationStatus] Assertion about certainty associated with the
/// propensity, or potential risk, of a reaction to the identified substance
/// (including pharmaceutical product).  The verification status pertains to
/// the allergy or intolerance, itself, not to any specific AllergyIntolerance
/// attribute.

    @JsonKey(name: 'verificationStatus') CodeableConcept? verificationStatus,
/// /// [type] Identification of the underlying physiological mechanism for the
/// reaction risk.

    @JsonKey(name: 'type') CodeableConcept? type,
/// /// [category] Category of the identified substance.

    @JsonKey(name: 'category') List<List<FhirCode>>? category,
/// /// [_category] Extensions for category

    @JsonKey(name: '_category') List<FhirElement>? categoryElement,
/// /// [criticality] Estimate of the potential clinical harm, or seriousness,
/// of the reaction to the identified substance.

    @JsonKey(name: 'criticality') FhirCode? criticality,
/// /// [_criticality] Extensions for criticality

    @JsonKey(name: '_criticality') FhirElement? criticalityElement,
/// /// [code] Code for an allergy or intolerance statement (either a positive
/// or a negated/excluded statement).  This may be a code for a substance or
/// pharmaceutical product that is considered to be responsible for the adverse
/// reaction risk (e.g., "Latex"), an allergy or intolerance condition (e.g.,
/// "Latex allergy"), or a negated/excluded code for a specific substance or
/// class (e.g., "No latex allergy") or a general or categorical negated
/// statement (e.g.,  "No known allergy", "No known drug allergies").  Note:
/// the substance for a specific reaction may be different from the substance
/// identified as the cause of the risk, but it must be consistent with it. For
/// instance, it may be a more specific substance (e.g. a brand medication) or
/// a composite product that includes the identified substance. It must be
/// clinically safe to only process the 'code' and ignore the
/// 'reaction.substance'.  If a receiving system is unable to confirm that
/// AllergyIntolerance.reaction.substance falls within the semantic scope of
/// AllergyIntolerance.code, then the receiving system should ignore
/// AllergyIntolerance.reaction.substance.

    @JsonKey(name: 'code') CodeableConcept? code,
/// /// [patient] The patient who has the allergy or intolerance.

    @JsonKey(name: 'patient') Reference? patient,
/// /// [encounter] The encounter when the allergy or intolerance was asserted.

    @JsonKey(name: 'encounter') Reference? encounter,
/// /// [onsetDateTime] Estimated or actual date,  date-time, or age when
/// allergy or intolerance was identified.

    @JsonKey(name: 'onsetDateTime') FhirDateTime? onsetDateTime,
/// /// [_onsetDateTime] Extensions for onsetDateTime

    @JsonKey(name: '_onsetDateTime') FhirElement? onsetDateTimeElement,
/// /// [onsetAge] Estimated or actual date,  date-time, or age when allergy or
/// intolerance was identified.

    @JsonKey(name: 'onsetAge') Age? onsetAge,
/// /// [onsetPeriod] Estimated or actual date,  date-time, or age when allergy
/// or intolerance was identified.

    @JsonKey(name: 'onsetPeriod') Period? onsetPeriod,
/// /// [onsetRange] Estimated or actual date,  date-time, or age when allergy
/// or intolerance was identified.

    @JsonKey(name: 'onsetRange') Range? onsetRange,
/// /// [onsetString] Estimated or actual date,  date-time, or age when allergy
/// or intolerance was identified.

    @JsonKey(name: 'onsetString') String? onsetString,
/// /// [_onsetString] Extensions for onsetString

    @JsonKey(name: '_onsetString') FhirElement? onsetStringElement,
/// /// [recordedDate] The recordedDate represents when this particular
/// AllergyIntolerance record was created in the system, which is often a
/// system-generated date.

    @JsonKey(name: 'recordedDate') FhirDateTime? recordedDate,
/// /// [_recordedDate] Extensions for recordedDate

    @JsonKey(name: '_recordedDate') FhirElement? recordedDateElement,
/// /// [participant] Indicates who or what participated in the activities
/// related to the allergy or intolerance and how they were involved.

    @JsonKey(name: 'participant') List<List<AllergyIntolerance_Participant>>? participant,
/// /// [lastReactionOccurrence] Represents the date and/or time of the last
/// known occurrence of a reaction event.

    @JsonKey(name: 'lastReactionOccurrence') FhirDateTime? lastReactionOccurrence,
/// /// [_lastReactionOccurrence] Extensions for lastReactionOccurrence

    @JsonKey(name: '_lastReactionOccurrence') FhirElement? lastReactionOccurrenceElement,
/// /// [note] Additional narrative about the propensity for the Adverse
/// Reaction, not captured in other fields.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// /// [reaction] Details about each adverse reaction event linked to exposure
/// to the identified substance.

    @JsonKey(name: 'reaction') List<List<AllergyIntolerance_Reaction>>? reaction,
  }) = _$AllergyIntolerance;

  @override
  String get fhirType => 'AllergyIntolerance';

  factory AllergyIntolerance.fromJson(Map<String, dynamic> json) =>
      _$AllergyIntoleranceFromJson(json);

  factory AllergyIntolerance.fromYaml(dynamic yaml) => yaml is String
      ? AllergyIntolerance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? AllergyIntolerance.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'AllergyIntolerance cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory AllergyIntolerance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AllergyIntoleranceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
