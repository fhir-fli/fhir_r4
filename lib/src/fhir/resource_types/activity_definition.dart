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
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.url,
    this.identifier,
    this.version,
    this.name,
    this.title,
    this.subtitle,
    required this.status,
    this.experimental,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.subjectCanonical,
    this.date,
    this.publisher,
    this.contact,
    this.description,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.usage,
    this.copyright,
    this.approvalDate,
    this.lastReviewDate,
    this.effectivePeriod,
    this.topic,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatedArtifact,
    this.library_,
    this.kind,
    this.profile,
    this.code,
    this.intent,
    this.priority,
    this.doNotPerform,
    this.timingTiming,
    this.timingDateTime,
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
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      url: json['url'] != null
          ? FhirUri.fromJson({
              'value': json['url'],
              '_value': json['_url'],
            })
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      version: json['version'] != null
          ? FhirString.fromJson({
              'value': json['version'],
              '_value': json['_version'],
            })
          : null,
      name: json['name'] != null
          ? FhirString.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      title: json['title'] != null
          ? FhirString.fromJson({
              'value': json['title'],
              '_value': json['_title'],
            })
          : null,
      subtitle: json['subtitle'] != null
          ? FhirString.fromJson({
              'value': json['subtitle'],
              '_value': json['_subtitle'],
            })
          : null,
      status: PublicationStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      experimental: json['experimental'] != null
          ? FhirBoolean.fromJson({
              'value': json['experimental'],
              '_value': json['_experimental'],
            })
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
          ? SubjectType.fromJson({
              'value': json['subjectCanonical'],
              '_value': json['_subjectCanonical'],
            })
          : null,
      date: json['date'] != null
          ? FhirDateTime.fromJson({
              'value': json['date'],
              '_value': json['_date'],
            })
          : null,
      publisher: json['publisher'] != null
          ? FhirString.fromJson({
              'value': json['publisher'],
              '_value': json['_publisher'],
            })
          : null,
      contact: json['contact'] != null
          ? (json['contact'] as List<dynamic>)
              .map<ContactDetail>(
                (v) => ContactDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      description: json['description'] != null
          ? FhirMarkdown.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      useContext: json['useContext'] != null
          ? (json['useContext'] as List<dynamic>)
              .map<UsageContext>(
                (v) => UsageContext.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      jurisdiction: json['jurisdiction'] != null
          ? (json['jurisdiction'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      purpose: json['purpose'] != null
          ? FhirMarkdown.fromJson({
              'value': json['purpose'],
              '_value': json['_purpose'],
            })
          : null,
      usage: json['usage'] != null
          ? FhirString.fromJson({
              'value': json['usage'],
              '_value': json['_usage'],
            })
          : null,
      copyright: json['copyright'] != null
          ? FhirMarkdown.fromJson({
              'value': json['copyright'],
              '_value': json['_copyright'],
            })
          : null,
      approvalDate: json['approvalDate'] != null
          ? FhirDate.fromJson({
              'value': json['approvalDate'],
              '_value': json['_approvalDate'],
            })
          : null,
      lastReviewDate: json['lastReviewDate'] != null
          ? FhirDate.fromJson({
              'value': json['lastReviewDate'],
              '_value': json['_lastReviewDate'],
            })
          : null,
      effectivePeriod: json['effectivePeriod'] != null
          ? Period.fromJson(
              json['effectivePeriod'] as Map<String, dynamic>,
            )
          : null,
      topic: json['topic'] != null
          ? (json['topic'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      author: json['author'] != null
          ? (json['author'] as List<dynamic>)
              .map<ContactDetail>(
                (v) => ContactDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      editor: json['editor'] != null
          ? (json['editor'] as List<dynamic>)
              .map<ContactDetail>(
                (v) => ContactDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      reviewer: json['reviewer'] != null
          ? (json['reviewer'] as List<dynamic>)
              .map<ContactDetail>(
                (v) => ContactDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      endorser: json['endorser'] != null
          ? (json['endorser'] as List<dynamic>)
              .map<ContactDetail>(
                (v) => ContactDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      relatedArtifact: json['relatedArtifact'] != null
          ? (json['relatedArtifact'] as List<dynamic>)
              .map<RelatedArtifact>(
                (v) => RelatedArtifact.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      library_: parsePrimitiveList<FhirCanonical>(
          json['library'] as List<dynamic>?, json['_library'] as List<dynamic>?,
          fromJson: FhirCanonical.fromJson),
      kind: json['kind'] != null
          ? RequestResourceType.fromJson({
              'value': json['kind'],
              '_value': json['_kind'],
            })
          : null,
      profile: json['profile'] != null
          ? FhirCanonical.fromJson({
              'value': json['profile'],
              '_value': json['_profile'],
            })
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      intent: json['intent'] != null
          ? RequestIntent.fromJson({
              'value': json['intent'],
              '_value': json['_intent'],
            })
          : null,
      priority: json['priority'] != null
          ? RequestPriority.fromJson({
              'value': json['priority'],
              '_value': json['_priority'],
            })
          : null,
      doNotPerform: json['doNotPerform'] != null
          ? FhirBoolean.fromJson({
              'value': json['doNotPerform'],
              '_value': json['_doNotPerform'],
            })
          : null,
      timingTiming: json['timingTiming'] != null
          ? Timing.fromJson(
              json['timingTiming'] as Map<String, dynamic>,
            )
          : null,
      timingDateTime: json['timingDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['timingDateTime'],
              '_value': json['_timingDateTime'],
            })
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
                (v) => ActivityDefinitionParticipant.fromJson(
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
                (v) => Dosage.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      bodySite: json['bodySite'] != null
          ? (json['bodySite'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      specimenRequirement: json['specimenRequirement'] != null
          ? (json['specimenRequirement'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      observationRequirement: json['observationRequirement'] != null
          ? (json['observationRequirement'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      observationResultRequirement: json['observationResultRequirement'] != null
          ? (json['observationResultRequirement'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      transform: json['transform'] != null
          ? FhirCanonical.fromJson({
              'value': json['transform'],
              '_value': json['_transform'],
            })
          : null,
      dynamicValue: json['dynamicValue'] != null
          ? (json['dynamicValue'] as List<dynamic>)
              .map<ActivityDefinitionDynamicValue>(
                (v) => ActivityDefinitionDynamicValue.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ActivityDefinition] from a [String]
  /// or [YamlMap] object
  factory ActivityDefinition.fromYaml(dynamic yaml) => yaml is String
      ? ActivityDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ActivityDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ActivityDefinition cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ActivityDefinition]
  /// that takes in a [String]
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [url]
  /// An absolute URI that is used to identify this activity definition when
  /// it is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance
  /// of this activity definition is (or will be) published. This URL can be
  /// the target of a canonical reference. It SHALL remain the same when the
  /// activity definition is stored on different servers.
  final FhirUri? url;

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

  /// [name]
  /// A natural language name identifying the activity definition. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the activity definition.
  final FhirString? title;

  /// [subtitle]
  /// An explanatory or alternate title for the activity definition giving
  /// additional information about its content.
  final FhirString? subtitle;

  /// [status]
  /// The status of this activity definition. Enables tracking the life-cycle
  /// of the content.
  final PublicationStatus status;

  /// [experimental]
  /// A Boolean value to indicate that this activity definition is authored
  /// for testing purposes (or education/evaluation/marketing) and is not
  /// intended to be used for genuine usage.
  final FhirBoolean? experimental;

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

  /// [date]
  /// The date (and optionally time) when the activity definition was
  /// published. The date must change when the business version changes and
  /// it must change if the status code changes. In addition, it should
  /// change when the substantive content of the activity definition changes.
  final FhirDateTime? date;

  /// [publisher]
  /// The name of the organization or individual that published the activity
  /// definition.
  final FhirString? publisher;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description]
  /// A free text natural language description of the activity definition
  /// from a consumer's perspective.
  final FhirMarkdown? description;

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

  /// [usage]
  /// A detailed description of how the activity definition is used from a
  /// clinical perspective.
  final FhirString? usage;

  /// [copyright]
  /// A copyright statement relating to the activity definition and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the activity definition.
  final FhirMarkdown? copyright;

  /// [approvalDate]
  /// The date on which the resource content was approved by the publisher.
  /// Approval happens once when the content is officially approved for
  /// usage.
  final FhirDate? approvalDate;

  /// [lastReviewDate]
  /// The date on which the resource content was last reviewed. Review
  /// happens periodically after approval but does not change the original
  /// approval date.
  final FhirDate? lastReviewDate;

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

  /// [kind]
  /// A description of the kind of resource the activity definition is
  /// representing. For example, a MedicationRequest, a ServiceRequest, or a
  /// CommunicationRequest. Typically, but not always, this is a Request
  /// resource.
  final RequestResourceType? kind;

  /// [profile]
  /// A profile to which the target of the activity definition is expected to
  /// conform.
  final FhirCanonical? profile;

  /// [code]
  /// Detailed description of the type of activity; e.g. What lab test, what
  /// procedure, what kind of encounter.
  final CodeableConcept? code;

  /// [intent]
  /// Indicates the level of authority/intentionality associated with the
  /// activity and where the request should fit into the workflow chain.
  final RequestIntent? intent;

  /// [priority]
  /// Indicates how quickly the activity should be addressed with respect to
  /// other requests.
  final RequestPriority? priority;

  /// [doNotPerform]
  /// Set this to true if the definition is to indicate that a particular
  /// activity should NOT be performed. If true, this element should be
  /// interpreted to reinforce a negative coding. For example NPO as a code
  /// with a doNotPerform of true would still indicate to NOT perform the
  /// action.
  final FhirBoolean? doNotPerform;

  /// [timingTiming]
  /// The period, timing or frequency upon which the described activity is to
  /// occur.
  final Timing? timingTiming;

  /// [timingDateTime]
  /// The period, timing or frequency upon which the described activity is to
  /// occur.
  final FhirDateTime? timingDateTime;

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
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (meta != null) {
      final fieldJson1 = meta!.toJson();
      json['meta'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_meta'] = fieldJson1['_value'];
      }
    }

    if (implicitRules != null) {
      final fieldJson2 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_implicitRules'] = fieldJson2['_value'];
      }
    }

    if (language != null) {
      final fieldJson3 = language!.toJson();
      json['language'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_language'] = fieldJson3['_value'];
      }
    }

    if (text != null) {
      final fieldJson4 = text!.toJson();
      json['text'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_text'] = fieldJson4['_value'];
      }
    }

    if (contained != null && contained!.isNotEmpty) {
      final fieldJson5 = contained!.map((e) => e.toJson()).toList();
      json['contained'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_contained'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson6 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson7 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (url != null) {
      final fieldJson8 = url!.toJson();
      json['url'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_url'] = fieldJson8['_value'];
      }
    }

    if (identifier != null && identifier!.isNotEmpty) {
      final fieldJson9 = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = fieldJson9.map((e) => e['value']).toList();
      if (fieldJson9.any((e) => e['_value'] != null)) {
        json['_identifier'] = fieldJson9.map((e) => e['_value']).toList();
      }
    }

    if (version != null) {
      final fieldJson10 = version!.toJson();
      json['version'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_version'] = fieldJson10['_value'];
      }
    }

    if (name != null) {
      final fieldJson11 = name!.toJson();
      json['name'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_name'] = fieldJson11['_value'];
      }
    }

    if (title != null) {
      final fieldJson12 = title!.toJson();
      json['title'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_title'] = fieldJson12['_value'];
      }
    }

    if (subtitle != null) {
      final fieldJson13 = subtitle!.toJson();
      json['subtitle'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_subtitle'] = fieldJson13['_value'];
      }
    }

    final fieldJson14 = status.toJson();
    json['status'] = fieldJson14['value'];
    if (fieldJson14['_value'] != null) {
      json['_status'] = fieldJson14['_value'];
    }

    if (experimental != null) {
      final fieldJson15 = experimental!.toJson();
      json['experimental'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_experimental'] = fieldJson15['_value'];
      }
    }

    if (subjectCodeableConcept != null) {
      final fieldJson16 = subjectCodeableConcept!.toJson();
      json['subjectCodeableConcept'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_subjectCodeableConcept'] = fieldJson16['_value'];
      }
    }

    if (subjectReference != null) {
      final fieldJson17 = subjectReference!.toJson();
      json['subjectReference'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_subjectReference'] = fieldJson17['_value'];
      }
    }

    if (subjectCanonical != null) {
      final fieldJson18 = subjectCanonical!.toJson();
      json['subjectCanonical'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_subjectCanonical'] = fieldJson18['_value'];
      }
    }

    if (date != null) {
      final fieldJson19 = date!.toJson();
      json['date'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_date'] = fieldJson19['_value'];
      }
    }

    if (publisher != null) {
      final fieldJson20 = publisher!.toJson();
      json['publisher'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_publisher'] = fieldJson20['_value'];
      }
    }

    if (contact != null && contact!.isNotEmpty) {
      final fieldJson21 = contact!.map((e) => e.toJson()).toList();
      json['contact'] = fieldJson21.map((e) => e['value']).toList();
      if (fieldJson21.any((e) => e['_value'] != null)) {
        json['_contact'] = fieldJson21.map((e) => e['_value']).toList();
      }
    }

    if (description != null) {
      final fieldJson22 = description!.toJson();
      json['description'] = fieldJson22['value'];
      if (fieldJson22['_value'] != null) {
        json['_description'] = fieldJson22['_value'];
      }
    }

    if (useContext != null && useContext!.isNotEmpty) {
      final fieldJson23 = useContext!.map((e) => e.toJson()).toList();
      json['useContext'] = fieldJson23.map((e) => e['value']).toList();
      if (fieldJson23.any((e) => e['_value'] != null)) {
        json['_useContext'] = fieldJson23.map((e) => e['_value']).toList();
      }
    }

    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      final fieldJson24 = jurisdiction!.map((e) => e.toJson()).toList();
      json['jurisdiction'] = fieldJson24.map((e) => e['value']).toList();
      if (fieldJson24.any((e) => e['_value'] != null)) {
        json['_jurisdiction'] = fieldJson24.map((e) => e['_value']).toList();
      }
    }

    if (purpose != null) {
      final fieldJson25 = purpose!.toJson();
      json['purpose'] = fieldJson25['value'];
      if (fieldJson25['_value'] != null) {
        json['_purpose'] = fieldJson25['_value'];
      }
    }

    if (usage != null) {
      final fieldJson26 = usage!.toJson();
      json['usage'] = fieldJson26['value'];
      if (fieldJson26['_value'] != null) {
        json['_usage'] = fieldJson26['_value'];
      }
    }

    if (copyright != null) {
      final fieldJson27 = copyright!.toJson();
      json['copyright'] = fieldJson27['value'];
      if (fieldJson27['_value'] != null) {
        json['_copyright'] = fieldJson27['_value'];
      }
    }

    if (approvalDate != null) {
      final fieldJson28 = approvalDate!.toJson();
      json['approvalDate'] = fieldJson28['value'];
      if (fieldJson28['_value'] != null) {
        json['_approvalDate'] = fieldJson28['_value'];
      }
    }

    if (lastReviewDate != null) {
      final fieldJson29 = lastReviewDate!.toJson();
      json['lastReviewDate'] = fieldJson29['value'];
      if (fieldJson29['_value'] != null) {
        json['_lastReviewDate'] = fieldJson29['_value'];
      }
    }

    if (effectivePeriod != null) {
      final fieldJson30 = effectivePeriod!.toJson();
      json['effectivePeriod'] = fieldJson30['value'];
      if (fieldJson30['_value'] != null) {
        json['_effectivePeriod'] = fieldJson30['_value'];
      }
    }

    if (topic != null && topic!.isNotEmpty) {
      final fieldJson31 = topic!.map((e) => e.toJson()).toList();
      json['topic'] = fieldJson31.map((e) => e['value']).toList();
      if (fieldJson31.any((e) => e['_value'] != null)) {
        json['_topic'] = fieldJson31.map((e) => e['_value']).toList();
      }
    }

    if (author != null && author!.isNotEmpty) {
      final fieldJson32 = author!.map((e) => e.toJson()).toList();
      json['author'] = fieldJson32.map((e) => e['value']).toList();
      if (fieldJson32.any((e) => e['_value'] != null)) {
        json['_author'] = fieldJson32.map((e) => e['_value']).toList();
      }
    }

    if (editor != null && editor!.isNotEmpty) {
      final fieldJson33 = editor!.map((e) => e.toJson()).toList();
      json['editor'] = fieldJson33.map((e) => e['value']).toList();
      if (fieldJson33.any((e) => e['_value'] != null)) {
        json['_editor'] = fieldJson33.map((e) => e['_value']).toList();
      }
    }

    if (reviewer != null && reviewer!.isNotEmpty) {
      final fieldJson34 = reviewer!.map((e) => e.toJson()).toList();
      json['reviewer'] = fieldJson34.map((e) => e['value']).toList();
      if (fieldJson34.any((e) => e['_value'] != null)) {
        json['_reviewer'] = fieldJson34.map((e) => e['_value']).toList();
      }
    }

    if (endorser != null && endorser!.isNotEmpty) {
      final fieldJson35 = endorser!.map((e) => e.toJson()).toList();
      json['endorser'] = fieldJson35.map((e) => e['value']).toList();
      if (fieldJson35.any((e) => e['_value'] != null)) {
        json['_endorser'] = fieldJson35.map((e) => e['_value']).toList();
      }
    }

    if (relatedArtifact != null && relatedArtifact!.isNotEmpty) {
      final fieldJson36 = relatedArtifact!.map((e) => e.toJson()).toList();
      json['relatedArtifact'] = fieldJson36.map((e) => e['value']).toList();
      if (fieldJson36.any((e) => e['_value'] != null)) {
        json['_relatedArtifact'] = fieldJson36.map((e) => e['_value']).toList();
      }
    }

    if (library_ != null && library_!.isNotEmpty) {
      final fieldJson37 = library_!.map((e) => e.toJson()).toList();
      json['library'] = fieldJson37.map((e) => e['value']).toList();
      if (fieldJson37.any((e) => e['_value'] != null)) {
        json['_library'] = fieldJson37.map((e) => e['_value']).toList();
      }
    }

    if (kind != null) {
      final fieldJson38 = kind!.toJson();
      json['kind'] = fieldJson38['value'];
      if (fieldJson38['_value'] != null) {
        json['_kind'] = fieldJson38['_value'];
      }
    }

    if (profile != null) {
      final fieldJson39 = profile!.toJson();
      json['profile'] = fieldJson39['value'];
      if (fieldJson39['_value'] != null) {
        json['_profile'] = fieldJson39['_value'];
      }
    }

    if (code != null) {
      final fieldJson40 = code!.toJson();
      json['code'] = fieldJson40['value'];
      if (fieldJson40['_value'] != null) {
        json['_code'] = fieldJson40['_value'];
      }
    }

    if (intent != null) {
      final fieldJson41 = intent!.toJson();
      json['intent'] = fieldJson41['value'];
      if (fieldJson41['_value'] != null) {
        json['_intent'] = fieldJson41['_value'];
      }
    }

    if (priority != null) {
      final fieldJson42 = priority!.toJson();
      json['priority'] = fieldJson42['value'];
      if (fieldJson42['_value'] != null) {
        json['_priority'] = fieldJson42['_value'];
      }
    }

    if (doNotPerform != null) {
      final fieldJson43 = doNotPerform!.toJson();
      json['doNotPerform'] = fieldJson43['value'];
      if (fieldJson43['_value'] != null) {
        json['_doNotPerform'] = fieldJson43['_value'];
      }
    }

    if (timingTiming != null) {
      final fieldJson44 = timingTiming!.toJson();
      json['timingTiming'] = fieldJson44['value'];
      if (fieldJson44['_value'] != null) {
        json['_timingTiming'] = fieldJson44['_value'];
      }
    }

    if (timingDateTime != null) {
      final fieldJson45 = timingDateTime!.toJson();
      json['timingDateTime'] = fieldJson45['value'];
      if (fieldJson45['_value'] != null) {
        json['_timingDateTime'] = fieldJson45['_value'];
      }
    }

    if (timingAge != null) {
      final fieldJson46 = timingAge!.toJson();
      json['timingAge'] = fieldJson46['value'];
      if (fieldJson46['_value'] != null) {
        json['_timingAge'] = fieldJson46['_value'];
      }
    }

    if (timingPeriod != null) {
      final fieldJson47 = timingPeriod!.toJson();
      json['timingPeriod'] = fieldJson47['value'];
      if (fieldJson47['_value'] != null) {
        json['_timingPeriod'] = fieldJson47['_value'];
      }
    }

    if (timingRange != null) {
      final fieldJson48 = timingRange!.toJson();
      json['timingRange'] = fieldJson48['value'];
      if (fieldJson48['_value'] != null) {
        json['_timingRange'] = fieldJson48['_value'];
      }
    }

    if (timingDuration != null) {
      final fieldJson49 = timingDuration!.toJson();
      json['timingDuration'] = fieldJson49['value'];
      if (fieldJson49['_value'] != null) {
        json['_timingDuration'] = fieldJson49['_value'];
      }
    }

    if (location != null) {
      final fieldJson50 = location!.toJson();
      json['location'] = fieldJson50['value'];
      if (fieldJson50['_value'] != null) {
        json['_location'] = fieldJson50['_value'];
      }
    }

    if (participant != null && participant!.isNotEmpty) {
      final fieldJson51 = participant!.map((e) => e.toJson()).toList();
      json['participant'] = fieldJson51.map((e) => e['value']).toList();
      if (fieldJson51.any((e) => e['_value'] != null)) {
        json['_participant'] = fieldJson51.map((e) => e['_value']).toList();
      }
    }

    if (productReference != null) {
      final fieldJson52 = productReference!.toJson();
      json['productReference'] = fieldJson52['value'];
      if (fieldJson52['_value'] != null) {
        json['_productReference'] = fieldJson52['_value'];
      }
    }

    if (productCodeableConcept != null) {
      final fieldJson53 = productCodeableConcept!.toJson();
      json['productCodeableConcept'] = fieldJson53['value'];
      if (fieldJson53['_value'] != null) {
        json['_productCodeableConcept'] = fieldJson53['_value'];
      }
    }

    if (quantity != null) {
      final fieldJson54 = quantity!.toJson();
      json['quantity'] = fieldJson54['value'];
      if (fieldJson54['_value'] != null) {
        json['_quantity'] = fieldJson54['_value'];
      }
    }

    if (dosage != null && dosage!.isNotEmpty) {
      final fieldJson55 = dosage!.map((e) => e.toJson()).toList();
      json['dosage'] = fieldJson55.map((e) => e['value']).toList();
      if (fieldJson55.any((e) => e['_value'] != null)) {
        json['_dosage'] = fieldJson55.map((e) => e['_value']).toList();
      }
    }

    if (bodySite != null && bodySite!.isNotEmpty) {
      final fieldJson56 = bodySite!.map((e) => e.toJson()).toList();
      json['bodySite'] = fieldJson56.map((e) => e['value']).toList();
      if (fieldJson56.any((e) => e['_value'] != null)) {
        json['_bodySite'] = fieldJson56.map((e) => e['_value']).toList();
      }
    }

    if (specimenRequirement != null && specimenRequirement!.isNotEmpty) {
      final fieldJson57 = specimenRequirement!.map((e) => e.toJson()).toList();
      json['specimenRequirement'] = fieldJson57.map((e) => e['value']).toList();
      if (fieldJson57.any((e) => e['_value'] != null)) {
        json['_specimenRequirement'] =
            fieldJson57.map((e) => e['_value']).toList();
      }
    }

    if (observationRequirement != null && observationRequirement!.isNotEmpty) {
      final fieldJson58 =
          observationRequirement!.map((e) => e.toJson()).toList();
      json['observationRequirement'] =
          fieldJson58.map((e) => e['value']).toList();
      if (fieldJson58.any((e) => e['_value'] != null)) {
        json['_observationRequirement'] =
            fieldJson58.map((e) => e['_value']).toList();
      }
    }

    if (observationResultRequirement != null &&
        observationResultRequirement!.isNotEmpty) {
      final fieldJson59 =
          observationResultRequirement!.map((e) => e.toJson()).toList();
      json['observationResultRequirement'] =
          fieldJson59.map((e) => e['value']).toList();
      if (fieldJson59.any((e) => e['_value'] != null)) {
        json['_observationResultRequirement'] =
            fieldJson59.map((e) => e['_value']).toList();
      }
    }

    if (transform != null) {
      final fieldJson60 = transform!.toJson();
      json['transform'] = fieldJson60['value'];
      if (fieldJson60['_value'] != null) {
        json['_transform'] = fieldJson60['_value'];
      }
    }

    if (dynamicValue != null && dynamicValue!.isNotEmpty) {
      final fieldJson61 = dynamicValue!.map((e) => e.toJson()).toList();
      json['dynamicValue'] = fieldJson61.map((e) => e['value']).toList();
      if (fieldJson61.any((e) => e['_value'] != null)) {
        json['_dynamicValue'] = fieldJson61.map((e) => e['_value']).toList();
      }
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
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? url,
    List<Identifier>? identifier,
    FhirString? version,
    FhirString? name,
    FhirString? title,
    FhirString? subtitle,
    PublicationStatus? status,
    FhirBoolean? experimental,
    CodeableConcept? subjectCodeableConcept,
    Reference? subjectReference,
    SubjectType? subjectCanonical,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    FhirString? usage,
    FhirMarkdown? copyright,
    FhirDate? approvalDate,
    FhirDate? lastReviewDate,
    Period? effectivePeriod,
    List<CodeableConcept>? topic,
    List<ContactDetail>? author,
    List<ContactDetail>? editor,
    List<ContactDetail>? reviewer,
    List<ContactDetail>? endorser,
    List<RelatedArtifact>? relatedArtifact,
    List<FhirCanonical>? library_,
    RequestResourceType? kind,
    FhirCanonical? profile,
    CodeableConcept? code,
    RequestIntent? intent,
    RequestPriority? priority,
    FhirBoolean? doNotPerform,
    Timing? timingTiming,
    FhirDateTime? timingDateTime,
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
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
      identifier: identifier ?? this.identifier,
      version: version ?? this.version,
      name: name ?? this.name,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      status: status ?? this.status,
      experimental: experimental ?? this.experimental,
      subjectCodeableConcept:
          subjectCodeableConcept ?? this.subjectCodeableConcept,
      subjectReference: subjectReference ?? this.subjectReference,
      subjectCanonical: subjectCanonical ?? this.subjectCanonical,
      date: date ?? this.date,
      publisher: publisher ?? this.publisher,
      contact: contact ?? this.contact,
      description: description ?? this.description,
      useContext: useContext ?? this.useContext,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      purpose: purpose ?? this.purpose,
      usage: usage ?? this.usage,
      copyright: copyright ?? this.copyright,
      approvalDate: approvalDate ?? this.approvalDate,
      lastReviewDate: lastReviewDate ?? this.lastReviewDate,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      topic: topic ?? this.topic,
      author: author ?? this.author,
      editor: editor ?? this.editor,
      reviewer: reviewer ?? this.reviewer,
      endorser: endorser ?? this.endorser,
      relatedArtifact: relatedArtifact ?? this.relatedArtifact,
      library_: library_ ?? this.library_,
      kind: kind ?? this.kind,
      profile: profile ?? this.profile,
      code: code ?? this.code,
      intent: intent ?? this.intent,
      priority: priority ?? this.priority,
      doNotPerform: doNotPerform ?? this.doNotPerform,
      timingTiming: timingTiming ?? this.timingTiming,
      timingDateTime: timingDateTime ?? this.timingDateTime,
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
    this.extension_,
    super.modifierExtension,
    required this.type,
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
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: ActionParticipantType.fromJson({
        'value': json['type'],
        '_value': json['_type'],
      }),
      role: json['role'] != null
          ? CodeableConcept.fromJson(
              json['role'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ActivityDefinitionParticipant] from a [String]
  /// or [YamlMap] object
  factory ActivityDefinitionParticipant.fromYaml(dynamic yaml) => yaml is String
      ? ActivityDefinitionParticipant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ActivityDefinitionParticipant.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ActivityDefinitionParticipant cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ActivityDefinitionParticipant]
  /// that takes in a [String]
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [type]
  /// The type of participant in the action.
  final ActionParticipantType type;

  /// [role]
  /// The role the participant should play in performing the described
  /// action.
  final CodeableConcept? role;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = type.toJson();
    json['type'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_type'] = fieldJson3['_value'];
    }

    if (role != null) {
      final fieldJson4 = role!.toJson();
      json['role'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_role'] = fieldJson4['_value'];
      }
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
    this.extension_,
    super.modifierExtension,
    required this.path,
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
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      path: FhirString.fromJson({
        'value': json['path'],
        '_value': json['_path'],
      }),
      expression: FhirExpression.fromJson(
        json['expression'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [ActivityDefinitionDynamicValue] from a [String]
  /// or [YamlMap] object
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
              'ActivityDefinitionDynamicValue cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ActivityDefinitionDynamicValue]
  /// that takes in a [String]
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

  /// [expression]
  /// An expression specifying the value of the customized element.
  final FhirExpression expression;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = path.toJson();
    json['path'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_path'] = fieldJson3['_value'];
    }

    final fieldJson4 = expression.toJson();
    json['expression'] = fieldJson4['value'];
    if (fieldJson4['_value'] != null) {
      json['_expression'] = fieldJson4['_value'];
    }

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
