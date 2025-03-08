import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [PlanDefinition]
/// This resource allows for the definition of various types of plans as a
/// sharable, consumable, and executable artifact. The resource is general
/// enough to support the description of a broad range of clinical and
/// non-clinical artifacts such as clinical decision support rules, order
/// sets, protocols, and drug quality specifications.
class PlanDefinition extends CanonicalResource {
  /// Primary constructor for
  /// [PlanDefinition]

  const PlanDefinition({
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
    this.type,
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
    this.goal,
    this.action,
  }) : super(
          objectPath: 'PlanDefinition',
          resourceType: R4ResourceType.PlanDefinition,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory PlanDefinition.empty() => PlanDefinition(
        status: PublicationStatus.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PlanDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PlanDefinition';
    return PlanDefinition(
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
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
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
      subjectX: JsonParser.parsePolymorphic<SubjectXPlanDefinition>(
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
      goal: (json['goal'] as List<dynamic>?)
          ?.map<PlanDefinitionGoal>(
            (v) => PlanDefinitionGoal.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.goal',
              },
            ),
          )
          .toList(),
      action: (json['action'] as List<dynamic>?)
          ?.map<PlanDefinitionAction>(
            (v) => PlanDefinitionAction.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.action',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [PlanDefinition]
  /// from a [String] or [YamlMap] object
  factory PlanDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PlanDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PlanDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PlanDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PlanDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PlanDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PlanDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PlanDefinition';

  /// [identifier]
  /// A formal identifier that is used to identify this plan definition when
  /// it is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  final List<Identifier>? identifier;

  /// [name]
  /// A natural language name identifying the plan definition. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the plan definition.
  final FhirString? title;

  /// [subtitle]
  /// An explanatory or alternate title for the plan definition giving
  /// additional information about its content.
  final FhirString? subtitle;

  /// [type]
  /// A high-level category for the plan definition that distinguishes the
  /// kinds of systems that would be interested in the plan definition.
  final CodeableConcept? type;

  /// [subjectX]
  /// A code, group definition, or canonical reference that describes or
  /// identifies the intended subject of the plan definition. Canonical
  /// references are allowed to support the definition of protocols for drug
  /// and substance quality specifications, and is allowed to reference a
  /// MedicinalProductDefinition, SubstanceDefinition,
  /// AdministrableProductDefinition, ManufacturedItemDefinition, or
  /// PackagedProductDefinition resource.
  final SubjectXPlanDefinition? subjectX;

  /// Getter for [subjectCodeableConcept] as a CodeableConcept
  CodeableConcept? get subjectCodeableConcept =>
      subjectX?.isAs<CodeableConcept>();

  /// Getter for [subjectReference] as a Reference
  Reference? get subjectReference => subjectX?.isAs<Reference>();

  /// Getter for [subjectCanonical] as a FhirCanonical
  FhirCanonical? get subjectCanonical => subjectX?.isAs<FhirCanonical>();

  /// [purpose]
  /// Explanation of why this plan definition is needed and why it has been
  /// designed as it has.
  final FhirMarkdown? purpose;

  /// [usage]
  /// A detailed description of how the plan definition is used from a
  /// clinical perspective.
  final FhirString? usage;

  /// [copyright]
  /// A copyright statement relating to the plan definition and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the plan definition.
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
  /// The period during which the plan definition content was or is planned
  /// to be in active use.
  final Period? effectivePeriod;

  /// [topic]
  /// Descriptive topics related to the content of the plan definition.
  /// Topics provide a high-level categorization of the definition that can
  /// be useful for filtering and searching.
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
  /// the plan definition.
  final List<FhirCanonical>? library_;

  /// [goal]
  /// A goal describes an expected outcome that activities within the plan
  /// are intended to achieve. For example, weight loss, restoring an
  /// activity of daily living, obtaining herd immunity via immunization,
  /// meeting a process improvement objective, meeting the acceptance
  /// criteria for a test as specified by a quality specification, etc.
  final List<PlanDefinitionGoal>? goal;

  /// [action]
  /// An action or group of actions to be taken as part of the plan. For
  /// example, in clinical care, an action would be to prescribe a particular
  /// indicated medication, or perform a particular test as appropriate. In
  /// pharmaceutical quality, an action would be the test that needs to be
  /// performed on a drug product as defined in the quality specification.
  final List<PlanDefinitionAction>? action;
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
    addField('subtitle', subtitle);
    addField('type', type);
    addField('status', status);
    addField('experimental', experimental);
    if (subjectX != null) {
      final fhirType = subjectX!.fhirType;
      addField('subject${fhirType.capitalize()}', subjectX);
    }

    addField('date', date);
    addField('publisher', publisher);
    addField('contact', contact);
    addField('description', description);
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
    addField('goal', goal);
    addField('action', action);
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
      'type',
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
      'goal',
      'action',
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
      case 'type':
        if (type != null) {
          fields.add(type!);
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
      case 'goal':
        if (goal != null) {
          fields.addAll(goal!);
        }
      case 'action':
        if (action != null) {
          fields.addAll(action!);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            return copyWith(contained: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'url':
        {
          if (child is FhirUri) {
            return copyWith(url: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            return copyWith(identifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'version':
        {
          if (child is FhirString) {
            return copyWith(version: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'name':
        {
          if (child is FhirString) {
            return copyWith(name: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'title':
        {
          if (child is FhirString) {
            return copyWith(title: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'subtitle':
        {
          if (child is FhirString) {
            return copyWith(subtitle: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'status':
        {
          if (child is PublicationStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'experimental':
        {
          if (child is FhirBoolean) {
            return copyWith(experimental: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'subjectX':
        {
          if (child is SubjectXPlanDefinition) {
            // child is e.g. SubjectX union
            return copyWith(subjectX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'subjectCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(subjectX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'subjectReference':
        {
          if (child is Reference) {
            return copyWith(subjectX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'subjectFhirCanonical':
        {
          if (child is FhirCanonical) {
            return copyWith(subjectX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'date':
        {
          if (child is FhirDateTime) {
            return copyWith(date: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'publisher':
        {
          if (child is FhirString) {
            return copyWith(publisher: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'contact':
        {
          if (child is List<ContactDetail>) {
            return copyWith(contact: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'description':
        {
          if (child is FhirMarkdown) {
            return copyWith(description: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'useContext':
        {
          if (child is List<UsageContext>) {
            return copyWith(useContext: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'jurisdiction':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(jurisdiction: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'purpose':
        {
          if (child is FhirMarkdown) {
            return copyWith(purpose: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'usage':
        {
          if (child is FhirString) {
            return copyWith(usage: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'copyright':
        {
          if (child is FhirMarkdown) {
            return copyWith(copyright: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'approvalDate':
        {
          if (child is FhirDate) {
            return copyWith(approvalDate: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'lastReviewDate':
        {
          if (child is FhirDate) {
            return copyWith(lastReviewDate: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'effectivePeriod':
        {
          if (child is Period) {
            return copyWith(effectivePeriod: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'topic':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(topic: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'author':
        {
          if (child is List<ContactDetail>) {
            return copyWith(author: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'editor':
        {
          if (child is List<ContactDetail>) {
            return copyWith(editor: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'reviewer':
        {
          if (child is List<ContactDetail>) {
            return copyWith(reviewer: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'endorser':
        {
          if (child is List<ContactDetail>) {
            return copyWith(endorser: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'relatedArtifact':
        {
          if (child is List<RelatedArtifact>) {
            return copyWith(relatedArtifact: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'library':
        {
          if (child is List<FhirCanonical>) {
            return copyWith(library_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'goal':
        {
          if (child is List<PlanDefinitionGoal>) {
            return copyWith(goal: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'action':
        {
          if (child is List<PlanDefinitionAction>) {
            return copyWith(action: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
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
      case 'type':
        return ['CodeableConcept'];
      case 'status':
        return ['FhirCode'];
      case 'experimental':
        return ['FhirBoolean'];
      case 'subject':
      case 'subjectX':
        return ['CodeableConcept', 'Reference', 'FhirCanonical'];
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
      case 'goal':
        return ['PlanDefinitionGoal'];
      case 'action':
        return ['PlanDefinitionAction'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [PlanDefinition]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  PlanDefinition createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'meta':
        {
          return copyWith(meta: FhirMeta.empty());
        }
      case 'implicitRules':
        {
          return copyWith(implicitRules: FhirUri.empty());
        }
      case 'language':
        {
          return copyWith(language: CommonLanguages.empty());
        }
      case 'text':
        {
          return copyWith(text: Narrative.empty());
        }
      case 'contained':
        {
          return copyWith(contained: <Resource>[]);
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'url':
        {
          return copyWith(url: FhirUri.empty());
        }
      case 'identifier':
        {
          return copyWith(identifier: <Identifier>[]);
        }
      case 'version':
        {
          return copyWith(version: FhirString.empty());
        }
      case 'name':
        {
          return copyWith(name: FhirString.empty());
        }
      case 'title':
        {
          return copyWith(title: FhirString.empty());
        }
      case 'subtitle':
        {
          return copyWith(subtitle: FhirString.empty());
        }
      case 'type':
        {
          return copyWith(type: CodeableConcept.empty());
        }
      case 'status':
        {
          return copyWith(status: PublicationStatus.empty());
        }
      case 'experimental':
        {
          return copyWith(experimental: FhirBoolean.empty());
        }
      case 'subject':
      case 'subjectX':
      case 'subjectCodeableConcept':
        {
          return copyWith(subjectX: CodeableConcept.empty());
        }
      case 'subjectReference':
        {
          return copyWith(subjectX: Reference.empty());
        }
      case 'subjectCanonical':
        {
          return copyWith(subjectX: FhirCanonical.empty());
        }
      case 'date':
        {
          return copyWith(date: FhirDateTime.empty());
        }
      case 'publisher':
        {
          return copyWith(publisher: FhirString.empty());
        }
      case 'contact':
        {
          return copyWith(contact: <ContactDetail>[]);
        }
      case 'description':
        {
          return copyWith(description: FhirMarkdown.empty());
        }
      case 'useContext':
        {
          return copyWith(useContext: <UsageContext>[]);
        }
      case 'jurisdiction':
        {
          return copyWith(jurisdiction: <CodeableConcept>[]);
        }
      case 'purpose':
        {
          return copyWith(purpose: FhirMarkdown.empty());
        }
      case 'usage':
        {
          return copyWith(usage: FhirString.empty());
        }
      case 'copyright':
        {
          return copyWith(copyright: FhirMarkdown.empty());
        }
      case 'approvalDate':
        {
          return copyWith(approvalDate: FhirDate.empty());
        }
      case 'lastReviewDate':
        {
          return copyWith(lastReviewDate: FhirDate.empty());
        }
      case 'effectivePeriod':
        {
          return copyWith(effectivePeriod: Period.empty());
        }
      case 'topic':
        {
          return copyWith(topic: <CodeableConcept>[]);
        }
      case 'author':
        {
          return copyWith(author: <ContactDetail>[]);
        }
      case 'editor':
        {
          return copyWith(editor: <ContactDetail>[]);
        }
      case 'reviewer':
        {
          return copyWith(reviewer: <ContactDetail>[]);
        }
      case 'endorser':
        {
          return copyWith(endorser: <ContactDetail>[]);
        }
      case 'relatedArtifact':
        {
          return copyWith(relatedArtifact: <RelatedArtifact>[]);
        }
      case 'library':
        {
          return copyWith(library_: <FhirCanonical>[]);
        }
      case 'goal':
        {
          return copyWith(goal: <PlanDefinitionGoal>[]);
        }
      case 'action':
        {
          return copyWith(action: <PlanDefinitionAction>[]);
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  PlanDefinition clear({
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
    bool type = false,
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
    bool goal = false,
    bool action = false,
  }) {
    return PlanDefinition(
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
      type: type ? null : this.type,
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
      goal: goal ? null : this.goal,
      action: action ? null : this.action,
    );
  }

  @override
  PlanDefinition clone() => throw UnimplementedError();
  @override
  PlanDefinition copyWith({
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
    CodeableConcept? type,
    PublicationStatus? status,
    FhirBoolean? experimental,
    SubjectXPlanDefinition? subjectX,
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
    List<PlanDefinitionGoal>? goal,
    List<PlanDefinitionAction>? action,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return PlanDefinition(
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
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
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
          ) as SubjectXPlanDefinition? ??
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
      goal: goal
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.goal',
                ),
              )
              .toList() ??
          this.goal,
      action: action
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.action',
                ),
              )
              .toList() ??
          this.action,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! PlanDefinition) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!equalsDeepWithNull(meta, o.meta)) {
      return false;
    }
    if (!equalsDeepWithNull(implicitRules, o.implicitRules)) {
      return false;
    }
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
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
    if (!equalsDeepWithNull(url, o.url)) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(version, o.version)) {
      return false;
    }
    if (!equalsDeepWithNull(name, o.name)) {
      return false;
    }
    if (!equalsDeepWithNull(title, o.title)) {
      return false;
    }
    if (!equalsDeepWithNull(subtitle, o.subtitle)) {
      return false;
    }
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!equalsDeepWithNull(experimental, o.experimental)) {
      return false;
    }
    if (!equalsDeepWithNull(subjectX, o.subjectX)) {
      return false;
    }
    if (!equalsDeepWithNull(date, o.date)) {
      return false;
    }
    if (!equalsDeepWithNull(publisher, o.publisher)) {
      return false;
    }
    if (!listEquals<ContactDetail>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(description, o.description)) {
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
    if (!equalsDeepWithNull(purpose, o.purpose)) {
      return false;
    }
    if (!equalsDeepWithNull(usage, o.usage)) {
      return false;
    }
    if (!equalsDeepWithNull(copyright, o.copyright)) {
      return false;
    }
    if (!equalsDeepWithNull(approvalDate, o.approvalDate)) {
      return false;
    }
    if (!equalsDeepWithNull(lastReviewDate, o.lastReviewDate)) {
      return false;
    }
    if (!equalsDeepWithNull(effectivePeriod, o.effectivePeriod)) {
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
    if (!listEquals<PlanDefinitionGoal>(
      goal,
      o.goal,
    )) {
      return false;
    }
    if (!listEquals<PlanDefinitionAction>(
      action,
      o.action,
    )) {
      return false;
    }
    return true;
  }
}

/// [PlanDefinitionGoal]
/// A goal describes an expected outcome that activities within the plan
/// are intended to achieve. For example, weight loss, restoring an
/// activity of daily living, obtaining herd immunity via immunization,
/// meeting a process improvement objective, meeting the acceptance
/// criteria for a test as specified by a quality specification, etc.
class PlanDefinitionGoal extends BackboneElement {
  /// Primary constructor for
  /// [PlanDefinitionGoal]

  const PlanDefinitionGoal({
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
    super.disallowExtensions,
  }) : super(
          objectPath: 'PlanDefinition.goal',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory PlanDefinitionGoal.empty() => PlanDefinitionGoal(
        description: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PlanDefinitionGoal.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PlanDefinition.goal';
    return PlanDefinitionGoal(
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
      category: JsonParser.parseObject<CodeableConcept>(
        json,
        'category',
        CodeableConcept.fromJson,
        '$objectPath.category',
      ),
      description: JsonParser.parseObject<CodeableConcept>(
        json,
        'description',
        CodeableConcept.fromJson,
        '$objectPath.description',
      )!,
      priority: JsonParser.parseObject<CodeableConcept>(
        json,
        'priority',
        CodeableConcept.fromJson,
        '$objectPath.priority',
      ),
      start: JsonParser.parseObject<CodeableConcept>(
        json,
        'start',
        CodeableConcept.fromJson,
        '$objectPath.start',
      ),
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.addresses',
              },
            ),
          )
          .toList(),
      documentation: (json['documentation'] as List<dynamic>?)
          ?.map<RelatedArtifact>(
            (v) => RelatedArtifact.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.documentation',
              },
            ),
          )
          .toList(),
      target: (json['target'] as List<dynamic>?)
          ?.map<PlanDefinitionTarget>(
            (v) => PlanDefinitionTarget.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.target',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [PlanDefinitionGoal]
  /// from a [String] or [YamlMap] object
  factory PlanDefinitionGoal.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PlanDefinitionGoal.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PlanDefinitionGoal.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PlanDefinitionGoal '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PlanDefinitionGoal]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PlanDefinitionGoal.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PlanDefinitionGoal.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PlanDefinitionGoal';

  /// [category]
  /// Indicates a category the goal falls within.
  final CodeableConcept? category;

  /// [description]
  /// Human-readable and/or coded description of a specific desired objective
  /// of care, such as "control blood pressure" or "negotiate an obstacle
  /// course" or "dance with child at wedding".
  final CodeableConcept description;

  /// [priority]
  /// Identifies the expected level of importance associated with
  /// reaching/sustaining the defined goal.
  final CodeableConcept? priority;

  /// [start]
  /// The event after which the goal should begin being pursued.
  final CodeableConcept? start;

  /// [addresses]
  /// Identifies problems, conditions, issues, or concerns the goal is
  /// intended to address.
  final List<CodeableConcept>? addresses;

  /// [documentation]
  /// Didactic or other informational resources associated with the goal that
  /// provide further supporting information about the goal. Information
  /// resources can include inline text commentary and links to web
  /// resources.
  final List<RelatedArtifact>? documentation;

  /// [target]
  /// Indicates what should be done and within what timeframe.
  final List<PlanDefinitionTarget>? target;
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

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('category', category);
    addField('description', description);
    addField('priority', priority);
    addField('start', start);
    addField('addresses', addresses);
    addField('documentation', documentation);
    addField('target', target);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'category',
      'description',
      'priority',
      'start',
      'addresses',
      'documentation',
      'target',
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
      case 'category':
        if (category != null) {
          fields.add(category!);
        }
      case 'description':
        fields.add(description);
      case 'priority':
        if (priority != null) {
          fields.add(priority!);
        }
      case 'start':
        if (start != null) {
          fields.add(start!);
        }
      case 'addresses':
        if (addresses != null) {
          fields.addAll(addresses!);
        }
      case 'documentation':
        if (documentation != null) {
          fields.addAll(documentation!);
        }
      case 'target':
        if (target != null) {
          fields.addAll(target!);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'category':
        {
          if (child is CodeableConcept) {
            return copyWith(category: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'description':
        {
          if (child is CodeableConcept) {
            return copyWith(description: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'priority':
        {
          if (child is CodeableConcept) {
            return copyWith(priority: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'start':
        {
          if (child is CodeableConcept) {
            return copyWith(start: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'addresses':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(addresses: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'documentation':
        {
          if (child is List<RelatedArtifact>) {
            return copyWith(documentation: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'target':
        {
          if (child is List<PlanDefinitionTarget>) {
            return copyWith(target: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
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
      case 'category':
        return ['CodeableConcept'];
      case 'description':
        return ['CodeableConcept'];
      case 'priority':
        return ['CodeableConcept'];
      case 'start':
        return ['CodeableConcept'];
      case 'addresses':
        return ['CodeableConcept'];
      case 'documentation':
        return ['RelatedArtifact'];
      case 'target':
        return ['PlanDefinitionTarget'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [PlanDefinitionGoal]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  PlanDefinitionGoal createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'category':
        {
          return copyWith(category: CodeableConcept.empty());
        }
      case 'description':
        {
          return copyWith(description: CodeableConcept.empty());
        }
      case 'priority':
        {
          return copyWith(priority: CodeableConcept.empty());
        }
      case 'start':
        {
          return copyWith(start: CodeableConcept.empty());
        }
      case 'addresses':
        {
          return copyWith(addresses: <CodeableConcept>[]);
        }
      case 'documentation':
        {
          return copyWith(documentation: <RelatedArtifact>[]);
        }
      case 'target':
        {
          return copyWith(target: <PlanDefinitionTarget>[]);
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  PlanDefinitionGoal clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool category = false,
    bool priority = false,
    bool start = false,
    bool addresses = false,
    bool documentation = false,
    bool target = false,
  }) {
    return PlanDefinitionGoal(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      category: category ? null : this.category,
      description: description,
      priority: priority ? null : this.priority,
      start: start ? null : this.start,
      addresses: addresses ? null : this.addresses,
      documentation: documentation ? null : this.documentation,
      target: target ? null : this.target,
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return PlanDefinitionGoal(
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
      category: category?.copyWith(
            objectPath: '$newObjectPath.category',
          ) ??
          this.category,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      priority: priority?.copyWith(
            objectPath: '$newObjectPath.priority',
          ) ??
          this.priority,
      start: start?.copyWith(
            objectPath: '$newObjectPath.start',
          ) ??
          this.start,
      addresses: addresses
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.addresses',
                ),
              )
              .toList() ??
          this.addresses,
      documentation: documentation
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.documentation',
                ),
              )
              .toList() ??
          this.documentation,
      target: target
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.target',
                ),
              )
              .toList() ??
          this.target,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! PlanDefinitionGoal) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(category, o.category)) {
      return false;
    }
    if (!equalsDeepWithNull(description, o.description)) {
      return false;
    }
    if (!equalsDeepWithNull(priority, o.priority)) {
      return false;
    }
    if (!equalsDeepWithNull(start, o.start)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      addresses,
      o.addresses,
    )) {
      return false;
    }
    if (!listEquals<RelatedArtifact>(
      documentation,
      o.documentation,
    )) {
      return false;
    }
    if (!listEquals<PlanDefinitionTarget>(
      target,
      o.target,
    )) {
      return false;
    }
    return true;
  }
}

/// [PlanDefinitionTarget]
/// Indicates what should be done and within what timeframe.
class PlanDefinitionTarget extends BackboneElement {
  /// Primary constructor for
  /// [PlanDefinitionTarget]

  const PlanDefinitionTarget({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.measure,
    this.detailX,
    this.due,
    super.disallowExtensions,
  }) : super(
          objectPath: 'PlanDefinition.goal.target',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory PlanDefinitionTarget.empty() => const PlanDefinitionTarget();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PlanDefinitionTarget.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PlanDefinition.goal.target';
    return PlanDefinitionTarget(
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
      measure: JsonParser.parseObject<CodeableConcept>(
        json,
        'measure',
        CodeableConcept.fromJson,
        '$objectPath.measure',
      ),
      detailX: JsonParser.parsePolymorphic<DetailXPlanDefinitionTarget>(
        json,
        {
          'detailQuantity': Quantity.fromJson,
          'detailRange': Range.fromJson,
          'detailCodeableConcept': CodeableConcept.fromJson,
        },
        objectPath,
      ),
      due: JsonParser.parseObject<FhirDuration>(
        json,
        'due',
        FhirDuration.fromJson,
        '$objectPath.due',
      ),
    );
  }

  /// Deserialize [PlanDefinitionTarget]
  /// from a [String] or [YamlMap] object
  factory PlanDefinitionTarget.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PlanDefinitionTarget.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PlanDefinitionTarget.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PlanDefinitionTarget '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PlanDefinitionTarget]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PlanDefinitionTarget.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PlanDefinitionTarget.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PlanDefinitionTarget';

  /// [measure]
  /// The parameter whose value is to be tracked, e.g. body weight, blood
  /// pressure, or hemoglobin A1c level.
  final CodeableConcept? measure;

  /// [detailX]
  /// The target value of the measure to be achieved to signify fulfillment
  /// of the goal, e.g. 150 pounds or 7.0%, or in the case of pharmaceutical
  /// quality - NMT 0.6%, Clear solution, etc. Either the high or low or both
  /// values of the range can be specified. When a low value is missing, it
  /// indicates that the goal is achieved at any value at or below the high
  /// value. Similarly, if the high value is missing, it indicates that the
  /// goal is achieved at any value at or above the low value.
  final DetailXPlanDefinitionTarget? detailX;

  /// Getter for [detailQuantity] as a Quantity
  Quantity? get detailQuantity => detailX?.isAs<Quantity>();

  /// Getter for [detailRange] as a Range
  Range? get detailRange => detailX?.isAs<Range>();

  /// Getter for [detailCodeableConcept] as a CodeableConcept
  CodeableConcept? get detailCodeableConcept =>
      detailX?.isAs<CodeableConcept>();

  /// [due]
  /// Indicates the timeframe after the start of the goal in which the goal
  /// should be met.
  final FhirDuration? due;
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

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('measure', measure);
    if (detailX != null) {
      final fhirType = detailX!.fhirType;
      addField('detail${fhirType.capitalize()}', detailX);
    }

    addField('due', due);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'measure',
      'detailX',
      'due',
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
      case 'measure':
        if (measure != null) {
          fields.add(measure!);
        }
      case 'detail':
        fields.add(detailX!);
      case 'detailX':
        fields.add(detailX!);
      case 'detailQuantity':
        if (detailX is Quantity) {
          fields.add(detailX!);
        }
      case 'detailRange':
        if (detailX is Range) {
          fields.add(detailX!);
        }
      case 'detailCodeableConcept':
        if (detailX is CodeableConcept) {
          fields.add(detailX!);
        }
      case 'due':
        if (due != null) {
          fields.add(due!);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'measure':
        {
          if (child is CodeableConcept) {
            return copyWith(measure: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'detailX':
        {
          if (child is DetailXPlanDefinitionTarget) {
            // child is e.g. SubjectX union
            return copyWith(detailX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'detailQuantity':
        {
          if (child is Quantity) {
            return copyWith(detailX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'detailRange':
        {
          if (child is Range) {
            return copyWith(detailX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'detailCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(detailX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'due':
        {
          if (child is FhirDuration) {
            return copyWith(due: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
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
      case 'measure':
        return ['CodeableConcept'];
      case 'detail':
      case 'detailX':
        return ['Quantity', 'Range', 'CodeableConcept'];
      case 'detailQuantity':
        return ['Quantity'];
      case 'detailRange':
        return ['Range'];
      case 'detailCodeableConcept':
        return ['CodeableConcept'];
      case 'due':
        return ['FhirDuration'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [PlanDefinitionTarget]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  PlanDefinitionTarget createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'measure':
        {
          return copyWith(measure: CodeableConcept.empty());
        }
      case 'detail':
      case 'detailX':
      case 'detailQuantity':
        {
          return copyWith(detailX: Quantity.empty());
        }
      case 'detailRange':
        {
          return copyWith(detailX: Range.empty());
        }
      case 'detailCodeableConcept':
        {
          return copyWith(detailX: CodeableConcept.empty());
        }
      case 'due':
        {
          return copyWith(due: FhirDuration.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  PlanDefinitionTarget clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool measure = false,
    bool detail = false,
    bool due = false,
  }) {
    return PlanDefinitionTarget(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      measure: measure ? null : this.measure,
      detailX: detail ? null : detailX,
      due: due ? null : this.due,
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
    DetailXPlanDefinitionTarget? detailX,
    FhirDuration? due,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return PlanDefinitionTarget(
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
      measure: measure?.copyWith(
            objectPath: '$newObjectPath.measure',
          ) ??
          this.measure,
      detailX: detailX?.copyWith(
            objectPath: '$newObjectPath.detailX',
          ) as DetailXPlanDefinitionTarget? ??
          this.detailX,
      due: due?.copyWith(
            objectPath: '$newObjectPath.due',
          ) ??
          this.due,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! PlanDefinitionTarget) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(measure, o.measure)) {
      return false;
    }
    if (!equalsDeepWithNull(detailX, o.detailX)) {
      return false;
    }
    if (!equalsDeepWithNull(due, o.due)) {
      return false;
    }
    return true;
  }
}

/// [PlanDefinitionAction]
/// An action or group of actions to be taken as part of the plan. For
/// example, in clinical care, an action would be to prescribe a particular
/// indicated medication, or perform a particular test as appropriate. In
/// pharmaceutical quality, an action would be the test that needs to be
/// performed on a drug product as defined in the quality specification.
class PlanDefinitionAction extends BackboneElement {
  /// Primary constructor for
  /// [PlanDefinitionAction]

  const PlanDefinitionAction({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.prefix,
    this.title,
    this.description,
    this.textEquivalent,
    this.priority,
    this.code,
    this.reason,
    this.documentation,
    this.goalId,
    this.subjectX,
    this.trigger,
    this.condition,
    this.input,
    this.output,
    this.relatedAction,
    this.timingX,
    this.participant,
    this.type,
    this.groupingBehavior,
    this.selectionBehavior,
    this.requiredBehavior,
    this.precheckBehavior,
    this.cardinalityBehavior,
    this.definitionX,
    this.transform,
    this.dynamicValue,
    this.action,
    super.disallowExtensions,
  }) : super(
          objectPath: 'PlanDefinition.action',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory PlanDefinitionAction.empty() => const PlanDefinitionAction();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PlanDefinitionAction.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PlanDefinition.action';
    return PlanDefinitionAction(
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
      prefix: JsonParser.parsePrimitive<FhirString>(
        json,
        'prefix',
        FhirString.fromJson,
        '$objectPath.prefix',
      ),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
        '$objectPath.title',
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      textEquivalent: JsonParser.parsePrimitive<FhirString>(
        json,
        'textEquivalent',
        FhirString.fromJson,
        '$objectPath.textEquivalent',
      ),
      priority: JsonParser.parsePrimitive<RequestPriority>(
        json,
        'priority',
        RequestPriority.fromJson,
        '$objectPath.priority',
      ),
      code: (json['code'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.code',
              },
            ),
          )
          .toList(),
      reason: (json['reason'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reason',
              },
            ),
          )
          .toList(),
      documentation: (json['documentation'] as List<dynamic>?)
          ?.map<RelatedArtifact>(
            (v) => RelatedArtifact.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.documentation',
              },
            ),
          )
          .toList(),
      goalId: JsonParser.parsePrimitiveList<FhirId>(
        json,
        'goalId',
        FhirId.fromJson,
        '$objectPath.goalId',
      ),
      subjectX: JsonParser.parsePolymorphic<SubjectXPlanDefinitionAction>(
        json,
        {
          'subjectCodeableConcept': CodeableConcept.fromJson,
          'subjectReference': Reference.fromJson,
          'subjectCanonical': FhirCanonical.fromJson,
        },
        objectPath,
      ),
      trigger: (json['trigger'] as List<dynamic>?)
          ?.map<TriggerDefinition>(
            (v) => TriggerDefinition.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.trigger',
              },
            ),
          )
          .toList(),
      condition: (json['condition'] as List<dynamic>?)
          ?.map<PlanDefinitionCondition>(
            (v) => PlanDefinitionCondition.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.condition',
              },
            ),
          )
          .toList(),
      input: (json['input'] as List<dynamic>?)
          ?.map<DataRequirement>(
            (v) => DataRequirement.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.input',
              },
            ),
          )
          .toList(),
      output: (json['output'] as List<dynamic>?)
          ?.map<DataRequirement>(
            (v) => DataRequirement.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.output',
              },
            ),
          )
          .toList(),
      relatedAction: (json['relatedAction'] as List<dynamic>?)
          ?.map<PlanDefinitionRelatedAction>(
            (v) => PlanDefinitionRelatedAction.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relatedAction',
              },
            ),
          )
          .toList(),
      timingX: JsonParser.parsePolymorphic<TimingXPlanDefinitionAction>(
        json,
        {
          'timingDateTime': FhirDateTime.fromJson,
          'timingAge': Age.fromJson,
          'timingPeriod': Period.fromJson,
          'timingDuration': FhirDuration.fromJson,
          'timingRange': Range.fromJson,
          'timingTiming': Timing.fromJson,
        },
        objectPath,
      ),
      participant: (json['participant'] as List<dynamic>?)
          ?.map<PlanDefinitionParticipant>(
            (v) => PlanDefinitionParticipant.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.participant',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      groupingBehavior: JsonParser.parsePrimitive<ActionGroupingBehavior>(
        json,
        'groupingBehavior',
        ActionGroupingBehavior.fromJson,
        '$objectPath.groupingBehavior',
      ),
      selectionBehavior: JsonParser.parsePrimitive<ActionSelectionBehavior>(
        json,
        'selectionBehavior',
        ActionSelectionBehavior.fromJson,
        '$objectPath.selectionBehavior',
      ),
      requiredBehavior: JsonParser.parsePrimitive<ActionRequiredBehavior>(
        json,
        'requiredBehavior',
        ActionRequiredBehavior.fromJson,
        '$objectPath.requiredBehavior',
      ),
      precheckBehavior: JsonParser.parsePrimitive<ActionPrecheckBehavior>(
        json,
        'precheckBehavior',
        ActionPrecheckBehavior.fromJson,
        '$objectPath.precheckBehavior',
      ),
      cardinalityBehavior: JsonParser.parsePrimitive<ActionCardinalityBehavior>(
        json,
        'cardinalityBehavior',
        ActionCardinalityBehavior.fromJson,
        '$objectPath.cardinalityBehavior',
      ),
      definitionX: JsonParser.parsePolymorphic<DefinitionXPlanDefinitionAction>(
        json,
        {
          'definitionCanonical': FhirCanonical.fromJson,
          'definitionUri': FhirUri.fromJson,
        },
        objectPath,
      ),
      transform: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'transform',
        FhirCanonical.fromJson,
        '$objectPath.transform',
      ),
      dynamicValue: (json['dynamicValue'] as List<dynamic>?)
          ?.map<PlanDefinitionDynamicValue>(
            (v) => PlanDefinitionDynamicValue.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.dynamicValue',
              },
            ),
          )
          .toList(),
      action: (json['action'] as List<dynamic>?)
          ?.map<PlanDefinitionAction>(
            (v) => PlanDefinitionAction.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.action',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [PlanDefinitionAction]
  /// from a [String] or [YamlMap] object
  factory PlanDefinitionAction.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PlanDefinitionAction.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PlanDefinitionAction.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PlanDefinitionAction '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PlanDefinitionAction]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PlanDefinitionAction.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PlanDefinitionAction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PlanDefinitionAction';

  /// [prefix]
  /// A user-visible prefix for the action.
  final FhirString? prefix;

  /// [title]
  /// The textual description of the action displayed to a user. For example,
  /// when the action is a test to be performed, the title would be the title
  /// of the test such as Assay by HPLC.
  final FhirString? title;

  /// [description]
  /// A brief description of the action used to provide a summary to display
  /// to the user.
  final FhirString? description;

  /// [textEquivalent]
  /// A text equivalent of the action to be performed. This provides a
  /// human-interpretable description of the action when the definition is
  /// consumed by a system that might not be capable of interpreting it
  /// dynamically.
  final FhirString? textEquivalent;

  /// [priority]
  /// Indicates how quickly the action should be addressed with respect to
  /// other actions.
  final RequestPriority? priority;

  /// [code]
  /// A code that provides a meaning, grouping, or classification for the
  /// action or action group. For example, a section may have a LOINC code
  /// for the section of a documentation template. In pharmaceutical quality,
  /// an action (Test) such as pH could be classified as a physical property.
  final List<CodeableConcept>? code;

  /// [reason]
  /// A description of why this action is necessary or appropriate.
  final List<CodeableConcept>? reason;

  /// [documentation]
  /// Didactic or other informational resources associated with the action
  /// that can be provided to the CDS recipient. Information resources can
  /// include inline text commentary and links to web resources.
  final List<RelatedArtifact>? documentation;

  /// [goalId]
  /// Identifies goals that this action supports. The reference must be to a
  /// goal element defined within this plan definition. In pharmaceutical
  /// quality, a goal represents acceptance criteria (Goal) for a given
  /// action (Test), so the goalId would be the unique id of a defined goal
  /// element establishing the acceptance criteria for the action.
  final List<FhirId>? goalId;

  /// [subjectX]
  /// A code, group definition, or canonical reference that describes the
  /// intended subject of the action and its children, if any. Canonical
  /// references are allowed to support the definition of protocols for drug
  /// and substance quality specifications, and is allowed to reference a
  /// MedicinalProductDefinition, SubstanceDefinition,
  /// AdministrableProductDefinition, ManufacturedItemDefinition, or
  /// PackagedProductDefinition resource.
  final SubjectXPlanDefinitionAction? subjectX;

  /// Getter for [subjectCodeableConcept] as a CodeableConcept
  CodeableConcept? get subjectCodeableConcept =>
      subjectX?.isAs<CodeableConcept>();

  /// Getter for [subjectReference] as a Reference
  Reference? get subjectReference => subjectX?.isAs<Reference>();

  /// Getter for [subjectCanonical] as a FhirCanonical
  FhirCanonical? get subjectCanonical => subjectX?.isAs<FhirCanonical>();

  /// [trigger]
  /// A description of when the action should be triggered.
  final List<TriggerDefinition>? trigger;

  /// [condition]
  /// An expression that describes applicability criteria or start/stop
  /// conditions for the action.
  final List<PlanDefinitionCondition>? condition;

  /// [input]
  /// Defines input data requirements for the action.
  final List<DataRequirement>? input;

  /// [output]
  /// Defines the outputs of the action, if any.
  final List<DataRequirement>? output;

  /// [relatedAction]
  /// A relationship to another action such as "before" or "30-60 minutes
  /// after start of".
  final List<PlanDefinitionRelatedAction>? relatedAction;

  /// [timingX]
  /// An optional value describing when the action should be performed.
  final TimingXPlanDefinitionAction? timingX;

  /// Getter for [timingDateTime] as a FhirDateTime
  FhirDateTime? get timingDateTime => timingX?.isAs<FhirDateTime>();

  /// Getter for [timingAge] as a Age
  Age? get timingAge => timingX?.isAs<Age>();

  /// Getter for [timingPeriod] as a Period
  Period? get timingPeriod => timingX?.isAs<Period>();

  /// Getter for [timingDuration] as a FhirDuration
  FhirDuration? get timingDuration => timingX?.isAs<FhirDuration>();

  /// Getter for [timingRange] as a Range
  Range? get timingRange => timingX?.isAs<Range>();

  /// Getter for [timingTiming] as a Timing
  Timing? get timingTiming => timingX?.isAs<Timing>();

  /// [participant]
  /// Indicates who should participate in performing the action described.
  final List<PlanDefinitionParticipant>? participant;

  /// [type]
  /// The type of action to perform (create, update, remove).
  final CodeableConcept? type;

  /// [groupingBehavior]
  /// Defines the grouping behavior for the action and its children.
  final ActionGroupingBehavior? groupingBehavior;

  /// [selectionBehavior]
  /// Defines the selection behavior for the action and its children.
  final ActionSelectionBehavior? selectionBehavior;

  /// [requiredBehavior]
  /// Defines the required behavior for the action.
  final ActionRequiredBehavior? requiredBehavior;

  /// [precheckBehavior]
  /// Defines whether the action should usually be preselected.
  final ActionPrecheckBehavior? precheckBehavior;

  /// [cardinalityBehavior]
  /// Defines whether the action can be selected multiple times.
  final ActionCardinalityBehavior? cardinalityBehavior;

  /// [definitionX]
  /// A reference to an ActivityDefinition that describes the action to be
  /// taken in detail, or a PlanDefinition that describes a series of actions
  /// to be taken.
  final DefinitionXPlanDefinitionAction? definitionX;

  /// Getter for [definitionCanonical] as a FhirCanonical
  FhirCanonical? get definitionCanonical => definitionX?.isAs<FhirCanonical>();

  /// Getter for [definitionUri] as a FhirUri
  FhirUri? get definitionUri => definitionX?.isAs<FhirUri>();

  /// [transform]
  /// A reference to a StructureMap resource that defines a transform that
  /// can be executed to produce the intent resource using the
  /// ActivityDefinition instance as the input.
  final FhirCanonical? transform;

  /// [dynamicValue]
  /// Customizations that should be applied to the statically defined
  /// resource. For example, if the dosage of a medication must be computed
  /// based on the patient's weight, a customization would be used to specify
  /// an expression that calculated the weight, and the path on the resource
  /// that would contain the result.
  final List<PlanDefinitionDynamicValue>? dynamicValue;

  /// [action]
  /// Sub actions that are contained within the action. The behavior of this
  /// action determines the functionality of the sub-actions. For example, a
  /// selection behavior of at-most-one indicates that of the sub-actions, at
  /// most one may be chosen as part of realizing the action definition.
  final List<PlanDefinitionAction>? action;
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

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('prefix', prefix);
    addField('title', title);
    addField('description', description);
    addField('textEquivalent', textEquivalent);
    addField('priority', priority);
    addField('code', code);
    addField('reason', reason);
    addField('documentation', documentation);
    addField('goalId', goalId);
    if (subjectX != null) {
      final fhirType = subjectX!.fhirType;
      addField('subject${fhirType.capitalize()}', subjectX);
    }

    addField('trigger', trigger);
    addField('condition', condition);
    addField('input', input);
    addField('output', output);
    addField('relatedAction', relatedAction);
    if (timingX != null) {
      final fhirType = timingX!.fhirType;
      addField('timing${fhirType.capitalize()}', timingX);
    }

    addField('participant', participant);
    addField('type', type);
    addField('groupingBehavior', groupingBehavior);
    addField('selectionBehavior', selectionBehavior);
    addField('requiredBehavior', requiredBehavior);
    addField('precheckBehavior', precheckBehavior);
    addField('cardinalityBehavior', cardinalityBehavior);
    if (definitionX != null) {
      final fhirType = definitionX!.fhirType;
      addField('definition${fhirType.capitalize()}', definitionX);
    }

    addField('transform', transform);
    addField('dynamicValue', dynamicValue);
    addField('action', action);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'prefix',
      'title',
      'description',
      'textEquivalent',
      'priority',
      'code',
      'reason',
      'documentation',
      'goalId',
      'subjectX',
      'trigger',
      'condition',
      'input',
      'output',
      'relatedAction',
      'timingX',
      'participant',
      'type',
      'groupingBehavior',
      'selectionBehavior',
      'requiredBehavior',
      'precheckBehavior',
      'cardinalityBehavior',
      'definitionX',
      'transform',
      'dynamicValue',
      'action',
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
      case 'prefix':
        if (prefix != null) {
          fields.add(prefix!);
        }
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'textEquivalent':
        if (textEquivalent != null) {
          fields.add(textEquivalent!);
        }
      case 'priority':
        if (priority != null) {
          fields.add(priority!);
        }
      case 'code':
        if (code != null) {
          fields.addAll(code!);
        }
      case 'reason':
        if (reason != null) {
          fields.addAll(reason!);
        }
      case 'documentation':
        if (documentation != null) {
          fields.addAll(documentation!);
        }
      case 'goalId':
        if (goalId != null) {
          fields.addAll(goalId!);
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
      case 'trigger':
        if (trigger != null) {
          fields.addAll(trigger!);
        }
      case 'condition':
        if (condition != null) {
          fields.addAll(condition!);
        }
      case 'input':
        if (input != null) {
          fields.addAll(input!);
        }
      case 'output':
        if (output != null) {
          fields.addAll(output!);
        }
      case 'relatedAction':
        if (relatedAction != null) {
          fields.addAll(relatedAction!);
        }
      case 'timing':
        fields.add(timingX!);
      case 'timingX':
        fields.add(timingX!);
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
      case 'timingDuration':
        if (timingX is FhirDuration) {
          fields.add(timingX!);
        }
      case 'timingRange':
        if (timingX is Range) {
          fields.add(timingX!);
        }
      case 'timingTiming':
        if (timingX is Timing) {
          fields.add(timingX!);
        }
      case 'participant':
        if (participant != null) {
          fields.addAll(participant!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'groupingBehavior':
        if (groupingBehavior != null) {
          fields.add(groupingBehavior!);
        }
      case 'selectionBehavior':
        if (selectionBehavior != null) {
          fields.add(selectionBehavior!);
        }
      case 'requiredBehavior':
        if (requiredBehavior != null) {
          fields.add(requiredBehavior!);
        }
      case 'precheckBehavior':
        if (precheckBehavior != null) {
          fields.add(precheckBehavior!);
        }
      case 'cardinalityBehavior':
        if (cardinalityBehavior != null) {
          fields.add(cardinalityBehavior!);
        }
      case 'definition':
        fields.add(definitionX!);
      case 'definitionX':
        fields.add(definitionX!);
      case 'definitionCanonical':
        if (definitionX is FhirCanonical) {
          fields.add(definitionX!);
        }
      case 'definitionUri':
        if (definitionX is FhirUri) {
          fields.add(definitionX!);
        }
      case 'transform':
        if (transform != null) {
          fields.add(transform!);
        }
      case 'dynamicValue':
        if (dynamicValue != null) {
          fields.addAll(dynamicValue!);
        }
      case 'action':
        if (action != null) {
          fields.addAll(action!);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'prefix':
        {
          if (child is FhirString) {
            return copyWith(prefix: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'title':
        {
          if (child is FhirString) {
            return copyWith(title: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'textEquivalent':
        {
          if (child is FhirString) {
            return copyWith(textEquivalent: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'priority':
        {
          if (child is RequestPriority) {
            return copyWith(priority: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'code':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(code: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'reason':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(reason: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'documentation':
        {
          if (child is List<RelatedArtifact>) {
            return copyWith(documentation: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'goalId':
        {
          if (child is List<FhirId>) {
            return copyWith(goalId: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'subjectX':
        {
          if (child is SubjectXPlanDefinitionAction) {
            // child is e.g. SubjectX union
            return copyWith(subjectX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'subjectCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(subjectX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'subjectReference':
        {
          if (child is Reference) {
            return copyWith(subjectX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'subjectFhirCanonical':
        {
          if (child is FhirCanonical) {
            return copyWith(subjectX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'trigger':
        {
          if (child is List<TriggerDefinition>) {
            return copyWith(trigger: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'condition':
        {
          if (child is List<PlanDefinitionCondition>) {
            return copyWith(condition: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'input':
        {
          if (child is List<DataRequirement>) {
            return copyWith(input: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'output':
        {
          if (child is List<DataRequirement>) {
            return copyWith(output: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'relatedAction':
        {
          if (child is List<PlanDefinitionRelatedAction>) {
            return copyWith(relatedAction: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'timingX':
        {
          if (child is TimingXPlanDefinitionAction) {
            // child is e.g. SubjectX union
            return copyWith(timingX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'timingFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(timingX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'timingAge':
        {
          if (child is Age) {
            return copyWith(timingX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'timingPeriod':
        {
          if (child is Period) {
            return copyWith(timingX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'timingFhirDuration':
        {
          if (child is FhirDuration) {
            return copyWith(timingX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'timingRange':
        {
          if (child is Range) {
            return copyWith(timingX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'timingTiming':
        {
          if (child is Timing) {
            return copyWith(timingX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'participant':
        {
          if (child is List<PlanDefinitionParticipant>) {
            return copyWith(participant: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'groupingBehavior':
        {
          if (child is ActionGroupingBehavior) {
            return copyWith(groupingBehavior: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'selectionBehavior':
        {
          if (child is ActionSelectionBehavior) {
            return copyWith(selectionBehavior: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'requiredBehavior':
        {
          if (child is ActionRequiredBehavior) {
            return copyWith(requiredBehavior: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'precheckBehavior':
        {
          if (child is ActionPrecheckBehavior) {
            return copyWith(precheckBehavior: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'cardinalityBehavior':
        {
          if (child is ActionCardinalityBehavior) {
            return copyWith(cardinalityBehavior: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'definitionX':
        {
          if (child is DefinitionXPlanDefinitionAction) {
            // child is e.g. SubjectX union
            return copyWith(definitionX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'definitionFhirCanonical':
        {
          if (child is FhirCanonical) {
            return copyWith(definitionX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'definitionFhirUri':
        {
          if (child is FhirUri) {
            return copyWith(definitionX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'transform':
        {
          if (child is FhirCanonical) {
            return copyWith(transform: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'dynamicValue':
        {
          if (child is List<PlanDefinitionDynamicValue>) {
            return copyWith(dynamicValue: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'action':
        {
          if (child is List<PlanDefinitionAction>) {
            return copyWith(action: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
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
      case 'prefix':
        return ['FhirString'];
      case 'title':
        return ['FhirString'];
      case 'description':
        return ['FhirString'];
      case 'textEquivalent':
        return ['FhirString'];
      case 'priority':
        return ['FhirCode'];
      case 'code':
        return ['CodeableConcept'];
      case 'reason':
        return ['CodeableConcept'];
      case 'documentation':
        return ['RelatedArtifact'];
      case 'goalId':
        return ['FhirId'];
      case 'subject':
      case 'subjectX':
        return ['CodeableConcept', 'Reference', 'FhirCanonical'];
      case 'subjectCodeableConcept':
        return ['CodeableConcept'];
      case 'subjectReference':
        return ['Reference'];
      case 'subjectCanonical':
        return ['FhirCanonical'];
      case 'trigger':
        return ['TriggerDefinition'];
      case 'condition':
        return ['PlanDefinitionCondition'];
      case 'input':
        return ['DataRequirement'];
      case 'output':
        return ['DataRequirement'];
      case 'relatedAction':
        return ['PlanDefinitionRelatedAction'];
      case 'timing':
      case 'timingX':
        return [
          'FhirDateTime',
          'Age',
          'Period',
          'FhirDuration',
          'Range',
          'Timing',
        ];
      case 'timingDateTime':
        return ['FhirDateTime'];
      case 'timingAge':
        return ['Age'];
      case 'timingPeriod':
        return ['Period'];
      case 'timingDuration':
        return ['FhirDuration'];
      case 'timingRange':
        return ['Range'];
      case 'timingTiming':
        return ['Timing'];
      case 'participant':
        return ['PlanDefinitionParticipant'];
      case 'type':
        return ['CodeableConcept'];
      case 'groupingBehavior':
        return ['FhirCode'];
      case 'selectionBehavior':
        return ['FhirCode'];
      case 'requiredBehavior':
        return ['FhirCode'];
      case 'precheckBehavior':
        return ['FhirCode'];
      case 'cardinalityBehavior':
        return ['FhirCode'];
      case 'definition':
      case 'definitionX':
        return ['FhirCanonical', 'FhirUri'];
      case 'definitionCanonical':
        return ['FhirCanonical'];
      case 'definitionUri':
        return ['FhirUri'];
      case 'transform':
        return ['FhirCanonical'];
      case 'dynamicValue':
        return ['PlanDefinitionDynamicValue'];
      case 'action':
        return ['PlanDefinitionAction'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [PlanDefinitionAction]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  PlanDefinitionAction createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'prefix':
        {
          return copyWith(prefix: FhirString.empty());
        }
      case 'title':
        {
          return copyWith(title: FhirString.empty());
        }
      case 'description':
        {
          return copyWith(description: FhirString.empty());
        }
      case 'textEquivalent':
        {
          return copyWith(textEquivalent: FhirString.empty());
        }
      case 'priority':
        {
          return copyWith(priority: RequestPriority.empty());
        }
      case 'code':
        {
          return copyWith(code: <CodeableConcept>[]);
        }
      case 'reason':
        {
          return copyWith(reason: <CodeableConcept>[]);
        }
      case 'documentation':
        {
          return copyWith(documentation: <RelatedArtifact>[]);
        }
      case 'goalId':
        {
          return copyWith(goalId: <FhirId>[]);
        }
      case 'subject':
      case 'subjectX':
      case 'subjectCodeableConcept':
        {
          return copyWith(subjectX: CodeableConcept.empty());
        }
      case 'subjectReference':
        {
          return copyWith(subjectX: Reference.empty());
        }
      case 'subjectCanonical':
        {
          return copyWith(subjectX: FhirCanonical.empty());
        }
      case 'trigger':
        {
          return copyWith(trigger: <TriggerDefinition>[]);
        }
      case 'condition':
        {
          return copyWith(condition: <PlanDefinitionCondition>[]);
        }
      case 'input':
        {
          return copyWith(input: <DataRequirement>[]);
        }
      case 'output':
        {
          return copyWith(output: <DataRequirement>[]);
        }
      case 'relatedAction':
        {
          return copyWith(relatedAction: <PlanDefinitionRelatedAction>[]);
        }
      case 'timing':
      case 'timingX':
      case 'timingDateTime':
        {
          return copyWith(timingX: FhirDateTime.empty());
        }
      case 'timingAge':
        {
          return copyWith(timingX: Age.empty());
        }
      case 'timingPeriod':
        {
          return copyWith(timingX: Period.empty());
        }
      case 'timingDuration':
        {
          return copyWith(timingX: FhirDuration.empty());
        }
      case 'timingRange':
        {
          return copyWith(timingX: Range.empty());
        }
      case 'timingTiming':
        {
          return copyWith(timingX: Timing.empty());
        }
      case 'participant':
        {
          return copyWith(participant: <PlanDefinitionParticipant>[]);
        }
      case 'type':
        {
          return copyWith(type: CodeableConcept.empty());
        }
      case 'groupingBehavior':
        {
          return copyWith(groupingBehavior: ActionGroupingBehavior.empty());
        }
      case 'selectionBehavior':
        {
          return copyWith(selectionBehavior: ActionSelectionBehavior.empty());
        }
      case 'requiredBehavior':
        {
          return copyWith(requiredBehavior: ActionRequiredBehavior.empty());
        }
      case 'precheckBehavior':
        {
          return copyWith(precheckBehavior: ActionPrecheckBehavior.empty());
        }
      case 'cardinalityBehavior':
        {
          return copyWith(
            cardinalityBehavior: ActionCardinalityBehavior.empty(),
          );
        }
      case 'definition':
      case 'definitionX':
      case 'definitionCanonical':
        {
          return copyWith(definitionX: FhirCanonical.empty());
        }
      case 'definitionUri':
        {
          return copyWith(definitionX: FhirUri.empty());
        }
      case 'transform':
        {
          return copyWith(transform: FhirCanonical.empty());
        }
      case 'dynamicValue':
        {
          return copyWith(dynamicValue: <PlanDefinitionDynamicValue>[]);
        }
      case 'action':
        {
          return copyWith(action: <PlanDefinitionAction>[]);
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  PlanDefinitionAction clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool prefix = false,
    bool title = false,
    bool description = false,
    bool textEquivalent = false,
    bool priority = false,
    bool code = false,
    bool reason = false,
    bool documentation = false,
    bool goalId = false,
    bool subject = false,
    bool trigger = false,
    bool condition = false,
    bool input = false,
    bool output = false,
    bool relatedAction = false,
    bool timing = false,
    bool participant = false,
    bool type = false,
    bool groupingBehavior = false,
    bool selectionBehavior = false,
    bool requiredBehavior = false,
    bool precheckBehavior = false,
    bool cardinalityBehavior = false,
    bool definition = false,
    bool transform = false,
    bool dynamicValue = false,
    bool action = false,
  }) {
    return PlanDefinitionAction(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      prefix: prefix ? null : this.prefix,
      title: title ? null : this.title,
      description: description ? null : this.description,
      textEquivalent: textEquivalent ? null : this.textEquivalent,
      priority: priority ? null : this.priority,
      code: code ? null : this.code,
      reason: reason ? null : this.reason,
      documentation: documentation ? null : this.documentation,
      goalId: goalId ? null : this.goalId,
      subjectX: subject ? null : subjectX,
      trigger: trigger ? null : this.trigger,
      condition: condition ? null : this.condition,
      input: input ? null : this.input,
      output: output ? null : this.output,
      relatedAction: relatedAction ? null : this.relatedAction,
      timingX: timing ? null : timingX,
      participant: participant ? null : this.participant,
      type: type ? null : this.type,
      groupingBehavior: groupingBehavior ? null : this.groupingBehavior,
      selectionBehavior: selectionBehavior ? null : this.selectionBehavior,
      requiredBehavior: requiredBehavior ? null : this.requiredBehavior,
      precheckBehavior: precheckBehavior ? null : this.precheckBehavior,
      cardinalityBehavior:
          cardinalityBehavior ? null : this.cardinalityBehavior,
      definitionX: definition ? null : definitionX,
      transform: transform ? null : this.transform,
      dynamicValue: dynamicValue ? null : this.dynamicValue,
      action: action ? null : this.action,
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
    FhirString? title,
    FhirString? description,
    FhirString? textEquivalent,
    RequestPriority? priority,
    List<CodeableConcept>? code,
    List<CodeableConcept>? reason,
    List<RelatedArtifact>? documentation,
    List<FhirId>? goalId,
    SubjectXPlanDefinitionAction? subjectX,
    List<TriggerDefinition>? trigger,
    List<PlanDefinitionCondition>? condition,
    List<DataRequirement>? input,
    List<DataRequirement>? output,
    List<PlanDefinitionRelatedAction>? relatedAction,
    TimingXPlanDefinitionAction? timingX,
    List<PlanDefinitionParticipant>? participant,
    CodeableConcept? type,
    ActionGroupingBehavior? groupingBehavior,
    ActionSelectionBehavior? selectionBehavior,
    ActionRequiredBehavior? requiredBehavior,
    ActionPrecheckBehavior? precheckBehavior,
    ActionCardinalityBehavior? cardinalityBehavior,
    DefinitionXPlanDefinitionAction? definitionX,
    FhirCanonical? transform,
    List<PlanDefinitionDynamicValue>? dynamicValue,
    List<PlanDefinitionAction>? action,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return PlanDefinitionAction(
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
      prefix: prefix?.copyWith(
            objectPath: '$newObjectPath.prefix',
          ) ??
          this.prefix,
      title: title?.copyWith(
            objectPath: '$newObjectPath.title',
          ) ??
          this.title,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      textEquivalent: textEquivalent?.copyWith(
            objectPath: '$newObjectPath.textEquivalent',
          ) ??
          this.textEquivalent,
      priority: priority?.copyWith(
            objectPath: '$newObjectPath.priority',
          ) ??
          this.priority,
      code: code
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.code',
                ),
              )
              .toList() ??
          this.code,
      reason: reason
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reason',
                ),
              )
              .toList() ??
          this.reason,
      documentation: documentation
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.documentation',
                ),
              )
              .toList() ??
          this.documentation,
      goalId: goalId
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.goalId',
                ),
              )
              .toList() ??
          this.goalId,
      subjectX: subjectX?.copyWith(
            objectPath: '$newObjectPath.subjectX',
          ) as SubjectXPlanDefinitionAction? ??
          this.subjectX,
      trigger: trigger
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.trigger',
                ),
              )
              .toList() ??
          this.trigger,
      condition: condition
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.condition',
                ),
              )
              .toList() ??
          this.condition,
      input: input
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.input',
                ),
              )
              .toList() ??
          this.input,
      output: output
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.output',
                ),
              )
              .toList() ??
          this.output,
      relatedAction: relatedAction
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.relatedAction',
                ),
              )
              .toList() ??
          this.relatedAction,
      timingX: timingX?.copyWith(
            objectPath: '$newObjectPath.timingX',
          ) as TimingXPlanDefinitionAction? ??
          this.timingX,
      participant: participant
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.participant',
                ),
              )
              .toList() ??
          this.participant,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      groupingBehavior: groupingBehavior?.copyWith(
            objectPath: '$newObjectPath.groupingBehavior',
          ) ??
          this.groupingBehavior,
      selectionBehavior: selectionBehavior?.copyWith(
            objectPath: '$newObjectPath.selectionBehavior',
          ) ??
          this.selectionBehavior,
      requiredBehavior: requiredBehavior?.copyWith(
            objectPath: '$newObjectPath.requiredBehavior',
          ) ??
          this.requiredBehavior,
      precheckBehavior: precheckBehavior?.copyWith(
            objectPath: '$newObjectPath.precheckBehavior',
          ) ??
          this.precheckBehavior,
      cardinalityBehavior: cardinalityBehavior?.copyWith(
            objectPath: '$newObjectPath.cardinalityBehavior',
          ) ??
          this.cardinalityBehavior,
      definitionX: definitionX?.copyWith(
            objectPath: '$newObjectPath.definitionX',
          ) as DefinitionXPlanDefinitionAction? ??
          this.definitionX,
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
      action: action
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.action',
                ),
              )
              .toList() ??
          this.action,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! PlanDefinitionAction) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(prefix, o.prefix)) {
      return false;
    }
    if (!equalsDeepWithNull(title, o.title)) {
      return false;
    }
    if (!equalsDeepWithNull(description, o.description)) {
      return false;
    }
    if (!equalsDeepWithNull(textEquivalent, o.textEquivalent)) {
      return false;
    }
    if (!equalsDeepWithNull(priority, o.priority)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      reason,
      o.reason,
    )) {
      return false;
    }
    if (!listEquals<RelatedArtifact>(
      documentation,
      o.documentation,
    )) {
      return false;
    }
    if (!listEquals<FhirId>(
      goalId,
      o.goalId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(subjectX, o.subjectX)) {
      return false;
    }
    if (!listEquals<TriggerDefinition>(
      trigger,
      o.trigger,
    )) {
      return false;
    }
    if (!listEquals<PlanDefinitionCondition>(
      condition,
      o.condition,
    )) {
      return false;
    }
    if (!listEquals<DataRequirement>(
      input,
      o.input,
    )) {
      return false;
    }
    if (!listEquals<DataRequirement>(
      output,
      o.output,
    )) {
      return false;
    }
    if (!listEquals<PlanDefinitionRelatedAction>(
      relatedAction,
      o.relatedAction,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(timingX, o.timingX)) {
      return false;
    }
    if (!listEquals<PlanDefinitionParticipant>(
      participant,
      o.participant,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(groupingBehavior, o.groupingBehavior)) {
      return false;
    }
    if (!equalsDeepWithNull(selectionBehavior, o.selectionBehavior)) {
      return false;
    }
    if (!equalsDeepWithNull(requiredBehavior, o.requiredBehavior)) {
      return false;
    }
    if (!equalsDeepWithNull(precheckBehavior, o.precheckBehavior)) {
      return false;
    }
    if (!equalsDeepWithNull(cardinalityBehavior, o.cardinalityBehavior)) {
      return false;
    }
    if (!equalsDeepWithNull(definitionX, o.definitionX)) {
      return false;
    }
    if (!equalsDeepWithNull(transform, o.transform)) {
      return false;
    }
    if (!listEquals<PlanDefinitionDynamicValue>(
      dynamicValue,
      o.dynamicValue,
    )) {
      return false;
    }
    if (!listEquals<PlanDefinitionAction>(
      action,
      o.action,
    )) {
      return false;
    }
    return true;
  }
}

/// [PlanDefinitionCondition]
/// An expression that describes applicability criteria or start/stop
/// conditions for the action.
class PlanDefinitionCondition extends BackboneElement {
  /// Primary constructor for
  /// [PlanDefinitionCondition]

  const PlanDefinitionCondition({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.kind,
    this.expression,
    super.disallowExtensions,
  }) : super(
          objectPath: 'PlanDefinition.action.condition',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory PlanDefinitionCondition.empty() => PlanDefinitionCondition(
        kind: ActionConditionKind.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PlanDefinitionCondition.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PlanDefinition.action.condition';
    return PlanDefinitionCondition(
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
      kind: JsonParser.parsePrimitive<ActionConditionKind>(
        json,
        'kind',
        ActionConditionKind.fromJson,
        '$objectPath.kind',
      )!,
      expression: JsonParser.parseObject<FhirExpression>(
        json,
        'expression',
        FhirExpression.fromJson,
        '$objectPath.expression',
      ),
    );
  }

  /// Deserialize [PlanDefinitionCondition]
  /// from a [String] or [YamlMap] object
  factory PlanDefinitionCondition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PlanDefinitionCondition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PlanDefinitionCondition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PlanDefinitionCondition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PlanDefinitionCondition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PlanDefinitionCondition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PlanDefinitionCondition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PlanDefinitionCondition';

  /// [kind]
  /// The kind of condition.
  final ActionConditionKind kind;

  /// [expression]
  /// An expression that returns true or false, indicating whether the
  /// condition is satisfied.
  final FhirExpression? expression;
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

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('kind', kind);
    addField('expression', expression);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'kind',
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
      case 'kind':
        fields.add(kind);
      case 'expression':
        if (expression != null) {
          fields.add(expression!);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'kind':
        {
          if (child is ActionConditionKind) {
            return copyWith(kind: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'expression':
        {
          if (child is FhirExpression) {
            return copyWith(expression: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
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
      case 'kind':
        return ['FhirCode'];
      case 'expression':
        return ['FhirExpression'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [PlanDefinitionCondition]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  PlanDefinitionCondition createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'kind':
        {
          return copyWith(kind: ActionConditionKind.empty());
        }
      case 'expression':
        {
          return copyWith(expression: FhirExpression.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  PlanDefinitionCondition clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool expression = false,
  }) {
    return PlanDefinitionCondition(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      kind: kind,
      expression: expression ? null : this.expression,
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
    FhirExpression? expression,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return PlanDefinitionCondition(
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
      kind: kind?.copyWith(
            objectPath: '$newObjectPath.kind',
          ) ??
          this.kind,
      expression: expression?.copyWith(
            objectPath: '$newObjectPath.expression',
          ) ??
          this.expression,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! PlanDefinitionCondition) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(kind, o.kind)) {
      return false;
    }
    if (!equalsDeepWithNull(expression, o.expression)) {
      return false;
    }
    return true;
  }
}

/// [PlanDefinitionRelatedAction]
/// A relationship to another action such as "before" or "30-60 minutes
/// after start of".
class PlanDefinitionRelatedAction extends BackboneElement {
  /// Primary constructor for
  /// [PlanDefinitionRelatedAction]

  const PlanDefinitionRelatedAction({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.actionId,
    required this.relationship,
    this.offsetX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'PlanDefinition.action.relatedAction',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory PlanDefinitionRelatedAction.empty() => PlanDefinitionRelatedAction(
        actionId: FhirId.empty(),
        relationship: ActionRelationshipType.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PlanDefinitionRelatedAction.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PlanDefinition.action.relatedAction';
    return PlanDefinitionRelatedAction(
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
      actionId: JsonParser.parsePrimitive<FhirId>(
        json,
        'actionId',
        FhirId.fromJson,
        '$objectPath.actionId',
      )!,
      relationship: JsonParser.parsePrimitive<ActionRelationshipType>(
        json,
        'relationship',
        ActionRelationshipType.fromJson,
        '$objectPath.relationship',
      )!,
      offsetX: JsonParser.parsePolymorphic<OffsetXPlanDefinitionRelatedAction>(
        json,
        {
          'offsetDuration': FhirDuration.fromJson,
          'offsetRange': Range.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [PlanDefinitionRelatedAction]
  /// from a [String] or [YamlMap] object
  factory PlanDefinitionRelatedAction.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PlanDefinitionRelatedAction.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PlanDefinitionRelatedAction.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PlanDefinitionRelatedAction '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PlanDefinitionRelatedAction]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PlanDefinitionRelatedAction.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PlanDefinitionRelatedAction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PlanDefinitionRelatedAction';

  /// [actionId]
  /// The element id of the related action.
  final FhirId actionId;

  /// [relationship]
  /// The relationship of this action to the related action.
  final ActionRelationshipType relationship;

  /// [offsetX]
  /// A duration or range of durations to apply to the relationship. For
  /// example, 30-60 minutes before.
  final OffsetXPlanDefinitionRelatedAction? offsetX;

  /// Getter for [offsetDuration] as a FhirDuration
  FhirDuration? get offsetDuration => offsetX?.isAs<FhirDuration>();

  /// Getter for [offsetRange] as a Range
  Range? get offsetRange => offsetX?.isAs<Range>();
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

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('actionId', actionId);
    addField('relationship', relationship);
    if (offsetX != null) {
      final fhirType = offsetX!.fhirType;
      addField('offset${fhirType.capitalize()}', offsetX);
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'actionId',
      'relationship',
      'offsetX',
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
      case 'actionId':
        fields.add(actionId);
      case 'relationship':
        fields.add(relationship);
      case 'offset':
        fields.add(offsetX!);
      case 'offsetX':
        fields.add(offsetX!);
      case 'offsetDuration':
        if (offsetX is FhirDuration) {
          fields.add(offsetX!);
        }
      case 'offsetRange':
        if (offsetX is Range) {
          fields.add(offsetX!);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'actionId':
        {
          if (child is FhirId) {
            return copyWith(actionId: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'relationship':
        {
          if (child is ActionRelationshipType) {
            return copyWith(relationship: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'offsetX':
        {
          if (child is OffsetXPlanDefinitionRelatedAction) {
            // child is e.g. SubjectX union
            return copyWith(offsetX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'offsetFhirDuration':
        {
          if (child is FhirDuration) {
            return copyWith(offsetX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'offsetRange':
        {
          if (child is Range) {
            return copyWith(offsetX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
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
      case 'actionId':
        return ['FhirId'];
      case 'relationship':
        return ['FhirCode'];
      case 'offset':
      case 'offsetX':
        return ['FhirDuration', 'Range'];
      case 'offsetDuration':
        return ['FhirDuration'];
      case 'offsetRange':
        return ['Range'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [PlanDefinitionRelatedAction]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  PlanDefinitionRelatedAction createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'actionId':
        {
          return copyWith(actionId: FhirId.empty());
        }
      case 'relationship':
        {
          return copyWith(relationship: ActionRelationshipType.empty());
        }
      case 'offset':
      case 'offsetX':
      case 'offsetDuration':
        {
          return copyWith(offsetX: FhirDuration.empty());
        }
      case 'offsetRange':
        {
          return copyWith(offsetX: Range.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  PlanDefinitionRelatedAction clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool offset = false,
  }) {
    return PlanDefinitionRelatedAction(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      actionId: actionId,
      relationship: relationship,
      offsetX: offset ? null : offsetX,
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
    ActionRelationshipType? relationship,
    OffsetXPlanDefinitionRelatedAction? offsetX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return PlanDefinitionRelatedAction(
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
      actionId: actionId?.copyWith(
            objectPath: '$newObjectPath.actionId',
          ) ??
          this.actionId,
      relationship: relationship?.copyWith(
            objectPath: '$newObjectPath.relationship',
          ) ??
          this.relationship,
      offsetX: offsetX?.copyWith(
            objectPath: '$newObjectPath.offsetX',
          ) as OffsetXPlanDefinitionRelatedAction? ??
          this.offsetX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! PlanDefinitionRelatedAction) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(actionId, o.actionId)) {
      return false;
    }
    if (!equalsDeepWithNull(relationship, o.relationship)) {
      return false;
    }
    if (!equalsDeepWithNull(offsetX, o.offsetX)) {
      return false;
    }
    return true;
  }
}

/// [PlanDefinitionParticipant]
/// Indicates who should participate in performing the action described.
class PlanDefinitionParticipant extends BackboneElement {
  /// Primary constructor for
  /// [PlanDefinitionParticipant]

  const PlanDefinitionParticipant({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.role,
    super.disallowExtensions,
  }) : super(
          objectPath: 'PlanDefinition.action.participant',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory PlanDefinitionParticipant.empty() => PlanDefinitionParticipant(
        type: ActionParticipantType.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PlanDefinitionParticipant.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PlanDefinition.action.participant';
    return PlanDefinitionParticipant(
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

  /// Deserialize [PlanDefinitionParticipant]
  /// from a [String] or [YamlMap] object
  factory PlanDefinitionParticipant.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PlanDefinitionParticipant.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PlanDefinitionParticipant.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PlanDefinitionParticipant '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PlanDefinitionParticipant]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PlanDefinitionParticipant.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PlanDefinitionParticipant.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PlanDefinitionParticipant';

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

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    addField('role', role);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is ActionParticipantType) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'role':
        {
          if (child is CodeableConcept) {
            return copyWith(role: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
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

  /// Creates a new [PlanDefinitionParticipant]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  PlanDefinitionParticipant createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'type':
        {
          return copyWith(type: ActionParticipantType.empty());
        }
      case 'role':
        {
          return copyWith(role: CodeableConcept.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  PlanDefinitionParticipant clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool role = false,
  }) {
    return PlanDefinitionParticipant(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      type: type,
      role: role ? null : this.role,
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
    CodeableConcept? role,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return PlanDefinitionParticipant(
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
    if (o is! PlanDefinitionParticipant) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(role, o.role)) {
      return false;
    }
    return true;
  }
}

/// [PlanDefinitionDynamicValue]
/// Customizations that should be applied to the statically defined
/// resource. For example, if the dosage of a medication must be computed
/// based on the patient's weight, a customization would be used to specify
/// an expression that calculated the weight, and the path on the resource
/// that would contain the result.
class PlanDefinitionDynamicValue extends BackboneElement {
  /// Primary constructor for
  /// [PlanDefinitionDynamicValue]

  const PlanDefinitionDynamicValue({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.path,
    this.expression,
    super.disallowExtensions,
  }) : super(
          objectPath: 'PlanDefinition.action.dynamicValue',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory PlanDefinitionDynamicValue.empty() =>
      const PlanDefinitionDynamicValue();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PlanDefinitionDynamicValue.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PlanDefinition.action.dynamicValue';
    return PlanDefinitionDynamicValue(
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
      ),
      expression: JsonParser.parseObject<FhirExpression>(
        json,
        'expression',
        FhirExpression.fromJson,
        '$objectPath.expression',
      ),
    );
  }

  /// Deserialize [PlanDefinitionDynamicValue]
  /// from a [String] or [YamlMap] object
  factory PlanDefinitionDynamicValue.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PlanDefinitionDynamicValue.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PlanDefinitionDynamicValue.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PlanDefinitionDynamicValue '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PlanDefinitionDynamicValue]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PlanDefinitionDynamicValue.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PlanDefinitionDynamicValue.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PlanDefinitionDynamicValue';

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
  final FhirString? path;

  /// [expression]
  /// An expression specifying the value of the customized element.
  final FhirExpression? expression;
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

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('path', path);
    addField('expression', expression);
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
        if (path != null) {
          fields.add(path!);
        }
      case 'expression':
        if (expression != null) {
          fields.add(expression!);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'path':
        {
          if (child is FhirString) {
            return copyWith(path: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'expression':
        {
          if (child is FhirExpression) {
            return copyWith(expression: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
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

  /// Creates a new [PlanDefinitionDynamicValue]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  PlanDefinitionDynamicValue createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'path':
        {
          return copyWith(path: FhirString.empty());
        }
      case 'expression':
        {
          return copyWith(expression: FhirExpression.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  PlanDefinitionDynamicValue clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool path = false,
    bool expression = false,
  }) {
    return PlanDefinitionDynamicValue(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      path: path ? null : this.path,
      expression: expression ? null : this.expression,
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
    FhirExpression? expression,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return PlanDefinitionDynamicValue(
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
    if (o is! PlanDefinitionDynamicValue) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(path, o.path)) {
      return false;
    }
    if (!equalsDeepWithNull(expression, o.expression)) {
      return false;
    }
    return true;
  }
}
