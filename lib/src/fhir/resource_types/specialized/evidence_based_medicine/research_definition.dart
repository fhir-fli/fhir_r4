// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'research_definition.freezed.dart';
part 'research_definition.g.dart';

/// [ResearchDefinition] The ResearchDefinition resource describes the
@freezed
class ResearchDefinition with _$ResearchDefinition implements DomainResource {
  /// [ResearchDefinition] The ResearchDefinition resource describes the
  const ResearchDefinition._();

  /// [ResearchDefinition] The ResearchDefinition resource describes the
  /// conditional state (population and any exposures being compared within the
  /// population) and outcome (if specified) that the knowledge (evidence,
  ///  assertion, recommendation) is about.
  ///
  /// [resourceType] This is a ResearchDefinition resource
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
  /// [url] An absolute URI that is used to identify this research definition
  /// when it is referenced in a specification, model, design or an instance;
  /// also called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance of
  /// this research definition is (or will be) published. This URL can be the
  /// target of a canonical reference. It SHALL remain the same when the
  ///  research definition is stored on different servers.
  ///
  /// [urlElement] Extensions for url
  ///
  /// [identifier] A formal identifier that is used to identify this research
  /// definition when it is represented in other formats, or referenced in a
  ///  specification, model, design or an instance.
  ///
  /// [version] The identifier that is used to identify this version of the
  /// research definition when it is referenced in a specification, model,
  /// design or instance. This is an arbitrary value managed by the research
  /// definition author and is not expected to be globally unique. For example,
  /// it might be a timestamp (e.g. yyyymmdd) if a managed version is not
  /// available. There is also no expectation that versions can be placed in a
  /// lexicographical sequence. To provide a version consistent with the
  /// Decision Support Service specification, use the format
  /// Major.Minor.Revision (e.g. 1.0.0). For more information on versioning
  /// knowledge assets, refer to the Decision Support Service specification.
  ///  Note that a version is required for non-experimental active artifacts.
  ///
  /// [versionElement] Extensions for version
  ///
  /// [name] A natural language name identifying the research definition. This
  /// name should be usable as an identifier for the module by machine
  ///  processing applications such as code generation.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [title] A short, descriptive, user-friendly title for the research
  ///  definition.
  ///
  /// [titleElement] Extensions for title
  ///
  /// [shortTitle] The short title provides an alternate title for use in
  /// informal descriptive contexts where the full, formal title is not
  ///  necessary.
  ///
  /// [shortTitleElement] Extensions for shortTitle
  ///
  /// [subtitle] An explanatory or alternate title for the ResearchDefinition
  ///  giving additional information about its content.
  ///
  /// [subtitleElement] Extensions for subtitle
  ///
  /// [status] The status of this research definition. Enables tracking the
  ///  life-cycle of the content.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [experimental] A Boolean value to indicate that this research definition
  /// is authored for testing purposes (or education/evaluation/marketing) and
  ///  is not intended to be used for genuine usage.
  ///
  /// [experimentalElement] Extensions for experimental
  ///
  /// [subjectCodeableConcept] The intended subjects for the
  /// ResearchDefinition. If this element is not provided, a Patient subject is
  ///  assumed, but the subject of the ResearchDefinition can be anything.
  ///
  /// [subjectReference] The intended subjects for the ResearchDefinition. If
  /// this element is not provided, a Patient subject is assumed, but the
  ///  subject of the ResearchDefinition can be anything.
  ///
  /// [date] The date  (and optionally time) when the research definition was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the research definition changes.
  ///
  /// [dateElement] Extensions for date
  ///
  /// [publisher] The name of the organization or individual that published the
  ///  research definition.
  ///
  /// [publisherElement] Extensions for publisher
  ///
  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  ///
  /// [description] A free text natural language description of the research
  ///  definition from a consumer's perspective.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [comment] A human-readable string to clarify or explain concepts about
  ///  the resource.
  ///
  /// [commentElement] Extensions for comment
  ///
  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate research definition instances.
  ///
  /// [jurisdiction] A legal or geographic region in which the research
  ///  definition is intended to be used.
  ///
  /// [purpose] Explanation of why this research definition is needed and why
  ///  it has been designed as it has.
  ///
  /// [purposeElement] Extensions for purpose
  ///
  /// [usage] A detailed description, from a clinical perspective, of how the
  ///  ResearchDefinition is used.
  ///
  /// [usageElement] Extensions for usage
  ///
  /// [copyright] A copyright statement relating to the research definition
  /// and/or its contents. Copyright statements are generally legal restrictions
  ///  on the use and publishing of the research definition.
  ///
  /// [copyrightElement] Extensions for copyright
  ///
  /// [approvalDate] The date on which the resource content was approved by the
  /// publisher. Approval happens once when the content is officially approved
  ///  for usage.
  ///
  /// [approvalDateElement] Extensions for approvalDate
  ///
  /// [lastReviewDate] The date on which the resource content was last
  /// reviewed. Review happens periodically after approval but does not change
  ///  the original approval date.
  ///
  /// [lastReviewDateElement] Extensions for lastReviewDate
  ///
  /// [effectivePeriod] The period during which the research definition content
  ///  was or is planned to be in active use.
  ///
  /// [topic] Descriptive topics related to the content of the
  /// ResearchDefinition. Topics provide a high-level categorization grouping
  /// types of ResearchDefinitions that can be useful for filtering and
  ///  searching.
  ///
  /// [author] An individiual or organization primarily involved in the
  ///  creation and maintenance of the content.
  ///
  /// [editor] An individual or organization primarily responsible for internal
  ///  coherence of the content.
  ///
  /// [reviewer] An individual or organization primarily responsible for review
  ///  of some aspect of the content.
  ///
  /// [endorser] An individual or organization responsible for officially
  ///  endorsing the content for use in some setting.
  ///
  /// [relatedArtifact] Related artifacts such as additional documentation,
  ///  justification, or bibliographic references.
  ///
  /// [library] A reference to a Library resource containing the formal logic
  ///  used by the ResearchDefinition.
  ///
  /// [population] A reference to a ResearchElementDefinition resource that
  ///  defines the population for the research.
  ///
  /// [exposure] A reference to a ResearchElementDefinition resource that
  ///  defines the exposure for the research.
  ///
  /// [exposureAlternative] A reference to a ResearchElementDefinition resource
  ///  that defines the exposureAlternative for the research.
  ///
  /// [outcome] A reference to a ResearchElementDefinition resomece that
  ///  defines the outcome for the research.
  const factory ResearchDefinition({
    @Default(R4ResourceType.ResearchDefinition)
    @JsonKey(unknownEnumValue: R4ResourceType.ResearchDefinition)
    R4ResourceType resourceType,
    String? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
    FhirCode? language,
    @JsonKey(name: '_language') PrimitiveElement? languageElement,
    Narrative? text,
    List<Resource>? contained,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? url,
    @JsonKey(name: '_url') PrimitiveElement? urlElement,
    List<Identifier>? identifier,
    String? version,
    @JsonKey(name: '_version') PrimitiveElement? versionElement,
    String? name,
    @JsonKey(name: '_name') PrimitiveElement? nameElement,
    String? title,
    @JsonKey(name: '_title') PrimitiveElement? titleElement,
    String? shortTitle,
    @JsonKey(name: '_shortTitle') PrimitiveElement? shortTitleElement,
    String? subtitle,
    @JsonKey(name: '_subtitle') PrimitiveElement? subtitleElement,
    FhirCode? status,
    @JsonKey(name: '_status') PrimitiveElement? statusElement,
    FhirBoolean? experimental,
    @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,
    CodeableConcept? subjectCodeableConcept,
    Reference? subjectReference,
    FhirDateTime? date,
    @JsonKey(name: '_date') PrimitiveElement? dateElement,
    String? publisher,
    @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
    List<String>? comment,
    @JsonKey(name: '_comment') List<PrimitiveElement>? commentElement,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,
    String? usage,
    @JsonKey(name: '_usage') PrimitiveElement? usageElement,
    FhirMarkdown? copyright,
    @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement,
    FhirDate? approvalDate,
    @JsonKey(name: '_approvalDate') PrimitiveElement? approvalDateElement,
    FhirDate? lastReviewDate,
    @JsonKey(name: '_lastReviewDate') PrimitiveElement? lastReviewDateElement,
    Period? effectivePeriod,
    List<CodeableConcept>? topic,
    List<ContactDetail>? author,
    List<ContactDetail>? editor,
    List<ContactDetail>? reviewer,
    List<ContactDetail>? endorser,
    List<RelatedArtifact>? relatedArtifact,
    @JsonKey(name: 'library') List<FhirCanonical>? library_,
    required Reference population,
    Reference? exposure,
    Reference? exposureAlternative,
    Reference? outcome,
  }) = _ResearchDefinition;

  @override
  String get fhirType => 'ResearchDefinition';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ResearchDefinition.fromYaml(dynamic yaml) => yaml is String
      ? ResearchDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ResearchDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ResearchDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ResearchDefinition.fromJson(Map<String, dynamic> json) =>
      _$ResearchDefinitionFromJson(json);

  /// Acts like a constructor, returns a [ResearchDefinition], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ResearchDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ResearchDefinitionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
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
