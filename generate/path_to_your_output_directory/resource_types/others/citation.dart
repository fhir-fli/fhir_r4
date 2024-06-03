import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Citation] The Citation Resource enables reference to any knowledge
/// artifact for purposes of identification and attribution. The Citation
/// Resource supports existing reference structures and developing publication
/// practices such as versioning, expressing complex contributorship roles, and
/// referencing computable resources.

@freezed
class Citation with _$Citation {
  const Citation._();

  const factory Citation({
/// [resourceType] This is a Citation resource

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
/// [url] An absolute URI that is used to identify this citation record
/// when it is referenced in a specification, model, design or an instance;
/// also called its canonical identifier. This SHOULD be globally unique and
/// SHOULD be a literal address at which an authoritative instance of this
/// summary is (or will be) published. This URL can be the target of a
/// canonical reference. It SHALL remain the same when the summary is stored on
/// different servers.

    @JsonKey(name: 'url') FhirUri? url,
/// [_url] Extensions for url

    @JsonKey(name: '_url') PrimitiveElement? urlElement,
/// [identifier] A formal identifier that is used to identify this citation
/// record when it is represented in other formats, or referenced in a
/// specification, model, design or an instance.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [version] The identifier that is used to identify this version of the
/// citation record when it is referenced in a specification, model, design or
/// instance. This is an arbitrary value managed by the citation record author
/// and is not expected to be globally unique. For example, it might be a
/// timestamp (e.g. yyyymmdd) if a managed version is not available. There is
/// also no expectation that versions can be placed in a lexicographical
/// sequence.

    @JsonKey(name: 'version') String? version,
/// [_version] Extensions for version

    @JsonKey(name: '_version') PrimitiveElement? versionElement,
/// [versionAlgorithmString] Indicates the mechanism used to compare
/// versions to determine which is more current.

    @JsonKey(name: 'versionAlgorithmString') String? versionAlgorithmString,
/// [_versionAlgorithmString] Extensions for versionAlgorithmString

    @JsonKey(name: '_versionAlgorithmString') PrimitiveElement? versionAlgorithmStringElement,
/// [versionAlgorithmCoding] Indicates the mechanism used to compare
/// versions to determine which is more current.

    @JsonKey(name: 'versionAlgorithmCoding') Coding? versionAlgorithmCoding,
/// [name] A natural language name identifying the citation record. This
/// name should be usable as an identifier for the module by machine processing
/// applications such as code generation.

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [title] A short, descriptive, user-friendly title for the citation
/// record.

    @JsonKey(name: 'title') String? title,
/// [_title] Extensions for title

    @JsonKey(name: '_title') PrimitiveElement? titleElement,
/// [status] The status of this summary. Enables tracking the life-cycle of
/// the content.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [experimental] A Boolean value to indicate that this citation record is
/// authored for testing purposes (or education/evaluation/marketing) and is
/// not intended to be used for genuine usage.

    @JsonKey(name: 'experimental') FhirBoolean? experimental,
/// [_experimental] Extensions for experimental

    @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,
/// [date] The date (and optionally time) when the citation record was last
/// significantly changed. The date must change when the business version
/// changes and it must change if the status code changes. In addition, it
/// should change when the substantive content of the citation record changes.

    @JsonKey(name: 'date') FhirDateTime? date,
/// [_date] Extensions for date

    @JsonKey(name: '_date') PrimitiveElement? dateElement,
/// [publisher] The name of the organization or individual that published
/// the citation record.

    @JsonKey(name: 'publisher') String? publisher,
/// [_publisher] Extensions for publisher

    @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,
/// [contact] Contact details to assist a user in finding and communicating
/// with the publisher.

    @JsonKey(name: 'contact') List<List<ContactDetail>>? contact,
/// [description] A free text natural language description of the citation
/// from a consumer's perspective.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [useContext] The content was developed with a focus and intent of
/// supporting the contexts that are listed. These contexts may be general
/// categories (gender, age, ...) or may be references to specific programs
/// (insurance plans, studies, ...) and may be used to assist with indexing and
/// searching for appropriate citation record instances.

    @JsonKey(name: 'useContext') List<List<UsageContext>>? useContext,
/// [jurisdiction] A legal or geographic region in which the citation
/// record is intended to be used.

    @JsonKey(name: 'jurisdiction') List<List<CodeableConcept>>? jurisdiction,
/// [purpose] Explanation of why this citation is needed and why it has
/// been designed as it has.

    @JsonKey(name: 'purpose') FhirMarkdown? purpose,
/// [_purpose] Extensions for purpose

    @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,
/// [copyright] Use and/or publishing restrictions for the citation record,
/// not for the cited artifact.

    @JsonKey(name: 'copyright') FhirMarkdown? copyright,
/// [_copyright] Extensions for copyright

    @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement,
/// [copyrightLabel] A short string (<50 characters), suitable for
/// inclusion in a page footer that identifies the copyright holder, effective
/// period, and optionally whether rights are resctricted. (e.g. 'All rights
/// reserved', 'Some rights reserved').

    @JsonKey(name: 'copyrightLabel') String? copyrightLabel,
/// [_copyrightLabel] Extensions for copyrightLabel

    @JsonKey(name: '_copyrightLabel') PrimitiveElement? copyrightLabelElement,
/// [approvalDate] The date on which the resource content was approved by
/// the publisher. Approval happens once when the content is officially
/// approved for usage.

    @JsonKey(name: 'approvalDate') FhirDate? approvalDate,
/// [_approvalDate] Extensions for approvalDate

    @JsonKey(name: '_approvalDate') PrimitiveElement? approvalDateElement,
/// [lastReviewDate] The date on which the resource content was last
/// reviewed. Review happens periodically after approval but does not change
/// the original approval date.

    @JsonKey(name: 'lastReviewDate') FhirDate? lastReviewDate,
/// [_lastReviewDate] Extensions for lastReviewDate

    @JsonKey(name: '_lastReviewDate') PrimitiveElement? lastReviewDateElement,
/// [effectivePeriod] The period during which the citation record content
/// was or is planned to be in active use.

    @JsonKey(name: 'effectivePeriod') Period? effectivePeriod,
/// [topic] Descriptive topics related to the content of the {{title}}.
/// Topics provide a high-level categorization as well as keywords for the
/// {{title}} that can be useful for filtering and searching.

    @JsonKey(name: 'topic') List<List<CodeableConcept>>? topic,
/// [author] Who authored or created the citation record.

    @JsonKey(name: 'author') List<List<ContactDetail>>? author,
/// [editor] Who edited or revised the citation record.

    @JsonKey(name: 'editor') List<List<ContactDetail>>? editor,
/// [reviewer] Who reviewed the citation record.

    @JsonKey(name: 'reviewer') List<List<ContactDetail>>? reviewer,
/// [endorser] Who endorsed the citation record.

    @JsonKey(name: 'endorser') List<List<ContactDetail>>? endorser,
/// [relatedArtifact] Artifact related to the citation record.

    @JsonKey(name: 'relatedArtifact') List<List<RelatedArtifact>>? relatedArtifact,
/// [summary] A human-readable display of key concepts to represent the
/// citation.

    @JsonKey(name: 'summary') List<List<Citation_Summary>>? summary,
/// [classification] The assignment to an organizing scheme.

    @JsonKey(name: 'classification') List<List<Citation_Classification>>? classification,
/// [note] Used for general notes and annotations not coded elsewhere.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// [currentState] The status of the citation record.

    @JsonKey(name: 'currentState') List<List<CodeableConcept>>? currentState,
/// [statusDate] The state or status of the citation record paired with an
/// effective date or period for that state.

    @JsonKey(name: 'statusDate') List<List<Citation_StatusDate>>? statusDate,
/// [citedArtifact] The article or artifact being described.

    @JsonKey(name: 'citedArtifact') Citation_CitedArtifact? citedArtifact,
  }) = _$Citation;

  @override
  String get fhirType => 'Citation';

  factory Citation.fromJson(Map<String, dynamic> json) =>
      _$CitationFromJson(json);

  factory Citation.fromYaml(dynamic yaml) => yaml is String
      ? Citation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Citation.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Citation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Citation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CitationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
