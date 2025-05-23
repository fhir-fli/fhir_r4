import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'research_element_definition.g.dart';

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
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
      subjectX: JsonParser.parsePolymorphic<SubjectXResearchElementDefinition>(
        json,
        {
          'subjectCodeableConcept': CodeableConcept.fromJson,
          'subjectReference': Reference.fromJson,
        },
      ),
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
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      author: (json['author'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      editor: (json['editor'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      reviewer: (json['reviewer'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      endorser: (json['endorser'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      relatedArtifact: (json['relatedArtifact'] as List<dynamic>?)
          ?.map<RelatedArtifact>(
            (v) => RelatedArtifact.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
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
  ResearchElementDefinition clone() => copyWith();

  /// Copy function for [ResearchElementDefinition]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ResearchElementDefinitionCopyWith<ResearchElementDefinition> get copyWith =>
      _$ResearchElementDefinitionCopyWithImpl<ResearchElementDefinition>(
        this,
        (value) => value,
      );

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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
      )!,
      usageContext: (json['usageContext'] as List<dynamic>?)
          ?.map<UsageContext>(
            (v) => UsageContext.fromJson(
              {...v as Map<String, dynamic>},
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
          StudyEffectiveXResearchElementDefinitionCharacteristic>(
        json,
        {
          'studyEffectiveDateTime': FhirDateTime.fromJson,
          'studyEffectivePeriod': Period.fromJson,
          'studyEffectiveDuration': FhirDuration.fromJson,
          'studyEffectiveTiming': Timing.fromJson,
        },
      ),
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
          ParticipantEffectiveXResearchElementDefinitionCharacteristic>(
        json,
        {
          'participantEffectiveDateTime': FhirDateTime.fromJson,
          'participantEffectivePeriod': Period.fromJson,
          'participantEffectiveDuration': FhirDuration.fromJson,
          'participantEffectiveTiming': Timing.fromJson,
        },
      ),
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
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
  ResearchElementDefinitionCharacteristic clone() => copyWith();

  /// Copy function for [ResearchElementDefinitionCharacteristic]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ResearchElementDefinitionCharacteristicCopyWith<
          ResearchElementDefinitionCharacteristic>
      get copyWith => _$ResearchElementDefinitionCharacteristicCopyWithImpl<
              ResearchElementDefinitionCharacteristic>(
            this,
            (value) => value,
          );

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
