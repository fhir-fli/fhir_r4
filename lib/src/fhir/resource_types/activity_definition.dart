import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ActivityDefinition]
/// This resource allows for the definition of some activity to be
/// performed, independent of a particular patient, practitioner, or other
/// performance context.
class ActivityDefinition extends DomainResource {
  /// Primary constructor for [ActivityDefinition]

  ActivityDefinition({
    super.id,
    super.meta,
    super.implicitRules,

    /// Extensions for [implicitRules]
    super.implicitRulesElement,
    super.language,

    /// Extensions for [language]
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.url,

    /// Extensions for [url]
    this.urlElement,
    this.identifier,
    this.version,

    /// Extensions for [version]
    this.versionElement,
    this.name,

    /// Extensions for [name]
    this.nameElement,
    this.title,

    /// Extensions for [title]
    this.titleElement,
    this.subtitle,

    /// Extensions for [subtitle]
    this.subtitleElement,
    required this.status,

    /// Extensions for [status]
    this.statusElement,
    this.experimental,

    /// Extensions for [experimental]
    this.experimentalElement,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.subjectCanonical,

    /// Extensions for [subjectCanonical]
    this.subjectCanonicalElement,
    this.date,

    /// Extensions for [date]
    this.dateElement,
    this.publisher,

    /// Extensions for [publisher]
    this.publisherElement,
    this.contact,
    this.description,

    /// Extensions for [description]
    this.descriptionElement,
    this.useContext,
    this.jurisdiction,
    this.purpose,

    /// Extensions for [purpose]
    this.purposeElement,
    this.usage,

    /// Extensions for [usage]
    this.usageElement,
    this.copyright,

    /// Extensions for [copyright]
    this.copyrightElement,
    this.approvalDate,

    /// Extensions for [approvalDate]
    this.approvalDateElement,
    this.lastReviewDate,

    /// Extensions for [lastReviewDate]
    this.lastReviewDateElement,
    this.effectivePeriod,
    this.topic,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatedArtifact,
    this.library_,

    /// Extensions for [library]
    this.libraryElement,
    this.kind,

    /// Extensions for [kind]
    this.kindElement,
    this.profile,

    /// Extensions for [profile]
    this.profileElement,
    this.code,
    this.intent,

    /// Extensions for [intent]
    this.intentElement,
    this.priority,

    /// Extensions for [priority]
    this.priorityElement,
    this.doNotPerform,

    /// Extensions for [doNotPerform]
    this.doNotPerformElement,
    this.timingTiming,
    this.timingDateTime,

    /// Extensions for [timingDateTime]
    this.timingDateTimeElement,
    this.timingAge,
    this.timingPeriod,
    this.timingRange,
    this.timingDuration,
    this.location,
    this.participant,
    this.productReference,
    this.productCodeableConcept,
    this.quantity,
    this.dosage,
    this.bodySite,
    this.specimenRequirement,
    this.observationRequirement,
    this.observationResultRequirement,
    this.transform,

    /// Extensions for [transform]
    this.transformElement,
    this.dynamicValue,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.ActivityDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ActivityDefinition.fromJson(Map<String, dynamic> json) {
    return ActivityDefinition(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(
              json['_implicitRules'] as Map<String, dynamic>,
            )
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(
              json['_language'] as Map<String, dynamic>,
            )
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (dynamic v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      url: json['url'] != null ? FhirUri.fromJson(json['url']) : null,
      urlElement: json['_url'] != null
          ? Element.fromJson(
              json['_url'] as Map<String, dynamic>,
            )
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (dynamic v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      version:
          json['version'] != null ? FhirString.fromJson(json['version']) : null,
      versionElement: json['_version'] != null
          ? Element.fromJson(
              json['_version'] as Map<String, dynamic>,
            )
          : null,
      name: json['name'] != null ? FhirString.fromJson(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(
              json['_name'] as Map<String, dynamic>,
            )
          : null,
      title: json['title'] != null ? FhirString.fromJson(json['title']) : null,
      titleElement: json['_title'] != null
          ? Element.fromJson(
              json['_title'] as Map<String, dynamic>,
            )
          : null,
      subtitle: json['subtitle'] != null
          ? FhirString.fromJson(json['subtitle'])
          : null,
      subtitleElement: json['_subtitle'] != null
          ? Element.fromJson(
              json['_subtitle'] as Map<String, dynamic>,
            )
          : null,
      status: PublicationStatus.fromJson(json['status']),
      statusElement: json['_status'] != null
          ? Element.fromJson(
              json['_status'] as Map<String, dynamic>,
            )
          : null,
      experimental: json['experimental'] != null
          ? FhirBoolean.fromJson(json['experimental'])
          : null,
      experimentalElement: json['_experimental'] != null
          ? Element.fromJson(
              json['_experimental'] as Map<String, dynamic>,
            )
          : null,
      subjectCodeableConcept: json['subjectCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['subjectCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      subjectReference: json['subjectReference'] != null
          ? Reference.fromJson(
              json['subjectReference'] as Map<String, dynamic>,
            )
          : null,
      subjectCanonical: json['subjectCanonical'] != null
          ? SubjectType.fromJson(json['subjectCanonical'])
          : null,
      subjectCanonicalElement: json['_subjectCanonical'] != null
          ? Element.fromJson(
              json['_subjectCanonical'] as Map<String, dynamic>,
            )
          : null,
      date: json['date'] != null ? FhirDateTime.fromJson(json['date']) : null,
      dateElement: json['_date'] != null
          ? Element.fromJson(
              json['_date'] as Map<String, dynamic>,
            )
          : null,
      publisher: json['publisher'] != null
          ? FhirString.fromJson(json['publisher'])
          : null,
      publisherElement: json['_publisher'] != null
          ? Element.fromJson(
              json['_publisher'] as Map<String, dynamic>,
            )
          : null,
      contact: json['contact'] != null
          ? (json['contact'] as List<dynamic>)
              .map<ContactDetail>(
                (dynamic v) => ContactDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      description: json['description'] != null
          ? FhirMarkdown.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(
              json['_description'] as Map<String, dynamic>,
            )
          : null,
      useContext: json['useContext'] != null
          ? (json['useContext'] as List<dynamic>)
              .map<UsageContext>(
                (dynamic v) => UsageContext.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      jurisdiction: json['jurisdiction'] != null
          ? (json['jurisdiction'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      purpose: json['purpose'] != null
          ? FhirMarkdown.fromJson(json['purpose'])
          : null,
      purposeElement: json['_purpose'] != null
          ? Element.fromJson(
              json['_purpose'] as Map<String, dynamic>,
            )
          : null,
      usage: json['usage'] != null ? FhirString.fromJson(json['usage']) : null,
      usageElement: json['_usage'] != null
          ? Element.fromJson(
              json['_usage'] as Map<String, dynamic>,
            )
          : null,
      copyright: json['copyright'] != null
          ? FhirMarkdown.fromJson(json['copyright'])
          : null,
      copyrightElement: json['_copyright'] != null
          ? Element.fromJson(
              json['_copyright'] as Map<String, dynamic>,
            )
          : null,
      approvalDate: json['approvalDate'] != null
          ? FhirDate.fromJson(json['approvalDate'])
          : null,
      approvalDateElement: json['_approvalDate'] != null
          ? Element.fromJson(
              json['_approvalDate'] as Map<String, dynamic>,
            )
          : null,
      lastReviewDate: json['lastReviewDate'] != null
          ? FhirDate.fromJson(json['lastReviewDate'])
          : null,
      lastReviewDateElement: json['_lastReviewDate'] != null
          ? Element.fromJson(
              json['_lastReviewDate'] as Map<String, dynamic>,
            )
          : null,
      effectivePeriod: json['effectivePeriod'] != null
          ? Period.fromJson(
              json['effectivePeriod'] as Map<String, dynamic>,
            )
          : null,
      topic: json['topic'] != null
          ? (json['topic'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      author: json['author'] != null
          ? (json['author'] as List<dynamic>)
              .map<ContactDetail>(
                (dynamic v) => ContactDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      editor: json['editor'] != null
          ? (json['editor'] as List<dynamic>)
              .map<ContactDetail>(
                (dynamic v) => ContactDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      reviewer: json['reviewer'] != null
          ? (json['reviewer'] as List<dynamic>)
              .map<ContactDetail>(
                (dynamic v) => ContactDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      endorser: json['endorser'] != null
          ? (json['endorser'] as List<dynamic>)
              .map<ContactDetail>(
                (dynamic v) => ContactDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      relatedArtifact: json['relatedArtifact'] != null
          ? (json['relatedArtifact'] as List<dynamic>)
              .map<RelatedArtifact>(
                (dynamic v) => RelatedArtifact.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      library_: json['library'] != null
          ? (json['library'] as List<dynamic>)
              .map<FhirCanonical>(
                (dynamic v) => FhirCanonical.fromJson(v as dynamic),
              )
              .toList()
          : null,
      libraryElement: json['_library'] != null
          ? (json['_library'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      kind: json['kind'] != null
          ? RequestResourceType.fromJson(json['kind'])
          : null,
      kindElement: json['_kind'] != null
          ? Element.fromJson(
              json['_kind'] as Map<String, dynamic>,
            )
          : null,
      profile: json['profile'] != null
          ? FhirCanonical.fromJson(json['profile'])
          : null,
      profileElement: json['_profile'] != null
          ? Element.fromJson(
              json['_profile'] as Map<String, dynamic>,
            )
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      intent: json['intent'] != null
          ? RequestIntent.fromJson(json['intent'])
          : null,
      intentElement: json['_intent'] != null
          ? Element.fromJson(
              json['_intent'] as Map<String, dynamic>,
            )
          : null,
      priority: json['priority'] != null
          ? RequestPriority.fromJson(json['priority'])
          : null,
      priorityElement: json['_priority'] != null
          ? Element.fromJson(
              json['_priority'] as Map<String, dynamic>,
            )
          : null,
      doNotPerform: json['doNotPerform'] != null
          ? FhirBoolean.fromJson(json['doNotPerform'])
          : null,
      doNotPerformElement: json['_doNotPerform'] != null
          ? Element.fromJson(
              json['_doNotPerform'] as Map<String, dynamic>,
            )
          : null,
      timingTiming: json['timingTiming'] != null
          ? Timing.fromJson(
              json['timingTiming'] as Map<String, dynamic>,
            )
          : null,
      timingDateTime: json['timingDateTime'] != null
          ? FhirDateTime.fromJson(json['timingDateTime'])
          : null,
      timingDateTimeElement: json['_timingDateTime'] != null
          ? Element.fromJson(
              json['_timingDateTime'] as Map<String, dynamic>,
            )
          : null,
      timingAge: json['timingAge'] != null
          ? Age.fromJson(
              json['timingAge'] as Map<String, dynamic>,
            )
          : null,
      timingPeriod: json['timingPeriod'] != null
          ? Period.fromJson(
              json['timingPeriod'] as Map<String, dynamic>,
            )
          : null,
      timingRange: json['timingRange'] != null
          ? Range.fromJson(
              json['timingRange'] as Map<String, dynamic>,
            )
          : null,
      timingDuration: json['timingDuration'] != null
          ? FhirDuration.fromJson(
              json['timingDuration'] as Map<String, dynamic>,
            )
          : null,
      location: json['location'] != null
          ? Reference.fromJson(
              json['location'] as Map<String, dynamic>,
            )
          : null,
      participant: json['participant'] != null
          ? (json['participant'] as List<dynamic>)
              .map<ActivityDefinitionParticipant>(
                (dynamic v) => ActivityDefinitionParticipant.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      productReference: json['productReference'] != null
          ? Reference.fromJson(
              json['productReference'] as Map<String, dynamic>,
            )
          : null,
      productCodeableConcept: json['productCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['productCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(
              json['quantity'] as Map<String, dynamic>,
            )
          : null,
      dosage: json['dosage'] != null
          ? (json['dosage'] as List<dynamic>)
              .map<Dosage>(
                (dynamic v) => Dosage.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      bodySite: json['bodySite'] != null
          ? (json['bodySite'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      specimenRequirement: json['specimenRequirement'] != null
          ? (json['specimenRequirement'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      observationRequirement: json['observationRequirement'] != null
          ? (json['observationRequirement'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      observationResultRequirement: json['observationResultRequirement'] != null
          ? (json['observationResultRequirement'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      transform: json['transform'] != null
          ? FhirCanonical.fromJson(json['transform'])
          : null,
      transformElement: json['_transform'] != null
          ? Element.fromJson(
              json['_transform'] as Map<String, dynamic>,
            )
          : null,
      dynamicValue: json['dynamicValue'] != null
          ? (json['dynamicValue'] as List<dynamic>)
              .map<ActivityDefinitionDynamicValue>(
                (dynamic v) => ActivityDefinitionDynamicValue.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ActivityDefinition] from a [String] or [YamlMap] object
  factory ActivityDefinition.fromYaml(dynamic yaml) => yaml is String
      ? ActivityDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ActivityDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ActivityDefinition cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ActivityDefinition] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ActivityDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ActivityDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ActivityDefinition';

  /// [url]
  /// An absolute URI that is used to identify this activity definition when
  /// it is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance
  /// of this activity definition is (or will be) published. This URL can be
  /// the target of a canonical reference. It SHALL remain the same when the
  /// activity definition is stored on different servers.
  final FhirUri? url;

  /// Extensions for [url]
  final Element? urlElement;

  /// [identifier]
  /// A formal identifier that is used to identify this activity definition
  /// when it is represented in other formats, or referenced in a
  /// specification, model, design or an instance.
  final List<Identifier>? identifier;

  /// [version]
  /// The identifier that is used to identify this version of the activity
  /// definition when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the activity definition
  /// author and is not expected to be globally unique. For example, it might
  /// be a timestamp (e.g. yyyymmdd) if a managed version is not available.
  /// There is also no expectation that versions can be placed in a
  /// lexicographical sequence. To provide a version consistent with the
  /// Decision Support Service specification, use the format
  /// Major.Minor.Revision (e.g. 1.0.0). For more information on versioning
  /// knowledge assets, refer to the Decision Support Service specification.
  /// Note that a version is required for non-experimental active assets.
  final FhirString? version;

  /// Extensions for [version]
  final Element? versionElement;

  /// [name]
  /// A natural language name identifying the activity definition. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;

  /// Extensions for [name]
  final Element? nameElement;

  /// [title]
  /// A short, descriptive, user-friendly title for the activity definition.
  final FhirString? title;

  /// Extensions for [title]
  final Element? titleElement;

  /// [subtitle]
  /// An explanatory or alternate title for the activity definition giving
  /// additional information about its content.
  final FhirString? subtitle;

  /// Extensions for [subtitle]
  final Element? subtitleElement;

  /// [status]
  /// The status of this activity definition. Enables tracking the life-cycle
  /// of the content.
  final PublicationStatus status;

  /// Extensions for [status]
  final Element? statusElement;

  /// [experimental]
  /// A Boolean value to indicate that this activity definition is authored
  /// for testing purposes (or education/evaluation/marketing) and is not
  /// intended to be used for genuine usage.
  final FhirBoolean? experimental;

  /// Extensions for [experimental]
  final Element? experimentalElement;

  /// [subjectCodeableConcept]
  /// A code, group definition, or canonical reference that describes or
  /// identifies the intended subject of the activity being defined.
  /// Canonical references are allowed to support the definition of protocols
  /// for drug and substance quality specifications, and is allowed to
  /// reference a MedicinalProductDefinition, SubstanceDefinition,
  /// AdministrableProductDefinition, ManufacturedItemDefinition, or
  /// PackagedProductDefinition resource.
  final CodeableConcept? subjectCodeableConcept;

  /// [subjectReference]
  /// A code, group definition, or canonical reference that describes or
  /// identifies the intended subject of the activity being defined.
  /// Canonical references are allowed to support the definition of protocols
  /// for drug and substance quality specifications, and is allowed to
  /// reference a MedicinalProductDefinition, SubstanceDefinition,
  /// AdministrableProductDefinition, ManufacturedItemDefinition, or
  /// PackagedProductDefinition resource.
  final Reference? subjectReference;

  /// [subjectCanonical]
  /// A code, group definition, or canonical reference that describes or
  /// identifies the intended subject of the activity being defined.
  /// Canonical references are allowed to support the definition of protocols
  /// for drug and substance quality specifications, and is allowed to
  /// reference a MedicinalProductDefinition, SubstanceDefinition,
  /// AdministrableProductDefinition, ManufacturedItemDefinition, or
  /// PackagedProductDefinition resource.
  final SubjectType? subjectCanonical;

  /// Extensions for [subjectCanonical]
  final Element? subjectCanonicalElement;

  /// [date]
  /// The date (and optionally time) when the activity definition was
  /// published. The date must change when the business version changes and
  /// it must change if the status code changes. In addition, it should
  /// change when the substantive content of the activity definition changes.
  final FhirDateTime? date;

  /// Extensions for [date]
  final Element? dateElement;

  /// [publisher]
  /// The name of the organization or individual that published the activity
  /// definition.
  final FhirString? publisher;

  /// Extensions for [publisher]
  final Element? publisherElement;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description]
  /// A free text natural language description of the activity definition
  /// from a consumer's perspective.
  final FhirMarkdown? description;

  /// Extensions for [description]
  final Element? descriptionElement;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate activity definition instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction]
  /// A legal or geographic region in which the activity definition is
  /// intended to be used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose]
  /// Explanation of why this activity definition is needed and why it has
  /// been designed as it has.
  final FhirMarkdown? purpose;

  /// Extensions for [purpose]
  final Element? purposeElement;

  /// [usage]
  /// A detailed description of how the activity definition is used from a
  /// clinical perspective.
  final FhirString? usage;

  /// Extensions for [usage]
  final Element? usageElement;

  /// [copyright]
  /// A copyright statement relating to the activity definition and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the activity definition.
  final FhirMarkdown? copyright;

  /// Extensions for [copyright]
  final Element? copyrightElement;

  /// [approvalDate]
  /// The date on which the resource content was approved by the publisher.
  /// Approval happens once when the content is officially approved for
  /// usage.
  final FhirDate? approvalDate;

  /// Extensions for [approvalDate]
  final Element? approvalDateElement;

  /// [lastReviewDate]
  /// The date on which the resource content was last reviewed. Review
  /// happens periodically after approval but does not change the original
  /// approval date.
  final FhirDate? lastReviewDate;

  /// Extensions for [lastReviewDate]
  final Element? lastReviewDateElement;

  /// [effectivePeriod]
  /// The period during which the activity definition content was or is
  /// planned to be in active use.
  final Period? effectivePeriod;

  /// [topic]
  /// Descriptive topics related to the content of the activity. Topics
  /// provide a high-level categorization of the activity that can be useful
  /// for filtering and searching.
  final List<CodeableConcept>? topic;

  /// [author]
  /// An individiual or organization primarily involved in the creation and
  /// maintenance of the content.
  final List<ContactDetail>? author;

  /// [editor]
  /// An individual or organization primarily responsible for internal
  /// coherence of the content.
  final List<ContactDetail>? editor;

  /// [reviewer]
  /// An individual or organization primarily responsible for review of some
  /// aspect of the content.
  final List<ContactDetail>? reviewer;

  /// [endorser]
  /// An individual or organization responsible for officially endorsing the
  /// content for use in some setting.
  final List<ContactDetail>? endorser;

  /// [relatedArtifact]
  /// Related artifacts such as additional documentation, justification, or
  /// bibliographic references.
  final List<RelatedArtifact>? relatedArtifact;

  /// [library_]
  /// A reference to a Library resource containing any formal logic used by
  /// the activity definition.
  final List<FhirCanonical>? library_;

  /// Extensions for [library]
  final List<Element>? libraryElement;

  /// [kind]
  /// A description of the kind of resource the activity definition is
  /// representing. For example, a MedicationRequest, a ServiceRequest, or a
  /// CommunicationRequest. Typically, but not always, this is a Request
  /// resource.
  final RequestResourceType? kind;

  /// Extensions for [kind]
  final Element? kindElement;

  /// [profile]
  /// A profile to which the target of the activity definition is expected to
  /// conform.
  final FhirCanonical? profile;

  /// Extensions for [profile]
  final Element? profileElement;

  /// [code]
  /// Detailed description of the type of activity; e.g. What lab test, what
  /// procedure, what kind of encounter.
  final CodeableConcept? code;

  /// [intent]
  /// Indicates the level of authority/intentionality associated with the
  /// activity and where the request should fit into the workflow chain.
  final RequestIntent? intent;

  /// Extensions for [intent]
  final Element? intentElement;

  /// [priority]
  /// Indicates how quickly the activity should be addressed with respect to
  /// other requests.
  final RequestPriority? priority;

  /// Extensions for [priority]
  final Element? priorityElement;

  /// [doNotPerform]
  /// Set this to true if the definition is to indicate that a particular
  /// activity should NOT be performed. If true, this element should be
  /// interpreted to reinforce a negative coding. For example NPO as a code
  /// with a doNotPerform of true would still indicate to NOT perform the
  /// action.
  final FhirBoolean? doNotPerform;

  /// Extensions for [doNotPerform]
  final Element? doNotPerformElement;

  /// [timingTiming]
  /// The period, timing or frequency upon which the described activity is to
  /// occur.
  final Timing? timingTiming;

  /// [timingDateTime]
  /// The period, timing or frequency upon which the described activity is to
  /// occur.
  final FhirDateTime? timingDateTime;

  /// Extensions for [timingDateTime]
  final Element? timingDateTimeElement;

  /// [timingAge]
  /// The period, timing or frequency upon which the described activity is to
  /// occur.
  final Age? timingAge;

  /// [timingPeriod]
  /// The period, timing or frequency upon which the described activity is to
  /// occur.
  final Period? timingPeriod;

  /// [timingRange]
  /// The period, timing or frequency upon which the described activity is to
  /// occur.
  final Range? timingRange;

  /// [timingDuration]
  /// The period, timing or frequency upon which the described activity is to
  /// occur.
  final FhirDuration? timingDuration;

  /// [location]
  /// Identifies the facility where the activity will occur; e.g. home,
  /// hospital, specific clinic, etc.
  final Reference? location;

  /// [participant]
  /// Indicates who should participate in performing the action described.
  final List<ActivityDefinitionParticipant>? participant;

  /// [productReference]
  /// Identifies the food, drug or other product being consumed or supplied
  /// in the activity.
  final Reference? productReference;

  /// [productCodeableConcept]
  /// Identifies the food, drug or other product being consumed or supplied
  /// in the activity.
  final CodeableConcept? productCodeableConcept;

  /// [quantity]
  /// Identifies the quantity expected to be consumed at once (per dose, per
  /// meal, etc.).
  final Quantity? quantity;

  /// [dosage]
  /// Provides detailed dosage instructions in the same way that they are
  /// described for MedicationRequest resources.
  final List<Dosage>? dosage;

  /// [bodySite]
  /// Indicates the sites on the subject's body where the procedure should be
  /// performed (I.e. the target sites).
  final List<CodeableConcept>? bodySite;

  /// [specimenRequirement]
  /// Defines specimen requirements for the action to be performed, such as
  /// required specimens for a lab test.
  final List<Reference>? specimenRequirement;

  /// [observationRequirement]
  /// Defines observation requirements for the action to be performed, such
  /// as body weight or surface area.
  final List<Reference>? observationRequirement;

  /// [observationResultRequirement]
  /// Defines the observations that are expected to be produced by the
  /// action.
  final List<Reference>? observationResultRequirement;

  /// [transform]
  /// A reference to a StructureMap resource that defines a transform that
  /// can be executed to produce the intent resource using the
  /// ActivityDefinition instance as the input.
  final FhirCanonical? transform;

  /// Extensions for [transform]
  final Element? transformElement;

  /// [dynamicValue]
  /// Dynamic values that will be evaluated to produce values for elements of
  /// the resulting resource. For example, if the dosage of a medication must
  /// be computed based on the patient's weight, a dynamic value would be
  /// used to specify an expression that calculated the weight, and the path
  /// on the request resource that would contain the result.
  final List<ActivityDefinitionDynamicValue>? dynamicValue;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
      json['contained'] = contained!.map((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (url?.value != null) {
      json['url'] = url!.toJson();
    }
    if (urlElement != null) {
      json['_url'] = urlElement!.toJson();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map((Identifier v) => v.toJson()).toList();
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
      json['contact'] = contact!.map((ContactDetail v) => v.toJson()).toList();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] =
          useContext!.map((UsageContext v) => v.toJson()).toList();
    }
    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      json['jurisdiction'] =
          jurisdiction!.map((CodeableConcept v) => v.toJson()).toList();
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
      json['topic'] = topic!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (author != null && author!.isNotEmpty) {
      json['author'] = author!.map((ContactDetail v) => v.toJson()).toList();
    }
    if (editor != null && editor!.isNotEmpty) {
      json['editor'] = editor!.map((ContactDetail v) => v.toJson()).toList();
    }
    if (reviewer != null && reviewer!.isNotEmpty) {
      json['reviewer'] =
          reviewer!.map((ContactDetail v) => v.toJson()).toList();
    }
    if (endorser != null && endorser!.isNotEmpty) {
      json['endorser'] =
          endorser!.map((ContactDetail v) => v.toJson()).toList();
    }
    if (relatedArtifact != null && relatedArtifact!.isNotEmpty) {
      json['relatedArtifact'] =
          relatedArtifact!.map((RelatedArtifact v) => v.toJson()).toList();
    }
    if (library_ != null && library_!.isNotEmpty) {
      json['library'] = library_!.map((FhirCanonical v) => v.toJson()).toList();
    }
    if (libraryElement != null && libraryElement!.isNotEmpty) {
      json['_library'] =
          libraryElement!.map((Element v) => v.toJson()).toList();
    }
    if (kind != null) {
      json['kind'] = kind!.toJson();
    }
    if (profile?.value != null) {
      json['profile'] = profile!.toJson();
    }
    if (profileElement != null) {
      json['_profile'] = profileElement!.toJson();
    }
    if (code != null) {
      json['code'] = code!.toJson();
    }
    if (intent != null) {
      json['intent'] = intent!.toJson();
    }
    if (priority != null) {
      json['priority'] = priority!.toJson();
    }
    if (doNotPerform?.value != null) {
      json['doNotPerform'] = doNotPerform!.toJson();
    }
    if (doNotPerformElement != null) {
      json['_doNotPerform'] = doNotPerformElement!.toJson();
    }
    if (timingTiming != null) {
      json['timingTiming'] = timingTiming!.toJson();
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
    if (timingRange != null) {
      json['timingRange'] = timingRange!.toJson();
    }
    if (timingDuration != null) {
      json['timingDuration'] = timingDuration!.toJson();
    }
    if (location != null) {
      json['location'] = location!.toJson();
    }
    if (participant != null && participant!.isNotEmpty) {
      json['participant'] = participant!
          .map((ActivityDefinitionParticipant v) => v.toJson())
          .toList();
    }
    if (productReference != null) {
      json['productReference'] = productReference!.toJson();
    }
    if (productCodeableConcept != null) {
      json['productCodeableConcept'] = productCodeableConcept!.toJson();
    }
    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }
    if (dosage != null && dosage!.isNotEmpty) {
      json['dosage'] = dosage!.map((Dosage v) => v.toJson()).toList();
    }
    if (bodySite != null && bodySite!.isNotEmpty) {
      json['bodySite'] =
          bodySite!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (specimenRequirement != null && specimenRequirement!.isNotEmpty) {
      json['specimenRequirement'] =
          specimenRequirement!.map((Reference v) => v.toJson()).toList();
    }
    if (observationRequirement != null && observationRequirement!.isNotEmpty) {
      json['observationRequirement'] =
          observationRequirement!.map((Reference v) => v.toJson()).toList();
    }
    if (observationResultRequirement != null &&
        observationResultRequirement!.isNotEmpty) {
      json['observationResultRequirement'] = observationResultRequirement!
          .map((Reference v) => v.toJson())
          .toList();
    }
    if (transform?.value != null) {
      json['transform'] = transform!.toJson();
    }
    if (transformElement != null) {
      json['_transform'] = transformElement!.toJson();
    }
    if (dynamicValue != null && dynamicValue!.isNotEmpty) {
      json['dynamicValue'] = dynamicValue!
          .map((ActivityDefinitionDynamicValue v) => v.toJson())
          .toList();
    }
    return json;
  }

  @override
  ActivityDefinition clone() => throw UnimplementedError();
  @override
  ActivityDefinition copyWith({
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
    RequestResourceType? kind,
    Element? kindElement,
    FhirCanonical? profile,
    Element? profileElement,
    CodeableConcept? code,
    RequestIntent? intent,
    Element? intentElement,
    RequestPriority? priority,
    Element? priorityElement,
    FhirBoolean? doNotPerform,
    Element? doNotPerformElement,
    Timing? timingTiming,
    FhirDateTime? timingDateTime,
    Element? timingDateTimeElement,
    Age? timingAge,
    Period? timingPeriod,
    Range? timingRange,
    FhirDuration? timingDuration,
    Reference? location,
    List<ActivityDefinitionParticipant>? participant,
    Reference? productReference,
    CodeableConcept? productCodeableConcept,
    Quantity? quantity,
    List<Dosage>? dosage,
    List<CodeableConcept>? bodySite,
    List<Reference>? specimenRequirement,
    List<Reference>? observationRequirement,
    List<Reference>? observationResultRequirement,
    FhirCanonical? transform,
    Element? transformElement,
    List<ActivityDefinitionDynamicValue>? dynamicValue,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ActivityDefinition(
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
      kind: kind ?? this.kind,
      kindElement: kindElement ?? this.kindElement,
      profile: profile ?? this.profile,
      profileElement: profileElement ?? this.profileElement,
      code: code ?? this.code,
      intent: intent ?? this.intent,
      intentElement: intentElement ?? this.intentElement,
      priority: priority ?? this.priority,
      priorityElement: priorityElement ?? this.priorityElement,
      doNotPerform: doNotPerform ?? this.doNotPerform,
      doNotPerformElement: doNotPerformElement ?? this.doNotPerformElement,
      timingTiming: timingTiming ?? this.timingTiming,
      timingDateTime: timingDateTime ?? this.timingDateTime,
      timingDateTimeElement:
          timingDateTimeElement ?? this.timingDateTimeElement,
      timingAge: timingAge ?? this.timingAge,
      timingPeriod: timingPeriod ?? this.timingPeriod,
      timingRange: timingRange ?? this.timingRange,
      timingDuration: timingDuration ?? this.timingDuration,
      location: location ?? this.location,
      participant: participant ?? this.participant,
      productReference: productReference ?? this.productReference,
      productCodeableConcept:
          productCodeableConcept ?? this.productCodeableConcept,
      quantity: quantity ?? this.quantity,
      dosage: dosage ?? this.dosage,
      bodySite: bodySite ?? this.bodySite,
      specimenRequirement: specimenRequirement ?? this.specimenRequirement,
      observationRequirement:
          observationRequirement ?? this.observationRequirement,
      observationResultRequirement:
          observationResultRequirement ?? this.observationResultRequirement,
      transform: transform ?? this.transform,
      transformElement: transformElement ?? this.transformElement,
      dynamicValue: dynamicValue ?? this.dynamicValue,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ActivityDefinitionParticipant]
/// Indicates who should participate in performing the action described.
class ActivityDefinitionParticipant extends BackboneElement {
  /// Primary constructor for [ActivityDefinitionParticipant]

  ActivityDefinitionParticipant({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,

    /// Extensions for [type]
    this.typeElement,
    this.role,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ActivityDefinitionParticipant.fromJson(Map<String, dynamic> json) {
    return ActivityDefinitionParticipant(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: ActionParticipantType.fromJson(json['type']),
      typeElement: json['_type'] != null
          ? Element.fromJson(
              json['_type'] as Map<String, dynamic>,
            )
          : null,
      role: json['role'] != null
          ? CodeableConcept.fromJson(
              json['role'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ActivityDefinitionParticipant] from a [String] or [YamlMap] object
  factory ActivityDefinitionParticipant.fromYaml(dynamic yaml) => yaml is String
      ? ActivityDefinitionParticipant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ActivityDefinitionParticipant.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ActivityDefinitionParticipant cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ActivityDefinitionParticipant] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ActivityDefinitionParticipant.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ActivityDefinitionParticipant.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ActivityDefinitionParticipant';

  /// [type]
  /// The type of participant in the action.
  final ActionParticipantType type;

  /// Extensions for [type]
  final Element? typeElement;

  /// [role]
  /// The role the participant should play in performing the described
  /// action.
  final CodeableConcept? role;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['type'] = type.toJson();
    if (role != null) {
      json['role'] = role!.toJson();
    }
    return json;
  }

  @override
  ActivityDefinitionParticipant clone() => throw UnimplementedError();
  @override
  ActivityDefinitionParticipant copyWith({
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
    return ActivityDefinitionParticipant(
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
}

/// [ActivityDefinitionDynamicValue]
/// Dynamic values that will be evaluated to produce values for elements of
/// the resulting resource. For example, if the dosage of a medication must
/// be computed based on the patient's weight, a dynamic value would be
/// used to specify an expression that calculated the weight, and the path
/// on the request resource that would contain the result.
class ActivityDefinitionDynamicValue extends BackboneElement {
  /// Primary constructor for [ActivityDefinitionDynamicValue]

  ActivityDefinitionDynamicValue({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.path,

    /// Extensions for [path]
    this.pathElement,
    required this.expression,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ActivityDefinitionDynamicValue.fromJson(Map<String, dynamic> json) {
    return ActivityDefinitionDynamicValue(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      path: FhirString.fromJson(json['path']),
      pathElement: json['_path'] != null
          ? Element.fromJson(
              json['_path'] as Map<String, dynamic>,
            )
          : null,
      expression: FhirExpression.fromJson(
        json['expression'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [ActivityDefinitionDynamicValue] from a [String] or [YamlMap] object
  factory ActivityDefinitionDynamicValue.fromYaml(dynamic yaml) => yaml
          is String
      ? ActivityDefinitionDynamicValue.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ActivityDefinitionDynamicValue.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ActivityDefinitionDynamicValue cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ActivityDefinitionDynamicValue] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ActivityDefinitionDynamicValue.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ActivityDefinitionDynamicValue.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ActivityDefinitionDynamicValue';

  /// [path]
  /// The path to the element to be customized. This is the path on the
  /// resource that will hold the result of the calculation defined by the
  /// expression. The specified path SHALL be a FHIRPath resolveable on the
  /// specified target type of the ActivityDefinition, and SHALL consist only
  /// of identifiers, constant indexers, and a restricted subset of
  /// functions. The path is allowed to contain qualifiers (.) to traverse
  /// sub-elements, as well as indexers ([x]) to traverse
  /// multiple-cardinality sub-elements (see the [Simple FHIRPath
  /// Profile](fhirpath.html#simple) for full details).
  final FhirString path;

  /// Extensions for [path]
  final Element? pathElement;

  /// [expression]
  /// An expression specifying the value of the customized element.
  final FhirExpression expression;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['path'] = path.toJson();
    if (pathElement != null) {
      json['_path'] = pathElement!.toJson();
    }
    json['expression'] = expression.toJson();
    return json;
  }

  @override
  ActivityDefinitionDynamicValue clone() => throw UnimplementedError();
  @override
  ActivityDefinitionDynamicValue copyWith({
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
    return ActivityDefinitionDynamicValue(
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
}
