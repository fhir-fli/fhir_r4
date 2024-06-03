/// /// [ArtifactAssessment] This Resource provides one or more comments,
/// classifiers or ratings about a Resource and supports attribution and rights
/// management metadata for the added content.

@freezed
class ArtifactAssessment with _$ArtifactAssessment {
  const ArtifactAssessment._();

  const factory ArtifactAssessment({
/// /// [resourceType] This is a ArtifactAssessment resource

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
/// /// [identifier] A formal identifier that is used to identify this artifact
/// assessment when it is represented in other formats, or referenced in a
/// specification, model, design or an instance.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// /// [title] A short title for the assessment for use in displaying and
/// selecting.

    @JsonKey(name: 'title') String? title,
/// /// [_title] Extensions for title

    @JsonKey(name: '_title') FhirElement? titleElement,
/// /// [citeAsReference] Display of or reference to the bibliographic citation
/// of the comment, classifier, or rating.

    @JsonKey(name: 'citeAsReference') Reference? citeAsReference,
/// /// [citeAsMarkdown] Display of or reference to the bibliographic citation
/// of the comment, classifier, or rating.

    @JsonKey(name: 'citeAsMarkdown') FhirMarkdown? citeAsMarkdown,
/// /// [_citeAsMarkdown] Extensions for citeAsMarkdown

    @JsonKey(name: '_citeAsMarkdown') FhirElement? citeAsMarkdownElement,
/// /// [date] The date  (and optionally time) when the artifact assessment was
/// published. The date must change when the disposition changes and it must
/// change if the workflow status code changes. In addition, it should change
/// when the substantive content of the artifact assessment changes.

    @JsonKey(name: 'date') FhirDateTime? date,
/// /// [_date] Extensions for date

    @JsonKey(name: '_date') FhirElement? dateElement,
/// /// [copyright] A copyright statement relating to the artifact assessment
/// and/or its contents. Copyright statements are generally legal restrictions
/// on the use and publishing of the artifact assessment.

    @JsonKey(name: 'copyright') FhirMarkdown? copyright,
/// /// [_copyright] Extensions for copyright

    @JsonKey(name: '_copyright') FhirElement? copyrightElement,
/// /// [approvalDate] The date on which the resource content was approved by
/// the publisher. Approval happens once when the content is officially
/// approved for usage.

    @JsonKey(name: 'approvalDate') FhirDate? approvalDate,
/// /// [_approvalDate] Extensions for approvalDate

    @JsonKey(name: '_approvalDate') FhirElement? approvalDateElement,
/// /// [lastReviewDate] The date on which the resource content was last
/// reviewed. Review happens periodically after approval but does not change
/// the original approval date.

    @JsonKey(name: 'lastReviewDate') FhirDate? lastReviewDate,
/// /// [_lastReviewDate] Extensions for lastReviewDate

    @JsonKey(name: '_lastReviewDate') FhirElement? lastReviewDateElement,
/// /// [artifactReference] A reference to a resource, canonical resource, or
/// non-FHIR resource which the comment or assessment is about.

    @JsonKey(name: 'artifactReference') Reference? artifactReference,
/// /// [artifactCanonical] A reference to a resource, canonical resource, or
/// non-FHIR resource which the comment or assessment is about.

    @JsonKey(name: 'artifactCanonical') FhirCanonical? artifactCanonical,
/// /// [_artifactCanonical] Extensions for artifactCanonical

    @JsonKey(name: '_artifactCanonical') FhirElement? artifactCanonicalElement,
/// /// [artifactUri] A reference to a resource, canonical resource, or
/// non-FHIR resource which the comment or assessment is about.

    @JsonKey(name: 'artifactUri') FhirUri? artifactUri,
/// /// [_artifactUri] Extensions for artifactUri

    @JsonKey(name: '_artifactUri') FhirElement? artifactUriElement,
/// /// [content] A component comment, classifier, or rating of the artifact.

    @JsonKey(name: 'content') List<List<ArtifactAssessment_Content>>? content,
/// /// [workflowStatus] Indicates the workflow status of the comment or change
/// request.

    @JsonKey(name: 'workflowStatus') FhirCode? workflowStatus,
/// /// [_workflowStatus] Extensions for workflowStatus

    @JsonKey(name: '_workflowStatus') FhirElement? workflowStatusElement,
/// /// [disposition] Indicates the disposition of the responsible party to the
/// comment or change request.

    @JsonKey(name: 'disposition') FhirCode? disposition,
/// /// [_disposition] Extensions for disposition

    @JsonKey(name: '_disposition') FhirElement? dispositionElement,
  }) = _$ArtifactAssessment;

  @override
  String get fhirType => 'ArtifactAssessment';

  factory ArtifactAssessment.fromJson(Map<String, dynamic> json) =>
      _$ArtifactAssessmentFromJson(json);

  factory ArtifactAssessment.fromYaml(dynamic yaml) => yaml is String
      ? ArtifactAssessment.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ArtifactAssessment.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ArtifactAssessment cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ArtifactAssessment.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ArtifactAssessmentFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
