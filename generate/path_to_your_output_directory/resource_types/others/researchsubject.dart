/// /// [ResearchSubject] A ResearchSubject is a participant or object which is
/// the recipient of investigative activities in a research study.

@freezed
class ResearchSubject with _$ResearchSubject {
  const ResearchSubject._();

  const factory ResearchSubject({
/// /// [resourceType] This is a ResearchSubject resource

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
/// /// [identifier] Identifiers assigned to this research subject for a study.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// /// [status] The publication state of the resource (not of the subject).

    @JsonKey(name: 'status') FhirCode? status,
/// /// [_status] Extensions for status

    @JsonKey(name: '_status') FhirElement? statusElement,
/// /// [period] The dates the subject began and ended their participation in
/// the study.

    @JsonKey(name: 'period') Period? period,
/// /// [study] Reference to the study the subject is participating in.

    @JsonKey(name: 'study') Reference? study,
/// /// [subject] The record of the person, animal or other entity involved in
/// the study.

    @JsonKey(name: 'subject') Reference? subject,
/// /// [subjectState] A duration in the lifecycle of the ResearchSubject
/// within a ResearchStudy.

    @JsonKey(name: 'subjectState') List<List<ResearchSubject_SubjectState>>? subjectState,
/// /// [subjectMilestone] A significant event in the progress of a
/// ResearchSubject.

    @JsonKey(name: 'subjectMilestone') List<List<ResearchSubject_SubjectMilestone>>? subjectMilestone,
/// /// [assignedComparisonGroup] The name of the arm in the study the subject
/// is expected to follow as part of this study.

    @JsonKey(name: 'assignedComparisonGroup') FhirId? assignedComparisonGroup,
/// /// [_assignedComparisonGroup] Extensions for assignedComparisonGroup

    @JsonKey(name: '_assignedComparisonGroup') FhirElement? assignedComparisonGroupElement,
/// /// [actualComparisonGroup] The name of the arm in the study the subject
/// actually followed as part of this study.

    @JsonKey(name: 'actualComparisonGroup') FhirId? actualComparisonGroup,
/// /// [_actualComparisonGroup] Extensions for actualComparisonGroup

    @JsonKey(name: '_actualComparisonGroup') FhirElement? actualComparisonGroupElement,
/// /// [consent] A record of the patient's informed agreement to participate
/// in the study.

    @JsonKey(name: 'consent') List<List<Reference>>? consent,
  }) = _$ResearchSubject;

  @override
  String get fhirType => 'ResearchSubject';

  factory ResearchSubject.fromJson(Map<String, dynamic> json) =>
      _$ResearchSubjectFromJson(json);

  factory ResearchSubject.fromYaml(dynamic yaml) => yaml is String
      ? ResearchSubject.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ResearchSubject.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ResearchSubject cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ResearchSubject.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ResearchSubjectFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
