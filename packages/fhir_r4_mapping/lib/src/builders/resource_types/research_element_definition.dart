import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        R4ResourceType,
        ResearchElementDefinition,
        ResearchElementDefinitionCharacteristic,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_mapping/fhir_r4_mapping.dart';
import 'package:yaml/yaml.dart';

/// [ResearchElementDefinitionBuilder]
/// The ResearchElementDefinition resource describes a "PICO" element that
/// knowledge (evidence, assertion, recommendation) is about.
class ResearchElementDefinitionBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [ResearchElementDefinitionBuilder]

  ResearchElementDefinitionBuilder({
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
    this.status,
    this.experimental,
    SubjectXResearchElementDefinitionBuilder? subjectX,
    CodeableConceptBuilder? subjectCodeableConcept,
    ReferenceBuilder? subjectReference,
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
    this.type,
    this.variableType,
    this.characteristic,
  })  : subjectX = subjectX ?? subjectCodeableConcept ?? subjectReference,
        super(
          objectPath: 'ResearchElementDefinition',
          resourceType: R4ResourceType.ResearchElementDefinition,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ResearchElementDefinitionBuilder.empty() =>
      ResearchElementDefinitionBuilder(
        status: PublicationStatusBuilder.values.first,
        type: ResearchElementTypeBuilder.values.first,
        characteristic: <ResearchElementDefinitionCharacteristicBuilder>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchElementDefinitionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ResearchElementDefinition';
    return ResearchElementDefinitionBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMetaBuilder>(
        json,
        'meta',
        FhirMetaBuilder.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'implicitRules',
        FhirUriBuilder.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguagesBuilder>(
        json,
        'language',
        CommonLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<NarrativeBuilder>(
        json,
        'text',
        NarrativeBuilder.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<ResourceBuilder>(
            (v) => ResourceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      url: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'url',
        FhirUriBuilder.fromJson,
        '$objectPath.url',
      ),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      version: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'version',
        FhirStringBuilder.fromJson,
        '$objectPath.version',
      ),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      title: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'title',
        FhirStringBuilder.fromJson,
        '$objectPath.title',
      ),
      shortTitle: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'shortTitle',
        FhirStringBuilder.fromJson,
        '$objectPath.shortTitle',
      ),
      subtitle: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'subtitle',
        FhirStringBuilder.fromJson,
        '$objectPath.subtitle',
      ),
      status: JsonParser.parsePrimitive<PublicationStatusBuilder>(
        json,
        'status',
        PublicationStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      experimental: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'experimental',
        FhirBooleanBuilder.fromJson,
        '$objectPath.experimental',
      ),
      subjectX:
          JsonParser.parsePolymorphic<SubjectXResearchElementDefinitionBuilder>(
        json,
        {
          'subjectCodeableConcept': CodeableConceptBuilder.fromJson,
          'subjectReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
      date: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'date',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.date',
      ),
      publisher: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'publisher',
        FhirStringBuilder.fromJson,
        '$objectPath.publisher',
      ),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactDetailBuilder>(
            (v) => ContactDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contact',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'description',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.description',
      ),
      comment: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'comment',
        FhirStringBuilder.fromJson,
        '$objectPath.comment',
      ),
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map<UsageContextBuilder>(
            (v) => UsageContextBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.useContext',
              },
            ),
          )
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.jurisdiction',
              },
            ),
          )
          .toList(),
      purpose: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'purpose',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.purpose',
      ),
      usage: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'usage',
        FhirStringBuilder.fromJson,
        '$objectPath.usage',
      ),
      copyright: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'copyright',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.copyright',
      ),
      approvalDate: JsonParser.parsePrimitive<FhirDateBuilder>(
        json,
        'approvalDate',
        FhirDateBuilder.fromJson,
        '$objectPath.approvalDate',
      ),
      lastReviewDate: JsonParser.parsePrimitive<FhirDateBuilder>(
        json,
        'lastReviewDate',
        FhirDateBuilder.fromJson,
        '$objectPath.lastReviewDate',
      ),
      effectivePeriod: JsonParser.parseObject<PeriodBuilder>(
        json,
        'effectivePeriod',
        PeriodBuilder.fromJson,
        '$objectPath.effectivePeriod',
      ),
      topic: (json['topic'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.topic',
              },
            ),
          )
          .toList(),
      author: (json['author'] as List<dynamic>?)
          ?.map<ContactDetailBuilder>(
            (v) => ContactDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.author',
              },
            ),
          )
          .toList(),
      editor: (json['editor'] as List<dynamic>?)
          ?.map<ContactDetailBuilder>(
            (v) => ContactDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.editor',
              },
            ),
          )
          .toList(),
      reviewer: (json['reviewer'] as List<dynamic>?)
          ?.map<ContactDetailBuilder>(
            (v) => ContactDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reviewer',
              },
            ),
          )
          .toList(),
      endorser: (json['endorser'] as List<dynamic>?)
          ?.map<ContactDetailBuilder>(
            (v) => ContactDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.endorser',
              },
            ),
          )
          .toList(),
      relatedArtifact: (json['relatedArtifact'] as List<dynamic>?)
          ?.map<RelatedArtifactBuilder>(
            (v) => RelatedArtifactBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relatedArtifact',
              },
            ),
          )
          .toList(),
      library_: JsonParser.parsePrimitiveList<FhirCanonicalBuilder>(
        json,
        'library',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.library',
      ),
      type: JsonParser.parsePrimitive<ResearchElementTypeBuilder>(
        json,
        'type',
        ResearchElementTypeBuilder.fromJson,
        '$objectPath.type',
      ),
      variableType: JsonParser.parsePrimitive<VariableTypeBuilder>(
        json,
        'variableType',
        VariableTypeBuilder.fromJson,
        '$objectPath.variableType',
      ),
      characteristic: (json['characteristic'] as List<dynamic>?)
          ?.map<ResearchElementDefinitionCharacteristicBuilder>(
            (v) => ResearchElementDefinitionCharacteristicBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.characteristic',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ResearchElementDefinitionBuilder]
  /// from a [String] or [YamlMap] object
  factory ResearchElementDefinitionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchElementDefinitionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchElementDefinitionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchElementDefinitionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchElementDefinitionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchElementDefinitionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ResearchElementDefinitionBuilder.fromJson(json);
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
  FhirUriBuilder? url;

  /// [identifier]
  /// A formal identifier that is used to identify this research element
  /// definition when it is represented in other formats, or referenced in a
  /// specification, model, design or an instance.
  List<IdentifierBuilder>? identifier;

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
  FhirStringBuilder? version;

  /// [name]
  /// A natural language name identifying the research element definition.
  /// This name should be usable as an identifier for the module by machine
  /// processing applications such as code generation.
  FhirStringBuilder? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the research element
  /// definition.
  FhirStringBuilder? title;

  /// [shortTitle]
  /// The short title provides an alternate title for use in informal
  /// descriptive contexts where the full, formal title is not necessary.
  FhirStringBuilder? shortTitle;

  /// [subtitle]
  /// An explanatory or alternate title for the ResearchElementDefinition
  /// giving additional information about its content.
  FhirStringBuilder? subtitle;

  /// [status]
  /// The status of this research element definition. Enables tracking the
  /// life-cycle of the content.
  PublicationStatusBuilder? status;

  /// [experimental]
  /// A Boolean value to indicate that this research element definition is
  /// authored for testing purposes (or education/evaluation/marketing) and
  /// is not intended to be used for genuine usage.
  FhirBooleanBuilder? experimental;

  /// [subjectX]
  /// The intended subjects for the ResearchElementDefinition. If this
  /// element is not provided, a Patient subject is assumed, but the subject
  /// of the ResearchElementDefinition can be anything.
  SubjectXResearchElementDefinitionBuilder? subjectX;

  /// Getter for [subjectCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get subjectCodeableConcept =>
      subjectX?.isAs<CodeableConceptBuilder>();

  /// Getter for [subjectReference] as a ReferenceBuilder
  ReferenceBuilder? get subjectReference => subjectX?.isAs<ReferenceBuilder>();

  /// [date]
  /// The date (and optionally time) when the research element definition was
  /// published. The date must change when the business version changes and
  /// it must change if the status code changes. In addition, it should
  /// change when the substantive content of the research element definition
  /// changes.
  FhirDateTimeBuilder? date;

  /// [publisher]
  /// The name of the organization or individual that published the research
  /// element definition.
  FhirStringBuilder? publisher;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  List<ContactDetailBuilder>? contact;

  /// [description]
  /// A free text natural language description of the research element
  /// definition from a consumer's perspective.
  FhirMarkdownBuilder? description;

  /// [comment]
  /// A human-readable string to clarify or explain concepts about the
  /// resource.
  List<FhirStringBuilder>? comment;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate research element definition instances.
  List<UsageContextBuilder>? useContext;

  /// [jurisdiction]
  /// A legal or geographic region in which the research element definition
  /// is intended to be used.
  List<CodeableConceptBuilder>? jurisdiction;

  /// [purpose]
  /// Explanation of why this research element definition is needed and why
  /// it has been designed as it has.
  FhirMarkdownBuilder? purpose;

  /// [usage]
  /// A detailed description, from a clinical perspective, of how the
  /// ResearchElementDefinition is used.
  FhirStringBuilder? usage;

  /// [copyright]
  /// A copyright statement relating to the research element definition
  /// and/or its contents. Copyright statements are generally legal
  /// restrictions on the use and publishing of the research element
  /// definition.
  FhirMarkdownBuilder? copyright;

  /// [approvalDate]
  /// The date on which the resource content was approved by the publisher.
  /// Approval happens once when the content is officially approved for
  /// usage.
  FhirDateBuilder? approvalDate;

  /// [lastReviewDate]
  /// The date on which the resource content was last reviewed. Review
  /// happens periodically after approval but does not change the original
  /// approval date.
  FhirDateBuilder? lastReviewDate;

  /// [effectivePeriod]
  /// The period during which the research element definition content was or
  /// is planned to be in active use.
  PeriodBuilder? effectivePeriod;

  /// [topic]
  /// Descriptive topics related to the content of the
  /// ResearchElementDefinition. Topics provide a high-level categorization
  /// grouping types of ResearchElementDefinitions that can be useful for
  /// filtering and searching.
  List<CodeableConceptBuilder>? topic;

  /// [author]
  /// An individiual or organization primarily involved in the creation and
  /// maintenance of the content.
  List<ContactDetailBuilder>? author;

  /// [editor]
  /// An individual or organization primarily responsible for internal
  /// coherence of the content.
  List<ContactDetailBuilder>? editor;

  /// [reviewer]
  /// An individual or organization primarily responsible for review of some
  /// aspect of the content.
  List<ContactDetailBuilder>? reviewer;

  /// [endorser]
  /// An individual or organization responsible for officially endorsing the
  /// content for use in some setting.
  List<ContactDetailBuilder>? endorser;

  /// [relatedArtifact]
  /// Related artifacts such as additional documentation, justification, or
  /// bibliographic references.
  List<RelatedArtifactBuilder>? relatedArtifact;

  /// [library_]
  /// A reference to a Library resource containing the formal logic used by
  /// the ResearchElementDefinition.
  List<FhirCanonicalBuilder>? library_;

  /// [type]
  /// The type of research element, a population, an exposure, or an outcome.
  ResearchElementTypeBuilder? type;

  /// [variableType]
  /// The type of the outcome (e.g. Dichotomous, Continuous, or Descriptive).
  VariableTypeBuilder? variableType;

  /// [characteristic]
  /// A characteristic that defines the members of the research element.
  /// Multiple characteristics are applied with "and" semantics.
  List<ResearchElementDefinitionCharacteristicBuilder>? characteristic;

  /// Converts a [ResearchElementDefinitionBuilder]
  /// to [ResearchElementDefinition]
  @override
  ResearchElementDefinition build() =>
      ResearchElementDefinition.fromJson(toJson());

  /// Converts a [ResearchElementDefinitionBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('url', url);
    addField('identifier', identifier);
    addField('version', version);
    addField('name', name);
    addField('title', title);
    addField('shortTitle', shortTitle);
    addField('subtitle', subtitle);
    addField('status', status);
    addField('experimental', experimental);
    if (subjectX != null) {
      final fhirType = subjectX!.fhirType;
      addField('subject${fhirType.capitalizeFirstLetter()}', subjectX);
    }

    addField('date', date);
    addField('publisher', publisher);
    addField('contact', contact);
    addField('description', description);
    addField('comment', comment);
    addField('useContext', useContext);
    addField('jurisdiction', jurisdiction);
    addField('purpose', purpose);
    addField('usage', usage);
    addField('copyright', copyright);
    addField('approvalDate', approvalDate);
    addField('lastReviewDate', lastReviewDate);
    addField('effectivePeriod', effectivePeriod);
    addField('topic', topic);
    addField('author', author);
    addField('editor', editor);
    addField('reviewer', reviewer);
    addField('endorser', endorser);
    addField('relatedArtifact', relatedArtifact);
    addField('library', library_);
    addField('type', type);
    addField('variableType', variableType);
    addField('characteristic', characteristic);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (status != null) {
          fields.add(status!);
        }
      case 'experimental':
        if (experimental != null) {
          fields.add(experimental!);
        }
      case 'subject':
        if (subjectX != null) {
          fields.add(subjectX!);
        }
      case 'subjectX':
        if (subjectX != null) {
          fields.add(subjectX!);
        }
      case 'subjectCodeableConcept':
        if (subjectX is CodeableConceptBuilder) {
          fields.add(subjectX!);
        }
      case 'subjectReference':
        if (subjectX is ReferenceBuilder) {
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
        if (type != null) {
          fields.add(type!);
        }
      case 'variableType':
        if (variableType != null) {
          fields.add(variableType!);
        }
      case 'characteristic':
        if (characteristic != null) {
          fields.addAll(characteristic!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                implicitRules = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = CommonLanguagesBuilder(stringValue);
                language = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [
              ...(contained ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'url':
        {
          if (child is FhirUriBuilder) {
            url = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                url = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [
              ...(identifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'version':
        {
          if (child is FhirStringBuilder) {
            version = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                version = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                name = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'title':
        {
          if (child is FhirStringBuilder) {
            title = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                title = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'shortTitle':
        {
          if (child is FhirStringBuilder) {
            shortTitle = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                shortTitle = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subtitle':
        {
          if (child is FhirStringBuilder) {
            subtitle = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                subtitle = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is PublicationStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = PublicationStatusBuilder(stringValue);
                status = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'experimental':
        {
          if (child is FhirBooleanBuilder) {
            experimental = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                experimental = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subject':
      case 'subjectX':
        {
          if (child is SubjectXResearchElementDefinitionBuilder) {
            subjectX = child;
            return;
          } else {
            if (child is CodeableConceptBuilder) {
              subjectX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              subjectX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subjectCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            subjectX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subjectReference':
        {
          if (child is ReferenceBuilder) {
            subjectX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'date':
        {
          if (child is FhirDateTimeBuilder) {
            date = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                date = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'publisher':
        {
          if (child is FhirStringBuilder) {
            publisher = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                publisher = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contact':
        {
          if (child is List<ContactDetailBuilder>) {
            // Replace or create new list
            contact = child;
            return;
          } else if (child is ContactDetailBuilder) {
            // Add single element to existing list or create new list
            contact = [
              ...(contact ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirMarkdownBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'comment':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            comment = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            comment = [
              ...(comment ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirStringBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirStringBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              comment = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                comment = [
                  ...(comment ?? []),
                  converted,
                ];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'useContext':
        {
          if (child is List<UsageContextBuilder>) {
            // Replace or create new list
            useContext = child;
            return;
          } else if (child is UsageContextBuilder) {
            // Add single element to existing list or create new list
            useContext = [
              ...(useContext ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'jurisdiction':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            jurisdiction = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            jurisdiction = [
              ...(jurisdiction ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'purpose':
        {
          if (child is FhirMarkdownBuilder) {
            purpose = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                purpose = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'usage':
        {
          if (child is FhirStringBuilder) {
            usage = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                usage = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'copyright':
        {
          if (child is FhirMarkdownBuilder) {
            copyright = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                copyright = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'approvalDate':
        {
          if (child is FhirDateBuilder) {
            approvalDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateBuilder.tryParse(stringValue);
              if (converted != null) {
                approvalDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'lastReviewDate':
        {
          if (child is FhirDateBuilder) {
            lastReviewDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateBuilder.tryParse(stringValue);
              if (converted != null) {
                lastReviewDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'effectivePeriod':
        {
          if (child is PeriodBuilder) {
            effectivePeriod = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'topic':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            topic = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            topic = [
              ...(topic ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'author':
        {
          if (child is List<ContactDetailBuilder>) {
            // Replace or create new list
            author = child;
            return;
          } else if (child is ContactDetailBuilder) {
            // Add single element to existing list or create new list
            author = [
              ...(author ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'editor':
        {
          if (child is List<ContactDetailBuilder>) {
            // Replace or create new list
            editor = child;
            return;
          } else if (child is ContactDetailBuilder) {
            // Add single element to existing list or create new list
            editor = [
              ...(editor ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reviewer':
        {
          if (child is List<ContactDetailBuilder>) {
            // Replace or create new list
            reviewer = child;
            return;
          } else if (child is ContactDetailBuilder) {
            // Add single element to existing list or create new list
            reviewer = [
              ...(reviewer ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'endorser':
        {
          if (child is List<ContactDetailBuilder>) {
            // Replace or create new list
            endorser = child;
            return;
          } else if (child is ContactDetailBuilder) {
            // Add single element to existing list or create new list
            endorser = [
              ...(endorser ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'relatedArtifact':
        {
          if (child is List<RelatedArtifactBuilder>) {
            // Replace or create new list
            relatedArtifact = child;
            return;
          } else if (child is RelatedArtifactBuilder) {
            // Add single element to existing list or create new list
            relatedArtifact = [
              ...(relatedArtifact ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'library':
        {
          if (child is List<FhirCanonicalBuilder>) {
            // Replace or create new list
            library_ = child;
            return;
          } else if (child is FhirCanonicalBuilder) {
            // Add single element to existing list or create new list
            library_ = [
              ...(library_ ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirCanonicalBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirCanonicalBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              library_ = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                library_ = [
                  ...(library_ ?? []),
                  converted,
                ];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is ResearchElementTypeBuilder) {
            type = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ResearchElementTypeBuilder(stringValue);
                type = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'variableType':
        {
          if (child is VariableTypeBuilder) {
            variableType = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = VariableTypeBuilder(stringValue);
                variableType = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'characteristic':
        {
          if (child is List<ResearchElementDefinitionCharacteristicBuilder>) {
            // Replace or create new list
            characteristic = child;
            return;
          } else if (child is ResearchElementDefinitionCharacteristicBuilder) {
            // Add single element to existing list or create new list
            characteristic = [
              ...(characteristic ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'meta':
        return ['FhirMetaBuilder'];
      case 'implicitRules':
        return ['FhirUriBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['NarrativeBuilder'];
      case 'contained':
        return ['ResourceBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'url':
        return ['FhirUriBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'version':
        return ['FhirStringBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'title':
        return ['FhirStringBuilder'];
      case 'shortTitle':
        return ['FhirStringBuilder'];
      case 'subtitle':
        return ['FhirStringBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'experimental':
        return ['FhirBooleanBuilder'];
      case 'subject':
      case 'subjectX':
        return [
          'CodeableConceptBuilder',
          'ReferenceBuilder',
        ];
      case 'subjectCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'subjectReference':
        return ['ReferenceBuilder'];
      case 'date':
        return ['FhirDateTimeBuilder'];
      case 'publisher':
        return ['FhirStringBuilder'];
      case 'contact':
        return ['ContactDetailBuilder'];
      case 'description':
        return ['FhirMarkdownBuilder'];
      case 'comment':
        return ['FhirStringBuilder'];
      case 'useContext':
        return ['UsageContextBuilder'];
      case 'jurisdiction':
        return ['CodeableConceptBuilder'];
      case 'purpose':
        return ['FhirMarkdownBuilder'];
      case 'usage':
        return ['FhirStringBuilder'];
      case 'copyright':
        return ['FhirMarkdownBuilder'];
      case 'approvalDate':
        return ['FhirDateBuilder'];
      case 'lastReviewDate':
        return ['FhirDateBuilder'];
      case 'effectivePeriod':
        return ['PeriodBuilder'];
      case 'topic':
        return ['CodeableConceptBuilder'];
      case 'author':
        return ['ContactDetailBuilder'];
      case 'editor':
        return ['ContactDetailBuilder'];
      case 'reviewer':
        return ['ContactDetailBuilder'];
      case 'endorser':
        return ['ContactDetailBuilder'];
      case 'relatedArtifact':
        return ['RelatedArtifactBuilder'];
      case 'library':
        return ['FhirCanonicalBuilder'];
      case 'type':
        return ['FhirCodeEnumBuilder'];
      case 'variableType':
        return ['FhirCodeEnumBuilder'];
      case 'characteristic':
        return ['ResearchElementDefinitionCharacteristicBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ResearchElementDefinitionBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'meta':
        {
          meta = FhirMetaBuilder.empty();
          return;
        }
      case 'implicitRules':
        {
          implicitRules = FhirUriBuilder.empty();
          return;
        }
      case 'language':
        {
          language = CommonLanguagesBuilder.empty();
          return;
        }
      case 'text':
        {
          text = NarrativeBuilder.empty();
          return;
        }
      case 'contained':
        {
          contained = <ResourceBuilder>[];
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'url':
        {
          url = FhirUriBuilder.empty();
          return;
        }
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'version':
        {
          version = FhirStringBuilder.empty();
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'title':
        {
          title = FhirStringBuilder.empty();
          return;
        }
      case 'shortTitle':
        {
          shortTitle = FhirStringBuilder.empty();
          return;
        }
      case 'subtitle':
        {
          subtitle = FhirStringBuilder.empty();
          return;
        }
      case 'status':
        {
          status = PublicationStatusBuilder.empty();
          return;
        }
      case 'experimental':
        {
          experimental = FhirBooleanBuilder.empty();
          return;
        }
      case 'subject':
      case 'subjectX':
      case 'subjectCodeableConcept':
        {
          subjectX = CodeableConceptBuilder.empty();
          return;
        }
      case 'subjectReference':
        {
          subjectX = ReferenceBuilder.empty();
          return;
        }
      case 'date':
        {
          date = FhirDateTimeBuilder.empty();
          return;
        }
      case 'publisher':
        {
          publisher = FhirStringBuilder.empty();
          return;
        }
      case 'contact':
        {
          contact = <ContactDetailBuilder>[];
          return;
        }
      case 'description':
        {
          description = FhirMarkdownBuilder.empty();
          return;
        }
      case 'comment':
        {
          comment = <FhirStringBuilder>[];
          return;
        }
      case 'useContext':
        {
          useContext = <UsageContextBuilder>[];
          return;
        }
      case 'jurisdiction':
        {
          jurisdiction = <CodeableConceptBuilder>[];
          return;
        }
      case 'purpose':
        {
          purpose = FhirMarkdownBuilder.empty();
          return;
        }
      case 'usage':
        {
          usage = FhirStringBuilder.empty();
          return;
        }
      case 'copyright':
        {
          copyright = FhirMarkdownBuilder.empty();
          return;
        }
      case 'approvalDate':
        {
          approvalDate = FhirDateBuilder.empty();
          return;
        }
      case 'lastReviewDate':
        {
          lastReviewDate = FhirDateBuilder.empty();
          return;
        }
      case 'effectivePeriod':
        {
          effectivePeriod = PeriodBuilder.empty();
          return;
        }
      case 'topic':
        {
          topic = <CodeableConceptBuilder>[];
          return;
        }
      case 'author':
        {
          author = <ContactDetailBuilder>[];
          return;
        }
      case 'editor':
        {
          editor = <ContactDetailBuilder>[];
          return;
        }
      case 'reviewer':
        {
          reviewer = <ContactDetailBuilder>[];
          return;
        }
      case 'endorser':
        {
          endorser = <ContactDetailBuilder>[];
          return;
        }
      case 'relatedArtifact':
        {
          relatedArtifact = <RelatedArtifactBuilder>[];
          return;
        }
      case 'library':
        {
          library_ = <FhirCanonicalBuilder>[];
          return;
        }
      case 'type':
        {
          type = ResearchElementTypeBuilder.empty();
          return;
        }
      case 'variableType':
        {
          variableType = VariableTypeBuilder.empty();
          return;
        }
      case 'characteristic':
        {
          characteristic = <ResearchElementDefinitionCharacteristicBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ResearchElementDefinitionBuilder clone() => throw UnimplementedError();
  @override
  ResearchElementDefinitionBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirUriBuilder? url,
    List<IdentifierBuilder>? identifier,
    FhirStringBuilder? version,
    FhirStringBuilder? name,
    FhirStringBuilder? title,
    FhirStringBuilder? shortTitle,
    FhirStringBuilder? subtitle,
    PublicationStatusBuilder? status,
    FhirBooleanBuilder? experimental,
    SubjectXResearchElementDefinitionBuilder? subjectX,
    FhirDateTimeBuilder? date,
    FhirStringBuilder? publisher,
    List<ContactDetailBuilder>? contact,
    FhirMarkdownBuilder? description,
    List<FhirStringBuilder>? comment,
    List<UsageContextBuilder>? useContext,
    List<CodeableConceptBuilder>? jurisdiction,
    FhirMarkdownBuilder? purpose,
    FhirStringBuilder? usage,
    FhirMarkdownBuilder? copyright,
    FhirDateBuilder? approvalDate,
    FhirDateBuilder? lastReviewDate,
    PeriodBuilder? effectivePeriod,
    List<CodeableConceptBuilder>? topic,
    List<ContactDetailBuilder>? author,
    List<ContactDetailBuilder>? editor,
    List<ContactDetailBuilder>? reviewer,
    List<ContactDetailBuilder>? endorser,
    List<RelatedArtifactBuilder>? relatedArtifact,
    List<FhirCanonicalBuilder>? library_,
    ResearchElementTypeBuilder? type,
    VariableTypeBuilder? variableType,
    List<ResearchElementDefinitionCharacteristicBuilder>? characteristic,
    CodeableConceptBuilder? subjectCodeableConcept,
    ReferenceBuilder? subjectReference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = ResearchElementDefinitionBuilder(
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
      shortTitle: shortTitle ?? this.shortTitle,
      subtitle: subtitle ?? this.subtitle,
      status: status ?? this.status,
      experimental: experimental ?? this.experimental,
      subjectX: subjectX ??
          subjectCodeableConcept ??
          subjectReference ??
          this.subjectX,
      date: date ?? this.date,
      publisher: publisher ?? this.publisher,
      contact: contact ?? this.contact,
      description: description ?? this.description,
      comment: comment ?? this.comment,
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
      type: type ?? this.type,
      variableType: variableType ?? this.variableType,
      characteristic: characteristic ?? this.characteristic,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ResearchElementDefinitionBuilder) {
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
    if (!listEquals<ResourceBuilder>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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
    if (!listEquals<IdentifierBuilder>(
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
    if (!listEquals<ContactDetailBuilder>(
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
    if (!listEquals<FhirStringBuilder>(
      comment,
      o.comment,
    )) {
      return false;
    }
    if (!listEquals<UsageContextBuilder>(
      useContext,
      o.useContext,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
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
    if (!listEquals<CodeableConceptBuilder>(
      topic,
      o.topic,
    )) {
      return false;
    }
    if (!listEquals<ContactDetailBuilder>(
      author,
      o.author,
    )) {
      return false;
    }
    if (!listEquals<ContactDetailBuilder>(
      editor,
      o.editor,
    )) {
      return false;
    }
    if (!listEquals<ContactDetailBuilder>(
      reviewer,
      o.reviewer,
    )) {
      return false;
    }
    if (!listEquals<ContactDetailBuilder>(
      endorser,
      o.endorser,
    )) {
      return false;
    }
    if (!listEquals<RelatedArtifactBuilder>(
      relatedArtifact,
      o.relatedArtifact,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonicalBuilder>(
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
    if (!listEquals<ResearchElementDefinitionCharacteristicBuilder>(
      characteristic,
      o.characteristic,
    )) {
      return false;
    }
    return true;
  }
}

/// [ResearchElementDefinitionCharacteristicBuilder]
/// A characteristic that defines the members of the research element.
/// Multiple characteristics are applied with "and" semantics.
class ResearchElementDefinitionCharacteristicBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ResearchElementDefinitionCharacteristicBuilder]

  ResearchElementDefinitionCharacteristicBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    DefinitionXResearchElementDefinitionCharacteristicBuilder? definitionX,
    CodeableConceptBuilder? definitionCodeableConcept,
    FhirCanonicalBuilder? definitionCanonical,
    FhirExpressionBuilder? definitionExpression,
    DataRequirementBuilder? definitionDataRequirement,
    this.usageContext,
    this.exclude,
    this.unitOfMeasure,
    this.studyEffectiveDescription,
    StudyEffectiveXResearchElementDefinitionCharacteristicBuilder?
        studyEffectiveX,
    FhirDateTimeBuilder? studyEffectiveDateTime,
    PeriodBuilder? studyEffectivePeriod,
    FhirDurationBuilder? studyEffectiveDuration,
    TimingBuilder? studyEffectiveTiming,
    this.studyEffectiveTimeFromStart,
    this.studyEffectiveGroupMeasure,
    this.participantEffectiveDescription,
    ParticipantEffectiveXResearchElementDefinitionCharacteristicBuilder?
        participantEffectiveX,
    FhirDateTimeBuilder? participantEffectiveDateTime,
    PeriodBuilder? participantEffectivePeriod,
    FhirDurationBuilder? participantEffectiveDuration,
    TimingBuilder? participantEffectiveTiming,
    this.participantEffectiveTimeFromStart,
    this.participantEffectiveGroupMeasure,
    super.disallowExtensions,
  })  : definitionX = definitionX ??
            definitionCodeableConcept ??
            definitionCanonical ??
            definitionExpression ??
            definitionDataRequirement,
        studyEffectiveX = studyEffectiveX ??
            studyEffectiveDateTime ??
            studyEffectivePeriod ??
            studyEffectiveDuration ??
            studyEffectiveTiming,
        participantEffectiveX = participantEffectiveX ??
            participantEffectiveDateTime ??
            participantEffectivePeriod ??
            participantEffectiveDuration ??
            participantEffectiveTiming,
        super(
          objectPath: 'ResearchElementDefinition.characteristic',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ResearchElementDefinitionCharacteristicBuilder.empty() =>
      ResearchElementDefinitionCharacteristicBuilder(
        definitionX: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchElementDefinitionCharacteristicBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ResearchElementDefinition.characteristic';
    return ResearchElementDefinitionCharacteristicBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      definitionX: JsonParser.parsePolymorphic<
          DefinitionXResearchElementDefinitionCharacteristicBuilder>(
        json,
        {
          'definitionCodeableConcept': CodeableConceptBuilder.fromJson,
          'definitionCanonical': FhirCanonicalBuilder.fromJson,
          'definitionExpression': FhirExpressionBuilder.fromJson,
          'definitionDataRequirement': DataRequirementBuilder.fromJson,
        },
        objectPath,
      ),
      usageContext: (json['usageContext'] as List<dynamic>?)
          ?.map<UsageContextBuilder>(
            (v) => UsageContextBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.usageContext',
              },
            ),
          )
          .toList(),
      exclude: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'exclude',
        FhirBooleanBuilder.fromJson,
        '$objectPath.exclude',
      ),
      unitOfMeasure: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'unitOfMeasure',
        CodeableConceptBuilder.fromJson,
        '$objectPath.unitOfMeasure',
      ),
      studyEffectiveDescription: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'studyEffectiveDescription',
        FhirStringBuilder.fromJson,
        '$objectPath.studyEffectiveDescription',
      ),
      studyEffectiveX: JsonParser.parsePolymorphic<
          StudyEffectiveXResearchElementDefinitionCharacteristicBuilder>(
        json,
        {
          'studyEffectiveDateTime': FhirDateTimeBuilder.fromJson,
          'studyEffectivePeriod': PeriodBuilder.fromJson,
          'studyEffectiveDuration': FhirDurationBuilder.fromJson,
          'studyEffectiveTiming': TimingBuilder.fromJson,
        },
        objectPath,
      ),
      studyEffectiveTimeFromStart: JsonParser.parseObject<FhirDurationBuilder>(
        json,
        'studyEffectiveTimeFromStart',
        FhirDurationBuilder.fromJson,
        '$objectPath.studyEffectiveTimeFromStart',
      ),
      studyEffectiveGroupMeasure:
          JsonParser.parsePrimitive<GroupMeasureBuilder>(
        json,
        'studyEffectiveGroupMeasure',
        GroupMeasureBuilder.fromJson,
        '$objectPath.studyEffectiveGroupMeasure',
      ),
      participantEffectiveDescription:
          JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'participantEffectiveDescription',
        FhirStringBuilder.fromJson,
        '$objectPath.participantEffectiveDescription',
      ),
      participantEffectiveX: JsonParser.parsePolymorphic<
          ParticipantEffectiveXResearchElementDefinitionCharacteristicBuilder>(
        json,
        {
          'participantEffectiveDateTime': FhirDateTimeBuilder.fromJson,
          'participantEffectivePeriod': PeriodBuilder.fromJson,
          'participantEffectiveDuration': FhirDurationBuilder.fromJson,
          'participantEffectiveTiming': TimingBuilder.fromJson,
        },
        objectPath,
      ),
      participantEffectiveTimeFromStart:
          JsonParser.parseObject<FhirDurationBuilder>(
        json,
        'participantEffectiveTimeFromStart',
        FhirDurationBuilder.fromJson,
        '$objectPath.participantEffectiveTimeFromStart',
      ),
      participantEffectiveGroupMeasure:
          JsonParser.parsePrimitive<GroupMeasureBuilder>(
        json,
        'participantEffectiveGroupMeasure',
        GroupMeasureBuilder.fromJson,
        '$objectPath.participantEffectiveGroupMeasure',
      ),
    );
  }

  /// Deserialize [ResearchElementDefinitionCharacteristicBuilder]
  /// from a [String] or [YamlMap] object
  factory ResearchElementDefinitionCharacteristicBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchElementDefinitionCharacteristicBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchElementDefinitionCharacteristicBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchElementDefinitionCharacteristicBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchElementDefinitionCharacteristicBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchElementDefinitionCharacteristicBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ResearchElementDefinitionCharacteristicBuilder.fromJson(json);
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
  DefinitionXResearchElementDefinitionCharacteristicBuilder? definitionX;

  /// Getter for [definitionCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get definitionCodeableConcept =>
      definitionX?.isAs<CodeableConceptBuilder>();

  /// Getter for [definitionCanonical] as a FhirCanonicalBuilder
  FhirCanonicalBuilder? get definitionCanonical =>
      definitionX?.isAs<FhirCanonicalBuilder>();

  /// Getter for [definitionExpression] as a FhirExpressionBuilder
  FhirExpressionBuilder? get definitionExpression =>
      definitionX?.isAs<FhirExpressionBuilder>();

  /// Getter for [definitionDataRequirement] as a DataRequirementBuilder
  DataRequirementBuilder? get definitionDataRequirement =>
      definitionX?.isAs<DataRequirementBuilder>();

  /// [usageContext]
  /// Use UsageContext to define the members of the population, such as Age
  /// Ranges, Genders, Settings.
  List<UsageContextBuilder>? usageContext;

  /// [exclude]
  /// When true, members with this characteristic are excluded from the
  /// element.
  FhirBooleanBuilder? exclude;

  /// [unitOfMeasure]
  /// Specifies the UCUM unit for the outcome.
  CodeableConceptBuilder? unitOfMeasure;

  /// [studyEffectiveDescription]
  /// A narrative description of the time period the study covers.
  FhirStringBuilder? studyEffectiveDescription;

  /// [studyEffectiveX]
  /// Indicates what effective period the study covers.
  StudyEffectiveXResearchElementDefinitionCharacteristicBuilder?
      studyEffectiveX;

  /// Getter for [studyEffectiveDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get studyEffectiveDateTime =>
      studyEffectiveX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [studyEffectivePeriod] as a PeriodBuilder
  PeriodBuilder? get studyEffectivePeriod =>
      studyEffectiveX?.isAs<PeriodBuilder>();

  /// Getter for [studyEffectiveDuration] as a FhirDurationBuilder
  FhirDurationBuilder? get studyEffectiveDuration =>
      studyEffectiveX?.isAs<FhirDurationBuilder>();

  /// Getter for [studyEffectiveTiming] as a TimingBuilder
  TimingBuilder? get studyEffectiveTiming =>
      studyEffectiveX?.isAs<TimingBuilder>();

  /// [studyEffectiveTimeFromStart]
  /// Indicates duration from the study initiation.
  FhirDurationBuilder? studyEffectiveTimeFromStart;

  /// [studyEffectiveGroupMeasure]
  /// Indicates how elements are aggregated within the study effective
  /// period.
  GroupMeasureBuilder? studyEffectiveGroupMeasure;

  /// [participantEffectiveDescription]
  /// A narrative description of the time period the study covers.
  FhirStringBuilder? participantEffectiveDescription;

  /// [participantEffectiveX]
  /// Indicates what effective period the study covers.
  ParticipantEffectiveXResearchElementDefinitionCharacteristicBuilder?
      participantEffectiveX;

  /// Getter for [participantEffectiveDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get participantEffectiveDateTime =>
      participantEffectiveX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [participantEffectivePeriod] as a PeriodBuilder
  PeriodBuilder? get participantEffectivePeriod =>
      participantEffectiveX?.isAs<PeriodBuilder>();

  /// Getter for [participantEffectiveDuration] as a FhirDurationBuilder
  FhirDurationBuilder? get participantEffectiveDuration =>
      participantEffectiveX?.isAs<FhirDurationBuilder>();

  /// Getter for [participantEffectiveTiming] as a TimingBuilder
  TimingBuilder? get participantEffectiveTiming =>
      participantEffectiveX?.isAs<TimingBuilder>();

  /// [participantEffectiveTimeFromStart]
  /// Indicates duration from the participant's study entry.
  FhirDurationBuilder? participantEffectiveTimeFromStart;

  /// [participantEffectiveGroupMeasure]
  /// Indicates how elements are aggregated within the study effective
  /// period.
  GroupMeasureBuilder? participantEffectiveGroupMeasure;

  /// Converts a [ResearchElementDefinitionCharacteristicBuilder]
  /// to [ResearchElementDefinitionCharacteristic]
  @override
  ResearchElementDefinitionCharacteristic build() =>
      ResearchElementDefinitionCharacteristic.fromJson(toJson());

  /// Converts a [ResearchElementDefinitionCharacteristicBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    if (definitionX != null) {
      final fhirType = definitionX!.fhirType;
      addField('definition${fhirType.capitalizeFirstLetter()}', definitionX);
    }

    addField('usageContext', usageContext);
    addField('exclude', exclude);
    addField('unitOfMeasure', unitOfMeasure);
    addField('studyEffectiveDescription', studyEffectiveDescription);
    if (studyEffectiveX != null) {
      final fhirType = studyEffectiveX!.fhirType;
      addField(
        'studyEffective${fhirType.capitalizeFirstLetter()}',
        studyEffectiveX,
      );
    }

    addField('studyEffectiveTimeFromStart', studyEffectiveTimeFromStart);
    addField('studyEffectiveGroupMeasure', studyEffectiveGroupMeasure);
    addField(
      'participantEffectiveDescription',
      participantEffectiveDescription,
    );
    if (participantEffectiveX != null) {
      final fhirType = participantEffectiveX!.fhirType;
      addField(
        'participantEffective${fhirType.capitalizeFirstLetter()}',
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (definitionX != null) {
          fields.add(definitionX!);
        }
      case 'definitionX':
        if (definitionX != null) {
          fields.add(definitionX!);
        }
      case 'definitionCodeableConcept':
        if (definitionX is CodeableConceptBuilder) {
          fields.add(definitionX!);
        }
      case 'definitionCanonical':
        if (definitionX is FhirCanonicalBuilder) {
          fields.add(definitionX!);
        }
      case 'definitionExpression':
        if (definitionX is FhirExpressionBuilder) {
          fields.add(definitionX!);
        }
      case 'definitionDataRequirement':
        if (definitionX is DataRequirementBuilder) {
          fields.add(definitionX!);
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
        if (studyEffectiveX != null) {
          fields.add(studyEffectiveX!);
        }
      case 'studyEffectiveX':
        if (studyEffectiveX != null) {
          fields.add(studyEffectiveX!);
        }
      case 'studyEffectiveDateTime':
        if (studyEffectiveX is FhirDateTimeBuilder) {
          fields.add(studyEffectiveX!);
        }
      case 'studyEffectivePeriod':
        if (studyEffectiveX is PeriodBuilder) {
          fields.add(studyEffectiveX!);
        }
      case 'studyEffectiveDuration':
        if (studyEffectiveX is FhirDurationBuilder) {
          fields.add(studyEffectiveX!);
        }
      case 'studyEffectiveTiming':
        if (studyEffectiveX is TimingBuilder) {
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
        if (participantEffectiveX != null) {
          fields.add(participantEffectiveX!);
        }
      case 'participantEffectiveX':
        if (participantEffectiveX != null) {
          fields.add(participantEffectiveX!);
        }
      case 'participantEffectiveDateTime':
        if (participantEffectiveX is FhirDateTimeBuilder) {
          fields.add(participantEffectiveX!);
        }
      case 'participantEffectivePeriod':
        if (participantEffectiveX is PeriodBuilder) {
          fields.add(participantEffectiveX!);
        }
      case 'participantEffectiveDuration':
        if (participantEffectiveX is FhirDurationBuilder) {
          fields.add(participantEffectiveX!);
        }
      case 'participantEffectiveTiming':
        if (participantEffectiveX is TimingBuilder) {
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'definition':
      case 'definitionX':
        {
          if (child
              is DefinitionXResearchElementDefinitionCharacteristicBuilder) {
            definitionX = child;
            return;
          } else {
            if (child is CodeableConceptBuilder) {
              definitionX = child;
              return;
            }
            if (child is FhirCanonicalBuilder) {
              definitionX = child;
              return;
            }
            if (child is FhirExpressionBuilder) {
              definitionX = child;
              return;
            }
            if (child is DataRequirementBuilder) {
              definitionX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'definitionCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            definitionX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'definitionCanonical':
        {
          if (child is FhirCanonicalBuilder) {
            definitionX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'definitionExpression':
        {
          if (child is FhirExpressionBuilder) {
            definitionX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'definitionDataRequirement':
        {
          if (child is DataRequirementBuilder) {
            definitionX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'usageContext':
        {
          if (child is List<UsageContextBuilder>) {
            // Replace or create new list
            usageContext = child;
            return;
          } else if (child is UsageContextBuilder) {
            // Add single element to existing list or create new list
            usageContext = [
              ...(usageContext ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'exclude':
        {
          if (child is FhirBooleanBuilder) {
            exclude = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                exclude = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'unitOfMeasure':
        {
          if (child is CodeableConceptBuilder) {
            unitOfMeasure = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'studyEffectiveDescription':
        {
          if (child is FhirStringBuilder) {
            studyEffectiveDescription = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                studyEffectiveDescription = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'studyEffective':
      case 'studyEffectiveX':
        {
          if (child
              is StudyEffectiveXResearchElementDefinitionCharacteristicBuilder) {
            studyEffectiveX = child;
            return;
          } else {
            if (child is FhirDateTimeBuilder) {
              studyEffectiveX = child;
              return;
            }
            if (child is PeriodBuilder) {
              studyEffectiveX = child;
              return;
            }
            if (child is FhirDurationBuilder) {
              studyEffectiveX = child;
              return;
            }
            if (child is TimingBuilder) {
              studyEffectiveX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'studyEffectiveDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            studyEffectiveX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'studyEffectivePeriod':
        {
          if (child is PeriodBuilder) {
            studyEffectiveX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'studyEffectiveDuration':
        {
          if (child is FhirDurationBuilder) {
            studyEffectiveX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'studyEffectiveTiming':
        {
          if (child is TimingBuilder) {
            studyEffectiveX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'studyEffectiveTimeFromStart':
        {
          if (child is FhirDurationBuilder) {
            studyEffectiveTimeFromStart = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'studyEffectiveGroupMeasure':
        {
          if (child is GroupMeasureBuilder) {
            studyEffectiveGroupMeasure = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = GroupMeasureBuilder(stringValue);
                studyEffectiveGroupMeasure = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'participantEffectiveDescription':
        {
          if (child is FhirStringBuilder) {
            participantEffectiveDescription = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                participantEffectiveDescription = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'participantEffective':
      case 'participantEffectiveX':
        {
          if (child
              is ParticipantEffectiveXResearchElementDefinitionCharacteristicBuilder) {
            participantEffectiveX = child;
            return;
          } else {
            if (child is FhirDateTimeBuilder) {
              participantEffectiveX = child;
              return;
            }
            if (child is PeriodBuilder) {
              participantEffectiveX = child;
              return;
            }
            if (child is FhirDurationBuilder) {
              participantEffectiveX = child;
              return;
            }
            if (child is TimingBuilder) {
              participantEffectiveX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'participantEffectiveDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            participantEffectiveX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'participantEffectivePeriod':
        {
          if (child is PeriodBuilder) {
            participantEffectiveX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'participantEffectiveDuration':
        {
          if (child is FhirDurationBuilder) {
            participantEffectiveX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'participantEffectiveTiming':
        {
          if (child is TimingBuilder) {
            participantEffectiveX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'participantEffectiveTimeFromStart':
        {
          if (child is FhirDurationBuilder) {
            participantEffectiveTimeFromStart = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'participantEffectiveGroupMeasure':
        {
          if (child is GroupMeasureBuilder) {
            participantEffectiveGroupMeasure = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = GroupMeasureBuilder(stringValue);
                participantEffectiveGroupMeasure = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'definition':
      case 'definitionX':
        return [
          'CodeableConceptBuilder',
          'FhirCanonicalBuilder',
          'FhirExpressionBuilder',
          'DataRequirementBuilder',
        ];
      case 'definitionCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'definitionCanonical':
        return ['FhirCanonicalBuilder'];
      case 'definitionExpression':
        return ['FhirExpressionBuilder'];
      case 'definitionDataRequirement':
        return ['DataRequirementBuilder'];
      case 'usageContext':
        return ['UsageContextBuilder'];
      case 'exclude':
        return ['FhirBooleanBuilder'];
      case 'unitOfMeasure':
        return ['CodeableConceptBuilder'];
      case 'studyEffectiveDescription':
        return ['FhirStringBuilder'];
      case 'studyEffective':
      case 'studyEffectiveX':
        return [
          'FhirDateTimeBuilder',
          'PeriodBuilder',
          'FhirDurationBuilder',
          'TimingBuilder',
        ];
      case 'studyEffectiveDateTime':
        return ['FhirDateTimeBuilder'];
      case 'studyEffectivePeriod':
        return ['PeriodBuilder'];
      case 'studyEffectiveDuration':
        return ['FhirDurationBuilder'];
      case 'studyEffectiveTiming':
        return ['TimingBuilder'];
      case 'studyEffectiveTimeFromStart':
        return ['FhirDurationBuilder'];
      case 'studyEffectiveGroupMeasure':
        return ['FhirCodeEnumBuilder'];
      case 'participantEffectiveDescription':
        return ['FhirStringBuilder'];
      case 'participantEffective':
      case 'participantEffectiveX':
        return [
          'FhirDateTimeBuilder',
          'PeriodBuilder',
          'FhirDurationBuilder',
          'TimingBuilder',
        ];
      case 'participantEffectiveDateTime':
        return ['FhirDateTimeBuilder'];
      case 'participantEffectivePeriod':
        return ['PeriodBuilder'];
      case 'participantEffectiveDuration':
        return ['FhirDurationBuilder'];
      case 'participantEffectiveTiming':
        return ['TimingBuilder'];
      case 'participantEffectiveTimeFromStart':
        return ['FhirDurationBuilder'];
      case 'participantEffectiveGroupMeasure':
        return ['FhirCodeEnumBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ResearchElementDefinitionCharacteristicBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'definition':
      case 'definitionX':
      case 'definitionCodeableConcept':
        {
          definitionX = CodeableConceptBuilder.empty();
          return;
        }
      case 'definitionCanonical':
        {
          definitionX = FhirCanonicalBuilder.empty();
          return;
        }
      case 'definitionExpression':
        {
          definitionX = FhirExpressionBuilder.empty();
          return;
        }
      case 'definitionDataRequirement':
        {
          definitionX = DataRequirementBuilder.empty();
          return;
        }
      case 'usageContext':
        {
          usageContext = <UsageContextBuilder>[];
          return;
        }
      case 'exclude':
        {
          exclude = FhirBooleanBuilder.empty();
          return;
        }
      case 'unitOfMeasure':
        {
          unitOfMeasure = CodeableConceptBuilder.empty();
          return;
        }
      case 'studyEffectiveDescription':
        {
          studyEffectiveDescription = FhirStringBuilder.empty();
          return;
        }
      case 'studyEffective':
      case 'studyEffectiveX':
      case 'studyEffectiveDateTime':
        {
          studyEffectiveX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'studyEffectivePeriod':
        {
          studyEffectiveX = PeriodBuilder.empty();
          return;
        }
      case 'studyEffectiveDuration':
        {
          studyEffectiveX = FhirDurationBuilder.empty();
          return;
        }
      case 'studyEffectiveTiming':
        {
          studyEffectiveX = TimingBuilder.empty();
          return;
        }
      case 'studyEffectiveTimeFromStart':
        {
          studyEffectiveTimeFromStart = FhirDurationBuilder.empty();
          return;
        }
      case 'studyEffectiveGroupMeasure':
        {
          studyEffectiveGroupMeasure = GroupMeasureBuilder.empty();
          return;
        }
      case 'participantEffectiveDescription':
        {
          participantEffectiveDescription = FhirStringBuilder.empty();
          return;
        }
      case 'participantEffective':
      case 'participantEffectiveX':
      case 'participantEffectiveDateTime':
        {
          participantEffectiveX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'participantEffectivePeriod':
        {
          participantEffectiveX = PeriodBuilder.empty();
          return;
        }
      case 'participantEffectiveDuration':
        {
          participantEffectiveX = FhirDurationBuilder.empty();
          return;
        }
      case 'participantEffectiveTiming':
        {
          participantEffectiveX = TimingBuilder.empty();
          return;
        }
      case 'participantEffectiveTimeFromStart':
        {
          participantEffectiveTimeFromStart = FhirDurationBuilder.empty();
          return;
        }
      case 'participantEffectiveGroupMeasure':
        {
          participantEffectiveGroupMeasure = GroupMeasureBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ResearchElementDefinitionCharacteristicBuilder clone() =>
      throw UnimplementedError();
  @override
  ResearchElementDefinitionCharacteristicBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    DefinitionXResearchElementDefinitionCharacteristicBuilder? definitionX,
    List<UsageContextBuilder>? usageContext,
    FhirBooleanBuilder? exclude,
    CodeableConceptBuilder? unitOfMeasure,
    FhirStringBuilder? studyEffectiveDescription,
    StudyEffectiveXResearchElementDefinitionCharacteristicBuilder?
        studyEffectiveX,
    FhirDurationBuilder? studyEffectiveTimeFromStart,
    GroupMeasureBuilder? studyEffectiveGroupMeasure,
    FhirStringBuilder? participantEffectiveDescription,
    ParticipantEffectiveXResearchElementDefinitionCharacteristicBuilder?
        participantEffectiveX,
    FhirDurationBuilder? participantEffectiveTimeFromStart,
    GroupMeasureBuilder? participantEffectiveGroupMeasure,
    CodeableConceptBuilder? definitionCodeableConcept,
    FhirCanonicalBuilder? definitionCanonical,
    FhirExpressionBuilder? definitionExpression,
    DataRequirementBuilder? definitionDataRequirement,
    FhirDateTimeBuilder? studyEffectiveDateTime,
    PeriodBuilder? studyEffectivePeriod,
    FhirDurationBuilder? studyEffectiveDuration,
    TimingBuilder? studyEffectiveTiming,
    FhirDateTimeBuilder? participantEffectiveDateTime,
    PeriodBuilder? participantEffectivePeriod,
    FhirDurationBuilder? participantEffectiveDuration,
    TimingBuilder? participantEffectiveTiming,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ResearchElementDefinitionCharacteristicBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      definitionX: definitionX ??
          definitionCodeableConcept ??
          definitionCanonical ??
          definitionExpression ??
          definitionDataRequirement ??
          this.definitionX,
      usageContext: usageContext ?? this.usageContext,
      exclude: exclude ?? this.exclude,
      unitOfMeasure: unitOfMeasure ?? this.unitOfMeasure,
      studyEffectiveDescription:
          studyEffectiveDescription ?? this.studyEffectiveDescription,
      studyEffectiveX: studyEffectiveX ??
          studyEffectiveDateTime ??
          studyEffectivePeriod ??
          studyEffectiveDuration ??
          studyEffectiveTiming ??
          this.studyEffectiveX,
      studyEffectiveTimeFromStart:
          studyEffectiveTimeFromStart ?? this.studyEffectiveTimeFromStart,
      studyEffectiveGroupMeasure:
          studyEffectiveGroupMeasure ?? this.studyEffectiveGroupMeasure,
      participantEffectiveDescription: participantEffectiveDescription ??
          this.participantEffectiveDescription,
      participantEffectiveX: participantEffectiveX ??
          participantEffectiveDateTime ??
          participantEffectivePeriod ??
          participantEffectiveDuration ??
          participantEffectiveTiming ??
          this.participantEffectiveX,
      participantEffectiveTimeFromStart: participantEffectiveTimeFromStart ??
          this.participantEffectiveTimeFromStart,
      participantEffectiveGroupMeasure: participantEffectiveGroupMeasure ??
          this.participantEffectiveGroupMeasure,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ResearchElementDefinitionCharacteristicBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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
    if (!listEquals<UsageContextBuilder>(
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
