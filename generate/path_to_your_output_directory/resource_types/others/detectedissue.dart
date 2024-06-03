/// /// [DetectedIssue] Indicates an actual or potential clinical issue with or
/// between one or more active or proposed clinical actions for a patient; e.g.
/// Drug-drug interaction, Ineffective treatment frequency, Procedure-condition
/// conflict, gaps in care, etc.

@freezed
class DetectedIssue with _$DetectedIssue {
  const DetectedIssue._();

  const factory DetectedIssue({
/// /// [resourceType] This is a DetectedIssue resource

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
/// /// [identifier] Business identifier associated with the detected issue
/// record.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// /// [status] Indicates the status of the detected issue.

    @JsonKey(name: 'status') FhirCode? status,
/// /// [_status] Extensions for status

    @JsonKey(name: '_status') FhirElement? statusElement,
/// /// [category] A code that classifies the general type of detected issue.

    @JsonKey(name: 'category') List<List<CodeableConcept>>? category,
/// /// [code] Identifies the specific type of issue identified.

    @JsonKey(name: 'code') CodeableConcept? code,
/// /// [severity] Indicates the degree of importance associated with the
/// identified issue based on the potential impact on the patient.

    @JsonKey(name: 'severity') FhirCode? severity,
/// /// [_severity] Extensions for severity

    @JsonKey(name: '_severity') FhirElement? severityElement,
/// /// [subject] Indicates the subject whose record the detected issue is
/// associated with.

    @JsonKey(name: 'subject') Reference? subject,
/// /// [encounter] The encounter during which this issue was detected.

    @JsonKey(name: 'encounter') Reference? encounter,
/// /// [identifiedDateTime] The date or period when the detected issue was
/// initially identified.

    @JsonKey(name: 'identifiedDateTime') FhirDateTime? identifiedDateTime,
/// /// [_identifiedDateTime] Extensions for identifiedDateTime

    @JsonKey(name: '_identifiedDateTime') FhirElement? identifiedDateTimeElement,
/// /// [identifiedPeriod] The date or period when the detected issue was
/// initially identified.

    @JsonKey(name: 'identifiedPeriod') Period? identifiedPeriod,
/// /// [author] Individual or device responsible for the issue being raised.
/// For example, a decision support application or a pharmacist conducting a
/// medication review.

    @JsonKey(name: 'author') Reference? author,
/// /// [implicated] Indicates the resource representing the current activity
/// or proposed activity that is potentially problematic.

    @JsonKey(name: 'implicated') List<List<Reference>>? implicated,
/// /// [evidence] Supporting evidence or manifestations that provide the basis
/// for identifying the detected issue such as a GuidanceResponse or
/// MeasureReport.

    @JsonKey(name: 'evidence') List<List<DetectedIssue_Evidence>>? evidence,
/// /// [detail] A textual explanation of the detected issue.

    @JsonKey(name: 'detail') FhirMarkdown? detail,
/// /// [_detail] Extensions for detail

    @JsonKey(name: '_detail') FhirElement? detailElement,
/// /// [reference] The literature, knowledge-base or similar reference that
/// describes the propensity for the detected issue identified.

    @JsonKey(name: 'reference') FhirUri? reference,
/// /// [_reference] Extensions for reference

    @JsonKey(name: '_reference') FhirElement? referenceElement,
/// /// [mitigation] Indicates an action that has been taken or is committed to
/// reduce or eliminate the likelihood of the risk identified by the detected
/// issue from manifesting.  Can also reflect an observation of known
/// mitigating factors that may reduce/eliminate the need for any action.

    @JsonKey(name: 'mitigation') List<List<DetectedIssue_Mitigation>>? mitigation,
  }) = _$DetectedIssue;

  @override
  String get fhirType => 'DetectedIssue';

  factory DetectedIssue.fromJson(Map<String, dynamic> json) =>
      _$DetectedIssueFromJson(json);

  factory DetectedIssue.fromYaml(dynamic yaml) => yaml is String
      ? DetectedIssue.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DetectedIssue.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DetectedIssue cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory DetectedIssue.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DetectedIssueFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
