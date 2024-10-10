import 'dart:convert';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [PlanDefinition] /// This resource allows for the definition of various types of plans as a
/// sharable, consumable, and executable artifact. The resource is general
/// enough to support the description of a broad range of clinical and
/// non-clinical artifacts such as clinical decision support rules, order sets,
/// protocols, and drug quality specifications.
class PlanDefinition extends DomainResource {
  PlanDefinition({
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
    this.subtitle,
    this.subtitleElement,
    this.type,
    required this.status,
    this.statusElement,
    this.experimental,
    this.experimentalElement,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.subjectCanonical,
    this.subjectCanonicalElement,
    this.date,
    this.dateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.description,
    this.descriptionElement,
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
    this.goal,
    this.action,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.PlanDefinition);

  @override
  String get fhirType => 'PlanDefinition';

  /// [url] /// An absolute URI that is used to identify this plan definition when it is
  /// referenced in a specification, model, design or an instance; also called
  /// its canonical identifier. This SHOULD be globally unique and SHOULD be a
  /// literal address at which at which an authoritative instance of this plan
  /// definition is (or will be) published. This URL can be the target of a
  /// canonical reference. It SHALL remain the same when the plan definition is
  /// stored on different servers.
  final FhirUri? url;
  final Element? urlElement;

  /// [identifier] /// A formal identifier that is used to identify this plan definition when it
  /// is represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  final List<Identifier>? identifier;

  /// [version] /// The identifier that is used to identify this version of the plan definition
  /// when it is referenced in a specification, model, design or instance. This
  /// is an arbitrary value managed by the plan definition author and is not
  /// expected to be globally unique. For example, it might be a timestamp (e.g.
  /// yyyymmdd) if a managed version is not available. There is also no
  /// expectation that versions can be placed in a lexicographical sequence. To
  /// provide a version consistent with the Decision Support Service
  /// specification, use the format Major.Minor.Revision (e.g. 1.0.0). For more
  /// information on versioning knowledge assets, refer to the Decision Support
  /// Service specification. Note that a version is required for non-experimental
  /// active artifacts.
  final FhirString? version;
  final Element? versionElement;

  /// [name] /// A natural language name identifying the plan definition. This name should
  /// be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;
  final Element? nameElement;

  /// [title] /// A short, descriptive, user-friendly title for the plan definition.
  final FhirString? title;
  final Element? titleElement;

  /// [subtitle] /// An explanatory or alternate title for the plan definition giving additional
  /// information about its content.
  final FhirString? subtitle;
  final Element? subtitleElement;

  /// [type] /// A high-level category for the plan definition that distinguishes the kinds
  /// of systems that would be interested in the plan definition.
  final CodeableConcept? type;

  /// [status] /// The status of this plan definition. Enables tracking the life-cycle of the
  /// content.
  final PublicationStatus status;
  final Element? statusElement;

  /// [experimental] /// A Boolean value to indicate that this plan definition is authored for
  /// testing purposes (or education/evaluation/marketing) and is not intended to
  /// be used for genuine usage.
  final FhirBoolean? experimental;
  final Element? experimentalElement;

  /// [subjectCodeableConcept] /// A code, group definition, or canonical reference that describes or
  /// identifies the intended subject of the plan definition. Canonical
  /// references are allowed to support the definition of protocols for drug and
  /// substance quality specifications, and is allowed to reference a
  /// MedicinalProductDefinition, SubstanceDefinition,
  /// AdministrableProductDefinition, ManufacturedItemDefinition, or
  /// PackagedProductDefinition resource.
  final CodeableConcept? subjectCodeableConcept;

  /// [subjectReference] /// A code, group definition, or canonical reference that describes or
  /// identifies the intended subject of the plan definition. Canonical
  /// references are allowed to support the definition of protocols for drug and
  /// substance quality specifications, and is allowed to reference a
  /// MedicinalProductDefinition, SubstanceDefinition,
  /// AdministrableProductDefinition, ManufacturedItemDefinition, or
  /// PackagedProductDefinition resource.
  final Reference? subjectReference;

  /// [subjectCanonical] /// A code, group definition, or canonical reference that describes or
  /// identifies the intended subject of the plan definition. Canonical
  /// references are allowed to support the definition of protocols for drug and
  /// substance quality specifications, and is allowed to reference a
  /// MedicinalProductDefinition, SubstanceDefinition,
  /// AdministrableProductDefinition, ManufacturedItemDefinition, or
  /// PackagedProductDefinition resource.
  final SubjectType? subjectCanonical;
  final Element? subjectCanonicalElement;

  /// [date] /// The date (and optionally time) when the plan definition was published. The
  /// date must change when the business version changes and it must change if
  /// the status code changes. In addition, it should change when the substantive
  /// content of the plan definition changes.
  final FhirDateTime? date;
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the plan
  /// definition.
  final FhirString? publisher;
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the plan definition from a
  /// consumer's perspective.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate plan definition instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the plan definition is intended to be
  /// used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose] /// Explanation of why this plan definition is needed and why it has been
  /// designed as it has.
  final FhirMarkdown? purpose;
  final Element? purposeElement;

  /// [usage] /// A detailed description of how the plan definition is used from a clinical
  /// perspective.
  final FhirString? usage;
  final Element? usageElement;

  /// [copyright] /// A copyright statement relating to the plan definition and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the plan definition.
  final FhirMarkdown? copyright;
  final Element? copyrightElement;

  /// [approvalDate] /// The date on which the resource content was approved by the publisher.
  /// Approval happens once when the content is officially approved for usage.
  final FhirDate? approvalDate;
  final Element? approvalDateElement;

  /// [lastReviewDate] /// The date on which the resource content was last reviewed. Review happens
  /// periodically after approval but does not change the original approval date.
  final FhirDate? lastReviewDate;
  final Element? lastReviewDateElement;

  /// [effectivePeriod] /// The period during which the plan definition content was or is planned to be
  /// in active use.
  final Period? effectivePeriod;

  /// [topic] /// Descriptive topics related to the content of the plan definition. Topics
  /// provide a high-level categorization of the definition that can be useful
  /// for filtering and searching.
  final List<CodeableConcept>? topic;

  /// [author] /// An individiual or organization primarily involved in the creation and
  /// maintenance of the content.
  final List<ContactDetail>? author;

  /// [editor] /// An individual or organization primarily responsible for internal coherence
  /// of the content.
  final List<ContactDetail>? editor;

  /// [reviewer] /// An individual or organization primarily responsible for review of some
  /// aspect of the content.
  final List<ContactDetail>? reviewer;

  /// [endorser] /// An individual or organization responsible for officially endorsing the
  /// content for use in some setting.
  final List<ContactDetail>? endorser;

  /// [relatedArtifact] /// Related artifacts such as additional documentation, justification, or
  /// bibliographic references.
  final List<RelatedArtifact>? relatedArtifact;

  /// [library_] /// A reference to a Library resource containing any formal logic used by the
  /// plan definition.
  final List<FhirCanonical>? library_;
  final List<Element>? libraryElement;

  /// [goal] /// A goal describes an expected outcome that activities within the plan are
  /// intended to achieve. For example, weight loss, restoring an activity of
  /// daily living, obtaining herd immunity via immunization, meeting a process
  /// improvement objective, meeting the acceptance criteria for a test as
  /// specified by a quality specification, etc.
  final List<PlanDefinitionGoal>? goal;

  /// [action] /// An action or group of actions to be taken as part of the plan. For example,
  /// in clinical care, an action would be to prescribe a particular indicated
  /// medication, or perform a particular test as appropriate. In pharmaceutical
  /// quality, an action would be the test that needs to be performed on a drug
  /// product as defined in the quality specification.
  final List<PlanDefinitionAction>? action;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.toJson();
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (url?.value != null) {
      json['url'] = url!.toJson();
    }
    if (urlElement != null) {
      json['_url'] = urlElement!.toJson();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    if (version?.value != null) {
      json['version'] = version!.toJson();
    }
    if (versionElement != null) {
      json['_version'] = versionElement!.toJson();
    }
    if (name?.value != null) {
      json['name'] = name!.toJson();
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (title?.value != null) {
      json['title'] = title!.toJson();
    }
    if (titleElement != null) {
      json['_title'] = titleElement!.toJson();
    }
    if (subtitle?.value != null) {
      json['subtitle'] = subtitle!.toJson();
    }
    if (subtitleElement != null) {
      json['_subtitle'] = subtitleElement!.toJson();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    json['status'] = status.toJson();
    if (experimental?.value != null) {
      json['experimental'] = experimental!.toJson();
    }
    if (experimentalElement != null) {
      json['_experimental'] = experimentalElement!.toJson();
    }
    if (subjectCodeableConcept != null) {
      json['subjectCodeableConcept'] = subjectCodeableConcept!.toJson();
    }
    if (subjectReference != null) {
      json['subjectReference'] = subjectReference!.toJson();
    }
    if (subjectCanonical != null) {
      json['subjectCanonical'] = subjectCanonical!.toJson();
    }
    if (date?.value != null) {
      json['date'] = date!.toJson();
    }
    if (dateElement != null) {
      json['_date'] = dateElement!.toJson();
    }
    if (publisher?.value != null) {
      json['publisher'] = publisher!.toJson();
    }
    if (publisherElement != null) {
      json['_publisher'] = publisherElement!.toJson();
    }
    if (contact != null && contact!.isNotEmpty) {
      json['contact'] =
          contact!.map<dynamic>((ContactDetail v) => v.toJson()).toList();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] =
          useContext!.map<dynamic>((UsageContext v) => v.toJson()).toList();
    }
    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      json['jurisdiction'] = jurisdiction!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (purpose?.value != null) {
      json['purpose'] = purpose!.toJson();
    }
    if (purposeElement != null) {
      json['_purpose'] = purposeElement!.toJson();
    }
    if (usage?.value != null) {
      json['usage'] = usage!.toJson();
    }
    if (usageElement != null) {
      json['_usage'] = usageElement!.toJson();
    }
    if (copyright?.value != null) {
      json['copyright'] = copyright!.toJson();
    }
    if (copyrightElement != null) {
      json['_copyright'] = copyrightElement!.toJson();
    }
    if (approvalDate?.value != null) {
      json['approvalDate'] = approvalDate!.toJson();
    }
    if (approvalDateElement != null) {
      json['_approvalDate'] = approvalDateElement!.toJson();
    }
    if (lastReviewDate?.value != null) {
      json['lastReviewDate'] = lastReviewDate!.toJson();
    }
    if (lastReviewDateElement != null) {
      json['_lastReviewDate'] = lastReviewDateElement!.toJson();
    }
    if (effectivePeriod != null) {
      json['effectivePeriod'] = effectivePeriod!.toJson();
    }
    if (topic != null && topic!.isNotEmpty) {
      json['topic'] =
          topic!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (author != null && author!.isNotEmpty) {
      json['author'] =
          author!.map<dynamic>((ContactDetail v) => v.toJson()).toList();
    }
    if (editor != null && editor!.isNotEmpty) {
      json['editor'] =
          editor!.map<dynamic>((ContactDetail v) => v.toJson()).toList();
    }
    if (reviewer != null && reviewer!.isNotEmpty) {
      json['reviewer'] =
          reviewer!.map<dynamic>((ContactDetail v) => v.toJson()).toList();
    }
    if (endorser != null && endorser!.isNotEmpty) {
      json['endorser'] =
          endorser!.map<dynamic>((ContactDetail v) => v.toJson()).toList();
    }
    if (relatedArtifact != null && relatedArtifact!.isNotEmpty) {
      json['relatedArtifact'] = relatedArtifact!
          .map<dynamic>((RelatedArtifact v) => v.toJson())
          .toList();
    }
    if (library_ != null && library_!.isNotEmpty) {
      json['library'] = library_!.map((FhirCanonical v) => v.toJson()).toList();
    }
    if (libraryElement != null && libraryElement!.isNotEmpty) {
      json['_library'] =
          libraryElement!.map((Element v) => v.toJson()).toList();
    }
    if (goal != null && goal!.isNotEmpty) {
      json['goal'] =
          goal!.map<dynamic>((PlanDefinitionGoal v) => v.toJson()).toList();
    }
    if (action != null && action!.isNotEmpty) {
      json['action'] =
          action!.map<dynamic>((PlanDefinitionAction v) => v.toJson()).toList();
    }
    return json;
  }

  factory PlanDefinition.fromJson(Map<String, dynamic> json) {
    return PlanDefinition(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(json['_language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      url: json['url'] != null ? FhirUri.fromJson(json['url']) : null,
      urlElement: json['_url'] != null
          ? Element.fromJson(json['_url'] as Map<String, dynamic>)
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      version:
          json['version'] != null ? FhirString.fromJson(json['version']) : null,
      versionElement: json['_version'] != null
          ? Element.fromJson(json['_version'] as Map<String, dynamic>)
          : null,
      name: json['name'] != null ? FhirString.fromJson(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      title: json['title'] != null ? FhirString.fromJson(json['title']) : null,
      titleElement: json['_title'] != null
          ? Element.fromJson(json['_title'] as Map<String, dynamic>)
          : null,
      subtitle: json['subtitle'] != null
          ? FhirString.fromJson(json['subtitle'])
          : null,
      subtitleElement: json['_subtitle'] != null
          ? Element.fromJson(json['_subtitle'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      status: PublicationStatus.fromJson(json['status']),
      statusElement: json['_status'] != null
          ? Element.fromJson(json['_status'] as Map<String, dynamic>)
          : null,
      experimental: json['experimental'] != null
          ? FhirBoolean.fromJson(json['experimental'])
          : null,
      experimentalElement: json['_experimental'] != null
          ? Element.fromJson(json['_experimental'] as Map<String, dynamic>)
          : null,
      subjectCodeableConcept: json['subjectCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['subjectCodeableConcept'] as Map<String, dynamic>)
          : null,
      subjectReference: json['subjectReference'] != null
          ? Reference.fromJson(json['subjectReference'] as Map<String, dynamic>)
          : null,
      subjectCanonical: json['subjectCanonical'] != null
          ? SubjectType.fromJson(json['subjectCanonical'])
          : null,
      subjectCanonicalElement: json['_subjectCanonical'] != null
          ? Element.fromJson(json['_subjectCanonical'] as Map<String, dynamic>)
          : null,
      date: json['date'] != null ? FhirDateTime.fromJson(json['date']) : null,
      dateElement: json['_date'] != null
          ? Element.fromJson(json['_date'] as Map<String, dynamic>)
          : null,
      publisher: json['publisher'] != null
          ? FhirString.fromJson(json['publisher'])
          : null,
      publisherElement: json['_publisher'] != null
          ? Element.fromJson(json['_publisher'] as Map<String, dynamic>)
          : null,
      contact: json['contact'] != null
          ? (json['contact'] as List<dynamic>)
              .map<ContactDetail>((dynamic v) =>
                  ContactDetail.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      description: json['description'] != null
          ? FhirMarkdown.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      useContext: json['useContext'] != null
          ? (json['useContext'] as List<dynamic>)
              .map<UsageContext>((dynamic v) =>
                  UsageContext.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      jurisdiction: json['jurisdiction'] != null
          ? (json['jurisdiction'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      purpose: json['purpose'] != null
          ? FhirMarkdown.fromJson(json['purpose'])
          : null,
      purposeElement: json['_purpose'] != null
          ? Element.fromJson(json['_purpose'] as Map<String, dynamic>)
          : null,
      usage: json['usage'] != null ? FhirString.fromJson(json['usage']) : null,
      usageElement: json['_usage'] != null
          ? Element.fromJson(json['_usage'] as Map<String, dynamic>)
          : null,
      copyright: json['copyright'] != null
          ? FhirMarkdown.fromJson(json['copyright'])
          : null,
      copyrightElement: json['_copyright'] != null
          ? Element.fromJson(json['_copyright'] as Map<String, dynamic>)
          : null,
      approvalDate: json['approvalDate'] != null
          ? FhirDate.fromJson(json['approvalDate'])
          : null,
      approvalDateElement: json['_approvalDate'] != null
          ? Element.fromJson(json['_approvalDate'] as Map<String, dynamic>)
          : null,
      lastReviewDate: json['lastReviewDate'] != null
          ? FhirDate.fromJson(json['lastReviewDate'])
          : null,
      lastReviewDateElement: json['_lastReviewDate'] != null
          ? Element.fromJson(json['_lastReviewDate'] as Map<String, dynamic>)
          : null,
      effectivePeriod: json['effectivePeriod'] != null
          ? Period.fromJson(json['effectivePeriod'] as Map<String, dynamic>)
          : null,
      topic: json['topic'] != null
          ? (json['topic'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      author: json['author'] != null
          ? (json['author'] as List<dynamic>)
              .map<ContactDetail>((dynamic v) =>
                  ContactDetail.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      editor: json['editor'] != null
          ? (json['editor'] as List<dynamic>)
              .map<ContactDetail>((dynamic v) =>
                  ContactDetail.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      reviewer: json['reviewer'] != null
          ? (json['reviewer'] as List<dynamic>)
              .map<ContactDetail>((dynamic v) =>
                  ContactDetail.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      endorser: json['endorser'] != null
          ? (json['endorser'] as List<dynamic>)
              .map<ContactDetail>((dynamic v) =>
                  ContactDetail.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      relatedArtifact: json['relatedArtifact'] != null
          ? (json['relatedArtifact'] as List<dynamic>)
              .map<RelatedArtifact>((dynamic v) =>
                  RelatedArtifact.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      library_: json['library'] != null
          ? (json['library'] as List<dynamic>)
              .map<FhirCanonical>(
                  (dynamic v) => FhirCanonical.fromJson(v as dynamic))
              .toList()
          : null,
      libraryElement: json['_library'] != null
          ? (json['_library'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      goal: json['goal'] != null
          ? (json['goal'] as List<dynamic>)
              .map<PlanDefinitionGoal>((dynamic v) =>
                  PlanDefinitionGoal.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      action: json['action'] != null
          ? (json['action'] as List<dynamic>)
              .map<PlanDefinitionAction>((dynamic v) =>
                  PlanDefinitionAction.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  PlanDefinition clone() => throw UnimplementedError();
  @override
  PlanDefinition copyWith({
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
    FhirString? subtitle,
    Element? subtitleElement,
    CodeableConcept? type,
    PublicationStatus? status,
    Element? statusElement,
    FhirBoolean? experimental,
    Element? experimentalElement,
    CodeableConcept? subjectCodeableConcept,
    Reference? subjectReference,
    SubjectType? subjectCanonical,
    Element? subjectCanonicalElement,
    FhirDateTime? date,
    Element? dateElement,
    FhirString? publisher,
    Element? publisherElement,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    Element? descriptionElement,
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
    List<PlanDefinitionGoal>? goal,
    List<PlanDefinitionAction>? action,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return PlanDefinition(
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
      subtitle: subtitle ?? this.subtitle,
      subtitleElement: subtitleElement ?? this.subtitleElement,
      type: type ?? this.type,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      experimental: experimental ?? this.experimental,
      experimentalElement: experimentalElement ?? this.experimentalElement,
      subjectCodeableConcept:
          subjectCodeableConcept ?? this.subjectCodeableConcept,
      subjectReference: subjectReference ?? this.subjectReference,
      subjectCanonical: subjectCanonical ?? this.subjectCanonical,
      subjectCanonicalElement:
          subjectCanonicalElement ?? this.subjectCanonicalElement,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      publisher: publisher ?? this.publisher,
      publisherElement: publisherElement ?? this.publisherElement,
      contact: contact ?? this.contact,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
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
      goal: goal ?? this.goal,
      action: action ?? this.action,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory PlanDefinition.fromYaml(dynamic yaml) => yaml is String
      ? PlanDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? PlanDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'PlanDefinition cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory PlanDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PlanDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [PlanDefinitionGoal] /// A goal describes an expected outcome that activities within the plan are
/// intended to achieve. For example, weight loss, restoring an activity of
/// daily living, obtaining herd immunity via immunization, meeting a process
/// improvement objective, meeting the acceptance criteria for a test as
/// specified by a quality specification, etc.
class PlanDefinitionGoal extends BackboneElement {
  PlanDefinitionGoal({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.category,
    required this.description,
    this.priority,
    this.start,
    this.addresses,
    this.documentation,
    this.target,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'PlanDefinitionGoal';

  /// [category] /// Indicates a category the goal falls within.
  final CodeableConcept? category;

  /// [description] /// Human-readable and/or coded description of a specific desired objective of
  /// care, such as "control blood pressure" or "negotiate an obstacle course" or
  /// "dance with child at wedding".
  final CodeableConcept description;

  /// [priority] /// Identifies the expected level of importance associated with
  /// reaching/sustaining the defined goal.
  final CodeableConcept? priority;

  /// [start] /// The event after which the goal should begin being pursued.
  final CodeableConcept? start;

  /// [addresses] /// Identifies problems, conditions, issues, or concerns the goal is intended
  /// to address.
  final List<CodeableConcept>? addresses;

  /// [documentation] /// Didactic or other informational resources associated with the goal that
  /// provide further supporting information about the goal. Information
  /// resources can include inline text commentary and links to web resources.
  final List<RelatedArtifact>? documentation;

  /// [target] /// Indicates what should be done and within what timeframe.
  final List<PlanDefinitionTarget>? target;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (category != null) {
      json['category'] = category!.toJson();
    }
    json['description'] = description.toJson();
    if (priority != null) {
      json['priority'] = priority!.toJson();
    }
    if (start != null) {
      json['start'] = start!.toJson();
    }
    if (addresses != null && addresses!.isNotEmpty) {
      json['addresses'] =
          addresses!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (documentation != null && documentation!.isNotEmpty) {
      json['documentation'] = documentation!
          .map<dynamic>((RelatedArtifact v) => v.toJson())
          .toList();
    }
    if (target != null && target!.isNotEmpty) {
      json['target'] =
          target!.map<dynamic>((PlanDefinitionTarget v) => v.toJson()).toList();
    }
    return json;
  }

  factory PlanDefinitionGoal.fromJson(Map<String, dynamic> json) {
    return PlanDefinitionGoal(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      category: json['category'] != null
          ? CodeableConcept.fromJson(json['category'] as Map<String, dynamic>)
          : null,
      description:
          CodeableConcept.fromJson(json['description'] as Map<String, dynamic>),
      priority: json['priority'] != null
          ? CodeableConcept.fromJson(json['priority'] as Map<String, dynamic>)
          : null,
      start: json['start'] != null
          ? CodeableConcept.fromJson(json['start'] as Map<String, dynamic>)
          : null,
      addresses: json['addresses'] != null
          ? (json['addresses'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      documentation: json['documentation'] != null
          ? (json['documentation'] as List<dynamic>)
              .map<RelatedArtifact>((dynamic v) =>
                  RelatedArtifact.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      target: json['target'] != null
          ? (json['target'] as List<dynamic>)
              .map<PlanDefinitionTarget>((dynamic v) =>
                  PlanDefinitionTarget.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  PlanDefinitionGoal clone() => throw UnimplementedError();
  @override
  PlanDefinitionGoal copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? category,
    CodeableConcept? description,
    CodeableConcept? priority,
    CodeableConcept? start,
    List<CodeableConcept>? addresses,
    List<RelatedArtifact>? documentation,
    List<PlanDefinitionTarget>? target,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return PlanDefinitionGoal(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      description: description ?? this.description,
      priority: priority ?? this.priority,
      start: start ?? this.start,
      addresses: addresses ?? this.addresses,
      documentation: documentation ?? this.documentation,
      target: target ?? this.target,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory PlanDefinitionGoal.fromYaml(dynamic yaml) => yaml is String
      ? PlanDefinitionGoal.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? PlanDefinitionGoal.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'PlanDefinitionGoal cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory PlanDefinitionGoal.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PlanDefinitionGoal.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [PlanDefinitionTarget] /// Indicates what should be done and within what timeframe.
class PlanDefinitionTarget extends BackboneElement {
  PlanDefinitionTarget({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.measure,
    this.detailQuantity,
    this.detailRange,
    this.detailCodeableConcept,
    this.due,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'PlanDefinitionTarget';

  /// [measure] /// The parameter whose value is to be tracked, e.g. body weight, blood
  /// pressure, or hemoglobin A1c level.
  final CodeableConcept? measure;

  /// [detailQuantity] /// The target value of the measure to be achieved to signify fulfillment of
  /// the goal, e.g. 150 pounds or 7.0%, or in the case of pharmaceutical quality
  /// - NMT 0.6%, Clear solution, etc. Either the high or low or both values of
  /// the range can be specified. When a low value is missing, it indicates that
  /// the goal is achieved at any value at or below the high value. Similarly, if
  /// the high value is missing, it indicates that the goal is achieved at any
  /// value at or above the low value.
  final Quantity? detailQuantity;

  /// [detailRange] /// The target value of the measure to be achieved to signify fulfillment of
  /// the goal, e.g. 150 pounds or 7.0%, or in the case of pharmaceutical quality
  /// - NMT 0.6%, Clear solution, etc. Either the high or low or both values of
  /// the range can be specified. When a low value is missing, it indicates that
  /// the goal is achieved at any value at or below the high value. Similarly, if
  /// the high value is missing, it indicates that the goal is achieved at any
  /// value at or above the low value.
  final Range? detailRange;

  /// [detailCodeableConcept] /// The target value of the measure to be achieved to signify fulfillment of
  /// the goal, e.g. 150 pounds or 7.0%, or in the case of pharmaceutical quality
  /// - NMT 0.6%, Clear solution, etc. Either the high or low or both values of
  /// the range can be specified. When a low value is missing, it indicates that
  /// the goal is achieved at any value at or below the high value. Similarly, if
  /// the high value is missing, it indicates that the goal is achieved at any
  /// value at or above the low value.
  final CodeableConcept? detailCodeableConcept;

  /// [due] /// Indicates the timeframe after the start of the goal in which the goal
  /// should be met.
  final FhirDuration? due;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (measure != null) {
      json['measure'] = measure!.toJson();
    }
    if (detailQuantity != null) {
      json['detailQuantity'] = detailQuantity!.toJson();
    }
    if (detailRange != null) {
      json['detailRange'] = detailRange!.toJson();
    }
    if (detailCodeableConcept != null) {
      json['detailCodeableConcept'] = detailCodeableConcept!.toJson();
    }
    if (due != null) {
      json['due'] = due!.toJson();
    }
    return json;
  }

  factory PlanDefinitionTarget.fromJson(Map<String, dynamic> json) {
    return PlanDefinitionTarget(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      measure: json['measure'] != null
          ? CodeableConcept.fromJson(json['measure'] as Map<String, dynamic>)
          : null,
      detailQuantity: json['detailQuantity'] != null
          ? Quantity.fromJson(json['detailQuantity'] as Map<String, dynamic>)
          : null,
      detailRange: json['detailRange'] != null
          ? Range.fromJson(json['detailRange'] as Map<String, dynamic>)
          : null,
      detailCodeableConcept: json['detailCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['detailCodeableConcept'] as Map<String, dynamic>)
          : null,
      due: json['due'] != null
          ? FhirDuration.fromJson(json['due'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  PlanDefinitionTarget clone() => throw UnimplementedError();
  @override
  PlanDefinitionTarget copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? measure,
    Quantity? detailQuantity,
    Range? detailRange,
    CodeableConcept? detailCodeableConcept,
    FhirDuration? due,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return PlanDefinitionTarget(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      measure: measure ?? this.measure,
      detailQuantity: detailQuantity ?? this.detailQuantity,
      detailRange: detailRange ?? this.detailRange,
      detailCodeableConcept:
          detailCodeableConcept ?? this.detailCodeableConcept,
      due: due ?? this.due,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory PlanDefinitionTarget.fromYaml(dynamic yaml) => yaml is String
      ? PlanDefinitionTarget.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? PlanDefinitionTarget.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'PlanDefinitionTarget cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory PlanDefinitionTarget.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PlanDefinitionTarget.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [PlanDefinitionAction] /// An action or group of actions to be taken as part of the plan. For example,
/// in clinical care, an action would be to prescribe a particular indicated
/// medication, or perform a particular test as appropriate. In pharmaceutical
/// quality, an action would be the test that needs to be performed on a drug
/// product as defined in the quality specification.
class PlanDefinitionAction extends BackboneElement {
  PlanDefinitionAction({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.prefix,
    this.prefixElement,
    this.title,
    this.titleElement,
    this.description,
    this.descriptionElement,
    this.textEquivalent,
    this.textEquivalentElement,
    this.priority,
    this.priorityElement,
    this.code,
    this.reason,
    this.documentation,
    this.goalId,
    this.goalIdElement,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.subjectCanonical,
    this.subjectCanonicalElement,
    this.trigger,
    this.condition,
    this.input,
    this.output,
    this.relatedAction,
    this.timingDateTime,
    this.timingDateTimeElement,
    this.timingAge,
    this.timingPeriod,
    this.timingDuration,
    this.timingRange,
    this.timingTiming,
    this.participant,
    this.type,
    this.groupingBehavior,
    this.groupingBehaviorElement,
    this.selectionBehavior,
    this.selectionBehaviorElement,
    this.requiredBehavior,
    this.requiredBehaviorElement,
    this.precheckBehavior,
    this.precheckBehaviorElement,
    this.cardinalityBehavior,
    this.cardinalityBehaviorElement,
    this.definitionCanonical,
    this.definitionCanonicalElement,
    this.definitionUri,
    this.definitionUriElement,
    this.transform,
    this.transformElement,
    this.dynamicValue,
    this.action,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'PlanDefinitionAction';

  /// [prefix] /// A user-visible prefix for the action.
  final FhirString? prefix;
  final Element? prefixElement;

  /// [title] /// The textual description of the action displayed to a user. For example,
  /// when the action is a test to be performed, the title would be the title of
  /// the test such as Assay by HPLC.
  final FhirString? title;
  final Element? titleElement;

  /// [description] /// A brief description of the action used to provide a summary to display to
  /// the user.
  final FhirString? description;
  final Element? descriptionElement;

  /// [textEquivalent] /// A text equivalent of the action to be performed. This provides a
  /// human-interpretable description of the action when the definition is
  /// consumed by a system that might not be capable of interpreting it
  /// dynamically.
  final FhirString? textEquivalent;
  final Element? textEquivalentElement;

  /// [priority] /// Indicates how quickly the action should be addressed with respect to other
  /// actions.
  final RequestPriority? priority;
  final Element? priorityElement;

  /// [code] /// A code that provides a meaning, grouping, or classification for the action
  /// or action group. For example, a section may have a LOINC code for the
  /// section of a documentation template. In pharmaceutical quality, an action
  /// (Test) such as pH could be classified as a physical property.
  final List<CodeableConcept>? code;

  /// [reason] /// A description of why this action is necessary or appropriate.
  final List<CodeableConcept>? reason;

  /// [documentation] /// Didactic or other informational resources associated with the action that
  /// can be provided to the CDS recipient. Information resources can include
  /// inline text commentary and links to web resources.
  final List<RelatedArtifact>? documentation;

  /// [goalId] /// Identifies goals that this action supports. The reference must be to a goal
  /// element defined within this plan definition. In pharmaceutical quality, a
  /// goal represents acceptance criteria (Goal) for a given action (Test), so
  /// the goalId would be the unique id of a defined goal element establishing
  /// the acceptance criteria for the action.
  final List<FhirId>? goalId;
  final List<Element>? goalIdElement;

  /// [subjectCodeableConcept] /// A code, group definition, or canonical reference that describes the
  /// intended subject of the action and its children, if any. Canonical
  /// references are allowed to support the definition of protocols for drug and
  /// substance quality specifications, and is allowed to reference a
  /// MedicinalProductDefinition, SubstanceDefinition,
  /// AdministrableProductDefinition, ManufacturedItemDefinition, or
  /// PackagedProductDefinition resource.
  final CodeableConcept? subjectCodeableConcept;

  /// [subjectReference] /// A code, group definition, or canonical reference that describes the
  /// intended subject of the action and its children, if any. Canonical
  /// references are allowed to support the definition of protocols for drug and
  /// substance quality specifications, and is allowed to reference a
  /// MedicinalProductDefinition, SubstanceDefinition,
  /// AdministrableProductDefinition, ManufacturedItemDefinition, or
  /// PackagedProductDefinition resource.
  final Reference? subjectReference;

  /// [subjectCanonical] /// A code, group definition, or canonical reference that describes the
  /// intended subject of the action and its children, if any. Canonical
  /// references are allowed to support the definition of protocols for drug and
  /// substance quality specifications, and is allowed to reference a
  /// MedicinalProductDefinition, SubstanceDefinition,
  /// AdministrableProductDefinition, ManufacturedItemDefinition, or
  /// PackagedProductDefinition resource.
  final SubjectType? subjectCanonical;
  final Element? subjectCanonicalElement;

  /// [trigger] /// A description of when the action should be triggered.
  final List<TriggerDefinition>? trigger;

  /// [condition] /// An expression that describes applicability criteria or start/stop
  /// conditions for the action.
  final List<PlanDefinitionCondition>? condition;

  /// [input] /// Defines input data requirements for the action.
  final List<DataRequirement>? input;

  /// [output] /// Defines the outputs of the action, if any.
  final List<DataRequirement>? output;

  /// [relatedAction] /// A relationship to another action such as "before" or "30-60 minutes after
  /// start of".
  final List<PlanDefinitionRelatedAction>? relatedAction;

  /// [timingDateTime] /// An optional value describing when the action should be performed.
  final FhirDateTime? timingDateTime;
  final Element? timingDateTimeElement;

  /// [timingAge] /// An optional value describing when the action should be performed.
  final Age? timingAge;

  /// [timingPeriod] /// An optional value describing when the action should be performed.
  final Period? timingPeriod;

  /// [timingDuration] /// An optional value describing when the action should be performed.
  final FhirDuration? timingDuration;

  /// [timingRange] /// An optional value describing when the action should be performed.
  final Range? timingRange;

  /// [timingTiming] /// An optional value describing when the action should be performed.
  final Timing? timingTiming;

  /// [participant] /// Indicates who should participate in performing the action described.
  final List<PlanDefinitionParticipant>? participant;

  /// [type] /// The type of action to perform (create, update, remove).
  final CodeableConcept? type;

  /// [groupingBehavior] /// Defines the grouping behavior for the action and its children.
  final ActionGroupingBehavior? groupingBehavior;
  final Element? groupingBehaviorElement;

  /// [selectionBehavior] /// Defines the selection behavior for the action and its children.
  final ActionSelectionBehavior? selectionBehavior;
  final Element? selectionBehaviorElement;

  /// [requiredBehavior] /// Defines the required behavior for the action.
  final ActionRequiredBehavior? requiredBehavior;
  final Element? requiredBehaviorElement;

  /// [precheckBehavior] /// Defines whether the action should usually be preselected.
  final ActionPrecheckBehavior? precheckBehavior;
  final Element? precheckBehaviorElement;

  /// [cardinalityBehavior] /// Defines whether the action can be selected multiple times.
  final ActionCardinalityBehavior? cardinalityBehavior;
  final Element? cardinalityBehaviorElement;

  /// [definitionCanonical] /// A reference to an ActivityDefinition that describes the action to be taken
  /// in detail, or a PlanDefinition that describes a series of actions to be
  /// taken.
  final FhirCanonical? definitionCanonical;
  final Element? definitionCanonicalElement;

  /// [definitionUri] /// A reference to an ActivityDefinition that describes the action to be taken
  /// in detail, or a PlanDefinition that describes a series of actions to be
  /// taken.
  final FhirUri? definitionUri;
  final Element? definitionUriElement;

  /// [transform] /// A reference to a StructureMap resource that defines a transform that can be
  /// executed to produce the intent resource using the ActivityDefinition
  /// instance as the input.
  final FhirCanonical? transform;
  final Element? transformElement;

  /// [dynamicValue] /// Customizations that should be applied to the statically defined resource.
  /// For example, if the dosage of a medication must be computed based on the
  /// patient's weight, a customization would be used to specify an expression
  /// that calculated the weight, and the path on the resource that would contain
  /// the result.
  final List<PlanDefinitionDynamicValue>? dynamicValue;

  /// [action] /// Sub actions that are contained within the action. The behavior of this
  /// action determines the functionality of the sub-actions. For example, a
  /// selection behavior of at-most-one indicates that of the sub-actions, at
  /// most one may be chosen as part of realizing the action definition.
  final List<PlanDefinitionAction>? action;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (prefix?.value != null) {
      json['prefix'] = prefix!.toJson();
    }
    if (prefixElement != null) {
      json['_prefix'] = prefixElement!.toJson();
    }
    if (title?.value != null) {
      json['title'] = title!.toJson();
    }
    if (titleElement != null) {
      json['_title'] = titleElement!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (textEquivalent?.value != null) {
      json['textEquivalent'] = textEquivalent!.toJson();
    }
    if (textEquivalentElement != null) {
      json['_textEquivalent'] = textEquivalentElement!.toJson();
    }
    if (priority != null) {
      json['priority'] = priority!.toJson();
    }
    if (code != null && code!.isNotEmpty) {
      json['code'] =
          code!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (reason != null && reason!.isNotEmpty) {
      json['reason'] =
          reason!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (documentation != null && documentation!.isNotEmpty) {
      json['documentation'] = documentation!
          .map<dynamic>((RelatedArtifact v) => v.toJson())
          .toList();
    }
    if (goalId != null && goalId!.isNotEmpty) {
      json['goalId'] = goalId!.map((FhirId v) => v.toJson()).toList();
    }
    if (goalIdElement != null && goalIdElement!.isNotEmpty) {
      json['_goalId'] = goalIdElement!.map((Element v) => v.toJson()).toList();
    }
    if (subjectCodeableConcept != null) {
      json['subjectCodeableConcept'] = subjectCodeableConcept!.toJson();
    }
    if (subjectReference != null) {
      json['subjectReference'] = subjectReference!.toJson();
    }
    if (subjectCanonical != null) {
      json['subjectCanonical'] = subjectCanonical!.toJson();
    }
    if (trigger != null && trigger!.isNotEmpty) {
      json['trigger'] =
          trigger!.map<dynamic>((TriggerDefinition v) => v.toJson()).toList();
    }
    if (condition != null && condition!.isNotEmpty) {
      json['condition'] = condition!
          .map<dynamic>((PlanDefinitionCondition v) => v.toJson())
          .toList();
    }
    if (input != null && input!.isNotEmpty) {
      json['input'] =
          input!.map<dynamic>((DataRequirement v) => v.toJson()).toList();
    }
    if (output != null && output!.isNotEmpty) {
      json['output'] =
          output!.map<dynamic>((DataRequirement v) => v.toJson()).toList();
    }
    if (relatedAction != null && relatedAction!.isNotEmpty) {
      json['relatedAction'] = relatedAction!
          .map<dynamic>((PlanDefinitionRelatedAction v) => v.toJson())
          .toList();
    }
    if (timingDateTime?.value != null) {
      json['timingDateTime'] = timingDateTime!.toJson();
    }
    if (timingDateTimeElement != null) {
      json['_timingDateTime'] = timingDateTimeElement!.toJson();
    }
    if (timingAge != null) {
      json['timingAge'] = timingAge!.toJson();
    }
    if (timingPeriod != null) {
      json['timingPeriod'] = timingPeriod!.toJson();
    }
    if (timingDuration != null) {
      json['timingDuration'] = timingDuration!.toJson();
    }
    if (timingRange != null) {
      json['timingRange'] = timingRange!.toJson();
    }
    if (timingTiming != null) {
      json['timingTiming'] = timingTiming!.toJson();
    }
    if (participant != null && participant!.isNotEmpty) {
      json['participant'] = participant!
          .map<dynamic>((PlanDefinitionParticipant v) => v.toJson())
          .toList();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (groupingBehavior != null) {
      json['groupingBehavior'] = groupingBehavior!.toJson();
    }
    if (selectionBehavior != null) {
      json['selectionBehavior'] = selectionBehavior!.toJson();
    }
    if (requiredBehavior != null) {
      json['requiredBehavior'] = requiredBehavior!.toJson();
    }
    if (precheckBehavior != null) {
      json['precheckBehavior'] = precheckBehavior!.toJson();
    }
    if (cardinalityBehavior != null) {
      json['cardinalityBehavior'] = cardinalityBehavior!.toJson();
    }
    if (definitionCanonical?.value != null) {
      json['definitionCanonical'] = definitionCanonical!.toJson();
    }
    if (definitionCanonicalElement != null) {
      json['_definitionCanonical'] = definitionCanonicalElement!.toJson();
    }
    if (definitionUri?.value != null) {
      json['definitionUri'] = definitionUri!.toJson();
    }
    if (definitionUriElement != null) {
      json['_definitionUri'] = definitionUriElement!.toJson();
    }
    if (transform?.value != null) {
      json['transform'] = transform!.toJson();
    }
    if (transformElement != null) {
      json['_transform'] = transformElement!.toJson();
    }
    if (dynamicValue != null && dynamicValue!.isNotEmpty) {
      json['dynamicValue'] = dynamicValue!
          .map<dynamic>((PlanDefinitionDynamicValue v) => v.toJson())
          .toList();
    }
    if (action != null && action!.isNotEmpty) {
      json['action'] =
          action!.map<dynamic>((PlanDefinitionAction v) => v.toJson()).toList();
    }
    return json;
  }

  factory PlanDefinitionAction.fromJson(Map<String, dynamic> json) {
    return PlanDefinitionAction(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      prefix:
          json['prefix'] != null ? FhirString.fromJson(json['prefix']) : null,
      prefixElement: json['_prefix'] != null
          ? Element.fromJson(json['_prefix'] as Map<String, dynamic>)
          : null,
      title: json['title'] != null ? FhirString.fromJson(json['title']) : null,
      titleElement: json['_title'] != null
          ? Element.fromJson(json['_title'] as Map<String, dynamic>)
          : null,
      description: json['description'] != null
          ? FhirString.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      textEquivalent: json['textEquivalent'] != null
          ? FhirString.fromJson(json['textEquivalent'])
          : null,
      textEquivalentElement: json['_textEquivalent'] != null
          ? Element.fromJson(json['_textEquivalent'] as Map<String, dynamic>)
          : null,
      priority: json['priority'] != null
          ? RequestPriority.fromJson(json['priority'])
          : null,
      priorityElement: json['_priority'] != null
          ? Element.fromJson(json['_priority'] as Map<String, dynamic>)
          : null,
      code: json['code'] != null
          ? (json['code'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      reason: json['reason'] != null
          ? (json['reason'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      documentation: json['documentation'] != null
          ? (json['documentation'] as List<dynamic>)
              .map<RelatedArtifact>((dynamic v) =>
                  RelatedArtifact.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      goalId: json['goalId'] != null
          ? (json['goalId'] as List<dynamic>)
              .map<FhirId>((dynamic v) => FhirId.fromJson(v as dynamic))
              .toList()
          : null,
      goalIdElement: json['_goalId'] != null
          ? (json['_goalId'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      subjectCodeableConcept: json['subjectCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['subjectCodeableConcept'] as Map<String, dynamic>)
          : null,
      subjectReference: json['subjectReference'] != null
          ? Reference.fromJson(json['subjectReference'] as Map<String, dynamic>)
          : null,
      subjectCanonical: json['subjectCanonical'] != null
          ? SubjectType.fromJson(json['subjectCanonical'])
          : null,
      subjectCanonicalElement: json['_subjectCanonical'] != null
          ? Element.fromJson(json['_subjectCanonical'] as Map<String, dynamic>)
          : null,
      trigger: json['trigger'] != null
          ? (json['trigger'] as List<dynamic>)
              .map<TriggerDefinition>((dynamic v) =>
                  TriggerDefinition.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      condition: json['condition'] != null
          ? (json['condition'] as List<dynamic>)
              .map<PlanDefinitionCondition>((dynamic v) =>
                  PlanDefinitionCondition.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      input: json['input'] != null
          ? (json['input'] as List<dynamic>)
              .map<DataRequirement>((dynamic v) =>
                  DataRequirement.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      output: json['output'] != null
          ? (json['output'] as List<dynamic>)
              .map<DataRequirement>((dynamic v) =>
                  DataRequirement.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      relatedAction: json['relatedAction'] != null
          ? (json['relatedAction'] as List<dynamic>)
              .map<PlanDefinitionRelatedAction>((dynamic v) =>
                  PlanDefinitionRelatedAction.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      timingDateTime: json['timingDateTime'] != null
          ? FhirDateTime.fromJson(json['timingDateTime'])
          : null,
      timingDateTimeElement: json['_timingDateTime'] != null
          ? Element.fromJson(json['_timingDateTime'] as Map<String, dynamic>)
          : null,
      timingAge: json['timingAge'] != null
          ? Age.fromJson(json['timingAge'] as Map<String, dynamic>)
          : null,
      timingPeriod: json['timingPeriod'] != null
          ? Period.fromJson(json['timingPeriod'] as Map<String, dynamic>)
          : null,
      timingDuration: json['timingDuration'] != null
          ? FhirDuration.fromJson(
              json['timingDuration'] as Map<String, dynamic>)
          : null,
      timingRange: json['timingRange'] != null
          ? Range.fromJson(json['timingRange'] as Map<String, dynamic>)
          : null,
      timingTiming: json['timingTiming'] != null
          ? Timing.fromJson(json['timingTiming'] as Map<String, dynamic>)
          : null,
      participant: json['participant'] != null
          ? (json['participant'] as List<dynamic>)
              .map<PlanDefinitionParticipant>((dynamic v) =>
                  PlanDefinitionParticipant.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      groupingBehavior: json['groupingBehavior'] != null
          ? ActionGroupingBehavior.fromJson(json['groupingBehavior'])
          : null,
      groupingBehaviorElement: json['_groupingBehavior'] != null
          ? Element.fromJson(json['_groupingBehavior'] as Map<String, dynamic>)
          : null,
      selectionBehavior: json['selectionBehavior'] != null
          ? ActionSelectionBehavior.fromJson(json['selectionBehavior'])
          : null,
      selectionBehaviorElement: json['_selectionBehavior'] != null
          ? Element.fromJson(json['_selectionBehavior'] as Map<String, dynamic>)
          : null,
      requiredBehavior: json['requiredBehavior'] != null
          ? ActionRequiredBehavior.fromJson(json['requiredBehavior'])
          : null,
      requiredBehaviorElement: json['_requiredBehavior'] != null
          ? Element.fromJson(json['_requiredBehavior'] as Map<String, dynamic>)
          : null,
      precheckBehavior: json['precheckBehavior'] != null
          ? ActionPrecheckBehavior.fromJson(json['precheckBehavior'])
          : null,
      precheckBehaviorElement: json['_precheckBehavior'] != null
          ? Element.fromJson(json['_precheckBehavior'] as Map<String, dynamic>)
          : null,
      cardinalityBehavior: json['cardinalityBehavior'] != null
          ? ActionCardinalityBehavior.fromJson(json['cardinalityBehavior'])
          : null,
      cardinalityBehaviorElement: json['_cardinalityBehavior'] != null
          ? Element.fromJson(
              json['_cardinalityBehavior'] as Map<String, dynamic>)
          : null,
      definitionCanonical: json['definitionCanonical'] != null
          ? FhirCanonical.fromJson(json['definitionCanonical'])
          : null,
      definitionCanonicalElement: json['_definitionCanonical'] != null
          ? Element.fromJson(
              json['_definitionCanonical'] as Map<String, dynamic>)
          : null,
      definitionUri: json['definitionUri'] != null
          ? FhirUri.fromJson(json['definitionUri'])
          : null,
      definitionUriElement: json['_definitionUri'] != null
          ? Element.fromJson(json['_definitionUri'] as Map<String, dynamic>)
          : null,
      transform: json['transform'] != null
          ? FhirCanonical.fromJson(json['transform'])
          : null,
      transformElement: json['_transform'] != null
          ? Element.fromJson(json['_transform'] as Map<String, dynamic>)
          : null,
      dynamicValue: json['dynamicValue'] != null
          ? (json['dynamicValue'] as List<dynamic>)
              .map<PlanDefinitionDynamicValue>((dynamic v) =>
                  PlanDefinitionDynamicValue.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      action: json['action'] != null
          ? (json['action'] as List<dynamic>)
              .map<PlanDefinitionAction>((dynamic v) =>
                  PlanDefinitionAction.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  PlanDefinitionAction clone() => throw UnimplementedError();
  @override
  PlanDefinitionAction copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? prefix,
    Element? prefixElement,
    FhirString? title,
    Element? titleElement,
    FhirString? description,
    Element? descriptionElement,
    FhirString? textEquivalent,
    Element? textEquivalentElement,
    RequestPriority? priority,
    Element? priorityElement,
    List<CodeableConcept>? code,
    List<CodeableConcept>? reason,
    List<RelatedArtifact>? documentation,
    List<FhirId>? goalId,
    List<Element>? goalIdElement,
    CodeableConcept? subjectCodeableConcept,
    Reference? subjectReference,
    SubjectType? subjectCanonical,
    Element? subjectCanonicalElement,
    List<TriggerDefinition>? trigger,
    List<PlanDefinitionCondition>? condition,
    List<DataRequirement>? input,
    List<DataRequirement>? output,
    List<PlanDefinitionRelatedAction>? relatedAction,
    FhirDateTime? timingDateTime,
    Element? timingDateTimeElement,
    Age? timingAge,
    Period? timingPeriod,
    FhirDuration? timingDuration,
    Range? timingRange,
    Timing? timingTiming,
    List<PlanDefinitionParticipant>? participant,
    CodeableConcept? type,
    ActionGroupingBehavior? groupingBehavior,
    Element? groupingBehaviorElement,
    ActionSelectionBehavior? selectionBehavior,
    Element? selectionBehaviorElement,
    ActionRequiredBehavior? requiredBehavior,
    Element? requiredBehaviorElement,
    ActionPrecheckBehavior? precheckBehavior,
    Element? precheckBehaviorElement,
    ActionCardinalityBehavior? cardinalityBehavior,
    Element? cardinalityBehaviorElement,
    FhirCanonical? definitionCanonical,
    Element? definitionCanonicalElement,
    FhirUri? definitionUri,
    Element? definitionUriElement,
    FhirCanonical? transform,
    Element? transformElement,
    List<PlanDefinitionDynamicValue>? dynamicValue,
    List<PlanDefinitionAction>? action,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return PlanDefinitionAction(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      prefix: prefix ?? this.prefix,
      prefixElement: prefixElement ?? this.prefixElement,
      title: title ?? this.title,
      titleElement: titleElement ?? this.titleElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      textEquivalent: textEquivalent ?? this.textEquivalent,
      textEquivalentElement:
          textEquivalentElement ?? this.textEquivalentElement,
      priority: priority ?? this.priority,
      priorityElement: priorityElement ?? this.priorityElement,
      code: code ?? this.code,
      reason: reason ?? this.reason,
      documentation: documentation ?? this.documentation,
      goalId: goalId ?? this.goalId,
      goalIdElement: goalIdElement ?? this.goalIdElement,
      subjectCodeableConcept:
          subjectCodeableConcept ?? this.subjectCodeableConcept,
      subjectReference: subjectReference ?? this.subjectReference,
      subjectCanonical: subjectCanonical ?? this.subjectCanonical,
      subjectCanonicalElement:
          subjectCanonicalElement ?? this.subjectCanonicalElement,
      trigger: trigger ?? this.trigger,
      condition: condition ?? this.condition,
      input: input ?? this.input,
      output: output ?? this.output,
      relatedAction: relatedAction ?? this.relatedAction,
      timingDateTime: timingDateTime ?? this.timingDateTime,
      timingDateTimeElement:
          timingDateTimeElement ?? this.timingDateTimeElement,
      timingAge: timingAge ?? this.timingAge,
      timingPeriod: timingPeriod ?? this.timingPeriod,
      timingDuration: timingDuration ?? this.timingDuration,
      timingRange: timingRange ?? this.timingRange,
      timingTiming: timingTiming ?? this.timingTiming,
      participant: participant ?? this.participant,
      type: type ?? this.type,
      groupingBehavior: groupingBehavior ?? this.groupingBehavior,
      groupingBehaviorElement:
          groupingBehaviorElement ?? this.groupingBehaviorElement,
      selectionBehavior: selectionBehavior ?? this.selectionBehavior,
      selectionBehaviorElement:
          selectionBehaviorElement ?? this.selectionBehaviorElement,
      requiredBehavior: requiredBehavior ?? this.requiredBehavior,
      requiredBehaviorElement:
          requiredBehaviorElement ?? this.requiredBehaviorElement,
      precheckBehavior: precheckBehavior ?? this.precheckBehavior,
      precheckBehaviorElement:
          precheckBehaviorElement ?? this.precheckBehaviorElement,
      cardinalityBehavior: cardinalityBehavior ?? this.cardinalityBehavior,
      cardinalityBehaviorElement:
          cardinalityBehaviorElement ?? this.cardinalityBehaviorElement,
      definitionCanonical: definitionCanonical ?? this.definitionCanonical,
      definitionCanonicalElement:
          definitionCanonicalElement ?? this.definitionCanonicalElement,
      definitionUri: definitionUri ?? this.definitionUri,
      definitionUriElement: definitionUriElement ?? this.definitionUriElement,
      transform: transform ?? this.transform,
      transformElement: transformElement ?? this.transformElement,
      dynamicValue: dynamicValue ?? this.dynamicValue,
      action: action ?? this.action,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory PlanDefinitionAction.fromYaml(dynamic yaml) => yaml is String
      ? PlanDefinitionAction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? PlanDefinitionAction.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'PlanDefinitionAction cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory PlanDefinitionAction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PlanDefinitionAction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [PlanDefinitionCondition] /// An expression that describes applicability criteria or start/stop
/// conditions for the action.
class PlanDefinitionCondition extends BackboneElement {
  PlanDefinitionCondition({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.kind,
    this.kindElement,
    this.expression,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'PlanDefinitionCondition';

  /// [kind] /// The kind of condition.
  final ActionConditionKind kind;
  final Element? kindElement;

  /// [expression] /// An expression that returns true or false, indicating whether the condition
  /// is satisfied.
  final FhirExpression? expression;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['kind'] = kind.toJson();
    if (expression != null) {
      json['expression'] = expression!.toJson();
    }
    return json;
  }

  factory PlanDefinitionCondition.fromJson(Map<String, dynamic> json) {
    return PlanDefinitionCondition(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      kind: ActionConditionKind.fromJson(json['kind']),
      kindElement: json['_kind'] != null
          ? Element.fromJson(json['_kind'] as Map<String, dynamic>)
          : null,
      expression: json['expression'] != null
          ? FhirExpression.fromJson(json['expression'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  PlanDefinitionCondition clone() => throw UnimplementedError();
  @override
  PlanDefinitionCondition copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ActionConditionKind? kind,
    Element? kindElement,
    FhirExpression? expression,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return PlanDefinitionCondition(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      kind: kind ?? this.kind,
      kindElement: kindElement ?? this.kindElement,
      expression: expression ?? this.expression,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory PlanDefinitionCondition.fromYaml(dynamic yaml) => yaml is String
      ? PlanDefinitionCondition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? PlanDefinitionCondition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'PlanDefinitionCondition cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory PlanDefinitionCondition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PlanDefinitionCondition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [PlanDefinitionRelatedAction] /// A relationship to another action such as "before" or "30-60 minutes after
/// start of".
class PlanDefinitionRelatedAction extends BackboneElement {
  PlanDefinitionRelatedAction({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.actionId,
    this.actionIdElement,
    required this.relationship,
    this.relationshipElement,
    this.offsetDuration,
    this.offsetRange,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'PlanDefinitionRelatedAction';

  /// [actionId] /// The element id of the related action.
  final FhirId actionId;
  final Element? actionIdElement;

  /// [relationship] /// The relationship of this action to the related action.
  final ActionRelationshipType relationship;
  final Element? relationshipElement;

  /// [offsetDuration] /// A duration or range of durations to apply to the relationship. For example,
  /// 30-60 minutes before.
  final FhirDuration? offsetDuration;

  /// [offsetRange] /// A duration or range of durations to apply to the relationship. For example,
  /// 30-60 minutes before.
  final Range? offsetRange;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['actionId'] = actionId.toJson();
    if (actionIdElement != null) {
      json['_actionId'] = actionIdElement!.toJson();
    }
    json['relationship'] = relationship.toJson();
    if (offsetDuration != null) {
      json['offsetDuration'] = offsetDuration!.toJson();
    }
    if (offsetRange != null) {
      json['offsetRange'] = offsetRange!.toJson();
    }
    return json;
  }

  factory PlanDefinitionRelatedAction.fromJson(Map<String, dynamic> json) {
    return PlanDefinitionRelatedAction(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      actionId: FhirId.fromJson(json['actionId']),
      actionIdElement: json['_actionId'] != null
          ? Element.fromJson(json['_actionId'] as Map<String, dynamic>)
          : null,
      relationship: ActionRelationshipType.fromJson(json['relationship']),
      relationshipElement: json['_relationship'] != null
          ? Element.fromJson(json['_relationship'] as Map<String, dynamic>)
          : null,
      offsetDuration: json['offsetDuration'] != null
          ? FhirDuration.fromJson(
              json['offsetDuration'] as Map<String, dynamic>)
          : null,
      offsetRange: json['offsetRange'] != null
          ? Range.fromJson(json['offsetRange'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  PlanDefinitionRelatedAction clone() => throw UnimplementedError();
  @override
  PlanDefinitionRelatedAction copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? actionId,
    Element? actionIdElement,
    ActionRelationshipType? relationship,
    Element? relationshipElement,
    FhirDuration? offsetDuration,
    Range? offsetRange,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return PlanDefinitionRelatedAction(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      actionId: actionId ?? this.actionId,
      actionIdElement: actionIdElement ?? this.actionIdElement,
      relationship: relationship ?? this.relationship,
      relationshipElement: relationshipElement ?? this.relationshipElement,
      offsetDuration: offsetDuration ?? this.offsetDuration,
      offsetRange: offsetRange ?? this.offsetRange,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory PlanDefinitionRelatedAction.fromYaml(dynamic yaml) => yaml is String
      ? PlanDefinitionRelatedAction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? PlanDefinitionRelatedAction.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'PlanDefinitionRelatedAction cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory PlanDefinitionRelatedAction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PlanDefinitionRelatedAction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [PlanDefinitionParticipant] /// Indicates who should participate in performing the action described.
class PlanDefinitionParticipant extends BackboneElement {
  PlanDefinitionParticipant({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.typeElement,
    this.role,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'PlanDefinitionParticipant';

  /// [type] /// The type of participant in the action.
  final ActionParticipantType type;
  final Element? typeElement;

  /// [role] /// The role the participant should play in performing the described action.
  final CodeableConcept? role;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['type'] = type.toJson();
    if (role != null) {
      json['role'] = role!.toJson();
    }
    return json;
  }

  factory PlanDefinitionParticipant.fromJson(Map<String, dynamic> json) {
    return PlanDefinitionParticipant(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      type: ActionParticipantType.fromJson(json['type']),
      typeElement: json['_type'] != null
          ? Element.fromJson(json['_type'] as Map<String, dynamic>)
          : null,
      role: json['role'] != null
          ? CodeableConcept.fromJson(json['role'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  PlanDefinitionParticipant clone() => throw UnimplementedError();
  @override
  PlanDefinitionParticipant copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ActionParticipantType? type,
    Element? typeElement,
    CodeableConcept? role,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return PlanDefinitionParticipant(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      role: role ?? this.role,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory PlanDefinitionParticipant.fromYaml(dynamic yaml) => yaml is String
      ? PlanDefinitionParticipant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? PlanDefinitionParticipant.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'PlanDefinitionParticipant cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory PlanDefinitionParticipant.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PlanDefinitionParticipant.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [PlanDefinitionDynamicValue] /// Customizations that should be applied to the statically defined resource.
/// For example, if the dosage of a medication must be computed based on the
/// patient's weight, a customization would be used to specify an expression
/// that calculated the weight, and the path on the resource that would contain
/// the result.
class PlanDefinitionDynamicValue extends BackboneElement {
  PlanDefinitionDynamicValue({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.path,
    this.pathElement,
    this.expression,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'PlanDefinitionDynamicValue';

  /// [path] /// The path to the element to be customized. This is the path on the resource
  /// that will hold the result of the calculation defined by the expression. The
  /// specified path SHALL be a FHIRPath resolveable on the specified target type
  /// of the ActivityDefinition, and SHALL consist only of identifiers, constant
  /// indexers, and a restricted subset of functions. The path is allowed to
  /// contain qualifiers (.) to traverse sub-elements, as well as indexers ([x])
  /// to traverse multiple-cardinality sub-elements (see the [Simple FHIRPath
  /// Profile](fhirpath.html#simple) for full details).
  final FhirString? path;
  final Element? pathElement;

  /// [expression] /// An expression specifying the value of the customized element.
  final FhirExpression? expression;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (path?.value != null) {
      json['path'] = path!.toJson();
    }
    if (pathElement != null) {
      json['_path'] = pathElement!.toJson();
    }
    if (expression != null) {
      json['expression'] = expression!.toJson();
    }
    return json;
  }

  factory PlanDefinitionDynamicValue.fromJson(Map<String, dynamic> json) {
    return PlanDefinitionDynamicValue(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      path: json['path'] != null ? FhirString.fromJson(json['path']) : null,
      pathElement: json['_path'] != null
          ? Element.fromJson(json['_path'] as Map<String, dynamic>)
          : null,
      expression: json['expression'] != null
          ? FhirExpression.fromJson(json['expression'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  PlanDefinitionDynamicValue clone() => throw UnimplementedError();
  @override
  PlanDefinitionDynamicValue copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? path,
    Element? pathElement,
    FhirExpression? expression,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return PlanDefinitionDynamicValue(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      path: path ?? this.path,
      pathElement: pathElement ?? this.pathElement,
      expression: expression ?? this.expression,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory PlanDefinitionDynamicValue.fromYaml(dynamic yaml) => yaml is String
      ? PlanDefinitionDynamicValue.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? PlanDefinitionDynamicValue.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'PlanDefinitionDynamicValue cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory PlanDefinitionDynamicValue.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PlanDefinitionDynamicValue.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
