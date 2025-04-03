import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ActivityDefinition]
/// This resource allows for the definition of some activity to be
/// performed, independent of a particular patient, practitioner, or other
/// performance context.
class ActivityDefinition extends CanonicalResource {
  /// Primary constructor for
  /// [ActivityDefinition]

  const ActivityDefinition({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    super.url,
    this.identifier,
    super.version,
    this.name,
    this.title,
    this.subtitle,
    required super.status,
    super.experimental,
    this.subjectX,
    super.date,
    super.publisher,
    super.contact,
    super.description,
    super.useContext,
    super.jurisdiction,
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
    this.timingX,
    this.location,
    this.participant,
    this.productX,
    this.quantity,
    this.dosage,
    this.bodySite,
    this.specimenRequirement,
    this.observationRequirement,
    this.observationResultRequirement,
    this.transform,
    this.dynamicValue,
  }) : super(
          objectPath: 'ActivityDefinition',
          resourceType: R4ResourceType.ActivityDefinition,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ActivityDefinition.empty() => ActivityDefinition(
        status: PublicationStatus.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ActivityDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ActivityDefinition';
    return ActivityDefinition(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      url: JsonParser.parsePrimitive<FhirUri>(
        json,
        'url',
        FhirUri.fromJson,
        '$objectPath.url',
      ),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      version: JsonParser.parsePrimitive<FhirString>(
        json,
        'version',
        FhirString.fromJson,
        '$objectPath.version',
      ),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      ),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
        '$objectPath.title',
      ),
      subtitle: JsonParser.parsePrimitive<FhirString>(
        json,
        'subtitle',
        FhirString.fromJson,
        '$objectPath.subtitle',
      ),
      status: JsonParser.parsePrimitive<PublicationStatus>(
        json,
        'status',
        PublicationStatus.fromJson,
        '$objectPath.status',
      ),
      experimental: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'experimental',
        FhirBoolean.fromJson,
        '$objectPath.experimental',
      ),
      subjectX: JsonParser.parsePolymorphic<SubjectXActivityDefinition>(
        json,
        {
          'subjectCodeableConcept': CodeableConcept.fromJson,
          'subjectReference': Reference.fromJson,
          'subjectCanonical': FhirCanonical.fromJson,
        },
        objectPath,
      ),
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
        '$objectPath.date',
      ),
      publisher: JsonParser.parsePrimitive<FhirString>(
        json,
        'publisher',
        FhirString.fromJson,
        '$objectPath.publisher',
      ),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contact',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
        '$objectPath.description',
      ),
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map<UsageContext>(
            (v) => UsageContext.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.useContext',
              },
            ),
          )
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.jurisdiction',
              },
            ),
          )
          .toList(),
      purpose: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'purpose',
        FhirMarkdown.fromJson,
        '$objectPath.purpose',
      ),
      usage: JsonParser.parsePrimitive<FhirString>(
        json,
        'usage',
        FhirString.fromJson,
        '$objectPath.usage',
      ),
      copyright: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'copyright',
        FhirMarkdown.fromJson,
        '$objectPath.copyright',
      ),
      approvalDate: JsonParser.parsePrimitive<FhirDate>(
        json,
        'approvalDate',
        FhirDate.fromJson,
        '$objectPath.approvalDate',
      ),
      lastReviewDate: JsonParser.parsePrimitive<FhirDate>(
        json,
        'lastReviewDate',
        FhirDate.fromJson,
        '$objectPath.lastReviewDate',
      ),
      effectivePeriod: JsonParser.parseObject<Period>(
        json,
        'effectivePeriod',
        Period.fromJson,
        '$objectPath.effectivePeriod',
      ),
      topic: (json['topic'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.topic',
              },
            ),
          )
          .toList(),
      author: (json['author'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.author',
              },
            ),
          )
          .toList(),
      editor: (json['editor'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.editor',
              },
            ),
          )
          .toList(),
      reviewer: (json['reviewer'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reviewer',
              },
            ),
          )
          .toList(),
      endorser: (json['endorser'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.endorser',
              },
            ),
          )
          .toList(),
      relatedArtifact: (json['relatedArtifact'] as List<dynamic>?)
          ?.map<RelatedArtifact>(
            (v) => RelatedArtifact.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relatedArtifact',
              },
            ),
          )
          .toList(),
      library_: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'library',
        FhirCanonical.fromJson,
        '$objectPath.library',
      ),
      kind: JsonParser.parsePrimitive<RequestResourceType>(
        json,
        'kind',
        RequestResourceType.fromJson,
        '$objectPath.kind',
      ),
      profile: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'profile',
        FhirCanonical.fromJson,
        '$objectPath.profile',
      ),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      ),
      intent: JsonParser.parsePrimitive<RequestIntent>(
        json,
        'intent',
        RequestIntent.fromJson,
        '$objectPath.intent',
      ),
      priority: JsonParser.parsePrimitive<RequestPriority>(
        json,
        'priority',
        RequestPriority.fromJson,
        '$objectPath.priority',
      ),
      doNotPerform: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'doNotPerform',
        FhirBoolean.fromJson,
        '$objectPath.doNotPerform',
      ),
      timingX: JsonParser.parsePolymorphic<TimingXActivityDefinition>(
        json,
        {
          'timingTiming': Timing.fromJson,
          'timingDateTime': FhirDateTime.fromJson,
          'timingAge': Age.fromJson,
          'timingPeriod': Period.fromJson,
          'timingRange': Range.fromJson,
          'timingDuration': FhirDuration.fromJson,
        },
        objectPath,
      ),
      location: JsonParser.parseObject<Reference>(
        json,
        'location',
        Reference.fromJson,
        '$objectPath.location',
      ),
      participant: (json['participant'] as List<dynamic>?)
          ?.map<ActivityDefinitionParticipant>(
            (v) => ActivityDefinitionParticipant.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.participant',
              },
            ),
          )
          .toList(),
      productX: JsonParser.parsePolymorphic<ProductXActivityDefinition>(
        json,
        {
          'productReference': Reference.fromJson,
          'productCodeableConcept': CodeableConcept.fromJson,
        },
        objectPath,
      ),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
        '$objectPath.quantity',
      ),
      dosage: (json['dosage'] as List<dynamic>?)
          ?.map<Dosage>(
            (v) => Dosage.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.dosage',
              },
            ),
          )
          .toList(),
      bodySite: (json['bodySite'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.bodySite',
              },
            ),
          )
          .toList(),
      specimenRequirement: (json['specimenRequirement'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.specimenRequirement',
              },
            ),
          )
          .toList(),
      observationRequirement: (json['observationRequirement'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.observationRequirement',
              },
            ),
          )
          .toList(),
      observationResultRequirement:
          (json['observationResultRequirement'] as List<dynamic>?)
              ?.map<Reference>(
                (v) => Reference.fromJson(
                  {
                    ...v as Map<String, dynamic>,
                    'objectPath': '$objectPath.observationResultRequirement',
                  },
                ),
              )
              .toList(),
      transform: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'transform',
        FhirCanonical.fromJson,
        '$objectPath.transform',
      ),
      dynamicValue: (json['dynamicValue'] as List<dynamic>?)
          ?.map<ActivityDefinitionDynamicValue>(
            (v) => ActivityDefinitionDynamicValue.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.dynamicValue',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ActivityDefinition]
  /// from a [String] or [YamlMap] object
  factory ActivityDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ActivityDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ActivityDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ActivityDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ActivityDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ActivityDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ActivityDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ActivityDefinition';

  /// [identifier]
  /// A formal identifier that is used to identify this activity definition
  /// when it is represented in other formats, or referenced in a
  /// specification, model, design or an instance.
  final List<Identifier>? identifier;

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

  /// [subjectX]
  /// A code, group definition, or canonical reference that describes or
  /// identifies the intended subject of the activity being defined.
  /// Canonical references are allowed to support the definition of protocols
  /// for drug and substance quality specifications, and is allowed to
  /// reference a MedicinalProductDefinition, SubstanceDefinition,
  /// AdministrableProductDefinition, ManufacturedItemDefinition, or
  /// PackagedProductDefinition resource.
  final SubjectXActivityDefinition? subjectX;

  /// Getter for [subjectCodeableConcept] as a CodeableConcept
  CodeableConcept? get subjectCodeableConcept =>
      subjectX?.isAs<CodeableConcept>();

  /// Getter for [subjectReference] as a Reference
  Reference? get subjectReference => subjectX?.isAs<Reference>();

  /// Getter for [subjectCanonical] as a FhirCanonical
  FhirCanonical? get subjectCanonical => subjectX?.isAs<FhirCanonical>();

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

  /// [timingX]
  /// The period, timing or frequency upon which the described activity is to
  /// occur.
  final TimingXActivityDefinition? timingX;

  /// Getter for [timingTiming] as a Timing
  Timing? get timingTiming => timingX?.isAs<Timing>();

  /// Getter for [timingDateTime] as a FhirDateTime
  FhirDateTime? get timingDateTime => timingX?.isAs<FhirDateTime>();

  /// Getter for [timingAge] as a Age
  Age? get timingAge => timingX?.isAs<Age>();

  /// Getter for [timingPeriod] as a Period
  Period? get timingPeriod => timingX?.isAs<Period>();

  /// Getter for [timingRange] as a Range
  Range? get timingRange => timingX?.isAs<Range>();

  /// Getter for [timingDuration] as a FhirDuration
  FhirDuration? get timingDuration => timingX?.isAs<FhirDuration>();

  /// [location]
  /// Identifies the facility where the activity will occur; e.g. home,
  /// hospital, specific clinic, etc.
  final Reference? location;

  /// [participant]
  /// Indicates who should participate in performing the action described.
  final List<ActivityDefinitionParticipant>? participant;

  /// [productX]
  /// Identifies the food, drug or other product being consumed or supplied
  /// in the activity.
  final ProductXActivityDefinition? productX;

  /// Getter for [productReference] as a Reference
  Reference? get productReference => productX?.isAs<Reference>();

  /// Getter for [productCodeableConcept] as a CodeableConcept
  CodeableConcept? get productCodeableConcept =>
      productX?.isAs<CodeableConcept>();

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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'url',
      url,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'version',
      version,
    );
    addField(
      'name',
      name,
    );
    addField(
      'title',
      title,
    );
    addField(
      'subtitle',
      subtitle,
    );
    addField(
      'status',
      status,
    );
    addField(
      'experimental',
      experimental,
    );
    if (subjectX != null) {
      final fhirType = subjectX!.fhirType;
      addField(
        'subject${fhirType.capitalize()}',
        subjectX,
      );
    }

    addField(
      'date',
      date,
    );
    addField(
      'publisher',
      publisher,
    );
    addField(
      'contact',
      contact,
    );
    addField(
      'description',
      description,
    );
    addField(
      'useContext',
      useContext,
    );
    addField(
      'jurisdiction',
      jurisdiction,
    );
    addField(
      'purpose',
      purpose,
    );
    addField(
      'usage',
      usage,
    );
    addField(
      'copyright',
      copyright,
    );
    addField(
      'approvalDate',
      approvalDate,
    );
    addField(
      'lastReviewDate',
      lastReviewDate,
    );
    addField(
      'effectivePeriod',
      effectivePeriod,
    );
    addField(
      'topic',
      topic,
    );
    addField(
      'author',
      author,
    );
    addField(
      'editor',
      editor,
    );
    addField(
      'reviewer',
      reviewer,
    );
    addField(
      'endorser',
      endorser,
    );
    addField(
      'relatedArtifact',
      relatedArtifact,
    );
    addField(
      'library',
      library_,
    );
    addField(
      'kind',
      kind,
    );
    addField(
      'profile',
      profile,
    );
    addField(
      'code',
      code,
    );
    addField(
      'intent',
      intent,
    );
    addField(
      'priority',
      priority,
    );
    addField(
      'doNotPerform',
      doNotPerform,
    );
    if (timingX != null) {
      final fhirType = timingX!.fhirType;
      addField(
        'timing${fhirType.capitalize()}',
        timingX,
      );
    }

    addField(
      'location',
      location,
    );
    addField(
      'participant',
      participant,
    );
    if (productX != null) {
      final fhirType = productX!.fhirType;
      addField(
        'product${fhirType.capitalize()}',
        productX,
      );
    }

    addField(
      'quantity',
      quantity,
    );
    addField(
      'dosage',
      dosage,
    );
    addField(
      'bodySite',
      bodySite,
    );
    addField(
      'specimenRequirement',
      specimenRequirement,
    );
    addField(
      'observationRequirement',
      observationRequirement,
    );
    addField(
      'observationResultRequirement',
      observationResultRequirement,
    );
    addField(
      'transform',
      transform,
    );
    addField(
      'dynamicValue',
      dynamicValue,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'url',
      'identifier',
      'version',
      'name',
      'title',
      'subtitle',
      'status',
      'experimental',
      'subjectX',
      'date',
      'publisher',
      'contact',
      'description',
      'useContext',
      'jurisdiction',
      'purpose',
      'usage',
      'copyright',
      'approvalDate',
      'lastReviewDate',
      'effectivePeriod',
      'topic',
      'author',
      'editor',
      'reviewer',
      'endorser',
      'relatedArtifact',
      'library',
      'kind',
      'profile',
      'code',
      'intent',
      'priority',
      'doNotPerform',
      'timingX',
      'location',
      'participant',
      'productX',
      'quantity',
      'dosage',
      'bodySite',
      'specimenRequirement',
      'observationRequirement',
      'observationResultRequirement',
      'transform',
      'dynamicValue',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'url':
        if (url != null) {
          fields.add(url!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'version':
        if (version != null) {
          fields.add(version!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'subtitle':
        if (subtitle != null) {
          fields.add(subtitle!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'experimental':
        if (experimental != null) {
          fields.add(experimental!);
        }
      case 'subject':
        fields.add(subjectX!);
      case 'subjectX':
        fields.add(subjectX!);
      case 'subjectCodeableConcept':
        if (subjectX is CodeableConcept) {
          fields.add(subjectX!);
        }
      case 'subjectReference':
        if (subjectX is Reference) {
          fields.add(subjectX!);
        }
      case 'subjectCanonical':
        if (subjectX is FhirCanonical) {
          fields.add(subjectX!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'publisher':
        if (publisher != null) {
          fields.add(publisher!);
        }
      case 'contact':
        if (contact != null) {
          fields.addAll(contact!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'useContext':
        if (useContext != null) {
          fields.addAll(useContext!);
        }
      case 'jurisdiction':
        if (jurisdiction != null) {
          fields.addAll(jurisdiction!);
        }
      case 'purpose':
        if (purpose != null) {
          fields.add(purpose!);
        }
      case 'usage':
        if (usage != null) {
          fields.add(usage!);
        }
      case 'copyright':
        if (copyright != null) {
          fields.add(copyright!);
        }
      case 'approvalDate':
        if (approvalDate != null) {
          fields.add(approvalDate!);
        }
      case 'lastReviewDate':
        if (lastReviewDate != null) {
          fields.add(lastReviewDate!);
        }
      case 'effectivePeriod':
        if (effectivePeriod != null) {
          fields.add(effectivePeriod!);
        }
      case 'topic':
        if (topic != null) {
          fields.addAll(topic!);
        }
      case 'author':
        if (author != null) {
          fields.addAll(author!);
        }
      case 'editor':
        if (editor != null) {
          fields.addAll(editor!);
        }
      case 'reviewer':
        if (reviewer != null) {
          fields.addAll(reviewer!);
        }
      case 'endorser':
        if (endorser != null) {
          fields.addAll(endorser!);
        }
      case 'relatedArtifact':
        if (relatedArtifact != null) {
          fields.addAll(relatedArtifact!);
        }
      case 'library':
        if (library_ != null) {
          fields.addAll(library_!);
        }
      case 'kind':
        if (kind != null) {
          fields.add(kind!);
        }
      case 'profile':
        if (profile != null) {
          fields.add(profile!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'intent':
        if (intent != null) {
          fields.add(intent!);
        }
      case 'priority':
        if (priority != null) {
          fields.add(priority!);
        }
      case 'doNotPerform':
        if (doNotPerform != null) {
          fields.add(doNotPerform!);
        }
      case 'timing':
        fields.add(timingX!);
      case 'timingX':
        fields.add(timingX!);
      case 'timingTiming':
        if (timingX is Timing) {
          fields.add(timingX!);
        }
      case 'timingDateTime':
        if (timingX is FhirDateTime) {
          fields.add(timingX!);
        }
      case 'timingAge':
        if (timingX is Age) {
          fields.add(timingX!);
        }
      case 'timingPeriod':
        if (timingX is Period) {
          fields.add(timingX!);
        }
      case 'timingRange':
        if (timingX is Range) {
          fields.add(timingX!);
        }
      case 'timingDuration':
        if (timingX is FhirDuration) {
          fields.add(timingX!);
        }
      case 'location':
        if (location != null) {
          fields.add(location!);
        }
      case 'participant':
        if (participant != null) {
          fields.addAll(participant!);
        }
      case 'product':
        fields.add(productX!);
      case 'productX':
        fields.add(productX!);
      case 'productReference':
        if (productX is Reference) {
          fields.add(productX!);
        }
      case 'productCodeableConcept':
        if (productX is CodeableConcept) {
          fields.add(productX!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'dosage':
        if (dosage != null) {
          fields.addAll(dosage!);
        }
      case 'bodySite':
        if (bodySite != null) {
          fields.addAll(bodySite!);
        }
      case 'specimenRequirement':
        if (specimenRequirement != null) {
          fields.addAll(specimenRequirement!);
        }
      case 'observationRequirement':
        if (observationRequirement != null) {
          fields.addAll(observationRequirement!);
        }
      case 'observationResultRequirement':
        if (observationResultRequirement != null) {
          fields.addAll(observationResultRequirement!);
        }
      case 'transform':
        if (transform != null) {
          fields.add(transform!);
        }
      case 'dynamicValue':
        if (dynamicValue != null) {
          fields.addAll(dynamicValue!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            // Add all elements from passed list
            final newList = [...?contained, ...child];
            return copyWith(contained: newList);
          } else if (child is Resource) {
            // Add single element to existing list or create new list
            final newList = [
              ...?contained,
              child,
            ];
            return copyWith(contained: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'url':
        {
          if (child is FhirUri) {
            return copyWith(url: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            // Add all elements from passed list
            final newList = [...?identifier, ...child];
            return copyWith(identifier: newList);
          } else if (child is Identifier) {
            // Add single element to existing list or create new list
            final newList = [
              ...?identifier,
              child,
            ];
            return copyWith(identifier: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'version':
        {
          if (child is FhirString) {
            return copyWith(version: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'name':
        {
          if (child is FhirString) {
            return copyWith(name: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'title':
        {
          if (child is FhirString) {
            return copyWith(title: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subtitle':
        {
          if (child is FhirString) {
            return copyWith(subtitle: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is PublicationStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'experimental':
        {
          if (child is FhirBoolean) {
            return copyWith(experimental: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subjectX':
        {
          if (child is SubjectXActivityDefinition) {
            return copyWith(subjectX: child);
          } else {
            if (child is CodeableConcept) {
              return copyWith(subjectX: child);
            }
            if (child is Reference) {
              return copyWith(subjectX: child);
            }
            if (child is FhirCanonical) {
              return copyWith(subjectX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subjectCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(subjectX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subjectReference':
        {
          if (child is Reference) {
            return copyWith(subjectX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subjectFhirCanonical':
        {
          if (child is FhirCanonical) {
            return copyWith(subjectX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'date':
        {
          if (child is FhirDateTime) {
            return copyWith(date: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'publisher':
        {
          if (child is FhirString) {
            return copyWith(publisher: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contact':
        {
          if (child is List<ContactDetail>) {
            // Add all elements from passed list
            final newList = [...?contact, ...child];
            return copyWith(contact: newList);
          } else if (child is ContactDetail) {
            // Add single element to existing list or create new list
            final newList = [
              ...?contact,
              child,
            ];
            return copyWith(contact: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirMarkdown) {
            return copyWith(description: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'useContext':
        {
          if (child is List<UsageContext>) {
            // Add all elements from passed list
            final newList = [...?useContext, ...child];
            return copyWith(useContext: newList);
          } else if (child is UsageContext) {
            // Add single element to existing list or create new list
            final newList = [
              ...?useContext,
              child,
            ];
            return copyWith(useContext: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'jurisdiction':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?jurisdiction, ...child];
            return copyWith(jurisdiction: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?jurisdiction,
              child,
            ];
            return copyWith(jurisdiction: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'purpose':
        {
          if (child is FhirMarkdown) {
            return copyWith(purpose: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'usage':
        {
          if (child is FhirString) {
            return copyWith(usage: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'copyright':
        {
          if (child is FhirMarkdown) {
            return copyWith(copyright: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'approvalDate':
        {
          if (child is FhirDate) {
            return copyWith(approvalDate: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'lastReviewDate':
        {
          if (child is FhirDate) {
            return copyWith(lastReviewDate: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'effectivePeriod':
        {
          if (child is Period) {
            return copyWith(effectivePeriod: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'topic':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?topic, ...child];
            return copyWith(topic: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?topic,
              child,
            ];
            return copyWith(topic: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'author':
        {
          if (child is List<ContactDetail>) {
            // Add all elements from passed list
            final newList = [...?author, ...child];
            return copyWith(author: newList);
          } else if (child is ContactDetail) {
            // Add single element to existing list or create new list
            final newList = [
              ...?author,
              child,
            ];
            return copyWith(author: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'editor':
        {
          if (child is List<ContactDetail>) {
            // Add all elements from passed list
            final newList = [...?editor, ...child];
            return copyWith(editor: newList);
          } else if (child is ContactDetail) {
            // Add single element to existing list or create new list
            final newList = [
              ...?editor,
              child,
            ];
            return copyWith(editor: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reviewer':
        {
          if (child is List<ContactDetail>) {
            // Add all elements from passed list
            final newList = [...?reviewer, ...child];
            return copyWith(reviewer: newList);
          } else if (child is ContactDetail) {
            // Add single element to existing list or create new list
            final newList = [
              ...?reviewer,
              child,
            ];
            return copyWith(reviewer: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'endorser':
        {
          if (child is List<ContactDetail>) {
            // Add all elements from passed list
            final newList = [...?endorser, ...child];
            return copyWith(endorser: newList);
          } else if (child is ContactDetail) {
            // Add single element to existing list or create new list
            final newList = [
              ...?endorser,
              child,
            ];
            return copyWith(endorser: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'relatedArtifact':
        {
          if (child is List<RelatedArtifact>) {
            // Add all elements from passed list
            final newList = [...?relatedArtifact, ...child];
            return copyWith(relatedArtifact: newList);
          } else if (child is RelatedArtifact) {
            // Add single element to existing list or create new list
            final newList = [
              ...?relatedArtifact,
              child,
            ];
            return copyWith(relatedArtifact: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'library':
        {
          if (child is List<FhirCanonical>) {
            // Add all elements from passed list
            final newList = [...?library_, ...child];
            return copyWith(library_: newList);
          } else if (child is FhirCanonical) {
            // Add single element to existing list or create new list
            final newList = [
              ...?library_,
              child,
            ];
            return copyWith(library_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'kind':
        {
          if (child is RequestResourceType) {
            return copyWith(kind: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'profile':
        {
          if (child is FhirCanonical) {
            return copyWith(profile: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'code':
        {
          if (child is CodeableConcept) {
            return copyWith(code: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'intent':
        {
          if (child is RequestIntent) {
            return copyWith(intent: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'priority':
        {
          if (child is RequestPriority) {
            return copyWith(priority: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'doNotPerform':
        {
          if (child is FhirBoolean) {
            return copyWith(doNotPerform: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'timingX':
        {
          if (child is TimingXActivityDefinition) {
            return copyWith(timingX: child);
          } else {
            if (child is Timing) {
              return copyWith(timingX: child);
            }
            if (child is FhirDateTime) {
              return copyWith(timingX: child);
            }
            if (child is Age) {
              return copyWith(timingX: child);
            }
            if (child is Period) {
              return copyWith(timingX: child);
            }
            if (child is Range) {
              return copyWith(timingX: child);
            }
            if (child is FhirDuration) {
              return copyWith(timingX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'timingTiming':
        {
          if (child is Timing) {
            return copyWith(timingX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'timingFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(timingX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'timingAge':
        {
          if (child is Age) {
            return copyWith(timingX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'timingPeriod':
        {
          if (child is Period) {
            return copyWith(timingX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'timingRange':
        {
          if (child is Range) {
            return copyWith(timingX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'timingFhirDuration':
        {
          if (child is FhirDuration) {
            return copyWith(timingX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'location':
        {
          if (child is Reference) {
            return copyWith(location: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'participant':
        {
          if (child is List<ActivityDefinitionParticipant>) {
            // Add all elements from passed list
            final newList = [...?participant, ...child];
            return copyWith(participant: newList);
          } else if (child is ActivityDefinitionParticipant) {
            // Add single element to existing list or create new list
            final newList = [
              ...?participant,
              child,
            ];
            return copyWith(participant: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'productX':
        {
          if (child is ProductXActivityDefinition) {
            return copyWith(productX: child);
          } else {
            if (child is Reference) {
              return copyWith(productX: child);
            }
            if (child is CodeableConcept) {
              return copyWith(productX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'productReference':
        {
          if (child is Reference) {
            return copyWith(productX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'productCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(productX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'quantity':
        {
          if (child is Quantity) {
            return copyWith(quantity: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'dosage':
        {
          if (child is List<Dosage>) {
            // Add all elements from passed list
            final newList = [...?dosage, ...child];
            return copyWith(dosage: newList);
          } else if (child is Dosage) {
            // Add single element to existing list or create new list
            final newList = [
              ...?dosage,
              child,
            ];
            return copyWith(dosage: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'bodySite':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?bodySite, ...child];
            return copyWith(bodySite: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?bodySite,
              child,
            ];
            return copyWith(bodySite: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'specimenRequirement':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?specimenRequirement, ...child];
            return copyWith(specimenRequirement: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?specimenRequirement,
              child,
            ];
            return copyWith(specimenRequirement: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'observationRequirement':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?observationRequirement, ...child];
            return copyWith(observationRequirement: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?observationRequirement,
              child,
            ];
            return copyWith(observationRequirement: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'observationResultRequirement':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?observationResultRequirement, ...child];
            return copyWith(observationResultRequirement: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?observationResultRequirement,
              child,
            ];
            return copyWith(observationResultRequirement: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'transform':
        {
          if (child is FhirCanonical) {
            return copyWith(transform: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'dynamicValue':
        {
          if (child is List<ActivityDefinitionDynamicValue>) {
            // Add all elements from passed list
            final newList = [...?dynamicValue, ...child];
            return copyWith(dynamicValue: newList);
          } else if (child is ActivityDefinitionDynamicValue) {
            // Add single element to existing list or create new list
            final newList = [
              ...?dynamicValue,
              child,
            ];
            return copyWith(dynamicValue: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'meta':
        return ['FhirMeta'];
      case 'implicitRules':
        return ['FhirUri'];
      case 'language':
        return ['FhirCode'];
      case 'text':
        return ['Narrative'];
      case 'contained':
        return ['Resource'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'url':
        return ['FhirUri'];
      case 'identifier':
        return ['Identifier'];
      case 'version':
        return ['FhirString'];
      case 'name':
        return ['FhirString'];
      case 'title':
        return ['FhirString'];
      case 'subtitle':
        return ['FhirString'];
      case 'status':
        return ['FhirCode'];
      case 'experimental':
        return ['FhirBoolean'];
      case 'subject':
      case 'subjectX':
        return [
          'CodeableConcept',
          'Reference',
          'FhirCanonical',
        ];
      case 'subjectCodeableConcept':
        return ['CodeableConcept'];
      case 'subjectReference':
        return ['Reference'];
      case 'subjectCanonical':
        return ['FhirCanonical'];
      case 'date':
        return ['FhirDateTime'];
      case 'publisher':
        return ['FhirString'];
      case 'contact':
        return ['ContactDetail'];
      case 'description':
        return ['FhirMarkdown'];
      case 'useContext':
        return ['UsageContext'];
      case 'jurisdiction':
        return ['CodeableConcept'];
      case 'purpose':
        return ['FhirMarkdown'];
      case 'usage':
        return ['FhirString'];
      case 'copyright':
        return ['FhirMarkdown'];
      case 'approvalDate':
        return ['FhirDate'];
      case 'lastReviewDate':
        return ['FhirDate'];
      case 'effectivePeriod':
        return ['Period'];
      case 'topic':
        return ['CodeableConcept'];
      case 'author':
        return ['ContactDetail'];
      case 'editor':
        return ['ContactDetail'];
      case 'reviewer':
        return ['ContactDetail'];
      case 'endorser':
        return ['ContactDetail'];
      case 'relatedArtifact':
        return ['RelatedArtifact'];
      case 'library':
        return ['FhirCanonical'];
      case 'kind':
        return ['FhirCode'];
      case 'profile':
        return ['FhirCanonical'];
      case 'code':
        return ['CodeableConcept'];
      case 'intent':
        return ['FhirCode'];
      case 'priority':
        return ['FhirCode'];
      case 'doNotPerform':
        return ['FhirBoolean'];
      case 'timing':
      case 'timingX':
        return [
          'Timing',
          'FhirDateTime',
          'Age',
          'Period',
          'Range',
          'FhirDuration',
        ];
      case 'timingTiming':
        return ['Timing'];
      case 'timingDateTime':
        return ['FhirDateTime'];
      case 'timingAge':
        return ['Age'];
      case 'timingPeriod':
        return ['Period'];
      case 'timingRange':
        return ['Range'];
      case 'timingDuration':
        return ['FhirDuration'];
      case 'location':
        return ['Reference'];
      case 'participant':
        return ['ActivityDefinitionParticipant'];
      case 'product':
      case 'productX':
        return [
          'Reference',
          'CodeableConcept',
        ];
      case 'productReference':
        return ['Reference'];
      case 'productCodeableConcept':
        return ['CodeableConcept'];
      case 'quantity':
        return ['Quantity'];
      case 'dosage':
        return ['Dosage'];
      case 'bodySite':
        return ['CodeableConcept'];
      case 'specimenRequirement':
        return ['Reference'];
      case 'observationRequirement':
        return ['Reference'];
      case 'observationResultRequirement':
        return ['Reference'];
      case 'transform':
        return ['FhirCanonical'];
      case 'dynamicValue':
        return ['ActivityDefinitionDynamicValue'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ActivityDefinition]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ActivityDefinition createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'meta':
        {
          return copyWith(
            meta: FhirMeta.empty(),
          );
        }
      case 'implicitRules':
        {
          return copyWith(
            implicitRules: FhirUri.empty(),
          );
        }
      case 'language':
        {
          return copyWith(
            language: CommonLanguages.empty(),
          );
        }
      case 'text':
        {
          return copyWith(
            text: Narrative.empty(),
          );
        }
      case 'contained':
        {
          return copyWith(
            contained: <Resource>[],
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'url':
        {
          return copyWith(
            url: FhirUri.empty(),
          );
        }
      case 'identifier':
        {
          return copyWith(
            identifier: <Identifier>[],
          );
        }
      case 'version':
        {
          return copyWith(
            version: FhirString.empty(),
          );
        }
      case 'name':
        {
          return copyWith(
            name: FhirString.empty(),
          );
        }
      case 'title':
        {
          return copyWith(
            title: FhirString.empty(),
          );
        }
      case 'subtitle':
        {
          return copyWith(
            subtitle: FhirString.empty(),
          );
        }
      case 'status':
        {
          return copyWith(
            status: PublicationStatus.empty(),
          );
        }
      case 'experimental':
        {
          return copyWith(
            experimental: FhirBoolean.empty(),
          );
        }
      case 'subject':
      case 'subjectX':
      case 'subjectCodeableConcept':
        {
          return copyWith(
            subjectX: CodeableConcept.empty(),
          );
        }
      case 'subjectReference':
        {
          return copyWith(
            subjectX: Reference.empty(),
          );
        }
      case 'subjectCanonical':
        {
          return copyWith(
            subjectX: FhirCanonical.empty(),
          );
        }
      case 'date':
        {
          return copyWith(
            date: FhirDateTime.empty(),
          );
        }
      case 'publisher':
        {
          return copyWith(
            publisher: FhirString.empty(),
          );
        }
      case 'contact':
        {
          return copyWith(
            contact: <ContactDetail>[],
          );
        }
      case 'description':
        {
          return copyWith(
            description: FhirMarkdown.empty(),
          );
        }
      case 'useContext':
        {
          return copyWith(
            useContext: <UsageContext>[],
          );
        }
      case 'jurisdiction':
        {
          return copyWith(
            jurisdiction: <CodeableConcept>[],
          );
        }
      case 'purpose':
        {
          return copyWith(
            purpose: FhirMarkdown.empty(),
          );
        }
      case 'usage':
        {
          return copyWith(
            usage: FhirString.empty(),
          );
        }
      case 'copyright':
        {
          return copyWith(
            copyright: FhirMarkdown.empty(),
          );
        }
      case 'approvalDate':
        {
          return copyWith(
            approvalDate: FhirDate.empty(),
          );
        }
      case 'lastReviewDate':
        {
          return copyWith(
            lastReviewDate: FhirDate.empty(),
          );
        }
      case 'effectivePeriod':
        {
          return copyWith(
            effectivePeriod: Period.empty(),
          );
        }
      case 'topic':
        {
          return copyWith(
            topic: <CodeableConcept>[],
          );
        }
      case 'author':
        {
          return copyWith(
            author: <ContactDetail>[],
          );
        }
      case 'editor':
        {
          return copyWith(
            editor: <ContactDetail>[],
          );
        }
      case 'reviewer':
        {
          return copyWith(
            reviewer: <ContactDetail>[],
          );
        }
      case 'endorser':
        {
          return copyWith(
            endorser: <ContactDetail>[],
          );
        }
      case 'relatedArtifact':
        {
          return copyWith(
            relatedArtifact: <RelatedArtifact>[],
          );
        }
      case 'library':
        {
          return copyWith(
            library_: <FhirCanonical>[],
          );
        }
      case 'kind':
        {
          return copyWith(
            kind: RequestResourceType.empty(),
          );
        }
      case 'profile':
        {
          return copyWith(
            profile: FhirCanonical.empty(),
          );
        }
      case 'code':
        {
          return copyWith(
            code: CodeableConcept.empty(),
          );
        }
      case 'intent':
        {
          return copyWith(
            intent: RequestIntent.empty(),
          );
        }
      case 'priority':
        {
          return copyWith(
            priority: RequestPriority.empty(),
          );
        }
      case 'doNotPerform':
        {
          return copyWith(
            doNotPerform: FhirBoolean.empty(),
          );
        }
      case 'timing':
      case 'timingX':
      case 'timingTiming':
        {
          return copyWith(
            timingX: Timing.empty(),
          );
        }
      case 'timingDateTime':
        {
          return copyWith(
            timingX: FhirDateTime.empty(),
          );
        }
      case 'timingAge':
        {
          return copyWith(
            timingX: Age.empty(),
          );
        }
      case 'timingPeriod':
        {
          return copyWith(
            timingX: Period.empty(),
          );
        }
      case 'timingRange':
        {
          return copyWith(
            timingX: Range.empty(),
          );
        }
      case 'timingDuration':
        {
          return copyWith(
            timingX: FhirDuration.empty(),
          );
        }
      case 'location':
        {
          return copyWith(
            location: Reference.empty(),
          );
        }
      case 'participant':
        {
          return copyWith(
            participant: <ActivityDefinitionParticipant>[],
          );
        }
      case 'product':
      case 'productX':
      case 'productReference':
        {
          return copyWith(
            productX: Reference.empty(),
          );
        }
      case 'productCodeableConcept':
        {
          return copyWith(
            productX: CodeableConcept.empty(),
          );
        }
      case 'quantity':
        {
          return copyWith(
            quantity: Quantity.empty(),
          );
        }
      case 'dosage':
        {
          return copyWith(
            dosage: <Dosage>[],
          );
        }
      case 'bodySite':
        {
          return copyWith(
            bodySite: <CodeableConcept>[],
          );
        }
      case 'specimenRequirement':
        {
          return copyWith(
            specimenRequirement: <Reference>[],
          );
        }
      case 'observationRequirement':
        {
          return copyWith(
            observationRequirement: <Reference>[],
          );
        }
      case 'observationResultRequirement':
        {
          return copyWith(
            observationResultRequirement: <Reference>[],
          );
        }
      case 'transform':
        {
          return copyWith(
            transform: FhirCanonical.empty(),
          );
        }
      case 'dynamicValue':
        {
          return copyWith(
            dynamicValue: <ActivityDefinitionDynamicValue>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ActivityDefinition clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool url = false,
    bool identifier = false,
    bool version = false,
    bool name = false,
    bool title = false,
    bool subtitle = false,
    bool experimental = false,
    bool subject = false,
    bool date = false,
    bool publisher = false,
    bool contact = false,
    bool description = false,
    bool useContext = false,
    bool jurisdiction = false,
    bool purpose = false,
    bool usage = false,
    bool copyright = false,
    bool approvalDate = false,
    bool lastReviewDate = false,
    bool effectivePeriod = false,
    bool topic = false,
    bool author = false,
    bool editor = false,
    bool reviewer = false,
    bool endorser = false,
    bool relatedArtifact = false,
    bool library_ = false,
    bool kind = false,
    bool profile = false,
    bool code = false,
    bool intent = false,
    bool priority = false,
    bool doNotPerform = false,
    bool timing = false,
    bool location = false,
    bool participant = false,
    bool product = false,
    bool quantity = false,
    bool dosage = false,
    bool bodySite = false,
    bool specimenRequirement = false,
    bool observationRequirement = false,
    bool observationResultRequirement = false,
    bool transform = false,
    bool dynamicValue = false,
  }) {
    return ActivityDefinition(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      url: url ? null : this.url,
      identifier: identifier ? null : this.identifier,
      version: version ? null : this.version,
      name: name ? null : this.name,
      title: title ? null : this.title,
      subtitle: subtitle ? null : this.subtitle,
      status: status,
      experimental: experimental ? null : this.experimental,
      subjectX: subject ? null : subjectX,
      date: date ? null : this.date,
      publisher: publisher ? null : this.publisher,
      contact: contact ? null : this.contact,
      description: description ? null : this.description,
      useContext: useContext ? null : this.useContext,
      jurisdiction: jurisdiction ? null : this.jurisdiction,
      purpose: purpose ? null : this.purpose,
      usage: usage ? null : this.usage,
      copyright: copyright ? null : this.copyright,
      approvalDate: approvalDate ? null : this.approvalDate,
      lastReviewDate: lastReviewDate ? null : this.lastReviewDate,
      effectivePeriod: effectivePeriod ? null : this.effectivePeriod,
      topic: topic ? null : this.topic,
      author: author ? null : this.author,
      editor: editor ? null : this.editor,
      reviewer: reviewer ? null : this.reviewer,
      endorser: endorser ? null : this.endorser,
      relatedArtifact: relatedArtifact ? null : this.relatedArtifact,
      library_: library_ ? null : this.library_,
      kind: kind ? null : this.kind,
      profile: profile ? null : this.profile,
      code: code ? null : this.code,
      intent: intent ? null : this.intent,
      priority: priority ? null : this.priority,
      doNotPerform: doNotPerform ? null : this.doNotPerform,
      timingX: timing ? null : timingX,
      location: location ? null : this.location,
      participant: participant ? null : this.participant,
      productX: product ? null : productX,
      quantity: quantity ? null : this.quantity,
      dosage: dosage ? null : this.dosage,
      bodySite: bodySite ? null : this.bodySite,
      specimenRequirement:
          specimenRequirement ? null : this.specimenRequirement,
      observationRequirement:
          observationRequirement ? null : this.observationRequirement,
      observationResultRequirement: observationResultRequirement
          ? null
          : this.observationResultRequirement,
      transform: transform ? null : this.transform,
      dynamicValue: dynamicValue ? null : this.dynamicValue,
    );
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
    SubjectXActivityDefinition? subjectX,
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
    TimingXActivityDefinition? timingX,
    Reference? location,
    List<ActivityDefinitionParticipant>? participant,
    ProductXActivityDefinition? productX,
    Quantity? quantity,
    List<Dosage>? dosage,
    List<CodeableConcept>? bodySite,
    List<Reference>? specimenRequirement,
    List<Reference>? observationRequirement,
    List<Reference>? observationResultRequirement,
    FhirCanonical? transform,
    List<ActivityDefinitionDynamicValue>? dynamicValue,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return ActivityDefinition(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      contained: contained ?? this.contained,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      url: url?.copyWith(
            objectPath: '$newObjectPath.url',
          ) ??
          this.url,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      version: version?.copyWith(
            objectPath: '$newObjectPath.version',
          ) ??
          this.version,
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      title: title?.copyWith(
            objectPath: '$newObjectPath.title',
          ) ??
          this.title,
      subtitle: subtitle?.copyWith(
            objectPath: '$newObjectPath.subtitle',
          ) ??
          this.subtitle,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      experimental: experimental?.copyWith(
            objectPath: '$newObjectPath.experimental',
          ) ??
          this.experimental,
      subjectX: subjectX?.copyWith(
            objectPath: '$newObjectPath.subjectX',
          ) as SubjectXActivityDefinition? ??
          this.subjectX,
      date: date?.copyWith(
            objectPath: '$newObjectPath.date',
          ) ??
          this.date,
      publisher: publisher?.copyWith(
            objectPath: '$newObjectPath.publisher',
          ) ??
          this.publisher,
      contact: contact
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.contact',
                ),
              )
              .toList() ??
          this.contact,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      useContext: useContext
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.useContext',
                ),
              )
              .toList() ??
          this.useContext,
      jurisdiction: jurisdiction
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.jurisdiction',
                ),
              )
              .toList() ??
          this.jurisdiction,
      purpose: purpose?.copyWith(
            objectPath: '$newObjectPath.purpose',
          ) ??
          this.purpose,
      usage: usage?.copyWith(
            objectPath: '$newObjectPath.usage',
          ) ??
          this.usage,
      copyright: copyright?.copyWith(
            objectPath: '$newObjectPath.copyright',
          ) ??
          this.copyright,
      approvalDate: approvalDate?.copyWith(
            objectPath: '$newObjectPath.approvalDate',
          ) ??
          this.approvalDate,
      lastReviewDate: lastReviewDate?.copyWith(
            objectPath: '$newObjectPath.lastReviewDate',
          ) ??
          this.lastReviewDate,
      effectivePeriod: effectivePeriod?.copyWith(
            objectPath: '$newObjectPath.effectivePeriod',
          ) ??
          this.effectivePeriod,
      topic: topic
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.topic',
                ),
              )
              .toList() ??
          this.topic,
      author: author
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.author',
                ),
              )
              .toList() ??
          this.author,
      editor: editor
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.editor',
                ),
              )
              .toList() ??
          this.editor,
      reviewer: reviewer
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reviewer',
                ),
              )
              .toList() ??
          this.reviewer,
      endorser: endorser
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.endorser',
                ),
              )
              .toList() ??
          this.endorser,
      relatedArtifact: relatedArtifact
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.relatedArtifact',
                ),
              )
              .toList() ??
          this.relatedArtifact,
      library_: library_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.library',
                ),
              )
              .toList() ??
          this.library_,
      kind: kind?.copyWith(
            objectPath: '$newObjectPath.kind',
          ) ??
          this.kind,
      profile: profile?.copyWith(
            objectPath: '$newObjectPath.profile',
          ) ??
          this.profile,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      intent: intent?.copyWith(
            objectPath: '$newObjectPath.intent',
          ) ??
          this.intent,
      priority: priority?.copyWith(
            objectPath: '$newObjectPath.priority',
          ) ??
          this.priority,
      doNotPerform: doNotPerform?.copyWith(
            objectPath: '$newObjectPath.doNotPerform',
          ) ??
          this.doNotPerform,
      timingX: timingX?.copyWith(
            objectPath: '$newObjectPath.timingX',
          ) as TimingXActivityDefinition? ??
          this.timingX,
      location: location?.copyWith(
            objectPath: '$newObjectPath.location',
          ) ??
          this.location,
      participant: participant
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.participant',
                ),
              )
              .toList() ??
          this.participant,
      productX: productX?.copyWith(
            objectPath: '$newObjectPath.productX',
          ) as ProductXActivityDefinition? ??
          this.productX,
      quantity: quantity?.copyWith(
            objectPath: '$newObjectPath.quantity',
          ) ??
          this.quantity,
      dosage: dosage
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.dosage',
                ),
              )
              .toList() ??
          this.dosage,
      bodySite: bodySite
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.bodySite',
                ),
              )
              .toList() ??
          this.bodySite,
      specimenRequirement: specimenRequirement
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.specimenRequirement',
                ),
              )
              .toList() ??
          this.specimenRequirement,
      observationRequirement: observationRequirement
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.observationRequirement',
                ),
              )
              .toList() ??
          this.observationRequirement,
      observationResultRequirement: observationResultRequirement
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.observationResultRequirement',
                ),
              )
              .toList() ??
          this.observationResultRequirement,
      transform: transform?.copyWith(
            objectPath: '$newObjectPath.transform',
          ) ??
          this.transform,
      dynamicValue: dynamicValue
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.dynamicValue',
                ),
              )
              .toList() ??
          this.dynamicValue,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ActivityDefinition) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      url,
      o.url,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      version,
      o.version,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      title,
      o.title,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subtitle,
      o.subtitle,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      experimental,
      o.experimental,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subjectX,
      o.subjectX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      date,
      o.date,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      publisher,
      o.publisher,
    )) {
      return false;
    }
    if (!listEquals<ContactDetail>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!listEquals<UsageContext>(
      useContext,
      o.useContext,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      jurisdiction,
      o.jurisdiction,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      purpose,
      o.purpose,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      usage,
      o.usage,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      copyright,
      o.copyright,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      approvalDate,
      o.approvalDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      lastReviewDate,
      o.lastReviewDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      effectivePeriod,
      o.effectivePeriod,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      topic,
      o.topic,
    )) {
      return false;
    }
    if (!listEquals<ContactDetail>(
      author,
      o.author,
    )) {
      return false;
    }
    if (!listEquals<ContactDetail>(
      editor,
      o.editor,
    )) {
      return false;
    }
    if (!listEquals<ContactDetail>(
      reviewer,
      o.reviewer,
    )) {
      return false;
    }
    if (!listEquals<ContactDetail>(
      endorser,
      o.endorser,
    )) {
      return false;
    }
    if (!listEquals<RelatedArtifact>(
      relatedArtifact,
      o.relatedArtifact,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonical>(
      library_,
      o.library_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      kind,
      o.kind,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      profile,
      o.profile,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      intent,
      o.intent,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      priority,
      o.priority,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      doNotPerform,
      o.doNotPerform,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      timingX,
      o.timingX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      location,
      o.location,
    )) {
      return false;
    }
    if (!listEquals<ActivityDefinitionParticipant>(
      participant,
      o.participant,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      productX,
      o.productX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!listEquals<Dosage>(
      dosage,
      o.dosage,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      bodySite,
      o.bodySite,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      specimenRequirement,
      o.specimenRequirement,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      observationRequirement,
      o.observationRequirement,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      observationResultRequirement,
      o.observationResultRequirement,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      transform,
      o.transform,
    )) {
      return false;
    }
    if (!listEquals<ActivityDefinitionDynamicValue>(
      dynamicValue,
      o.dynamicValue,
    )) {
      return false;
    }
    return true;
  }
}

/// [ActivityDefinitionParticipant]
/// Indicates who should participate in performing the action described.
class ActivityDefinitionParticipant extends BackboneElement {
  /// Primary constructor for
  /// [ActivityDefinitionParticipant]

  const ActivityDefinitionParticipant({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.role,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ActivityDefinition.participant',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ActivityDefinitionParticipant.empty() =>
      ActivityDefinitionParticipant(
        type: ActionParticipantType.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ActivityDefinitionParticipant.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ActivityDefinition.participant';
    return ActivityDefinitionParticipant(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parsePrimitive<ActionParticipantType>(
        json,
        'type',
        ActionParticipantType.fromJson,
        '$objectPath.type',
      )!,
      role: JsonParser.parseObject<CodeableConcept>(
        json,
        'role',
        CodeableConcept.fromJson,
        '$objectPath.role',
      ),
    );
  }

  /// Deserialize [ActivityDefinitionParticipant]
  /// from a [String] or [YamlMap] object
  factory ActivityDefinitionParticipant.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ActivityDefinitionParticipant.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ActivityDefinitionParticipant.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ActivityDefinitionParticipant '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ActivityDefinitionParticipant]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ActivityDefinitionParticipant.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ActivityDefinitionParticipant.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ActivityDefinitionParticipant';

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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'type',
      type,
    );
    addField(
      'role',
      role,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'role',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'type':
        fields.add(type);
      case 'role':
        if (role != null) {
          fields.add(role!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is ActionParticipantType) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'role':
        {
          if (child is CodeableConcept) {
            return copyWith(role: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'type':
        return ['FhirCode'];
      case 'role':
        return ['CodeableConcept'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ActivityDefinitionParticipant]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ActivityDefinitionParticipant createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'type':
        {
          return copyWith(
            type: ActionParticipantType.empty(),
          );
        }
      case 'role':
        {
          return copyWith(
            role: CodeableConcept.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ActivityDefinitionParticipant clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool role = false,
  }) {
    return ActivityDefinitionParticipant(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      type: type,
      role: role ? null : this.role,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ActivityDefinitionParticipant(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      role: role?.copyWith(
            objectPath: '$newObjectPath.role',
          ) ??
          this.role,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ActivityDefinitionParticipant) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      role,
      o.role,
    )) {
      return false;
    }
    return true;
  }
}

/// [ActivityDefinitionDynamicValue]
/// Dynamic values that will be evaluated to produce values for elements of
/// the resulting resource. For example, if the dosage of a medication must
/// be computed based on the patient's weight, a dynamic value would be
/// used to specify an expression that calculated the weight, and the path
/// on the request resource that would contain the result.
class ActivityDefinitionDynamicValue extends BackboneElement {
  /// Primary constructor for
  /// [ActivityDefinitionDynamicValue]

  const ActivityDefinitionDynamicValue({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.path,
    required this.expression,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ActivityDefinition.dynamicValue',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ActivityDefinitionDynamicValue.empty() =>
      ActivityDefinitionDynamicValue(
        path: FhirString.empty(),
        expression: FhirExpression.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ActivityDefinitionDynamicValue.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ActivityDefinition.dynamicValue';
    return ActivityDefinitionDynamicValue(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      path: JsonParser.parsePrimitive<FhirString>(
        json,
        'path',
        FhirString.fromJson,
        '$objectPath.path',
      )!,
      expression: JsonParser.parseObject<FhirExpression>(
        json,
        'expression',
        FhirExpression.fromJson,
        '$objectPath.expression',
      )!,
    );
  }

  /// Deserialize [ActivityDefinitionDynamicValue]
  /// from a [String] or [YamlMap] object
  factory ActivityDefinitionDynamicValue.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ActivityDefinitionDynamicValue.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ActivityDefinitionDynamicValue.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ActivityDefinitionDynamicValue '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ActivityDefinitionDynamicValue]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ActivityDefinitionDynamicValue.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ActivityDefinitionDynamicValue.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// [expression]
  /// An expression specifying the value of the customized element.
  final FhirExpression expression;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'path',
      path,
    );
    addField(
      'expression',
      expression,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'path',
      'expression',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'path':
        fields.add(path);
      case 'expression':
        fields.add(expression);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'path':
        {
          if (child is FhirString) {
            return copyWith(path: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'expression':
        {
          if (child is FhirExpression) {
            return copyWith(expression: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'path':
        return ['FhirString'];
      case 'expression':
        return ['FhirExpression'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ActivityDefinitionDynamicValue]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ActivityDefinitionDynamicValue createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'path':
        {
          return copyWith(
            path: FhirString.empty(),
          );
        }
      case 'expression':
        {
          return copyWith(
            expression: FhirExpression.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ActivityDefinitionDynamicValue clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return ActivityDefinitionDynamicValue(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      path: path,
      expression: expression,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ActivityDefinitionDynamicValue(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      path: path?.copyWith(
            objectPath: '$newObjectPath.path',
          ) ??
          this.path,
      expression: expression?.copyWith(
            objectPath: '$newObjectPath.expression',
          ) ??
          this.expression,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ActivityDefinitionDynamicValue) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      path,
      o.path,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      expression,
      o.expression,
    )) {
      return false;
    }
    return true;
  }
}
