import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ResearchStudy] A scientific study of nature that sometimes includes
/// processes involved in health and disease. For example, clinical trials are
/// research studies that involve people. These studies may be related to new
/// ways to screen, prevent, diagnose, and treat disease. They may also study
/// certain outcomes and certain groups of people by looking at data collected
/// in the past or future.

@freezed
class ResearchStudy with _$ResearchStudy {
  const ResearchStudy._();

  const factory ResearchStudy({
/// [resourceType] This is a ResearchStudy resource

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
/// [url] Canonical identifier for this study resource, represented as a
/// globally unique URI.

    @JsonKey(name: 'url') FhirUri? url,
/// [_url] Extensions for url

    @JsonKey(name: '_url') PrimitiveElement? urlElement,
/// [identifier] Identifiers assigned to this research study by the sponsor
/// or other systems.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [version] The business version for the study record.

    @JsonKey(name: 'version') String? version,
/// [_version] Extensions for version

    @JsonKey(name: '_version') PrimitiveElement? versionElement,
/// [name] Name for this study (computer friendly).

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [title] The human readable name of the research study.

    @JsonKey(name: 'title') String? title,
/// [_title] Extensions for title

    @JsonKey(name: '_title') PrimitiveElement? titleElement,
/// [label] Additional names for the study.

    @JsonKey(name: 'label') List<List<ResearchStudy_Label>>? label,
/// [protocol] The set of steps expected to be performed as part of the
/// execution of the study.

    @JsonKey(name: 'protocol') List<List<Reference>>? protocol,
/// [partOf] A larger research study of which this particular study is a
/// component or step.

    @JsonKey(name: 'partOf') List<List<Reference>>? partOf,
/// [relatedArtifact] Citations, references, URLs and other related
/// documents.  When using relatedArtifact to share URLs, the
/// relatedArtifact.type will often be set to one of "documentation" or
/// "supported-with" and the URL value will often be in
/// relatedArtifact.document.url but another possible location is
/// relatedArtifact.resource when it is a canonical URL.

    @JsonKey(name: 'relatedArtifact') List<List<RelatedArtifact>>? relatedArtifact,
/// [date] The date (and optionally time) when the ResearchStudy Resource
/// was last significantly changed. The date must change when the business
/// version changes and it must change if the status code changes. In addition,
/// it should change when the substantive content of the ResearchStudy Resource
/// changes.

    @JsonKey(name: 'date') FhirDateTime? date,
/// [_date] Extensions for date

    @JsonKey(name: '_date') PrimitiveElement? dateElement,
/// [status] The publication state of the resource (not of the study).

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [primaryPurposeType] The type of study based upon the intent of the
/// study activities. A classification of the intent of the study.

    @JsonKey(name: 'primaryPurposeType') CodeableConcept? primaryPurposeType,
/// [phase] The stage in the progression of a therapy from initial
/// experimental use in humans in clinical trials to post-market evaluation.

    @JsonKey(name: 'phase') CodeableConcept? phase,
/// [studyDesign] Codes categorizing the type of study such as
/// investigational vs. observational, type of blinding, type of randomization,
/// safety vs. efficacy, etc.

    @JsonKey(name: 'studyDesign') List<List<CodeableConcept>>? studyDesign,
/// [focus] The medication(s), food(s), therapy(ies), device(s) or other
/// concerns or interventions that the study is seeking to gain more
/// information about.

    @JsonKey(name: 'focus') List<List<CodeableReference>>? focus,
/// [condition] The condition that is the focus of the study.  For example,
/// In a study to examine risk factors for Lupus, might have as an inclusion
/// criterion "healthy volunteer", but the target condition code would be a
/// Lupus SNOMED code.

    @JsonKey(name: 'condition') List<List<CodeableConcept>>? condition,
/// [keyword] Key terms to aid in searching for or filtering the study.

    @JsonKey(name: 'keyword') List<List<CodeableConcept>>? keyword,
/// [region] A country, state or other area where the study is taking place
/// rather than its precise geographic location or address.

    @JsonKey(name: 'region') List<List<CodeableConcept>>? region,
/// [descriptionSummary] A brief text for explaining the study.

    @JsonKey(name: 'descriptionSummary') FhirMarkdown? descriptionSummary,
/// [_descriptionSummary] Extensions for descriptionSummary

    @JsonKey(name: '_descriptionSummary') PrimitiveElement? descriptionSummaryElement,
/// [description] A detailed and human-readable narrative of the study.
/// E.g., study abstract.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [period] Identifies the start date and the expected (or actual,
/// depending on status) end date for the study.

    @JsonKey(name: 'period') Period? period,
/// [site] A facility in which study activities are conducted.

    @JsonKey(name: 'site') List<List<Reference>>? site,
/// [note] Comments made about the study by the performer, subject or other
/// participants.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// [classifier] Additional grouping mechanism or categorization of a
/// research study. Example: FDA regulated device, FDA regulated drug, MPG
/// Paragraph 23b (a German legal requirement), IRB-exempt, etc. Implementation
/// Note: do not use the classifier element to support existing semantics that
/// are already supported thru explicit elements in the resource.

    @JsonKey(name: 'classifier') List<List<CodeableConcept>>? classifier,
/// [associatedParty] Sponsors, collaborators, and other parties.

    @JsonKey(name: 'associatedParty') List<List<ResearchStudy_AssociatedParty>>? associatedParty,
/// [progressStatus] Status of study with time for that status.

    @JsonKey(name: 'progressStatus') List<List<ResearchStudy_ProgressStatus>>? progressStatus,
/// [whyStopped] A description and/or code explaining the premature
/// termination of the study.

    @JsonKey(name: 'whyStopped') CodeableConcept? whyStopped,
/// [recruitment] Target or actual group of participants enrolled in study.

    @JsonKey(name: 'recruitment') ResearchStudy_Recruitment? recruitment,
/// [comparisonGroup] Describes an expected event or sequence of events for
/// one of the subjects of a study. E.g. for a living subject: exposure to drug
/// A, wash-out, exposure to drug B, wash-out, follow-up. E.g. for a stability
/// study: {store sample from lot A at 25 degrees for 1 month}, {store sample
/// from lot A at 40 degrees for 1 month}.

    @JsonKey(name: 'comparisonGroup') List<List<ResearchStudy_ComparisonGroup>>? comparisonGroup,
/// [objective] A goal that the study is aiming to achieve in terms of a
/// scientific question to be answered by the analysis of data collected during
/// the study.

    @JsonKey(name: 'objective') List<List<ResearchStudy_Objective>>? objective,
/// [outcomeMeasure] An "outcome measure", "endpoint", "effect measure" or
/// "measure of effect" is a specific measurement or observation used to
/// quantify the effect of experimental variables on the participants in a
/// study, or for observational studies, to describe patterns of diseases or
/// traits or associations with exposures, risk factors or treatment.

    @JsonKey(name: 'outcomeMeasure') List<List<ResearchStudy_OutcomeMeasure>>? outcomeMeasure,
/// [result] Link to one or more sets of results generated by the study.
/// Could also link to a research registry holding the results such as
/// ClinicalTrials.gov.

    @JsonKey(name: 'result') List<List<Reference>>? result,
  }) = _$ResearchStudy;

  @override
  String get fhirType => 'ResearchStudy';

  factory ResearchStudy.fromJson(Map<String, dynamic> json) =>
      _$ResearchStudyFromJson(json);

  factory ResearchStudy.fromYaml(dynamic yaml) => yaml is String
      ? ResearchStudy.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ResearchStudy.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ResearchStudy cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ResearchStudy.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ResearchStudyFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
