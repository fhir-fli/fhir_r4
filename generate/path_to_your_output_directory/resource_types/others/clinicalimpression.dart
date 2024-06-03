/// /// [ClinicalImpression] A record of a clinical assessment performed to
/// determine what problem(s) may affect the patient and before planning the
/// treatments or management strategies that are best to manage a patient's
/// condition. Assessments are often 1:1 with a clinical consultation /
/// encounter,  but this varies greatly depending on the clinical workflow.
/// This resource is called "ClinicalImpression" rather than
/// "ClinicalAssessment" to avoid confusion with the recording of assessment
/// tools such as Apgar score.

@freezed
class ClinicalImpression with _$ClinicalImpression {
  const ClinicalImpression._();

  const factory ClinicalImpression({
/// /// [resourceType] This is a ClinicalImpression resource

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
/// /// [identifier] Business identifiers assigned to this clinical impression
/// by the performer or other systems which remain constant as the resource is
/// updated and propagates from server to server.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// /// [status] Identifies the workflow status of the assessment.

    @JsonKey(name: 'status') FhirCode? status,
/// /// [_status] Extensions for status

    @JsonKey(name: '_status') FhirElement? statusElement,
/// /// [statusReason] Captures the reason for the current state of the
/// ClinicalImpression.

    @JsonKey(name: 'statusReason') CodeableConcept? statusReason,
/// /// [description] A summary of the context and/or cause of the assessment -
/// why / where it was performed, and what patient events/status prompted it.

    @JsonKey(name: 'description') String? description,
/// /// [_description] Extensions for description

    @JsonKey(name: '_description') FhirElement? descriptionElement,
/// /// [subject] The patient or group of individuals assessed as part of this
/// record.

    @JsonKey(name: 'subject') Reference? subject,
/// /// [encounter] The Encounter during which this ClinicalImpression was
/// created or to which the creation of this record is tightly associated.

    @JsonKey(name: 'encounter') Reference? encounter,
/// /// [effectiveDateTime] The point in time or period over which the subject
/// was assessed.

    @JsonKey(name: 'effectiveDateTime') FhirDateTime? effectiveDateTime,
/// /// [_effectiveDateTime] Extensions for effectiveDateTime

    @JsonKey(name: '_effectiveDateTime') FhirElement? effectiveDateTimeElement,
/// /// [effectivePeriod] The point in time or period over which the subject
/// was assessed.

    @JsonKey(name: 'effectivePeriod') Period? effectivePeriod,
/// /// [date] Indicates when the documentation of the assessment was complete.

    @JsonKey(name: 'date') FhirDateTime? date,
/// /// [_date] Extensions for date

    @JsonKey(name: '_date') FhirElement? dateElement,
/// /// [performer] The clinician performing the assessment.

    @JsonKey(name: 'performer') Reference? performer,
/// /// [previous] A reference to the last assessment that was conducted on
/// this patient. Assessments are often/usually ongoing in nature; a care
/// provider (practitioner or team) will make new assessments on an ongoing
/// basis as new data arises or the patient's conditions changes.

    @JsonKey(name: 'previous') Reference? previous,
/// /// [problem] A list of the relevant problems/conditions for a patient.

    @JsonKey(name: 'problem') List<List<Reference>>? problem,
/// /// [changePattern] Change in the status/pattern of a subject's condition
/// since previously assessed, such as worsening, improving, or no change.  It
/// is a subjective assessment of the direction of the change.

    @JsonKey(name: 'changePattern') CodeableConcept? changePattern,
/// /// [protocol] Reference to a specific published clinical protocol that was
/// followed during this assessment, and/or that provides evidence in support
/// of the diagnosis.

    @JsonKey(name: 'protocol') List<List<FhirUri>>? protocol,
/// /// [_protocol] Extensions for protocol

    @JsonKey(name: '_protocol') List<FhirElement>? protocolElement,
/// /// [summary] A text summary of the investigations and the diagnosis.

    @JsonKey(name: 'summary') FhirMarkdown? summary,
/// /// [_summary] Extensions for summary

    @JsonKey(name: '_summary') FhirElement? summaryElement,
/// /// [finding] Specific findings or diagnoses that were considered likely or
/// relevant to ongoing treatment.

    @JsonKey(name: 'finding') List<List<ClinicalImpression_Finding>>? finding,
/// /// [prognosisCodeableConcept] Estimate of likely outcome.

    @JsonKey(name: 'prognosisCodeableConcept') List<List<CodeableConcept>>? prognosisCodeableConcept,
/// /// [prognosisReference] RiskAssessment expressing likely outcome.

    @JsonKey(name: 'prognosisReference') List<List<Reference>>? prognosisReference,
/// /// [supportingInfo] Information supporting the clinical impression, which
/// can contain investigation results.

    @JsonKey(name: 'supportingInfo') List<List<Reference>>? supportingInfo,
/// /// [note] Commentary about the impression, typically recorded after the
/// impression itself was made, though supplemental notes by the original
/// author could also appear.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
  }) = _$ClinicalImpression;

  @override
  String get fhirType => 'ClinicalImpression';

  factory ClinicalImpression.fromJson(Map<String, dynamic> json) =>
      _$ClinicalImpressionFromJson(json);

  factory ClinicalImpression.fromYaml(dynamic yaml) => yaml is String
      ? ClinicalImpression.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClinicalImpression.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClinicalImpression cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ClinicalImpression.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClinicalImpressionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
