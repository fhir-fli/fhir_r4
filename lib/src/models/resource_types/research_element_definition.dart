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
          resourceType: R4ResourceType.ResearchElementDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return ResearchElementDefinition(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      url: JsonParser.parsePrimitive<FhirUri>(
        json,
        'url',
        FhirUri.fromJson,
      ),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      version: JsonParser.parsePrimitive<FhirString>(
        json,
        'version',
        FhirString.fromJson,
      ),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      ),
      shortTitle: JsonParser.parsePrimitive<FhirString>(
        json,
        'shortTitle',
        FhirString.fromJson,
      ),
      subtitle: JsonParser.parsePrimitive<FhirString>(
        json,
        'subtitle',
        FhirString.fromJson,
      ),
      status: JsonParser.parsePrimitive<PublicationStatus>(
        json,
        'status',
        PublicationStatus.fromJson,
      )!,
      experimental: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'experimental',
        FhirBoolean.fromJson,
      ),
      subjectX:
          JsonParser.parsePolymorphic<SubjectXResearchElementDefinition>(json, {
        'subjectCodeableConcept': CodeableConcept.fromJson,
        'subjectReference': Reference.fromJson,
      }),
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
      ),
      publisher: JsonParser.parsePrimitive<FhirString>(
        json,
        'publisher',
        FhirString.fromJson,
      ),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      comment: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'comment',
        FhirString.fromJson,
      ),
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map<UsageContext>(
            (v) => UsageContext.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      purpose: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'purpose',
        FhirMarkdown.fromJson,
      ),
      usage: JsonParser.parsePrimitive<FhirString>(
        json,
        'usage',
        FhirString.fromJson,
      ),
      copyright: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'copyright',
        FhirMarkdown.fromJson,
      ),
      approvalDate: JsonParser.parsePrimitive<FhirDate>(
        json,
        'approvalDate',
        FhirDate.fromJson,
      ),
      lastReviewDate: JsonParser.parsePrimitive<FhirDate>(
        json,
        'lastReviewDate',
        FhirDate.fromJson,
      ),
      effectivePeriod: JsonParser.parseObject<Period>(
        json,
        'effectivePeriod',
        Period.fromJson,
      ),
      topic: (json['topic'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      author: (json['author'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      editor: (json['editor'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      reviewer: (json['reviewer'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      endorser: (json['endorser'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      relatedArtifact: (json['relatedArtifact'] as List<dynamic>?)
          ?.map<RelatedArtifact>(
            (v) => RelatedArtifact.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      library_: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'library',
        FhirCanonical.fromJson,
      ),
      type: JsonParser.parsePrimitive<ResearchElementType>(
        json,
        'type',
        ResearchElementType.fromJson,
      )!,
      variableType: JsonParser.parsePrimitive<VariableType>(
        json,
        'variableType',
        VariableType.fromJson,
      ),
      characteristic: (json['characteristic'] as List<dynamic>)
          .map<ResearchElementDefinitionCharacteristic>(
            (v) => ResearchElementDefinitionCharacteristic.fromJson(
              v as Map<String, dynamic>,
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
    if (json is Map<String, Object?>) {
      return ResearchElementDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      addField('id', id);
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      addField('implicitRules', implicitRules);
    }

    if (language != null) {
      addField('language', language);
    }

    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (url != null) {
      addField('url', url);
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    if (version != null) {
      addField('version', version);
    }

    if (name != null) {
      addField('name', name);
    }

    if (title != null) {
      addField('title', title);
    }

    if (shortTitle != null) {
      addField('shortTitle', shortTitle);
    }

    if (subtitle != null) {
      addField('subtitle', subtitle);
    }

    addField('status', status);
    if (experimental != null) {
      addField('experimental', experimental);
    }

    if (subjectX != null) {
      json['subject${subjectX!.fhirType.capitalize()}'] = subjectX!.toJson();
    }

    if (date != null) {
      addField('date', date);
    }

    if (publisher != null) {
      addField('publisher', publisher);
    }

    if (contact != null && contact!.isNotEmpty) {
      json['contact'] = contact!.map((e) => e.toJson()).toList();
    }

    if (description != null) {
      addField('description', description);
    }

    if (comment != null && comment!.isNotEmpty) {
      final fieldJson0 = comment!.map((e) => e.toJson()).toList();
      json['comment'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_comment'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] = useContext!.map((e) => e.toJson()).toList();
    }

    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      json['jurisdiction'] = jurisdiction!.map((e) => e.toJson()).toList();
    }

    if (purpose != null) {
      addField('purpose', purpose);
    }

    if (usage != null) {
      addField('usage', usage);
    }

    if (copyright != null) {
      addField('copyright', copyright);
    }

    if (approvalDate != null) {
      addField('approvalDate', approvalDate);
    }

    if (lastReviewDate != null) {
      addField('lastReviewDate', lastReviewDate);
    }

    if (effectivePeriod != null) {
      json['effectivePeriod'] = effectivePeriod!.toJson();
    }

    if (topic != null && topic!.isNotEmpty) {
      json['topic'] = topic!.map((e) => e.toJson()).toList();
    }

    if (author != null && author!.isNotEmpty) {
      json['author'] = author!.map((e) => e.toJson()).toList();
    }

    if (editor != null && editor!.isNotEmpty) {
      json['editor'] = editor!.map((e) => e.toJson()).toList();
    }

    if (reviewer != null && reviewer!.isNotEmpty) {
      json['reviewer'] = reviewer!.map((e) => e.toJson()).toList();
    }

    if (endorser != null && endorser!.isNotEmpty) {
      json['endorser'] = endorser!.map((e) => e.toJson()).toList();
    }

    if (relatedArtifact != null && relatedArtifact!.isNotEmpty) {
      json['relatedArtifact'] =
          relatedArtifact!.map((e) => e.toJson()).toList();
    }

    if (library_ != null && library_!.isNotEmpty) {
      final fieldJson1 = library_!.map((e) => e.toJson()).toList();
      json['library'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_library'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    addField('type', type);
    if (variableType != null) {
      addField('variableType', variableType);
    }

    if (characteristic.isNotEmpty) {
      json['characteristic'] = characteristic.map((e) => e.toJson()).toList();
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ResearchElementDefinition(
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
      subjectX: subjectX ?? this.subjectX,
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
    );
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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchElementDefinitionCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) {
    return ResearchElementDefinitionCharacteristic(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      definitionX: JsonParser.parsePolymorphic<
          DefinitionXResearchElementDefinitionCharacteristic>(json, {
        'definitionCodeableConcept': CodeableConcept.fromJson,
        'definitionCanonical': FhirCanonical.fromJson,
        'definitionExpression': FhirExpression.fromJson,
        'definitionDataRequirement': DataRequirement.fromJson,
      })!,
      usageContext: (json['usageContext'] as List<dynamic>?)
          ?.map<UsageContext>(
            (v) => UsageContext.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      exclude: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'exclude',
        FhirBoolean.fromJson,
      ),
      unitOfMeasure: JsonParser.parseObject<CodeableConcept>(
        json,
        'unitOfMeasure',
        CodeableConcept.fromJson,
      ),
      studyEffectiveDescription: JsonParser.parsePrimitive<FhirString>(
        json,
        'studyEffectiveDescription',
        FhirString.fromJson,
      ),
      studyEffectiveX: JsonParser.parsePolymorphic<
          StudyEffectiveXResearchElementDefinitionCharacteristic>(json, {
        'studyEffectiveDateTime': FhirDateTime.fromJson,
        'studyEffectivePeriod': Period.fromJson,
        'studyEffectiveDuration': FhirDuration.fromJson,
        'studyEffectiveTiming': Timing.fromJson,
      }),
      studyEffectiveTimeFromStart: JsonParser.parseObject<FhirDuration>(
        json,
        'studyEffectiveTimeFromStart',
        FhirDuration.fromJson,
      ),
      studyEffectiveGroupMeasure: JsonParser.parsePrimitive<GroupMeasure>(
        json,
        'studyEffectiveGroupMeasure',
        GroupMeasure.fromJson,
      ),
      participantEffectiveDescription: JsonParser.parsePrimitive<FhirString>(
        json,
        'participantEffectiveDescription',
        FhirString.fromJson,
      ),
      participantEffectiveX: JsonParser.parsePolymorphic<
          ParticipantEffectiveXResearchElementDefinitionCharacteristic>(json, {
        'participantEffectiveDateTime': FhirDateTime.fromJson,
        'participantEffectivePeriod': Period.fromJson,
        'participantEffectiveDuration': FhirDuration.fromJson,
        'participantEffectiveTiming': Timing.fromJson,
      }),
      participantEffectiveTimeFromStart: JsonParser.parseObject<FhirDuration>(
        json,
        'participantEffectiveTimeFromStart',
        FhirDuration.fromJson,
      ),
      participantEffectiveGroupMeasure: JsonParser.parsePrimitive<GroupMeasure>(
        json,
        'participantEffectiveGroupMeasure',
        GroupMeasure.fromJson,
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
    if (json is Map<String, Object?>) {
      return ResearchElementDefinitionCharacteristic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['definition${definitionX.fhirType.capitalize()}'] =
        definitionX.toJson();

    if (usageContext != null && usageContext!.isNotEmpty) {
      json['usageContext'] = usageContext!.map((e) => e.toJson()).toList();
    }

    if (exclude != null) {
      addField('exclude', exclude);
    }

    if (unitOfMeasure != null) {
      json['unitOfMeasure'] = unitOfMeasure!.toJson();
    }

    if (studyEffectiveDescription != null) {
      addField('studyEffectiveDescription', studyEffectiveDescription);
    }

    if (studyEffectiveX != null) {
      addField('studyEffective${studyEffectiveX!.fhirType.capitalize()}',
          studyEffectiveX);
    }

    if (studyEffectiveTimeFromStart != null) {
      json['studyEffectiveTimeFromStart'] =
          studyEffectiveTimeFromStart!.toJson();
    }

    if (studyEffectiveGroupMeasure != null) {
      addField('studyEffectiveGroupMeasure', studyEffectiveGroupMeasure);
    }

    if (participantEffectiveDescription != null) {
      addField(
          'participantEffectiveDescription', participantEffectiveDescription);
    }

    if (participantEffectiveX != null) {
      addField(
          'participantEffective${participantEffectiveX!.fhirType.capitalize()}',
          participantEffectiveX);
    }

    if (participantEffectiveTimeFromStart != null) {
      json['participantEffectiveTimeFromStart'] =
          participantEffectiveTimeFromStart!.toJson();
    }

    if (participantEffectiveGroupMeasure != null) {
      addField(
          'participantEffectiveGroupMeasure', participantEffectiveGroupMeasure);
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ResearchElementDefinitionCharacteristic(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      definitionX: definitionX ?? this.definitionX,
      usageContext: usageContext ?? this.usageContext,
      exclude: exclude ?? this.exclude,
      unitOfMeasure: unitOfMeasure ?? this.unitOfMeasure,
      studyEffectiveDescription:
          studyEffectiveDescription ?? this.studyEffectiveDescription,
      studyEffectiveX: studyEffectiveX ?? this.studyEffectiveX,
      studyEffectiveTimeFromStart:
          studyEffectiveTimeFromStart ?? this.studyEffectiveTimeFromStart,
      studyEffectiveGroupMeasure:
          studyEffectiveGroupMeasure ?? this.studyEffectiveGroupMeasure,
      participantEffectiveDescription: participantEffectiveDescription ??
          this.participantEffectiveDescription,
      participantEffectiveX:
          participantEffectiveX ?? this.participantEffectiveX,
      participantEffectiveTimeFromStart: participantEffectiveTimeFromStart ??
          this.participantEffectiveTimeFromStart,
      participantEffectiveGroupMeasure: participantEffectiveGroupMeasure ??
          this.participantEffectiveGroupMeasure,
    );
  }
}
