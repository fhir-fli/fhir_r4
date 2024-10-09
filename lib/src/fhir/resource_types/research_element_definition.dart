import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'research_element_definition.g.dart';

/// [ResearchElementDefinition] /// The ResearchElementDefinition resource describes a "PICO" element that
/// knowledge (evidence, assertion, recommendation) is about.
@JsonSerializable()
class ResearchElementDefinition extends DomainResource {
  ResearchElementDefinition({
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
    required this.type,
    this.typeElement,
    this.variableType,
    this.variableTypeElement,
    required this.characteristic,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.ResearchElementDefinition);
  @override
  String get fhirType => 'ResearchElementDefinition';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this research element definition
  /// when it is referenced in a specification, model, design or an instance;
  /// also called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance of
  /// this research element definition is (or will be) published. This URL can be
  /// the target of a canonical reference. It SHALL remain the same when the
  /// research element definition is stored on different servers.
  @JsonKey(name: 'url')
  final FhirUri? url;
  @JsonKey(name: '_url')
  final Element? urlElement;

  /// [identifier] /// A formal identifier that is used to identify this research element
  /// definition when it is represented in other formats, or referenced in a
  /// specification, model, design or an instance.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [version] /// The identifier that is used to identify this version of the research
  /// element definition when it is referenced in a specification, model, design
  /// or instance. This is an arbitrary value managed by the research element
  /// definition author and is not expected to be globally unique. For example,
  /// it might be a timestamp (e.g. yyyymmdd) if a managed version is not
  /// available. There is also no expectation that versions can be placed in a
  /// lexicographical sequence. To provide a version consistent with the Decision
  /// Support Service specification, use the format Major.Minor.Revision (e.g.
  /// 1.0.0). For more information on versioning knowledge assets, refer to the
  /// Decision Support Service specification. Note that a version is required for
  /// non-experimental active artifacts.
  @JsonKey(name: 'version')
  final FhirString? version;
  @JsonKey(name: '_version')
  final Element? versionElement;

  /// [name] /// A natural language name identifying the research element definition. This
  /// name should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [title] /// A short, descriptive, user-friendly title for the research element
  /// definition.
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

  /// [subtitle] /// An explanatory or alternate title for the ResearchElementDefinition giving
  /// additional information about its content.
  @JsonKey(name: 'subtitle')
  final FhirString? subtitle;
  @JsonKey(name: '_subtitle')
  final Element? subtitleElement;

  /// [status] /// The status of this research element definition. Enables tracking the
  /// life-cycle of the content.
  @JsonKey(name: 'status')
  final PublicationStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [experimental] /// A Boolean value to indicate that this research element definition is
  /// authored for testing purposes (or education/evaluation/marketing) and is
  /// not intended to be used for genuine usage.
  @JsonKey(name: 'experimental')
  final FhirBoolean? experimental;
  @JsonKey(name: '_experimental')
  final Element? experimentalElement;

  /// [subjectCodeableConcept] /// The intended subjects for the ResearchElementDefinition. If this element is
  /// not provided, a Patient subject is assumed, but the subject of the
  /// ResearchElementDefinition can be anything.
  @JsonKey(name: 'subjectCodeableConcept')
  final CodeableConcept? subjectCodeableConcept;

  /// [subjectReference] /// The intended subjects for the ResearchElementDefinition. If this element is
  /// not provided, a Patient subject is assumed, but the subject of the
  /// ResearchElementDefinition can be anything.
  @JsonKey(name: 'subjectReference')
  final Reference? subjectReference;

  /// [date] /// The date (and optionally time) when the research element definition was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  /// the substantive content of the research element definition changes.
  @JsonKey(name: 'date')
  final FhirDateTime? date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the research
  /// element definition.
  @JsonKey(name: 'publisher')
  final FhirString? publisher;
  @JsonKey(name: '_publisher')
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  @JsonKey(name: 'contact')
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the research element definition
  /// from a consumer's perspective.
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
  /// appropriate research element definition instances.
  @JsonKey(name: 'useContext')
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the research element definition is
  /// intended to be used.
  @JsonKey(name: 'jurisdiction')
  final List<CodeableConcept>? jurisdiction;

  /// [purpose] /// Explanation of why this research element definition is needed and why it
  /// has been designed as it has.
  @JsonKey(name: 'purpose')
  final FhirMarkdown? purpose;
  @JsonKey(name: '_purpose')
  final Element? purposeElement;

  /// [usage] /// A detailed description, from a clinical perspective, of how the
  /// ResearchElementDefinition is used.
  @JsonKey(name: 'usage')
  final FhirString? usage;
  @JsonKey(name: '_usage')
  final Element? usageElement;

  /// [copyright] /// A copyright statement relating to the research element definition and/or
  /// its contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the research element definition.
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

  /// [effectivePeriod] /// The period during which the research element definition content was or is
  /// planned to be in active use.
  @JsonKey(name: 'effectivePeriod')
  final Period? effectivePeriod;

  /// [topic] /// Descriptive topics related to the content of the ResearchElementDefinition.
  /// Topics provide a high-level categorization grouping types of
  /// ResearchElementDefinitions that can be useful for filtering and searching.
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
  /// ResearchElementDefinition.
  @JsonKey(name: 'library')
  final List<FhirCanonical>? library_;
  @JsonKey(name: '_library')
  final List<Element>? libraryElement;

  /// [type] /// The type of research element, a population, an exposure, or an outcome.
  @JsonKey(name: 'type')
  final ResearchElementType type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [variableType] /// The type of the outcome (e.g. Dichotomous, Continuous, or Descriptive).
  @JsonKey(name: 'variableType')
  final VariableType? variableType;
  @JsonKey(name: '_variableType')
  final Element? variableTypeElement;

  /// [characteristic] /// A characteristic that defines the members of the research element. Multiple
  /// characteristics are applied with "and" semantics.
  @JsonKey(name: 'characteristic')
  final List<ResearchElementDefinitionCharacteristic> characteristic;
  factory ResearchElementDefinition.fromJson(Map<String, dynamic> json) =>
      _$ResearchElementDefinitionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ResearchElementDefinitionToJson(this);

  @override
  ResearchElementDefinition clone() => throw UnimplementedError();
  @override
  ResearchElementDefinition copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
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
    PublicationStatus? status,
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
    ResearchElementType? type,
    Element? typeElement,
    VariableType? variableType,
    Element? variableTypeElement,
    List<ResearchElementDefinitionCharacteristic>? characteristic,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ResearchElementDefinition(
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
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      variableType: variableType ?? this.variableType,
      variableTypeElement: variableTypeElement ?? this.variableTypeElement,
      characteristic: characteristic ?? this.characteristic,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ResearchElementDefinition.fromYaml(dynamic yaml) => yaml is String
      ? ResearchElementDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ResearchElementDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ResearchElementDefinition cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ResearchElementDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ResearchElementDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ResearchElementDefinitionCharacteristic] /// A characteristic that defines the members of the research element. Multiple
/// characteristics are applied with "and" semantics.
@JsonSerializable()
class ResearchElementDefinitionCharacteristic extends BackboneElement {
  ResearchElementDefinitionCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.definitionCodeableConcept,
    required this.definitionCanonical,
    this.definitionCanonicalElement,
    required this.definitionExpression,
    required this.definitionDataRequirement,
    this.usageContext,
    this.exclude,
    this.excludeElement,
    this.unitOfMeasure,
    this.studyEffectiveDescription,
    this.studyEffectiveDescriptionElement,
    this.studyEffectiveDateTime,
    this.studyEffectiveDateTimeElement,
    this.studyEffectivePeriod,
    this.studyEffectiveDuration,
    this.studyEffectiveTiming,
    this.studyEffectiveTimeFromStart,
    this.studyEffectiveGroupMeasure,
    this.studyEffectiveGroupMeasureElement,
    this.participantEffectiveDescription,
    this.participantEffectiveDescriptionElement,
    this.participantEffectiveDateTime,
    this.participantEffectiveDateTimeElement,
    this.participantEffectivePeriod,
    this.participantEffectiveDuration,
    this.participantEffectiveTiming,
    this.participantEffectiveTimeFromStart,
    this.participantEffectiveGroupMeasure,
    this.participantEffectiveGroupMeasureElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ResearchElementDefinitionCharacteristic';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [definitionCodeableConcept] /// Define members of the research element using Codes (such as condition,
  /// medication, or observation), Expressions ( using an expression language
  /// such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis
  /// onset in the last year).
  @JsonKey(name: 'definitionCodeableConcept')
  final CodeableConcept definitionCodeableConcept;

  /// [definitionCanonical] /// Define members of the research element using Codes (such as condition,
  /// medication, or observation), Expressions ( using an expression language
  /// such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis
  /// onset in the last year).
  @JsonKey(name: 'definitionCanonical')
  final FhirCanonical definitionCanonical;
  @JsonKey(name: '_definitionCanonical')
  final Element? definitionCanonicalElement;

  /// [definitionExpression] /// Define members of the research element using Codes (such as condition,
  /// medication, or observation), Expressions ( using an expression language
  /// such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis
  /// onset in the last year).
  @JsonKey(name: 'definitionExpression')
  final FhirExpression definitionExpression;

  /// [definitionDataRequirement] /// Define members of the research element using Codes (such as condition,
  /// medication, or observation), Expressions ( using an expression language
  /// such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis
  /// onset in the last year).
  @JsonKey(name: 'definitionDataRequirement')
  final DataRequirement definitionDataRequirement;

  /// [usageContext] /// Use UsageContext to define the members of the population, such as Age
  /// Ranges, Genders, Settings.
  @JsonKey(name: 'usageContext')
  final List<UsageContext>? usageContext;

  /// [exclude] /// When true, members with this characteristic are excluded from the element.
  @JsonKey(name: 'exclude')
  final FhirBoolean? exclude;
  @JsonKey(name: '_exclude')
  final Element? excludeElement;

  /// [unitOfMeasure] /// Specifies the UCUM unit for the outcome.
  @JsonKey(name: 'unitOfMeasure')
  final CodeableConcept? unitOfMeasure;

  /// [studyEffectiveDescription] /// A narrative description of the time period the study covers.
  @JsonKey(name: 'studyEffectiveDescription')
  final FhirString? studyEffectiveDescription;
  @JsonKey(name: '_studyEffectiveDescription')
  final Element? studyEffectiveDescriptionElement;

  /// [studyEffectiveDateTime] /// Indicates what effective period the study covers.
  @JsonKey(name: 'studyEffectiveDateTime')
  final FhirDateTime? studyEffectiveDateTime;
  @JsonKey(name: '_studyEffectiveDateTime')
  final Element? studyEffectiveDateTimeElement;

  /// [studyEffectivePeriod] /// Indicates what effective period the study covers.
  @JsonKey(name: 'studyEffectivePeriod')
  final Period? studyEffectivePeriod;

  /// [studyEffectiveDuration] /// Indicates what effective period the study covers.
  @JsonKey(name: 'studyEffectiveDuration')
  final FhirDuration? studyEffectiveDuration;

  /// [studyEffectiveTiming] /// Indicates what effective period the study covers.
  @JsonKey(name: 'studyEffectiveTiming')
  final Timing? studyEffectiveTiming;

  /// [studyEffectiveTimeFromStart] /// Indicates duration from the study initiation.
  @JsonKey(name: 'studyEffectiveTimeFromStart')
  final FhirDuration? studyEffectiveTimeFromStart;

  /// [studyEffectiveGroupMeasure] /// Indicates how elements are aggregated within the study effective period.
  @JsonKey(name: 'studyEffectiveGroupMeasure')
  final GroupMeasure? studyEffectiveGroupMeasure;
  @JsonKey(name: '_studyEffectiveGroupMeasure')
  final Element? studyEffectiveGroupMeasureElement;

  /// [participantEffectiveDescription] /// A narrative description of the time period the study covers.
  @JsonKey(name: 'participantEffectiveDescription')
  final FhirString? participantEffectiveDescription;
  @JsonKey(name: '_participantEffectiveDescription')
  final Element? participantEffectiveDescriptionElement;

  /// [participantEffectiveDateTime] /// Indicates what effective period the study covers.
  @JsonKey(name: 'participantEffectiveDateTime')
  final FhirDateTime? participantEffectiveDateTime;
  @JsonKey(name: '_participantEffectiveDateTime')
  final Element? participantEffectiveDateTimeElement;

  /// [participantEffectivePeriod] /// Indicates what effective period the study covers.
  @JsonKey(name: 'participantEffectivePeriod')
  final Period? participantEffectivePeriod;

  /// [participantEffectiveDuration] /// Indicates what effective period the study covers.
  @JsonKey(name: 'participantEffectiveDuration')
  final FhirDuration? participantEffectiveDuration;

  /// [participantEffectiveTiming] /// Indicates what effective period the study covers.
  @JsonKey(name: 'participantEffectiveTiming')
  final Timing? participantEffectiveTiming;

  /// [participantEffectiveTimeFromStart] /// Indicates duration from the participant's study entry.
  @JsonKey(name: 'participantEffectiveTimeFromStart')
  final FhirDuration? participantEffectiveTimeFromStart;

  /// [participantEffectiveGroupMeasure] /// Indicates how elements are aggregated within the study effective period.
  @JsonKey(name: 'participantEffectiveGroupMeasure')
  final GroupMeasure? participantEffectiveGroupMeasure;
  @JsonKey(name: '_participantEffectiveGroupMeasure')
  final Element? participantEffectiveGroupMeasureElement;
  factory ResearchElementDefinitionCharacteristic.fromJson(
          Map<String, dynamic> json) =>
      _$ResearchElementDefinitionCharacteristicFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$ResearchElementDefinitionCharacteristicToJson(this);

  @override
  ResearchElementDefinitionCharacteristic clone() => throw UnimplementedError();
  @override
  ResearchElementDefinitionCharacteristic copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? definitionCodeableConcept,
    FhirCanonical? definitionCanonical,
    Element? definitionCanonicalElement,
    FhirExpression? definitionExpression,
    DataRequirement? definitionDataRequirement,
    List<UsageContext>? usageContext,
    FhirBoolean? exclude,
    Element? excludeElement,
    CodeableConcept? unitOfMeasure,
    FhirString? studyEffectiveDescription,
    Element? studyEffectiveDescriptionElement,
    FhirDateTime? studyEffectiveDateTime,
    Element? studyEffectiveDateTimeElement,
    Period? studyEffectivePeriod,
    FhirDuration? studyEffectiveDuration,
    Timing? studyEffectiveTiming,
    FhirDuration? studyEffectiveTimeFromStart,
    GroupMeasure? studyEffectiveGroupMeasure,
    Element? studyEffectiveGroupMeasureElement,
    FhirString? participantEffectiveDescription,
    Element? participantEffectiveDescriptionElement,
    FhirDateTime? participantEffectiveDateTime,
    Element? participantEffectiveDateTimeElement,
    Period? participantEffectivePeriod,
    FhirDuration? participantEffectiveDuration,
    Timing? participantEffectiveTiming,
    FhirDuration? participantEffectiveTimeFromStart,
    GroupMeasure? participantEffectiveGroupMeasure,
    Element? participantEffectiveGroupMeasureElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ResearchElementDefinitionCharacteristic(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      definitionCodeableConcept:
          definitionCodeableConcept ?? this.definitionCodeableConcept,
      definitionCanonical: definitionCanonical ?? this.definitionCanonical,
      definitionCanonicalElement:
          definitionCanonicalElement ?? this.definitionCanonicalElement,
      definitionExpression: definitionExpression ?? this.definitionExpression,
      definitionDataRequirement:
          definitionDataRequirement ?? this.definitionDataRequirement,
      usageContext: usageContext ?? this.usageContext,
      exclude: exclude ?? this.exclude,
      excludeElement: excludeElement ?? this.excludeElement,
      unitOfMeasure: unitOfMeasure ?? this.unitOfMeasure,
      studyEffectiveDescription:
          studyEffectiveDescription ?? this.studyEffectiveDescription,
      studyEffectiveDescriptionElement: studyEffectiveDescriptionElement ??
          this.studyEffectiveDescriptionElement,
      studyEffectiveDateTime:
          studyEffectiveDateTime ?? this.studyEffectiveDateTime,
      studyEffectiveDateTimeElement:
          studyEffectiveDateTimeElement ?? this.studyEffectiveDateTimeElement,
      studyEffectivePeriod: studyEffectivePeriod ?? this.studyEffectivePeriod,
      studyEffectiveDuration:
          studyEffectiveDuration ?? this.studyEffectiveDuration,
      studyEffectiveTiming: studyEffectiveTiming ?? this.studyEffectiveTiming,
      studyEffectiveTimeFromStart:
          studyEffectiveTimeFromStart ?? this.studyEffectiveTimeFromStart,
      studyEffectiveGroupMeasure:
          studyEffectiveGroupMeasure ?? this.studyEffectiveGroupMeasure,
      studyEffectiveGroupMeasureElement: studyEffectiveGroupMeasureElement ??
          this.studyEffectiveGroupMeasureElement,
      participantEffectiveDescription: participantEffectiveDescription ??
          this.participantEffectiveDescription,
      participantEffectiveDescriptionElement:
          participantEffectiveDescriptionElement ??
              this.participantEffectiveDescriptionElement,
      participantEffectiveDateTime:
          participantEffectiveDateTime ?? this.participantEffectiveDateTime,
      participantEffectiveDateTimeElement:
          participantEffectiveDateTimeElement ??
              this.participantEffectiveDateTimeElement,
      participantEffectivePeriod:
          participantEffectivePeriod ?? this.participantEffectivePeriod,
      participantEffectiveDuration:
          participantEffectiveDuration ?? this.participantEffectiveDuration,
      participantEffectiveTiming:
          participantEffectiveTiming ?? this.participantEffectiveTiming,
      participantEffectiveTimeFromStart: participantEffectiveTimeFromStart ??
          this.participantEffectiveTimeFromStart,
      participantEffectiveGroupMeasure: participantEffectiveGroupMeasure ??
          this.participantEffectiveGroupMeasure,
      participantEffectiveGroupMeasureElement:
          participantEffectiveGroupMeasureElement ??
              this.participantEffectiveGroupMeasureElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ResearchElementDefinitionCharacteristic.fromYaml(dynamic yaml) => yaml
          is String
      ? ResearchElementDefinitionCharacteristic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ResearchElementDefinitionCharacteristic.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ResearchElementDefinitionCharacteristic cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ResearchElementDefinitionCharacteristic.fromJsonString(
      String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ResearchElementDefinitionCharacteristic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
