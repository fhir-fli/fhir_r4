import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'research_definition.g.dart';

/// [ResearchDefinition] /// The ResearchDefinition resource describes the conditional state (population
/// and any exposures being compared within the population) and outcome (if
/// specified) that the knowledge (evidence, assertion, recommendation) is
/// about.
@JsonSerializable()
class ResearchDefinition extends DomainResource {
  ResearchDefinition({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.url,
    this.urlElement,
    this.identifier,
    this.version,
    this.versionElement,
    this.name,
    this.nameElement,
    this.title,
    this.titleElement,
    this.shortTitle,
    this.shortTitleElement,
    this.subtitle,
    this.subtitleElement,
    required this.status,
    this.statusElement,
    this.experimental,
    this.experimentalElement,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.date,
    this.dateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.description,
    this.descriptionElement,
    this.comment,
    this.commentElement,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.purposeElement,
    this.usage,
    this.usageElement,
    this.copyright,
    this.copyrightElement,
    this.approvalDate,
    this.approvalDateElement,
    this.lastReviewDate,
    this.lastReviewDateElement,
    this.effectivePeriod,
    this.topic,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatedArtifact,
    this.library_,
    this.libraryElement,
    required this.population,
    this.exposure,
    this.exposureAlternative,
    this.outcome,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
            resourceType: R4ResourceType.ResearchDefinition,
            fhirType: 'ResearchDefinition');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this research definition when it
  /// is referenced in a specification, model, design or an instance; also called
  /// its canonical identifier. This SHOULD be globally unique and SHOULD be a
  /// literal address at which at which an authoritative instance of this
  /// research definition is (or will be) published. This URL can be the target
  /// of a canonical reference. It SHALL remain the same when the research
  /// definition is stored on different servers.
  @JsonKey(name: 'url')
  final FhirUri? url;
  @JsonKey(name: '_url')
  final Element? urlElement;

  /// [identifier] /// A formal identifier that is used to identify this research definition when
  /// it is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [version] /// The identifier that is used to identify this version of the research
  /// definition when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the research definition
  /// author and is not expected to be globally unique. For example, it might be
  /// a timestamp (e.g. yyyymmdd) if a managed version is not available. There is
  /// also no expectation that versions can be placed in a lexicographical
  /// sequence. To provide a version consistent with the Decision Support Service
  /// specification, use the format Major.Minor.Revision (e.g. 1.0.0). For more
  /// information on versioning knowledge assets, refer to the Decision Support
  /// Service specification. Note that a version is required for non-experimental
  /// active artifacts.
  @JsonKey(name: 'version')
  final FhirString? version;
  @JsonKey(name: '_version')
  final Element? versionElement;

  /// [name] /// A natural language name identifying the research definition. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [title] /// A short, descriptive, user-friendly title for the research definition.
  @JsonKey(name: 'title')
  final FhirString? title;
  @JsonKey(name: '_title')
  final Element? titleElement;

  /// [shortTitle] /// The short title provides an alternate title for use in informal descriptive
  /// contexts where the full, formal title is not necessary.
  @JsonKey(name: 'shortTitle')
  final FhirString? shortTitle;
  @JsonKey(name: '_shortTitle')
  final Element? shortTitleElement;

  /// [subtitle] /// An explanatory or alternate title for the ResearchDefinition giving
  /// additional information about its content.
  @JsonKey(name: 'subtitle')
  final FhirString? subtitle;
  @JsonKey(name: '_subtitle')
  final Element? subtitleElement;

  /// [status] /// The status of this research definition. Enables tracking the life-cycle of
  /// the content.
  @JsonKey(name: 'status')
  final FhirCode status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [experimental] /// A Boolean value to indicate that this research definition is authored for
  /// testing purposes (or education/evaluation/marketing) and is not intended to
  /// be used for genuine usage.
  @JsonKey(name: 'experimental')
  final FhirBoolean? experimental;
  @JsonKey(name: '_experimental')
  final Element? experimentalElement;

  /// [subjectCodeableConcept] /// The intended subjects for the ResearchDefinition. If this element is not
  /// provided, a Patient subject is assumed, but the subject of the
  /// ResearchDefinition can be anything.
  @JsonKey(name: 'subjectCodeableConcept')
  final CodeableConcept? subjectCodeableConcept;

  /// [subjectReference] /// The intended subjects for the ResearchDefinition. If this element is not
  /// provided, a Patient subject is assumed, but the subject of the
  /// ResearchDefinition can be anything.
  @JsonKey(name: 'subjectReference')
  final Reference? subjectReference;

  /// [date] /// The date (and optionally time) when the research definition was published.
  /// The date must change when the business version changes and it must change
  /// if the status code changes. In addition, it should change when the
  /// substantive content of the research definition changes.
  @JsonKey(name: 'date')
  final FhirDateTime? date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the research
  /// definition.
  @JsonKey(name: 'publisher')
  final FhirString? publisher;
  @JsonKey(name: '_publisher')
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  @JsonKey(name: 'contact')
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the research definition from a
  /// consumer's perspective.
  @JsonKey(name: 'description')
  final FhirMarkdown? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [comment] /// A human-readable string to clarify or explain concepts about the resource.
  @JsonKey(name: 'comment')
  final List<FhirString>? comment;
  @JsonKey(name: '_comment')
  final List<Element>? commentElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate research definition instances.
  @JsonKey(name: 'useContext')
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the research definition is intended
  /// to be used.
  @JsonKey(name: 'jurisdiction')
  final List<CodeableConcept>? jurisdiction;

  /// [purpose] /// Explanation of why this research definition is needed and why it has been
  /// designed as it has.
  @JsonKey(name: 'purpose')
  final FhirMarkdown? purpose;
  @JsonKey(name: '_purpose')
  final Element? purposeElement;

  /// [usage] /// A detailed description, from a clinical perspective, of how the
  /// ResearchDefinition is used.
  @JsonKey(name: 'usage')
  final FhirString? usage;
  @JsonKey(name: '_usage')
  final Element? usageElement;

  /// [copyright] /// A copyright statement relating to the research definition and/or its
  /// contents. Copyright statements are generally legal restrictions on the use
  /// and publishing of the research definition.
  @JsonKey(name: 'copyright')
  final FhirMarkdown? copyright;
  @JsonKey(name: '_copyright')
  final Element? copyrightElement;

  /// [approvalDate] /// The date on which the resource content was approved by the publisher.
  /// Approval happens once when the content is officially approved for usage.
  @JsonKey(name: 'approvalDate')
  final FhirDate? approvalDate;
  @JsonKey(name: '_approvalDate')
  final Element? approvalDateElement;

  /// [lastReviewDate] /// The date on which the resource content was last reviewed. Review happens
  /// periodically after approval but does not change the original approval date.
  @JsonKey(name: 'lastReviewDate')
  final FhirDate? lastReviewDate;
  @JsonKey(name: '_lastReviewDate')
  final Element? lastReviewDateElement;

  /// [effectivePeriod] /// The period during which the research definition content was or is planned
  /// to be in active use.
  @JsonKey(name: 'effectivePeriod')
  final Period? effectivePeriod;

  /// [topic] /// Descriptive topics related to the content of the ResearchDefinition. Topics
  /// provide a high-level categorization grouping types of ResearchDefinitions
  /// that can be useful for filtering and searching.
  @JsonKey(name: 'topic')
  final List<CodeableConcept>? topic;

  /// [author] /// An individiual or organization primarily involved in the creation and
  /// maintenance of the content.
  @JsonKey(name: 'author')
  final List<ContactDetail>? author;

  /// [editor] /// An individual or organization primarily responsible for internal coherence
  /// of the content.
  @JsonKey(name: 'editor')
  final List<ContactDetail>? editor;

  /// [reviewer] /// An individual or organization primarily responsible for review of some
  /// aspect of the content.
  @JsonKey(name: 'reviewer')
  final List<ContactDetail>? reviewer;

  /// [endorser] /// An individual or organization responsible for officially endorsing the
  /// content for use in some setting.
  @JsonKey(name: 'endorser')
  final List<ContactDetail>? endorser;

  /// [relatedArtifact] /// Related artifacts such as additional documentation, justification, or
  /// bibliographic references.
  @JsonKey(name: 'relatedArtifact')
  final List<RelatedArtifact>? relatedArtifact;

  /// [library_] /// A reference to a Library resource containing the formal logic used by the
  /// ResearchDefinition.
  @JsonKey(name: 'library')
  final List<FhirCanonical>? library_;
  @JsonKey(name: '_library')
  final List<Element>? libraryElement;

  /// [population] /// A reference to a ResearchElementDefinition resource that defines the
  /// population for the research.
  @JsonKey(name: 'population')
  final Reference population;

  /// [exposure] /// A reference to a ResearchElementDefinition resource that defines the
  /// exposure for the research.
  @JsonKey(name: 'exposure')
  final Reference? exposure;

  /// [exposureAlternative] /// A reference to a ResearchElementDefinition resource that defines the
  /// exposureAlternative for the research.
  @JsonKey(name: 'exposureAlternative')
  final Reference? exposureAlternative;

  /// [outcome] /// A reference to a ResearchElementDefinition resomece that defines the
  /// outcome for the research.
  @JsonKey(name: 'outcome')
  final Reference? outcome;
  factory ResearchDefinition.fromJson(Map<String, dynamic> json) =>
      _$ResearchDefinitionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ResearchDefinitionToJson(this);

  @override
  ResearchDefinition clone() => throw UnimplementedError();
  @override
  ResearchDefinition copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? url,
    Element? urlElement,
    List<Identifier>? identifier,
    FhirString? version,
    Element? versionElement,
    FhirString? name,
    Element? nameElement,
    FhirString? title,
    Element? titleElement,
    FhirString? shortTitle,
    Element? shortTitleElement,
    FhirString? subtitle,
    Element? subtitleElement,
    FhirCode? status,
    Element? statusElement,
    FhirBoolean? experimental,
    Element? experimentalElement,
    CodeableConcept? subjectCodeableConcept,
    Reference? subjectReference,
    FhirDateTime? date,
    Element? dateElement,
    FhirString? publisher,
    Element? publisherElement,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    Element? descriptionElement,
    List<FhirString>? comment,
    List<Element>? commentElement,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    Element? purposeElement,
    FhirString? usage,
    Element? usageElement,
    FhirMarkdown? copyright,
    Element? copyrightElement,
    FhirDate? approvalDate,
    Element? approvalDateElement,
    FhirDate? lastReviewDate,
    Element? lastReviewDateElement,
    Period? effectivePeriod,
    List<CodeableConcept>? topic,
    List<ContactDetail>? author,
    List<ContactDetail>? editor,
    List<ContactDetail>? reviewer,
    List<ContactDetail>? endorser,
    List<RelatedArtifact>? relatedArtifact,
    List<FhirCanonical>? library_,
    List<Element>? libraryElement,
    Reference? population,
    Reference? exposure,
    Reference? exposureAlternative,
    Reference? outcome,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ResearchDefinition(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
      urlElement: urlElement ?? this.urlElement,
      identifier: identifier ?? this.identifier,
      version: version ?? this.version,
      versionElement: versionElement ?? this.versionElement,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      title: title ?? this.title,
      titleElement: titleElement ?? this.titleElement,
      shortTitle: shortTitle ?? this.shortTitle,
      shortTitleElement: shortTitleElement ?? this.shortTitleElement,
      subtitle: subtitle ?? this.subtitle,
      subtitleElement: subtitleElement ?? this.subtitleElement,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      experimental: experimental ?? this.experimental,
      experimentalElement: experimentalElement ?? this.experimentalElement,
      subjectCodeableConcept:
          subjectCodeableConcept ?? this.subjectCodeableConcept,
      subjectReference: subjectReference ?? this.subjectReference,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      publisher: publisher ?? this.publisher,
      publisherElement: publisherElement ?? this.publisherElement,
      contact: contact ?? this.contact,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      comment: comment ?? this.comment,
      commentElement: commentElement ?? this.commentElement,
      useContext: useContext ?? this.useContext,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      purpose: purpose ?? this.purpose,
      purposeElement: purposeElement ?? this.purposeElement,
      usage: usage ?? this.usage,
      usageElement: usageElement ?? this.usageElement,
      copyright: copyright ?? this.copyright,
      copyrightElement: copyrightElement ?? this.copyrightElement,
      approvalDate: approvalDate ?? this.approvalDate,
      approvalDateElement: approvalDateElement ?? this.approvalDateElement,
      lastReviewDate: lastReviewDate ?? this.lastReviewDate,
      lastReviewDateElement:
          lastReviewDateElement ?? this.lastReviewDateElement,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      topic: topic ?? this.topic,
      author: author ?? this.author,
      editor: editor ?? this.editor,
      reviewer: reviewer ?? this.reviewer,
      endorser: endorser ?? this.endorser,
      relatedArtifact: relatedArtifact ?? this.relatedArtifact,
      library_: library_ ?? this.library_,
      libraryElement: libraryElement ?? this.libraryElement,
      population: population ?? this.population,
      exposure: exposure ?? this.exposure,
      exposureAlternative: exposureAlternative ?? this.exposureAlternative,
      outcome: outcome ?? this.outcome,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ResearchDefinition.fromYaml(dynamic yaml) => yaml is String
      ? ResearchDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ResearchDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ResearchDefinition cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ResearchDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ResearchDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
