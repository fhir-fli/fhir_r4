import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ResearchElementDefinition]
/// The ResearchElementDefinition resource describes a "PICO" element that
/// knowledge (evidence, assertion, recommendation) is about.
class ResearchElementDefinition extends DomainResource {
  /// Primary constructor for
  /// [ResearchElementDefinition]

  const ResearchElementDefinition({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.url,
    this.identifier,
    this.version,
    this.name,
    this.title,
    this.shortTitle,
    this.subtitle,
    required this.status,
    this.experimental,
    this.subjectX,
    this.date,
    this.publisher,
    this.contact,
    this.description,
    this.comment,
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
    required this.type,
    this.variableType,
    required this.characteristic,
  }) : super(
          objectPath: 'ResearchElementDefinition',
          resourceType: R4ResourceType.ResearchElementDefinition,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ResearchElementDefinition.empty() => ResearchElementDefinition(
        status: PublicationStatus.values.first,
        type: ResearchElementType.values.first,
        characteristic: <ResearchElementDefinitionCharacteristic>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ResearchElementDefinition';
    return ResearchElementDefinition(
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
      shortTitle: JsonParser.parsePrimitive<FhirString>(
        json,
        'shortTitle',
        FhirString.fromJson,
        '$objectPath.shortTitle',
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
      )!,
      experimental: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'experimental',
        FhirBoolean.fromJson,
        '$objectPath.experimental',
      ),
      subjectX: JsonParser.parsePolymorphic<SubjectXResearchElementDefinition>(
        json,
        {
          'subjectCodeableConcept': CodeableConcept.fromJson,
          'subjectReference': Reference.fromJson,
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
      comment: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'comment',
        FhirString.fromJson,
        '$objectPath.comment',
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
      type: JsonParser.parsePrimitive<ResearchElementType>(
        json,
        'type',
        ResearchElementType.fromJson,
        '$objectPath.type',
      )!,
      variableType: JsonParser.parsePrimitive<VariableType>(
        json,
        'variableType',
        VariableType.fromJson,
        '$objectPath.variableType',
      ),
      characteristic: (json['characteristic'] as List<dynamic>)
          .map<ResearchElementDefinitionCharacteristic>(
            (v) => ResearchElementDefinitionCharacteristic.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.characteristic',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ResearchElementDefinition]
  /// from a [String] or [YamlMap] object
  factory ResearchElementDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchElementDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchElementDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchElementDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchElementDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchElementDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ResearchElementDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ResearchElementDefinition';

  /// [url]
  /// An absolute URI that is used to identify this research element
  /// definition when it is referenced in a specification, model, design or
  /// an instance; also called its canonical identifier. This SHOULD be
  /// globally unique and SHOULD be a literal address at which at which an
  /// authoritative instance of this research element definition is (or will
  /// be) published. This URL can be the target of a canonical reference. It
  /// SHALL remain the same when the research element definition is stored on
  /// different servers.
  final FhirUri? url;

  /// [identifier]
  /// A formal identifier that is used to identify this research element
  /// definition when it is represented in other formats, or referenced in a
  /// specification, model, design or an instance.
  final List<Identifier>? identifier;

  /// [version]
  /// The identifier that is used to identify this version of the research
  /// element definition when it is referenced in a specification, model,
  /// design or instance. This is an arbitrary value managed by the research
  /// element definition author and is not expected to be globally unique.
  /// For example, it might be a timestamp (e.g. yyyymmdd) if a managed
  /// version is not available. There is also no expectation that versions
  /// can be placed in a lexicographical sequence. To provide a version
  /// consistent with the Decision Support Service specification, use the
  /// format Major.Minor.Revision (e.g. 1.0.0). For more information on
  /// versioning knowledge assets, refer to the Decision Support Service
  /// specification. Note that a version is required for non-experimental
  /// active artifacts.
  final FhirString? version;

  /// [name]
  /// A natural language name identifying the research element definition.
  /// This name should be usable as an identifier for the module by machine
  /// processing applications such as code generation.
  final FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the research element
  /// definition.
  final FhirString? title;

  /// [shortTitle]
  /// The short title provides an alternate title for use in informal
  /// descriptive contexts where the full, formal title is not necessary.
  final FhirString? shortTitle;

  /// [subtitle]
  /// An explanatory or alternate title for the ResearchElementDefinition
  /// giving additional information about its content.
  final FhirString? subtitle;

  /// [status]
  /// The status of this research element definition. Enables tracking the
  /// life-cycle of the content.
  final PublicationStatus status;

  /// [experimental]
  /// A Boolean value to indicate that this research element definition is
  /// authored for testing purposes (or education/evaluation/marketing) and
  /// is not intended to be used for genuine usage.
  final FhirBoolean? experimental;

  /// [subjectX]
  /// The intended subjects for the ResearchElementDefinition. If this
  /// element is not provided, a Patient subject is assumed, but the subject
  /// of the ResearchElementDefinition can be anything.
  final SubjectXResearchElementDefinition? subjectX;

  /// Getter for [subjectCodeableConcept] as a CodeableConcept
  CodeableConcept? get subjectCodeableConcept =>
      subjectX?.isAs<CodeableConcept>();

  /// Getter for [subjectReference] as a Reference
  Reference? get subjectReference => subjectX?.isAs<Reference>();

  /// [date]
  /// The date (and optionally time) when the research element definition was
  /// published. The date must change when the business version changes and
  /// it must change if the status code changes. In addition, it should
  /// change when the substantive content of the research element definition
  /// changes.
  final FhirDateTime? date;

  /// [publisher]
  /// The name of the organization or individual that published the research
  /// element definition.
  final FhirString? publisher;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description]
  /// A free text natural language description of the research element
  /// definition from a consumer's perspective.
  final FhirMarkdown? description;

  /// [comment]
  /// A human-readable string to clarify or explain concepts about the
  /// resource.
  final List<FhirString>? comment;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate research element definition instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction]
  /// A legal or geographic region in which the research element definition
  /// is intended to be used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose]
  /// Explanation of why this research element definition is needed and why
  /// it has been designed as it has.
  final FhirMarkdown? purpose;

  /// [usage]
  /// A detailed description, from a clinical perspective, of how the
  /// ResearchElementDefinition is used.
  final FhirString? usage;

  /// [copyright]
  /// A copyright statement relating to the research element definition
  /// and/or its contents. Copyright statements are generally legal
  /// restrictions on the use and publishing of the research element
  /// definition.
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
  /// The period during which the research element definition content was or
  /// is planned to be in active use.
  final Period? effectivePeriod;

  /// [topic]
  /// Descriptive topics related to the content of the
  /// ResearchElementDefinition. Topics provide a high-level categorization
  /// grouping types of ResearchElementDefinitions that can be useful for
  /// filtering and searching.
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
  /// A reference to a Library resource containing the formal logic used by
  /// the ResearchElementDefinition.
  final List<FhirCanonical>? library_;

  /// [type]
  /// The type of research element, a population, an exposure, or an outcome.
  final ResearchElementType type;

  /// [variableType]
  /// The type of the outcome (e.g. Dichotomous, Continuous, or Descriptive).
  final VariableType? variableType;

  /// [characteristic]
  /// A characteristic that defines the members of the research element.
  /// Multiple characteristics are applied with "and" semantics.
  final List<ResearchElementDefinitionCharacteristic> characteristic;
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
      'shortTitle',
      shortTitle,
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
      'comment',
      comment,
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
      'type',
      type,
    );
    addField(
      'variableType',
      variableType,
    );
    addField(
      'characteristic',
      characteristic,
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
      'shortTitle',
      'subtitle',
      'status',
      'experimental',
      'subjectX',
      'date',
      'publisher',
      'contact',
      'description',
      'comment',
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
      'type',
      'variableType',
      'characteristic',
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
      case 'shortTitle':
        if (shortTitle != null) {
          fields.add(shortTitle!);
        }
      case 'subtitle':
        if (subtitle != null) {
          fields.add(subtitle!);
        }
      case 'status':
        fields.add(status);
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
      case 'comment':
        if (comment != null) {
          fields.addAll(comment!);
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
      case 'type':
        fields.add(type);
      case 'variableType':
        if (variableType != null) {
          fields.add(variableType!);
        }
      case 'characteristic':
        fields.addAll(characteristic);
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
            final newList = [...?contained, child];
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
            final newList = [...?extension_, child];
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
            final newList = [...?modifierExtension, child];
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
            final newList = [...?identifier, child];
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
      case 'shortTitle':
        {
          if (child is FhirString) {
            return copyWith(shortTitle: child);
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
          if (child is SubjectXResearchElementDefinition) {
            return copyWith(subjectX: child);
          } else {
            if (child is CodeableConcept) {
              return copyWith(subjectX: child);
            }
            if (child is Reference) {
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
            final newList = [...?contact, child];
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
      case 'comment':
        {
          if (child is List<FhirString>) {
            // Add all elements from passed list
            final newList = [...?comment, ...child];
            return copyWith(comment: newList);
          } else if (child is FhirString) {
            // Add single element to existing list or create new list
            final newList = [...?comment, child];
            return copyWith(comment: newList);
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
            final newList = [...?useContext, child];
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
            final newList = [...?jurisdiction, child];
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
            final newList = [...?topic, child];
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
            final newList = [...?author, child];
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
            final newList = [...?editor, child];
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
            final newList = [...?reviewer, child];
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
            final newList = [...?endorser, child];
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
            final newList = [...?relatedArtifact, child];
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
            final newList = [...?library_, child];
            return copyWith(library_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is ResearchElementType) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'variableType':
        {
          if (child is VariableType) {
            return copyWith(variableType: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'characteristic':
        {
          if (child is List<ResearchElementDefinitionCharacteristic>) {
            // Add all elements from passed list
            final newList = [...characteristic, ...child];
            return copyWith(characteristic: newList);
          } else if (child is ResearchElementDefinitionCharacteristic) {
            // Add single element to existing list or create new list
            final newList = [...characteristic, child];
            return copyWith(characteristic: newList);
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
      case 'shortTitle':
        return ['FhirString'];
      case 'subtitle':
        return ['FhirString'];
      case 'status':
        return ['FhirCode'];
      case 'experimental':
        return ['FhirBoolean'];
      case 'subject':
      case 'subjectX':
        return ['CodeableConcept', 'Reference'];
      case 'subjectCodeableConcept':
        return ['CodeableConcept'];
      case 'subjectReference':
        return ['Reference'];
      case 'date':
        return ['FhirDateTime'];
      case 'publisher':
        return ['FhirString'];
      case 'contact':
        return ['ContactDetail'];
      case 'description':
        return ['FhirMarkdown'];
      case 'comment':
        return ['FhirString'];
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
      case 'type':
        return ['FhirCode'];
      case 'variableType':
        return ['FhirCode'];
      case 'characteristic':
        return ['ResearchElementDefinitionCharacteristic'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ResearchElementDefinition]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ResearchElementDefinition createProperty(
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
      case 'shortTitle':
        {
          return copyWith(
            shortTitle: FhirString.empty(),
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
      case 'comment':
        {
          return copyWith(
            comment: <FhirString>[],
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
      case 'type':
        {
          return copyWith(
            type: ResearchElementType.empty(),
          );
        }
      case 'variableType':
        {
          return copyWith(
            variableType: VariableType.empty(),
          );
        }
      case 'characteristic':
        {
          return copyWith(
            characteristic: <ResearchElementDefinitionCharacteristic>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ResearchElementDefinition clear({
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
    bool shortTitle = false,
    bool subtitle = false,
    bool experimental = false,
    bool subject = false,
    bool date = false,
    bool publisher = false,
    bool contact = false,
    bool description = false,
    bool comment = false,
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
    bool variableType = false,
  }) {
    return ResearchElementDefinition(
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
      shortTitle: shortTitle ? null : this.shortTitle,
      subtitle: subtitle ? null : this.subtitle,
      status: status,
      experimental: experimental ? null : this.experimental,
      subjectX: subject ? null : subjectX,
      date: date ? null : this.date,
      publisher: publisher ? null : this.publisher,
      contact: contact ? null : this.contact,
      description: description ? null : this.description,
      comment: comment ? null : this.comment,
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
      type: type,
      variableType: variableType ? null : this.variableType,
      characteristic: characteristic,
    );
  }

  @override
  ResearchElementDefinition clone() => throw UnimplementedError();
  @override
  ResearchElementDefinition copyWith({
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
    FhirString? shortTitle,
    FhirString? subtitle,
    PublicationStatus? status,
    FhirBoolean? experimental,
    SubjectXResearchElementDefinition? subjectX,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<FhirString>? comment,
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
    ResearchElementType? type,
    VariableType? variableType,
    List<ResearchElementDefinitionCharacteristic>? characteristic,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return ResearchElementDefinition(
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
      shortTitle: shortTitle?.copyWith(
            objectPath: '$newObjectPath.shortTitle',
          ) ??
          this.shortTitle,
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
          ) as SubjectXResearchElementDefinition? ??
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
      comment: comment
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.comment',
                ),
              )
              .toList() ??
          this.comment,
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
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      variableType: variableType?.copyWith(
            objectPath: '$newObjectPath.variableType',
          ) ??
          this.variableType,
      characteristic: characteristic
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.characteristic',
                ),
              )
              .toList() ??
          this.characteristic,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ResearchElementDefinition) {
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
      shortTitle,
      o.shortTitle,
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
    if (!listEquals<FhirString>(
      comment,
      o.comment,
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
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      variableType,
      o.variableType,
    )) {
      return false;
    }
    if (!listEquals<ResearchElementDefinitionCharacteristic>(
      characteristic,
      o.characteristic,
    )) {
      return false;
    }
    return true;
  }
}

/// [ResearchElementDefinitionCharacteristic]
/// A characteristic that defines the members of the research element.
/// Multiple characteristics are applied with "and" semantics.
class ResearchElementDefinitionCharacteristic extends BackboneElement {
  /// Primary constructor for
  /// [ResearchElementDefinitionCharacteristic]

  const ResearchElementDefinitionCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.definitionX,
    this.usageContext,
    this.exclude,
    this.unitOfMeasure,
    this.studyEffectiveDescription,
    this.studyEffectiveX,
    this.studyEffectiveTimeFromStart,
    this.studyEffectiveGroupMeasure,
    this.participantEffectiveDescription,
    this.participantEffectiveX,
    this.participantEffectiveTimeFromStart,
    this.participantEffectiveGroupMeasure,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ResearchElementDefinition.characteristic',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ResearchElementDefinitionCharacteristic.empty() =>
      ResearchElementDefinitionCharacteristic(
        definitionX: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchElementDefinitionCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ResearchElementDefinition.characteristic';
    return ResearchElementDefinitionCharacteristic(
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
      definitionX: JsonParser.parsePolymorphic<
          DefinitionXResearchElementDefinitionCharacteristic>(
        json,
        {
          'definitionCodeableConcept': CodeableConcept.fromJson,
          'definitionCanonical': FhirCanonical.fromJson,
          'definitionExpression': FhirExpression.fromJson,
          'definitionDataRequirement': DataRequirement.fromJson,
        },
        objectPath,
      )!,
      usageContext: (json['usageContext'] as List<dynamic>?)
          ?.map<UsageContext>(
            (v) => UsageContext.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.usageContext',
              },
            ),
          )
          .toList(),
      exclude: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'exclude',
        FhirBoolean.fromJson,
        '$objectPath.exclude',
      ),
      unitOfMeasure: JsonParser.parseObject<CodeableConcept>(
        json,
        'unitOfMeasure',
        CodeableConcept.fromJson,
        '$objectPath.unitOfMeasure',
      ),
      studyEffectiveDescription: JsonParser.parsePrimitive<FhirString>(
        json,
        'studyEffectiveDescription',
        FhirString.fromJson,
        '$objectPath.studyEffectiveDescription',
      ),
      studyEffectiveX: JsonParser.parsePolymorphic<
          StudyEffectiveXResearchElementDefinitionCharacteristic>(
        json,
        {
          'studyEffectiveDateTime': FhirDateTime.fromJson,
          'studyEffectivePeriod': Period.fromJson,
          'studyEffectiveDuration': FhirDuration.fromJson,
          'studyEffectiveTiming': Timing.fromJson,
        },
        objectPath,
      ),
      studyEffectiveTimeFromStart: JsonParser.parseObject<FhirDuration>(
        json,
        'studyEffectiveTimeFromStart',
        FhirDuration.fromJson,
        '$objectPath.studyEffectiveTimeFromStart',
      ),
      studyEffectiveGroupMeasure: JsonParser.parsePrimitive<GroupMeasure>(
        json,
        'studyEffectiveGroupMeasure',
        GroupMeasure.fromJson,
        '$objectPath.studyEffectiveGroupMeasure',
      ),
      participantEffectiveDescription: JsonParser.parsePrimitive<FhirString>(
        json,
        'participantEffectiveDescription',
        FhirString.fromJson,
        '$objectPath.participantEffectiveDescription',
      ),
      participantEffectiveX: JsonParser.parsePolymorphic<
          ParticipantEffectiveXResearchElementDefinitionCharacteristic>(
        json,
        {
          'participantEffectiveDateTime': FhirDateTime.fromJson,
          'participantEffectivePeriod': Period.fromJson,
          'participantEffectiveDuration': FhirDuration.fromJson,
          'participantEffectiveTiming': Timing.fromJson,
        },
        objectPath,
      ),
      participantEffectiveTimeFromStart: JsonParser.parseObject<FhirDuration>(
        json,
        'participantEffectiveTimeFromStart',
        FhirDuration.fromJson,
        '$objectPath.participantEffectiveTimeFromStart',
      ),
      participantEffectiveGroupMeasure: JsonParser.parsePrimitive<GroupMeasure>(
        json,
        'participantEffectiveGroupMeasure',
        GroupMeasure.fromJson,
        '$objectPath.participantEffectiveGroupMeasure',
      ),
    );
  }

  /// Deserialize [ResearchElementDefinitionCharacteristic]
  /// from a [String] or [YamlMap] object
  factory ResearchElementDefinitionCharacteristic.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchElementDefinitionCharacteristic.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchElementDefinitionCharacteristic.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchElementDefinitionCharacteristic '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchElementDefinitionCharacteristic]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchElementDefinitionCharacteristic.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ResearchElementDefinitionCharacteristic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ResearchElementDefinitionCharacteristic';

  /// [definitionX]
  /// Define members of the research element using Codes (such as condition,
  /// medication, or observation), Expressions ( using an expression language
  /// such as FHIRPath or CQL) or DataRequirements (such as Diabetes
  /// diagnosis onset in the last year).
  final DefinitionXResearchElementDefinitionCharacteristic definitionX;

  /// Getter for [definitionCodeableConcept] as a CodeableConcept
  CodeableConcept? get definitionCodeableConcept =>
      definitionX.isAs<CodeableConcept>();

  /// Getter for [definitionCanonical] as a FhirCanonical
  FhirCanonical? get definitionCanonical => definitionX.isAs<FhirCanonical>();

  /// Getter for [definitionExpression] as a FhirExpression
  FhirExpression? get definitionExpression =>
      definitionX.isAs<FhirExpression>();

  /// Getter for [definitionDataRequirement] as a DataRequirement
  DataRequirement? get definitionDataRequirement =>
      definitionX.isAs<DataRequirement>();

  /// [usageContext]
  /// Use UsageContext to define the members of the population, such as Age
  /// Ranges, Genders, Settings.
  final List<UsageContext>? usageContext;

  /// [exclude]
  /// When true, members with this characteristic are excluded from the
  /// element.
  final FhirBoolean? exclude;

  /// [unitOfMeasure]
  /// Specifies the UCUM unit for the outcome.
  final CodeableConcept? unitOfMeasure;

  /// [studyEffectiveDescription]
  /// A narrative description of the time period the study covers.
  final FhirString? studyEffectiveDescription;

  /// [studyEffectiveX]
  /// Indicates what effective period the study covers.
  final StudyEffectiveXResearchElementDefinitionCharacteristic? studyEffectiveX;

  /// Getter for [studyEffectiveDateTime] as a FhirDateTime
  FhirDateTime? get studyEffectiveDateTime =>
      studyEffectiveX?.isAs<FhirDateTime>();

  /// Getter for [studyEffectivePeriod] as a Period
  Period? get studyEffectivePeriod => studyEffectiveX?.isAs<Period>();

  /// Getter for [studyEffectiveDuration] as a FhirDuration
  FhirDuration? get studyEffectiveDuration =>
      studyEffectiveX?.isAs<FhirDuration>();

  /// Getter for [studyEffectiveTiming] as a Timing
  Timing? get studyEffectiveTiming => studyEffectiveX?.isAs<Timing>();

  /// [studyEffectiveTimeFromStart]
  /// Indicates duration from the study initiation.
  final FhirDuration? studyEffectiveTimeFromStart;

  /// [studyEffectiveGroupMeasure]
  /// Indicates how elements are aggregated within the study effective
  /// period.
  final GroupMeasure? studyEffectiveGroupMeasure;

  /// [participantEffectiveDescription]
  /// A narrative description of the time period the study covers.
  final FhirString? participantEffectiveDescription;

  /// [participantEffectiveX]
  /// Indicates what effective period the study covers.
  final ParticipantEffectiveXResearchElementDefinitionCharacteristic?
      participantEffectiveX;

  /// Getter for [participantEffectiveDateTime] as a FhirDateTime
  FhirDateTime? get participantEffectiveDateTime =>
      participantEffectiveX?.isAs<FhirDateTime>();

  /// Getter for [participantEffectivePeriod] as a Period
  Period? get participantEffectivePeriod =>
      participantEffectiveX?.isAs<Period>();

  /// Getter for [participantEffectiveDuration] as a FhirDuration
  FhirDuration? get participantEffectiveDuration =>
      participantEffectiveX?.isAs<FhirDuration>();

  /// Getter for [participantEffectiveTiming] as a Timing
  Timing? get participantEffectiveTiming =>
      participantEffectiveX?.isAs<Timing>();

  /// [participantEffectiveTimeFromStart]
  /// Indicates duration from the participant's study entry.
  final FhirDuration? participantEffectiveTimeFromStart;

  /// [participantEffectiveGroupMeasure]
  /// Indicates how elements are aggregated within the study effective
  /// period.
  final GroupMeasure? participantEffectiveGroupMeasure;
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
    final definitionXFhirType = definitionX.fhirType;
    addField(
      'definition${definitionXFhirType.capitalize()}',
      definitionX,
    );

    addField(
      'usageContext',
      usageContext,
    );
    addField(
      'exclude',
      exclude,
    );
    addField(
      'unitOfMeasure',
      unitOfMeasure,
    );
    addField(
      'studyEffectiveDescription',
      studyEffectiveDescription,
    );
    if (studyEffectiveX != null) {
      final fhirType = studyEffectiveX!.fhirType;
      addField(
        'studyEffective${fhirType.capitalize()}',
        studyEffectiveX,
      );
    }

    addField(
      'studyEffectiveTimeFromStart',
      studyEffectiveTimeFromStart,
    );
    addField(
      'studyEffectiveGroupMeasure',
      studyEffectiveGroupMeasure,
    );
    addField(
      'participantEffectiveDescription',
      participantEffectiveDescription,
    );
    if (participantEffectiveX != null) {
      final fhirType = participantEffectiveX!.fhirType;
      addField(
        'participantEffective${fhirType.capitalize()}',
        participantEffectiveX,
      );
    }

    addField(
      'participantEffectiveTimeFromStart',
      participantEffectiveTimeFromStart,
    );
    addField(
      'participantEffectiveGroupMeasure',
      participantEffectiveGroupMeasure,
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
      'definitionX',
      'usageContext',
      'exclude',
      'unitOfMeasure',
      'studyEffectiveDescription',
      'studyEffectiveX',
      'studyEffectiveTimeFromStart',
      'studyEffectiveGroupMeasure',
      'participantEffectiveDescription',
      'participantEffectiveX',
      'participantEffectiveTimeFromStart',
      'participantEffectiveGroupMeasure',
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
      case 'definition':
        fields.add(definitionX);
      case 'definitionX':
        fields.add(definitionX);
      case 'definitionCodeableConcept':
        if (definitionX is CodeableConcept) {
          fields.add(definitionX);
        }
      case 'definitionCanonical':
        if (definitionX is FhirCanonical) {
          fields.add(definitionX);
        }
      case 'definitionExpression':
        if (definitionX is FhirExpression) {
          fields.add(definitionX);
        }
      case 'definitionDataRequirement':
        if (definitionX is DataRequirement) {
          fields.add(definitionX);
        }
      case 'usageContext':
        if (usageContext != null) {
          fields.addAll(usageContext!);
        }
      case 'exclude':
        if (exclude != null) {
          fields.add(exclude!);
        }
      case 'unitOfMeasure':
        if (unitOfMeasure != null) {
          fields.add(unitOfMeasure!);
        }
      case 'studyEffectiveDescription':
        if (studyEffectiveDescription != null) {
          fields.add(studyEffectiveDescription!);
        }
      case 'studyEffective':
        fields.add(studyEffectiveX!);
      case 'studyEffectiveX':
        fields.add(studyEffectiveX!);
      case 'studyEffectiveDateTime':
        if (studyEffectiveX is FhirDateTime) {
          fields.add(studyEffectiveX!);
        }
      case 'studyEffectivePeriod':
        if (studyEffectiveX is Period) {
          fields.add(studyEffectiveX!);
        }
      case 'studyEffectiveDuration':
        if (studyEffectiveX is FhirDuration) {
          fields.add(studyEffectiveX!);
        }
      case 'studyEffectiveTiming':
        if (studyEffectiveX is Timing) {
          fields.add(studyEffectiveX!);
        }
      case 'studyEffectiveTimeFromStart':
        if (studyEffectiveTimeFromStart != null) {
          fields.add(studyEffectiveTimeFromStart!);
        }
      case 'studyEffectiveGroupMeasure':
        if (studyEffectiveGroupMeasure != null) {
          fields.add(studyEffectiveGroupMeasure!);
        }
      case 'participantEffectiveDescription':
        if (participantEffectiveDescription != null) {
          fields.add(participantEffectiveDescription!);
        }
      case 'participantEffective':
        fields.add(participantEffectiveX!);
      case 'participantEffectiveX':
        fields.add(participantEffectiveX!);
      case 'participantEffectiveDateTime':
        if (participantEffectiveX is FhirDateTime) {
          fields.add(participantEffectiveX!);
        }
      case 'participantEffectivePeriod':
        if (participantEffectiveX is Period) {
          fields.add(participantEffectiveX!);
        }
      case 'participantEffectiveDuration':
        if (participantEffectiveX is FhirDuration) {
          fields.add(participantEffectiveX!);
        }
      case 'participantEffectiveTiming':
        if (participantEffectiveX is Timing) {
          fields.add(participantEffectiveX!);
        }
      case 'participantEffectiveTimeFromStart':
        if (participantEffectiveTimeFromStart != null) {
          fields.add(participantEffectiveTimeFromStart!);
        }
      case 'participantEffectiveGroupMeasure':
        if (participantEffectiveGroupMeasure != null) {
          fields.add(participantEffectiveGroupMeasure!);
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
            final newList = [...?extension_, child];
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
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'definitionX':
        {
          if (child is DefinitionXResearchElementDefinitionCharacteristic) {
            return copyWith(definitionX: child);
          } else {
            if (child is CodeableConcept) {
              return copyWith(definitionX: child);
            }
            if (child is FhirCanonical) {
              return copyWith(definitionX: child);
            }
            if (child is FhirExpression) {
              return copyWith(definitionX: child);
            }
            if (child is DataRequirement) {
              return copyWith(definitionX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'definitionCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(definitionX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'definitionFhirCanonical':
        {
          if (child is FhirCanonical) {
            return copyWith(definitionX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'definitionFhirExpression':
        {
          if (child is FhirExpression) {
            return copyWith(definitionX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'definitionDataRequirement':
        {
          if (child is DataRequirement) {
            return copyWith(definitionX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'usageContext':
        {
          if (child is List<UsageContext>) {
            // Add all elements from passed list
            final newList = [...?usageContext, ...child];
            return copyWith(usageContext: newList);
          } else if (child is UsageContext) {
            // Add single element to existing list or create new list
            final newList = [...?usageContext, child];
            return copyWith(usageContext: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'exclude':
        {
          if (child is FhirBoolean) {
            return copyWith(exclude: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'unitOfMeasure':
        {
          if (child is CodeableConcept) {
            return copyWith(unitOfMeasure: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'studyEffectiveDescription':
        {
          if (child is FhirString) {
            return copyWith(studyEffectiveDescription: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'studyEffectiveX':
        {
          if (child is StudyEffectiveXResearchElementDefinitionCharacteristic) {
            return copyWith(studyEffectiveX: child);
          } else {
            if (child is FhirDateTime) {
              return copyWith(studyEffectiveX: child);
            }
            if (child is Period) {
              return copyWith(studyEffectiveX: child);
            }
            if (child is FhirDuration) {
              return copyWith(studyEffectiveX: child);
            }
            if (child is Timing) {
              return copyWith(studyEffectiveX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'studyEffectiveFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(studyEffectiveX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'studyEffectivePeriod':
        {
          if (child is Period) {
            return copyWith(studyEffectiveX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'studyEffectiveFhirDuration':
        {
          if (child is FhirDuration) {
            return copyWith(studyEffectiveX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'studyEffectiveTiming':
        {
          if (child is Timing) {
            return copyWith(studyEffectiveX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'studyEffectiveTimeFromStart':
        {
          if (child is FhirDuration) {
            return copyWith(studyEffectiveTimeFromStart: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'studyEffectiveGroupMeasure':
        {
          if (child is GroupMeasure) {
            return copyWith(studyEffectiveGroupMeasure: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'participantEffectiveDescription':
        {
          if (child is FhirString) {
            return copyWith(participantEffectiveDescription: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'participantEffectiveX':
        {
          if (child
              is ParticipantEffectiveXResearchElementDefinitionCharacteristic) {
            return copyWith(participantEffectiveX: child);
          } else {
            if (child is FhirDateTime) {
              return copyWith(participantEffectiveX: child);
            }
            if (child is Period) {
              return copyWith(participantEffectiveX: child);
            }
            if (child is FhirDuration) {
              return copyWith(participantEffectiveX: child);
            }
            if (child is Timing) {
              return copyWith(participantEffectiveX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'participantEffectiveFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(participantEffectiveX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'participantEffectivePeriod':
        {
          if (child is Period) {
            return copyWith(participantEffectiveX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'participantEffectiveFhirDuration':
        {
          if (child is FhirDuration) {
            return copyWith(participantEffectiveX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'participantEffectiveTiming':
        {
          if (child is Timing) {
            return copyWith(participantEffectiveX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'participantEffectiveTimeFromStart':
        {
          if (child is FhirDuration) {
            return copyWith(participantEffectiveTimeFromStart: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'participantEffectiveGroupMeasure':
        {
          if (child is GroupMeasure) {
            return copyWith(participantEffectiveGroupMeasure: child);
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
      case 'definition':
      case 'definitionX':
        return [
          'CodeableConcept',
          'FhirCanonical',
          'FhirExpression',
          'DataRequirement',
        ];
      case 'definitionCodeableConcept':
        return ['CodeableConcept'];
      case 'definitionCanonical':
        return ['FhirCanonical'];
      case 'definitionExpression':
        return ['FhirExpression'];
      case 'definitionDataRequirement':
        return ['DataRequirement'];
      case 'usageContext':
        return ['UsageContext'];
      case 'exclude':
        return ['FhirBoolean'];
      case 'unitOfMeasure':
        return ['CodeableConcept'];
      case 'studyEffectiveDescription':
        return ['FhirString'];
      case 'studyEffective':
      case 'studyEffectiveX':
        return ['FhirDateTime', 'Period', 'FhirDuration', 'Timing'];
      case 'studyEffectiveDateTime':
        return ['FhirDateTime'];
      case 'studyEffectivePeriod':
        return ['Period'];
      case 'studyEffectiveDuration':
        return ['FhirDuration'];
      case 'studyEffectiveTiming':
        return ['Timing'];
      case 'studyEffectiveTimeFromStart':
        return ['FhirDuration'];
      case 'studyEffectiveGroupMeasure':
        return ['FhirCode'];
      case 'participantEffectiveDescription':
        return ['FhirString'];
      case 'participantEffective':
      case 'participantEffectiveX':
        return ['FhirDateTime', 'Period', 'FhirDuration', 'Timing'];
      case 'participantEffectiveDateTime':
        return ['FhirDateTime'];
      case 'participantEffectivePeriod':
        return ['Period'];
      case 'participantEffectiveDuration':
        return ['FhirDuration'];
      case 'participantEffectiveTiming':
        return ['Timing'];
      case 'participantEffectiveTimeFromStart':
        return ['FhirDuration'];
      case 'participantEffectiveGroupMeasure':
        return ['FhirCode'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ResearchElementDefinitionCharacteristic]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ResearchElementDefinitionCharacteristic createProperty(
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
      case 'definition':
      case 'definitionX':
      case 'definitionCodeableConcept':
        {
          return copyWith(
            definitionX: CodeableConcept.empty(),
          );
        }
      case 'definitionCanonical':
        {
          return copyWith(
            definitionX: FhirCanonical.empty(),
          );
        }
      case 'definitionExpression':
        {
          return copyWith(
            definitionX: FhirExpression.empty(),
          );
        }
      case 'definitionDataRequirement':
        {
          return copyWith(
            definitionX: DataRequirement.empty(),
          );
        }
      case 'usageContext':
        {
          return copyWith(
            usageContext: <UsageContext>[],
          );
        }
      case 'exclude':
        {
          return copyWith(
            exclude: FhirBoolean.empty(),
          );
        }
      case 'unitOfMeasure':
        {
          return copyWith(
            unitOfMeasure: CodeableConcept.empty(),
          );
        }
      case 'studyEffectiveDescription':
        {
          return copyWith(
            studyEffectiveDescription: FhirString.empty(),
          );
        }
      case 'studyEffective':
      case 'studyEffectiveX':
      case 'studyEffectiveDateTime':
        {
          return copyWith(
            studyEffectiveX: FhirDateTime.empty(),
          );
        }
      case 'studyEffectivePeriod':
        {
          return copyWith(
            studyEffectiveX: Period.empty(),
          );
        }
      case 'studyEffectiveDuration':
        {
          return copyWith(
            studyEffectiveX: FhirDuration.empty(),
          );
        }
      case 'studyEffectiveTiming':
        {
          return copyWith(
            studyEffectiveX: Timing.empty(),
          );
        }
      case 'studyEffectiveTimeFromStart':
        {
          return copyWith(
            studyEffectiveTimeFromStart: FhirDuration.empty(),
          );
        }
      case 'studyEffectiveGroupMeasure':
        {
          return copyWith(
            studyEffectiveGroupMeasure: GroupMeasure.empty(),
          );
        }
      case 'participantEffectiveDescription':
        {
          return copyWith(
            participantEffectiveDescription: FhirString.empty(),
          );
        }
      case 'participantEffective':
      case 'participantEffectiveX':
      case 'participantEffectiveDateTime':
        {
          return copyWith(
            participantEffectiveX: FhirDateTime.empty(),
          );
        }
      case 'participantEffectivePeriod':
        {
          return copyWith(
            participantEffectiveX: Period.empty(),
          );
        }
      case 'participantEffectiveDuration':
        {
          return copyWith(
            participantEffectiveX: FhirDuration.empty(),
          );
        }
      case 'participantEffectiveTiming':
        {
          return copyWith(
            participantEffectiveX: Timing.empty(),
          );
        }
      case 'participantEffectiveTimeFromStart':
        {
          return copyWith(
            participantEffectiveTimeFromStart: FhirDuration.empty(),
          );
        }
      case 'participantEffectiveGroupMeasure':
        {
          return copyWith(
            participantEffectiveGroupMeasure: GroupMeasure.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ResearchElementDefinitionCharacteristic clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool usageContext = false,
    bool exclude = false,
    bool unitOfMeasure = false,
    bool studyEffectiveDescription = false,
    bool studyEffective = false,
    bool studyEffectiveTimeFromStart = false,
    bool studyEffectiveGroupMeasure = false,
    bool participantEffectiveDescription = false,
    bool participantEffective = false,
    bool participantEffectiveTimeFromStart = false,
    bool participantEffectiveGroupMeasure = false,
  }) {
    return ResearchElementDefinitionCharacteristic(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      definitionX: definitionX,
      usageContext: usageContext ? null : this.usageContext,
      exclude: exclude ? null : this.exclude,
      unitOfMeasure: unitOfMeasure ? null : this.unitOfMeasure,
      studyEffectiveDescription:
          studyEffectiveDescription ? null : this.studyEffectiveDescription,
      studyEffectiveX: studyEffective ? null : studyEffectiveX,
      studyEffectiveTimeFromStart:
          studyEffectiveTimeFromStart ? null : this.studyEffectiveTimeFromStart,
      studyEffectiveGroupMeasure:
          studyEffectiveGroupMeasure ? null : this.studyEffectiveGroupMeasure,
      participantEffectiveDescription: participantEffectiveDescription
          ? null
          : this.participantEffectiveDescription,
      participantEffectiveX:
          participantEffective ? null : participantEffectiveX,
      participantEffectiveTimeFromStart: participantEffectiveTimeFromStart
          ? null
          : this.participantEffectiveTimeFromStart,
      participantEffectiveGroupMeasure: participantEffectiveGroupMeasure
          ? null
          : this.participantEffectiveGroupMeasure,
    );
  }

  @override
  ResearchElementDefinitionCharacteristic clone() => throw UnimplementedError();
  @override
  ResearchElementDefinitionCharacteristic copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    DefinitionXResearchElementDefinitionCharacteristic? definitionX,
    List<UsageContext>? usageContext,
    FhirBoolean? exclude,
    CodeableConcept? unitOfMeasure,
    FhirString? studyEffectiveDescription,
    StudyEffectiveXResearchElementDefinitionCharacteristic? studyEffectiveX,
    FhirDuration? studyEffectiveTimeFromStart,
    GroupMeasure? studyEffectiveGroupMeasure,
    FhirString? participantEffectiveDescription,
    ParticipantEffectiveXResearchElementDefinitionCharacteristic?
        participantEffectiveX,
    FhirDuration? participantEffectiveTimeFromStart,
    GroupMeasure? participantEffectiveGroupMeasure,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ResearchElementDefinitionCharacteristic(
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
      definitionX: definitionX?.copyWith(
            objectPath: '$newObjectPath.definitionX',
          ) as DefinitionXResearchElementDefinitionCharacteristic? ??
          this.definitionX,
      usageContext: usageContext
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.usageContext',
                ),
              )
              .toList() ??
          this.usageContext,
      exclude: exclude?.copyWith(
            objectPath: '$newObjectPath.exclude',
          ) ??
          this.exclude,
      unitOfMeasure: unitOfMeasure?.copyWith(
            objectPath: '$newObjectPath.unitOfMeasure',
          ) ??
          this.unitOfMeasure,
      studyEffectiveDescription: studyEffectiveDescription?.copyWith(
            objectPath: '$newObjectPath.studyEffectiveDescription',
          ) ??
          this.studyEffectiveDescription,
      studyEffectiveX: studyEffectiveX?.copyWith(
            objectPath: '$newObjectPath.studyEffectiveX',
          ) as StudyEffectiveXResearchElementDefinitionCharacteristic? ??
          this.studyEffectiveX,
      studyEffectiveTimeFromStart: studyEffectiveTimeFromStart?.copyWith(
            objectPath: '$newObjectPath.studyEffectiveTimeFromStart',
          ) ??
          this.studyEffectiveTimeFromStart,
      studyEffectiveGroupMeasure: studyEffectiveGroupMeasure?.copyWith(
            objectPath: '$newObjectPath.studyEffectiveGroupMeasure',
          ) ??
          this.studyEffectiveGroupMeasure,
      participantEffectiveDescription:
          participantEffectiveDescription?.copyWith(
                objectPath: '$newObjectPath.participantEffectiveDescription',
              ) ??
              this.participantEffectiveDescription,
      participantEffectiveX: participantEffectiveX?.copyWith(
            objectPath: '$newObjectPath.participantEffectiveX',
          ) as ParticipantEffectiveXResearchElementDefinitionCharacteristic? ??
          this.participantEffectiveX,
      participantEffectiveTimeFromStart:
          participantEffectiveTimeFromStart?.copyWith(
                objectPath: '$newObjectPath.participantEffectiveTimeFromStart',
              ) ??
              this.participantEffectiveTimeFromStart,
      participantEffectiveGroupMeasure:
          participantEffectiveGroupMeasure?.copyWith(
                objectPath: '$newObjectPath.participantEffectiveGroupMeasure',
              ) ??
              this.participantEffectiveGroupMeasure,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ResearchElementDefinitionCharacteristic) {
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
      definitionX,
      o.definitionX,
    )) {
      return false;
    }
    if (!listEquals<UsageContext>(
      usageContext,
      o.usageContext,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      exclude,
      o.exclude,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      unitOfMeasure,
      o.unitOfMeasure,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      studyEffectiveDescription,
      o.studyEffectiveDescription,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      studyEffectiveX,
      o.studyEffectiveX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      studyEffectiveTimeFromStart,
      o.studyEffectiveTimeFromStart,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      studyEffectiveGroupMeasure,
      o.studyEffectiveGroupMeasure,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      participantEffectiveDescription,
      o.participantEffectiveDescription,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      participantEffectiveX,
      o.participantEffectiveX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      participantEffectiveTimeFromStart,
      o.participantEffectiveTimeFromStart,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      participantEffectiveGroupMeasure,
      o.participantEffectiveGroupMeasure,
    )) {
      return false;
    }
    return true;
  }
}
