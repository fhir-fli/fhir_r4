import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        PlanDefinition,
        PlanDefinitionAction,
        PlanDefinitionCondition,
        PlanDefinitionDynamicValue,
        PlanDefinitionGoal,
        PlanDefinitionParticipant,
        PlanDefinitionRelatedAction,
        PlanDefinitionTarget,
        R4ResourceType,
        StringExtensionForFHIR,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [PlanDefinitionBuilder]
/// This resource allows for the definition of various types of plans as a
/// sharable, consumable, and executable artifact. The resource is general
/// enough to support the description of a broad range of clinical and
/// non-clinical artifacts such as clinical decision support rules, order
/// sets, protocols, and drug quality specifications.
class PlanDefinitionBuilder extends CanonicalResourceBuilder {
  /// Primary constructor for
  /// [PlanDefinitionBuilder]

  PlanDefinitionBuilder({
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
    super.status,
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
  /// For Builder classes, no fields are required
  factory PlanDefinitionBuilder.empty() => PlanDefinitionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PlanDefinitionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PlanDefinition';
    return PlanDefinitionBuilder(
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
      subtitle: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'subtitle',
        FhirStringBuilder.fromJson,
        '$objectPath.subtitle',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
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
      subjectX: JsonParser.parsePolymorphic<SubjectXPlanDefinitionBuilder>(
        json,
        {
          'subjectCodeableConcept': CodeableConceptBuilder.fromJson,
          'subjectReference': ReferenceBuilder.fromJson,
          'subjectCanonical': FhirCanonicalBuilder.fromJson,
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
      goal: (json['goal'] as List<dynamic>?)
          ?.map<PlanDefinitionGoalBuilder>(
            (v) => PlanDefinitionGoalBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.goal',
              },
            ),
          )
          .toList(),
      action: (json['action'] as List<dynamic>?)
          ?.map<PlanDefinitionActionBuilder>(
            (v) => PlanDefinitionActionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.action',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [PlanDefinitionBuilder]
  /// from a [String] or [YamlMap] object
  factory PlanDefinitionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PlanDefinitionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PlanDefinitionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PlanDefinitionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PlanDefinitionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PlanDefinitionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PlanDefinitionBuilder.fromJson(json);
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
  List<IdentifierBuilder>? identifier;

  /// [name]
  /// A natural language name identifying the plan definition. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  FhirStringBuilder? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the plan definition.
  FhirStringBuilder? title;

  /// [subtitle]
  /// An explanatory or alternate title for the plan definition giving
  /// additional information about its content.
  FhirStringBuilder? subtitle;

  /// [type]
  /// A high-level category for the plan definition that distinguishes the
  /// kinds of systems that would be interested in the plan definition.
  CodeableConceptBuilder? type;

  /// [subjectX]
  /// A code, group definition, or canonical reference that describes or
  /// identifies the intended subject of the plan definition. Canonical
  /// references are allowed to support the definition of protocols for drug
  /// and substance quality specifications, and is allowed to reference a
  /// MedicinalProductDefinition, SubstanceDefinition,
  /// AdministrableProductDefinition, ManufacturedItemDefinition, or
  /// PackagedProductDefinition resource.
  SubjectXPlanDefinitionBuilder? subjectX;

  /// Getter for [subjectCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get subjectCodeableConcept =>
      subjectX?.isAs<CodeableConceptBuilder>();

  /// Getter for [subjectReference] as a ReferenceBuilder
  ReferenceBuilder? get subjectReference => subjectX?.isAs<ReferenceBuilder>();

  /// Getter for [subjectCanonical] as a FhirCanonicalBuilder
  FhirCanonicalBuilder? get subjectCanonical =>
      subjectX?.isAs<FhirCanonicalBuilder>();

  /// [purpose]
  /// Explanation of why this plan definition is needed and why it has been
  /// designed as it has.
  FhirMarkdownBuilder? purpose;

  /// [usage]
  /// A detailed description of how the plan definition is used from a
  /// clinical perspective.
  FhirStringBuilder? usage;

  /// [copyright]
  /// A copyright statement relating to the plan definition and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the plan definition.
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
  /// The period during which the plan definition content was or is planned
  /// to be in active use.
  PeriodBuilder? effectivePeriod;

  /// [topic]
  /// Descriptive topics related to the content of the plan definition.
  /// Topics provide a high-level categorization of the definition that can
  /// be useful for filtering and searching.
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
  /// A reference to a Library resource containing any formal logic used by
  /// the plan definition.
  List<FhirCanonicalBuilder>? library_;

  /// [goal]
  /// A goal describes an expected outcome that activities within the plan
  /// are intended to achieve. For example, weight loss, restoring an
  /// activity of daily living, obtaining herd immunity via immunization,
  /// meeting a process improvement objective, meeting the acceptance
  /// criteria for a test as specified by a quality specification, etc.
  List<PlanDefinitionGoalBuilder>? goal;

  /// [action]
  /// An action or group of actions to be taken as part of the plan. For
  /// example, in clinical care, an action would be to prescribe a particular
  /// indicated medication, or perform a particular test as appropriate. In
  /// pharmaceutical quality, an action would be the test that needs to be
  /// performed on a drug product as defined in the quality specification.
  List<PlanDefinitionActionBuilder>? action;

  /// Converts a [PlanDefinitionBuilder]
  /// to [PlanDefinition]
  @override
  PlanDefinition build() => PlanDefinition.fromJson(toJson());

  /// Converts a [PlanDefinitionBuilder]
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
      case 'subjectCanonical':
        if (subjectX is FhirCanonicalBuilder) {
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
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
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
      case 'subjectX':
        {
          if (child is SubjectXPlanDefinitionBuilder) {
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
            if (child is FhirCanonicalBuilder) {
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
      case 'subjectCanonical':
        {
          if (child is FhirCanonicalBuilder) {
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
                library_ = [...(library_ ?? []), converted];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'goal':
        {
          if (child is List<PlanDefinitionGoalBuilder>) {
            // Replace or create new list
            goal = child;
            return;
          } else if (child is PlanDefinitionGoalBuilder) {
            // Add single element to existing list or create new list
            goal = [
              ...(goal ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'action':
        {
          if (child is List<PlanDefinitionActionBuilder>) {
            // Replace or create new list
            action = child;
            return;
          } else if (child is PlanDefinitionActionBuilder) {
            // Add single element to existing list or create new list
            action = [
              ...(action ?? []),
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
      case 'subtitle':
        return ['FhirStringBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'experimental':
        return ['FhirBooleanBuilder'];
      case 'subject':
      case 'subjectX':
        return [
          'CodeableConceptBuilder',
          'ReferenceBuilder',
          'FhirCanonicalBuilder',
        ];
      case 'subjectCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'subjectReference':
        return ['ReferenceBuilder'];
      case 'subjectCanonical':
        return ['FhirCanonicalBuilder'];
      case 'date':
        return ['FhirDateTimeBuilder'];
      case 'publisher':
        return ['FhirStringBuilder'];
      case 'contact':
        return ['ContactDetailBuilder'];
      case 'description':
        return ['FhirMarkdownBuilder'];
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
      case 'goal':
        return ['PlanDefinitionGoalBuilder'];
      case 'action':
        return ['PlanDefinitionActionBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [PlanDefinitionBuilder]
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
      case 'subtitle':
        {
          subtitle = FhirStringBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
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
      case 'subjectCanonical':
        {
          subjectX = FhirCanonicalBuilder.empty();
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
      case 'goal':
        {
          goal = <PlanDefinitionGoalBuilder>[];
          return;
        }
      case 'action':
        {
          action = <PlanDefinitionActionBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
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
    bool status = false,
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
    if (id) this.id = null;
    if (meta) this.meta = null;
    if (implicitRules) this.implicitRules = null;
    if (language) this.language = null;
    if (text) this.text = null;
    if (contained) this.contained = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (url) this.url = null;
    if (identifier) this.identifier = null;
    if (version) this.version = null;
    if (name) this.name = null;
    if (title) this.title = null;
    if (subtitle) this.subtitle = null;
    if (type) this.type = null;
    if (status) this.status = null;
    if (experimental) this.experimental = null;
    if (subject) subjectX = null;
    if (date) this.date = null;
    if (publisher) this.publisher = null;
    if (contact) this.contact = null;
    if (description) this.description = null;
    if (useContext) this.useContext = null;
    if (jurisdiction) this.jurisdiction = null;
    if (purpose) this.purpose = null;
    if (usage) this.usage = null;
    if (copyright) this.copyright = null;
    if (approvalDate) this.approvalDate = null;
    if (lastReviewDate) this.lastReviewDate = null;
    if (effectivePeriod) this.effectivePeriod = null;
    if (topic) this.topic = null;
    if (author) this.author = null;
    if (editor) this.editor = null;
    if (reviewer) this.reviewer = null;
    if (endorser) this.endorser = null;
    if (relatedArtifact) this.relatedArtifact = null;
    if (library_) this.library_ = null;
    if (goal) this.goal = null;
    if (action) this.action = null;
  }

  @override
  PlanDefinitionBuilder clone() => throw UnimplementedError();
  @override
  PlanDefinitionBuilder copyWith({
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
    FhirStringBuilder? subtitle,
    CodeableConceptBuilder? type,
    PublicationStatusBuilder? status,
    FhirBooleanBuilder? experimental,
    SubjectXPlanDefinitionBuilder? subjectX,
    FhirDateTimeBuilder? date,
    FhirStringBuilder? publisher,
    List<ContactDetailBuilder>? contact,
    FhirMarkdownBuilder? description,
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
    List<PlanDefinitionGoalBuilder>? goal,
    List<PlanDefinitionActionBuilder>? action,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = PlanDefinitionBuilder(
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
      type: type ?? this.type,
      status: status ?? this.status,
      experimental: experimental ?? this.experimental,
      subjectX: subjectX ?? this.subjectX,
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
      goal: goal ?? this.goal,
      action: action ?? this.action,
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
    if (o is! PlanDefinitionBuilder) {
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
      subtitle,
      o.subtitle,
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
    if (!listEquals<PlanDefinitionGoalBuilder>(
      goal,
      o.goal,
    )) {
      return false;
    }
    if (!listEquals<PlanDefinitionActionBuilder>(
      action,
      o.action,
    )) {
      return false;
    }
    return true;
  }
}

/// [PlanDefinitionGoalBuilder]
/// A goal describes an expected outcome that activities within the plan
/// are intended to achieve. For example, weight loss, restoring an
/// activity of daily living, obtaining herd immunity via immunization,
/// meeting a process improvement objective, meeting the acceptance
/// criteria for a test as specified by a quality specification, etc.
class PlanDefinitionGoalBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [PlanDefinitionGoalBuilder]

  PlanDefinitionGoalBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.category,
    this.description,
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
  /// For Builder classes, no fields are required
  factory PlanDefinitionGoalBuilder.empty() => PlanDefinitionGoalBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PlanDefinitionGoalBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PlanDefinition.goal';
    return PlanDefinitionGoalBuilder(
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
      category: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'category',
        CodeableConceptBuilder.fromJson,
        '$objectPath.category',
      ),
      description: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'description',
        CodeableConceptBuilder.fromJson,
        '$objectPath.description',
      ),
      priority: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'priority',
        CodeableConceptBuilder.fromJson,
        '$objectPath.priority',
      ),
      start: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'start',
        CodeableConceptBuilder.fromJson,
        '$objectPath.start',
      ),
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.addresses',
              },
            ),
          )
          .toList(),
      documentation: (json['documentation'] as List<dynamic>?)
          ?.map<RelatedArtifactBuilder>(
            (v) => RelatedArtifactBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.documentation',
              },
            ),
          )
          .toList(),
      target: (json['target'] as List<dynamic>?)
          ?.map<PlanDefinitionTargetBuilder>(
            (v) => PlanDefinitionTargetBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.target',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [PlanDefinitionGoalBuilder]
  /// from a [String] or [YamlMap] object
  factory PlanDefinitionGoalBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PlanDefinitionGoalBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PlanDefinitionGoalBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PlanDefinitionGoalBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PlanDefinitionGoalBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PlanDefinitionGoalBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PlanDefinitionGoalBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PlanDefinitionGoal';

  /// [category]
  /// Indicates a category the goal falls within.
  CodeableConceptBuilder? category;

  /// [description]
  /// Human-readable and/or coded description of a specific desired objective
  /// of care, such as "control blood pressure" or "negotiate an obstacle
  /// course" or "dance with child at wedding".
  CodeableConceptBuilder? description;

  /// [priority]
  /// Identifies the expected level of importance associated with
  /// reaching/sustaining the defined goal.
  CodeableConceptBuilder? priority;

  /// [start]
  /// The event after which the goal should begin being pursued.
  CodeableConceptBuilder? start;

  /// [addresses]
  /// Identifies problems, conditions, issues, or concerns the goal is
  /// intended to address.
  List<CodeableConceptBuilder>? addresses;

  /// [documentation]
  /// Didactic or other informational resources associated with the goal that
  /// provide further supporting information about the goal. Information
  /// resources can include inline text commentary and links to web
  /// resources.
  List<RelatedArtifactBuilder>? documentation;

  /// [target]
  /// Indicates what should be done and within what timeframe.
  List<PlanDefinitionTargetBuilder>? target;

  /// Converts a [PlanDefinitionGoalBuilder]
  /// to [PlanDefinitionGoal]
  @override
  PlanDefinitionGoal build() => PlanDefinitionGoal.fromJson(toJson());

  /// Converts a [PlanDefinitionGoalBuilder]
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
      case 'category':
        if (category != null) {
          fields.add(category!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
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
      case 'category':
        {
          if (child is CodeableConceptBuilder) {
            category = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is CodeableConceptBuilder) {
            description = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'priority':
        {
          if (child is CodeableConceptBuilder) {
            priority = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'start':
        {
          if (child is CodeableConceptBuilder) {
            start = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'addresses':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            addresses = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            addresses = [
              ...(addresses ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'documentation':
        {
          if (child is List<RelatedArtifactBuilder>) {
            // Replace or create new list
            documentation = child;
            return;
          } else if (child is RelatedArtifactBuilder) {
            // Add single element to existing list or create new list
            documentation = [
              ...(documentation ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'target':
        {
          if (child is List<PlanDefinitionTargetBuilder>) {
            // Replace or create new list
            target = child;
            return;
          } else if (child is PlanDefinitionTargetBuilder) {
            // Add single element to existing list or create new list
            target = [
              ...(target ?? []),
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
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'description':
        return ['CodeableConceptBuilder'];
      case 'priority':
        return ['CodeableConceptBuilder'];
      case 'start':
        return ['CodeableConceptBuilder'];
      case 'addresses':
        return ['CodeableConceptBuilder'];
      case 'documentation':
        return ['RelatedArtifactBuilder'];
      case 'target':
        return ['PlanDefinitionTargetBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [PlanDefinitionGoalBuilder]
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
      case 'category':
        {
          category = CodeableConceptBuilder.empty();
          return;
        }
      case 'description':
        {
          description = CodeableConceptBuilder.empty();
          return;
        }
      case 'priority':
        {
          priority = CodeableConceptBuilder.empty();
          return;
        }
      case 'start':
        {
          start = CodeableConceptBuilder.empty();
          return;
        }
      case 'addresses':
        {
          addresses = <CodeableConceptBuilder>[];
          return;
        }
      case 'documentation':
        {
          documentation = <RelatedArtifactBuilder>[];
          return;
        }
      case 'target':
        {
          target = <PlanDefinitionTargetBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool category = false,
    bool description = false,
    bool priority = false,
    bool start = false,
    bool addresses = false,
    bool documentation = false,
    bool target = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (category) this.category = null;
    if (description) this.description = null;
    if (priority) this.priority = null;
    if (start) this.start = null;
    if (addresses) this.addresses = null;
    if (documentation) this.documentation = null;
    if (target) this.target = null;
  }

  @override
  PlanDefinitionGoalBuilder clone() => throw UnimplementedError();
  @override
  PlanDefinitionGoalBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? category,
    CodeableConceptBuilder? description,
    CodeableConceptBuilder? priority,
    CodeableConceptBuilder? start,
    List<CodeableConceptBuilder>? addresses,
    List<RelatedArtifactBuilder>? documentation,
    List<PlanDefinitionTargetBuilder>? target,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = PlanDefinitionGoalBuilder(
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
    if (o is! PlanDefinitionGoalBuilder) {
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
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
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
      start,
      o.start,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      addresses,
      o.addresses,
    )) {
      return false;
    }
    if (!listEquals<RelatedArtifactBuilder>(
      documentation,
      o.documentation,
    )) {
      return false;
    }
    if (!listEquals<PlanDefinitionTargetBuilder>(
      target,
      o.target,
    )) {
      return false;
    }
    return true;
  }
}

/// [PlanDefinitionTargetBuilder]
/// Indicates what should be done and within what timeframe.
class PlanDefinitionTargetBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [PlanDefinitionTargetBuilder]

  PlanDefinitionTargetBuilder({
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
  /// For Builder classes, no fields are required
  factory PlanDefinitionTargetBuilder.empty() => PlanDefinitionTargetBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PlanDefinitionTargetBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PlanDefinition.goal.target';
    return PlanDefinitionTargetBuilder(
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
      measure: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'measure',
        CodeableConceptBuilder.fromJson,
        '$objectPath.measure',
      ),
      detailX: JsonParser.parsePolymorphic<DetailXPlanDefinitionTargetBuilder>(
        json,
        {
          'detailQuantity': QuantityBuilder.fromJson,
          'detailRange': RangeBuilder.fromJson,
          'detailCodeableConcept': CodeableConceptBuilder.fromJson,
        },
        objectPath,
      ),
      due: JsonParser.parseObject<FhirDurationBuilder>(
        json,
        'due',
        FhirDurationBuilder.fromJson,
        '$objectPath.due',
      ),
    );
  }

  /// Deserialize [PlanDefinitionTargetBuilder]
  /// from a [String] or [YamlMap] object
  factory PlanDefinitionTargetBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PlanDefinitionTargetBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PlanDefinitionTargetBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PlanDefinitionTargetBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PlanDefinitionTargetBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PlanDefinitionTargetBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PlanDefinitionTargetBuilder.fromJson(json);
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
  CodeableConceptBuilder? measure;

  /// [detailX]
  /// The target value of the measure to be achieved to signify fulfillment
  /// of the goal, e.g. 150 pounds or 7.0%, or in the case of pharmaceutical
  /// quality - NMT 0.6%, Clear solution, etc. Either the high or low or both
  /// values of the range can be specified. When a low value is missing, it
  /// indicates that the goal is achieved at any value at or below the high
  /// value. Similarly, if the high value is missing, it indicates that the
  /// goal is achieved at any value at or above the low value.
  DetailXPlanDefinitionTargetBuilder? detailX;

  /// Getter for [detailQuantity] as a QuantityBuilder
  QuantityBuilder? get detailQuantity => detailX?.isAs<QuantityBuilder>();

  /// Getter for [detailRange] as a RangeBuilder
  RangeBuilder? get detailRange => detailX?.isAs<RangeBuilder>();

  /// Getter for [detailCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get detailCodeableConcept =>
      detailX?.isAs<CodeableConceptBuilder>();

  /// [due]
  /// Indicates the timeframe after the start of the goal in which the goal
  /// should be met.
  FhirDurationBuilder? due;

  /// Converts a [PlanDefinitionTargetBuilder]
  /// to [PlanDefinitionTarget]
  @override
  PlanDefinitionTarget build() => PlanDefinitionTarget.fromJson(toJson());

  /// Converts a [PlanDefinitionTargetBuilder]
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
      case 'measure':
        if (measure != null) {
          fields.add(measure!);
        }
      case 'detail':
        if (detailX != null) {
          fields.add(detailX!);
        }
      case 'detailX':
        if (detailX != null) {
          fields.add(detailX!);
        }
      case 'detailQuantity':
        if (detailX is QuantityBuilder) {
          fields.add(detailX!);
        }
      case 'detailRange':
        if (detailX is RangeBuilder) {
          fields.add(detailX!);
        }
      case 'detailCodeableConcept':
        if (detailX is CodeableConceptBuilder) {
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
      case 'measure':
        {
          if (child is CodeableConceptBuilder) {
            measure = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'detailX':
        {
          if (child is DetailXPlanDefinitionTargetBuilder) {
            detailX = child;
            return;
          } else {
            if (child is QuantityBuilder) {
              detailX = child;
              return;
            }
            if (child is RangeBuilder) {
              detailX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              detailX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'detailQuantity':
        {
          if (child is QuantityBuilder) {
            detailX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'detailRange':
        {
          if (child is RangeBuilder) {
            detailX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'detailCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            detailX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'due':
        {
          if (child is FhirDurationBuilder) {
            due = child;
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
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'measure':
        return ['CodeableConceptBuilder'];
      case 'detail':
      case 'detailX':
        return [
          'QuantityBuilder',
          'RangeBuilder',
          'CodeableConceptBuilder',
        ];
      case 'detailQuantity':
        return ['QuantityBuilder'];
      case 'detailRange':
        return ['RangeBuilder'];
      case 'detailCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'due':
        return ['FhirDurationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [PlanDefinitionTargetBuilder]
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
      case 'measure':
        {
          measure = CodeableConceptBuilder.empty();
          return;
        }
      case 'detail':
      case 'detailX':
      case 'detailQuantity':
        {
          detailX = QuantityBuilder.empty();
          return;
        }
      case 'detailRange':
        {
          detailX = RangeBuilder.empty();
          return;
        }
      case 'detailCodeableConcept':
        {
          detailX = CodeableConceptBuilder.empty();
          return;
        }
      case 'due':
        {
          due = FhirDurationBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool measure = false,
    bool detail = false,
    bool due = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (measure) this.measure = null;
    if (detail) detailX = null;
    if (due) this.due = null;
  }

  @override
  PlanDefinitionTargetBuilder clone() => throw UnimplementedError();
  @override
  PlanDefinitionTargetBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? measure,
    DetailXPlanDefinitionTargetBuilder? detailX,
    FhirDurationBuilder? due,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = PlanDefinitionTargetBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      measure: measure ?? this.measure,
      detailX: detailX ?? this.detailX,
      due: due ?? this.due,
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
    if (o is! PlanDefinitionTargetBuilder) {
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
      measure,
      o.measure,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      detailX,
      o.detailX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      due,
      o.due,
    )) {
      return false;
    }
    return true;
  }
}

/// [PlanDefinitionActionBuilder]
/// An action or group of actions to be taken as part of the plan. For
/// example, in clinical care, an action would be to prescribe a particular
/// indicated medication, or perform a particular test as appropriate. In
/// pharmaceutical quality, an action would be the test that needs to be
/// performed on a drug product as defined in the quality specification.
class PlanDefinitionActionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [PlanDefinitionActionBuilder]

  PlanDefinitionActionBuilder({
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
  /// For Builder classes, no fields are required
  factory PlanDefinitionActionBuilder.empty() => PlanDefinitionActionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PlanDefinitionActionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PlanDefinition.action';
    return PlanDefinitionActionBuilder(
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
      prefix: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'prefix',
        FhirStringBuilder.fromJson,
        '$objectPath.prefix',
      ),
      title: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'title',
        FhirStringBuilder.fromJson,
        '$objectPath.title',
      ),
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
      textEquivalent: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'textEquivalent',
        FhirStringBuilder.fromJson,
        '$objectPath.textEquivalent',
      ),
      priority: JsonParser.parsePrimitive<RequestPriorityBuilder>(
        json,
        'priority',
        RequestPriorityBuilder.fromJson,
        '$objectPath.priority',
      ),
      code: (json['code'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.code',
              },
            ),
          )
          .toList(),
      reason: (json['reason'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reason',
              },
            ),
          )
          .toList(),
      documentation: (json['documentation'] as List<dynamic>?)
          ?.map<RelatedArtifactBuilder>(
            (v) => RelatedArtifactBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.documentation',
              },
            ),
          )
          .toList(),
      goalId: JsonParser.parsePrimitiveList<FhirIdBuilder>(
        json,
        'goalId',
        FhirIdBuilder.fromJson,
        '$objectPath.goalId',
      ),
      subjectX:
          JsonParser.parsePolymorphic<SubjectXPlanDefinitionActionBuilder>(
        json,
        {
          'subjectCodeableConcept': CodeableConceptBuilder.fromJson,
          'subjectReference': ReferenceBuilder.fromJson,
          'subjectCanonical': FhirCanonicalBuilder.fromJson,
        },
        objectPath,
      ),
      trigger: (json['trigger'] as List<dynamic>?)
          ?.map<TriggerDefinitionBuilder>(
            (v) => TriggerDefinitionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.trigger',
              },
            ),
          )
          .toList(),
      condition: (json['condition'] as List<dynamic>?)
          ?.map<PlanDefinitionConditionBuilder>(
            (v) => PlanDefinitionConditionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.condition',
              },
            ),
          )
          .toList(),
      input: (json['input'] as List<dynamic>?)
          ?.map<DataRequirementBuilder>(
            (v) => DataRequirementBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.input',
              },
            ),
          )
          .toList(),
      output: (json['output'] as List<dynamic>?)
          ?.map<DataRequirementBuilder>(
            (v) => DataRequirementBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.output',
              },
            ),
          )
          .toList(),
      relatedAction: (json['relatedAction'] as List<dynamic>?)
          ?.map<PlanDefinitionRelatedActionBuilder>(
            (v) => PlanDefinitionRelatedActionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relatedAction',
              },
            ),
          )
          .toList(),
      timingX: JsonParser.parsePolymorphic<TimingXPlanDefinitionActionBuilder>(
        json,
        {
          'timingDateTime': FhirDateTimeBuilder.fromJson,
          'timingAge': AgeBuilder.fromJson,
          'timingPeriod': PeriodBuilder.fromJson,
          'timingDuration': FhirDurationBuilder.fromJson,
          'timingRange': RangeBuilder.fromJson,
          'timingTiming': TimingBuilder.fromJson,
        },
        objectPath,
      ),
      participant: (json['participant'] as List<dynamic>?)
          ?.map<PlanDefinitionParticipantBuilder>(
            (v) => PlanDefinitionParticipantBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.participant',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      groupingBehavior:
          JsonParser.parsePrimitive<ActionGroupingBehaviorBuilder>(
        json,
        'groupingBehavior',
        ActionGroupingBehaviorBuilder.fromJson,
        '$objectPath.groupingBehavior',
      ),
      selectionBehavior:
          JsonParser.parsePrimitive<ActionSelectionBehaviorBuilder>(
        json,
        'selectionBehavior',
        ActionSelectionBehaviorBuilder.fromJson,
        '$objectPath.selectionBehavior',
      ),
      requiredBehavior:
          JsonParser.parsePrimitive<ActionRequiredBehaviorBuilder>(
        json,
        'requiredBehavior',
        ActionRequiredBehaviorBuilder.fromJson,
        '$objectPath.requiredBehavior',
      ),
      precheckBehavior:
          JsonParser.parsePrimitive<ActionPrecheckBehaviorBuilder>(
        json,
        'precheckBehavior',
        ActionPrecheckBehaviorBuilder.fromJson,
        '$objectPath.precheckBehavior',
      ),
      cardinalityBehavior:
          JsonParser.parsePrimitive<ActionCardinalityBehaviorBuilder>(
        json,
        'cardinalityBehavior',
        ActionCardinalityBehaviorBuilder.fromJson,
        '$objectPath.cardinalityBehavior',
      ),
      definitionX:
          JsonParser.parsePolymorphic<DefinitionXPlanDefinitionActionBuilder>(
        json,
        {
          'definitionCanonical': FhirCanonicalBuilder.fromJson,
          'definitionUri': FhirUriBuilder.fromJson,
        },
        objectPath,
      ),
      transform: JsonParser.parsePrimitive<FhirCanonicalBuilder>(
        json,
        'transform',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.transform',
      ),
      dynamicValue: (json['dynamicValue'] as List<dynamic>?)
          ?.map<PlanDefinitionDynamicValueBuilder>(
            (v) => PlanDefinitionDynamicValueBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.dynamicValue',
              },
            ),
          )
          .toList(),
      action: (json['action'] as List<dynamic>?)
          ?.map<PlanDefinitionActionBuilder>(
            (v) => PlanDefinitionActionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.action',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [PlanDefinitionActionBuilder]
  /// from a [String] or [YamlMap] object
  factory PlanDefinitionActionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PlanDefinitionActionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PlanDefinitionActionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PlanDefinitionActionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PlanDefinitionActionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PlanDefinitionActionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PlanDefinitionActionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PlanDefinitionAction';

  /// [prefix]
  /// A user-visible prefix for the action.
  FhirStringBuilder? prefix;

  /// [title]
  /// The textual description of the action displayed to a user. For example,
  /// when the action is a test to be performed, the title would be the title
  /// of the test such as Assay by HPLC.
  FhirStringBuilder? title;

  /// [description]
  /// A brief description of the action used to provide a summary to display
  /// to the user.
  FhirStringBuilder? description;

  /// [textEquivalent]
  /// A text equivalent of the action to be performed. This provides a
  /// human-interpretable description of the action when the definition is
  /// consumed by a system that might not be capable of interpreting it
  /// dynamically.
  FhirStringBuilder? textEquivalent;

  /// [priority]
  /// Indicates how quickly the action should be addressed with respect to
  /// other actions.
  RequestPriorityBuilder? priority;

  /// [code]
  /// A code that provides a meaning, grouping, or classification for the
  /// action or action group. For example, a section may have a LOINC code
  /// for the section of a documentation template. In pharmaceutical quality,
  /// an action (Test) such as pH could be classified as a physical property.
  List<CodeableConceptBuilder>? code;

  /// [reason]
  /// A description of why this action is necessary or appropriate.
  List<CodeableConceptBuilder>? reason;

  /// [documentation]
  /// Didactic or other informational resources associated with the action
  /// that can be provided to the CDS recipient. Information resources can
  /// include inline text commentary and links to web resources.
  List<RelatedArtifactBuilder>? documentation;

  /// [goalId]
  /// Identifies goals that this action supports. The reference must be to a
  /// goal element defined within this plan definition. In pharmaceutical
  /// quality, a goal represents acceptance criteria (Goal) for a given
  /// action (Test), so the goalId would be the unique id of a defined goal
  /// element establishing the acceptance criteria for the action.
  List<FhirIdBuilder>? goalId;

  /// [subjectX]
  /// A code, group definition, or canonical reference that describes the
  /// intended subject of the action and its children, if any. Canonical
  /// references are allowed to support the definition of protocols for drug
  /// and substance quality specifications, and is allowed to reference a
  /// MedicinalProductDefinition, SubstanceDefinition,
  /// AdministrableProductDefinition, ManufacturedItemDefinition, or
  /// PackagedProductDefinition resource.
  SubjectXPlanDefinitionActionBuilder? subjectX;

  /// Getter for [subjectCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get subjectCodeableConcept =>
      subjectX?.isAs<CodeableConceptBuilder>();

  /// Getter for [subjectReference] as a ReferenceBuilder
  ReferenceBuilder? get subjectReference => subjectX?.isAs<ReferenceBuilder>();

  /// Getter for [subjectCanonical] as a FhirCanonicalBuilder
  FhirCanonicalBuilder? get subjectCanonical =>
      subjectX?.isAs<FhirCanonicalBuilder>();

  /// [trigger]
  /// A description of when the action should be triggered.
  List<TriggerDefinitionBuilder>? trigger;

  /// [condition]
  /// An expression that describes applicability criteria or start/stop
  /// conditions for the action.
  List<PlanDefinitionConditionBuilder>? condition;

  /// [input]
  /// Defines input data requirements for the action.
  List<DataRequirementBuilder>? input;

  /// [output]
  /// Defines the outputs of the action, if any.
  List<DataRequirementBuilder>? output;

  /// [relatedAction]
  /// A relationship to another action such as "before" or "30-60 minutes
  /// after start of".
  List<PlanDefinitionRelatedActionBuilder>? relatedAction;

  /// [timingX]
  /// An optional value describing when the action should be performed.
  TimingXPlanDefinitionActionBuilder? timingX;

  /// Getter for [timingDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get timingDateTime =>
      timingX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [timingAge] as a AgeBuilder
  AgeBuilder? get timingAge => timingX?.isAs<AgeBuilder>();

  /// Getter for [timingPeriod] as a PeriodBuilder
  PeriodBuilder? get timingPeriod => timingX?.isAs<PeriodBuilder>();

  /// Getter for [timingDuration] as a FhirDurationBuilder
  FhirDurationBuilder? get timingDuration =>
      timingX?.isAs<FhirDurationBuilder>();

  /// Getter for [timingRange] as a RangeBuilder
  RangeBuilder? get timingRange => timingX?.isAs<RangeBuilder>();

  /// Getter for [timingTiming] as a TimingBuilder
  TimingBuilder? get timingTiming => timingX?.isAs<TimingBuilder>();

  /// [participant]
  /// Indicates who should participate in performing the action described.
  List<PlanDefinitionParticipantBuilder>? participant;

  /// [type]
  /// The type of action to perform (create, update, remove).
  CodeableConceptBuilder? type;

  /// [groupingBehavior]
  /// Defines the grouping behavior for the action and its children.
  ActionGroupingBehaviorBuilder? groupingBehavior;

  /// [selectionBehavior]
  /// Defines the selection behavior for the action and its children.
  ActionSelectionBehaviorBuilder? selectionBehavior;

  /// [requiredBehavior]
  /// Defines the required behavior for the action.
  ActionRequiredBehaviorBuilder? requiredBehavior;

  /// [precheckBehavior]
  /// Defines whether the action should usually be preselected.
  ActionPrecheckBehaviorBuilder? precheckBehavior;

  /// [cardinalityBehavior]
  /// Defines whether the action can be selected multiple times.
  ActionCardinalityBehaviorBuilder? cardinalityBehavior;

  /// [definitionX]
  /// A reference to an ActivityDefinition that describes the action to be
  /// taken in detail, or a PlanDefinition that describes a series of actions
  /// to be taken.
  DefinitionXPlanDefinitionActionBuilder? definitionX;

  /// Getter for [definitionCanonical] as a FhirCanonicalBuilder
  FhirCanonicalBuilder? get definitionCanonical =>
      definitionX?.isAs<FhirCanonicalBuilder>();

  /// Getter for [definitionUri] as a FhirUriBuilder
  FhirUriBuilder? get definitionUri => definitionX?.isAs<FhirUriBuilder>();

  /// [transform]
  /// A reference to a StructureMap resource that defines a transform that
  /// can be executed to produce the intent resource using the
  /// ActivityDefinition instance as the input.
  FhirCanonicalBuilder? transform;

  /// [dynamicValue]
  /// Customizations that should be applied to the statically defined
  /// resource. For example, if the dosage of a medication must be computed
  /// based on the patient's weight, a customization would be used to specify
  /// an expression that calculated the weight, and the path on the resource
  /// that would contain the result.
  List<PlanDefinitionDynamicValueBuilder>? dynamicValue;

  /// [action]
  /// Sub actions that are contained within the action. The behavior of this
  /// action determines the functionality of the sub-actions. For example, a
  /// selection behavior of at-most-one indicates that of the sub-actions, at
  /// most one may be chosen as part of realizing the action definition.
  List<PlanDefinitionActionBuilder>? action;

  /// Converts a [PlanDefinitionActionBuilder]
  /// to [PlanDefinitionAction]
  @override
  PlanDefinitionAction build() => PlanDefinitionAction.fromJson(toJson());

  /// Converts a [PlanDefinitionActionBuilder]
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
      case 'subjectCanonical':
        if (subjectX is FhirCanonicalBuilder) {
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
        if (timingX != null) {
          fields.add(timingX!);
        }
      case 'timingX':
        if (timingX != null) {
          fields.add(timingX!);
        }
      case 'timingDateTime':
        if (timingX is FhirDateTimeBuilder) {
          fields.add(timingX!);
        }
      case 'timingAge':
        if (timingX is AgeBuilder) {
          fields.add(timingX!);
        }
      case 'timingPeriod':
        if (timingX is PeriodBuilder) {
          fields.add(timingX!);
        }
      case 'timingDuration':
        if (timingX is FhirDurationBuilder) {
          fields.add(timingX!);
        }
      case 'timingRange':
        if (timingX is RangeBuilder) {
          fields.add(timingX!);
        }
      case 'timingTiming':
        if (timingX is TimingBuilder) {
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
        if (definitionX != null) {
          fields.add(definitionX!);
        }
      case 'definitionX':
        if (definitionX != null) {
          fields.add(definitionX!);
        }
      case 'definitionCanonical':
        if (definitionX is FhirCanonicalBuilder) {
          fields.add(definitionX!);
        }
      case 'definitionUri':
        if (definitionX is FhirUriBuilder) {
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
      case 'prefix':
        {
          if (child is FhirStringBuilder) {
            prefix = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                prefix = converted;
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
      case 'description':
        {
          if (child is FhirStringBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
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
      case 'textEquivalent':
        {
          if (child is FhirStringBuilder) {
            textEquivalent = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                textEquivalent = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'priority':
        {
          if (child is RequestPriorityBuilder) {
            priority = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = RequestPriorityBuilder(stringValue);
                priority = converted;
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
      case 'code':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            code = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            code = [
              ...(code ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reason':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            reason = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            reason = [
              ...(reason ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'documentation':
        {
          if (child is List<RelatedArtifactBuilder>) {
            // Replace or create new list
            documentation = child;
            return;
          } else if (child is RelatedArtifactBuilder) {
            // Add single element to existing list or create new list
            documentation = [
              ...(documentation ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'goalId':
        {
          if (child is List<FhirIdBuilder>) {
            // Replace or create new list
            goalId = child;
            return;
          } else if (child is FhirIdBuilder) {
            // Add single element to existing list or create new list
            goalId = [
              ...(goalId ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirIdBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirIdBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              goalId = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirIdBuilder.tryParse(stringValue);
              if (converted != null) {
                goalId = [...(goalId ?? []), converted];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subjectX':
        {
          if (child is SubjectXPlanDefinitionActionBuilder) {
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
            if (child is FhirCanonicalBuilder) {
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
      case 'subjectCanonical':
        {
          if (child is FhirCanonicalBuilder) {
            subjectX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'trigger':
        {
          if (child is List<TriggerDefinitionBuilder>) {
            // Replace or create new list
            trigger = child;
            return;
          } else if (child is TriggerDefinitionBuilder) {
            // Add single element to existing list or create new list
            trigger = [
              ...(trigger ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'condition':
        {
          if (child is List<PlanDefinitionConditionBuilder>) {
            // Replace or create new list
            condition = child;
            return;
          } else if (child is PlanDefinitionConditionBuilder) {
            // Add single element to existing list or create new list
            condition = [
              ...(condition ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'input':
        {
          if (child is List<DataRequirementBuilder>) {
            // Replace or create new list
            input = child;
            return;
          } else if (child is DataRequirementBuilder) {
            // Add single element to existing list or create new list
            input = [
              ...(input ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'output':
        {
          if (child is List<DataRequirementBuilder>) {
            // Replace or create new list
            output = child;
            return;
          } else if (child is DataRequirementBuilder) {
            // Add single element to existing list or create new list
            output = [
              ...(output ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'relatedAction':
        {
          if (child is List<PlanDefinitionRelatedActionBuilder>) {
            // Replace or create new list
            relatedAction = child;
            return;
          } else if (child is PlanDefinitionRelatedActionBuilder) {
            // Add single element to existing list or create new list
            relatedAction = [
              ...(relatedAction ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'timingX':
        {
          if (child is TimingXPlanDefinitionActionBuilder) {
            timingX = child;
            return;
          } else {
            if (child is FhirDateTimeBuilder) {
              timingX = child;
              return;
            }
            if (child is AgeBuilder) {
              timingX = child;
              return;
            }
            if (child is PeriodBuilder) {
              timingX = child;
              return;
            }
            if (child is FhirDurationBuilder) {
              timingX = child;
              return;
            }
            if (child is RangeBuilder) {
              timingX = child;
              return;
            }
            if (child is TimingBuilder) {
              timingX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'timingDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            timingX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'timingAge':
        {
          if (child is AgeBuilder) {
            timingX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'timingPeriod':
        {
          if (child is PeriodBuilder) {
            timingX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'timingDuration':
        {
          if (child is FhirDurationBuilder) {
            timingX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'timingRange':
        {
          if (child is RangeBuilder) {
            timingX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'timingTiming':
        {
          if (child is TimingBuilder) {
            timingX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'participant':
        {
          if (child is List<PlanDefinitionParticipantBuilder>) {
            // Replace or create new list
            participant = child;
            return;
          } else if (child is PlanDefinitionParticipantBuilder) {
            // Add single element to existing list or create new list
            participant = [
              ...(participant ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'groupingBehavior':
        {
          if (child is ActionGroupingBehaviorBuilder) {
            groupingBehavior = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ActionGroupingBehaviorBuilder(stringValue);
                groupingBehavior = converted;
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
      case 'selectionBehavior':
        {
          if (child is ActionSelectionBehaviorBuilder) {
            selectionBehavior = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ActionSelectionBehaviorBuilder(stringValue);
                selectionBehavior = converted;
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
      case 'requiredBehavior':
        {
          if (child is ActionRequiredBehaviorBuilder) {
            requiredBehavior = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ActionRequiredBehaviorBuilder(stringValue);
                requiredBehavior = converted;
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
      case 'precheckBehavior':
        {
          if (child is ActionPrecheckBehaviorBuilder) {
            precheckBehavior = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ActionPrecheckBehaviorBuilder(stringValue);
                precheckBehavior = converted;
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
      case 'cardinalityBehavior':
        {
          if (child is ActionCardinalityBehaviorBuilder) {
            cardinalityBehavior = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ActionCardinalityBehaviorBuilder(stringValue);
                cardinalityBehavior = converted;
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
      case 'definitionX':
        {
          if (child is DefinitionXPlanDefinitionActionBuilder) {
            definitionX = child;
            return;
          } else {
            if (child is FhirCanonicalBuilder) {
              definitionX = child;
              return;
            }
            if (child is FhirUriBuilder) {
              definitionX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
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
      case 'definitionUri':
        {
          if (child is FhirUriBuilder) {
            definitionX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'transform':
        {
          if (child is FhirCanonicalBuilder) {
            transform = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                transform = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'dynamicValue':
        {
          if (child is List<PlanDefinitionDynamicValueBuilder>) {
            // Replace or create new list
            dynamicValue = child;
            return;
          } else if (child is PlanDefinitionDynamicValueBuilder) {
            // Add single element to existing list or create new list
            dynamicValue = [
              ...(dynamicValue ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'action':
        {
          if (child is List<PlanDefinitionActionBuilder>) {
            // Replace or create new list
            action = child;
            return;
          } else if (child is PlanDefinitionActionBuilder) {
            // Add single element to existing list or create new list
            action = [
              ...(action ?? []),
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
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'prefix':
        return ['FhirStringBuilder'];
      case 'title':
        return ['FhirStringBuilder'];
      case 'description':
        return ['FhirStringBuilder'];
      case 'textEquivalent':
        return ['FhirStringBuilder'];
      case 'priority':
        return ['FhirCodeEnumBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'reason':
        return ['CodeableConceptBuilder'];
      case 'documentation':
        return ['RelatedArtifactBuilder'];
      case 'goalId':
        return ['FhirIdBuilder'];
      case 'subject':
      case 'subjectX':
        return [
          'CodeableConceptBuilder',
          'ReferenceBuilder',
          'FhirCanonicalBuilder',
        ];
      case 'subjectCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'subjectReference':
        return ['ReferenceBuilder'];
      case 'subjectCanonical':
        return ['FhirCanonicalBuilder'];
      case 'trigger':
        return ['TriggerDefinitionBuilder'];
      case 'condition':
        return ['PlanDefinitionConditionBuilder'];
      case 'input':
        return ['DataRequirementBuilder'];
      case 'output':
        return ['DataRequirementBuilder'];
      case 'relatedAction':
        return ['PlanDefinitionRelatedActionBuilder'];
      case 'timing':
      case 'timingX':
        return [
          'FhirDateTimeBuilder',
          'AgeBuilder',
          'PeriodBuilder',
          'FhirDurationBuilder',
          'RangeBuilder',
          'TimingBuilder',
        ];
      case 'timingDateTime':
        return ['FhirDateTimeBuilder'];
      case 'timingAge':
        return ['AgeBuilder'];
      case 'timingPeriod':
        return ['PeriodBuilder'];
      case 'timingDuration':
        return ['FhirDurationBuilder'];
      case 'timingRange':
        return ['RangeBuilder'];
      case 'timingTiming':
        return ['TimingBuilder'];
      case 'participant':
        return ['PlanDefinitionParticipantBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'groupingBehavior':
        return ['FhirCodeEnumBuilder'];
      case 'selectionBehavior':
        return ['FhirCodeEnumBuilder'];
      case 'requiredBehavior':
        return ['FhirCodeEnumBuilder'];
      case 'precheckBehavior':
        return ['FhirCodeEnumBuilder'];
      case 'cardinalityBehavior':
        return ['FhirCodeEnumBuilder'];
      case 'definition':
      case 'definitionX':
        return [
          'FhirCanonicalBuilder',
          'FhirUriBuilder',
        ];
      case 'definitionCanonical':
        return ['FhirCanonicalBuilder'];
      case 'definitionUri':
        return ['FhirUriBuilder'];
      case 'transform':
        return ['FhirCanonicalBuilder'];
      case 'dynamicValue':
        return ['PlanDefinitionDynamicValueBuilder'];
      case 'action':
        return ['PlanDefinitionActionBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [PlanDefinitionActionBuilder]
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
      case 'prefix':
        {
          prefix = FhirStringBuilder.empty();
          return;
        }
      case 'title':
        {
          title = FhirStringBuilder.empty();
          return;
        }
      case 'description':
        {
          description = FhirStringBuilder.empty();
          return;
        }
      case 'textEquivalent':
        {
          textEquivalent = FhirStringBuilder.empty();
          return;
        }
      case 'priority':
        {
          priority = RequestPriorityBuilder.empty();
          return;
        }
      case 'code':
        {
          code = <CodeableConceptBuilder>[];
          return;
        }
      case 'reason':
        {
          reason = <CodeableConceptBuilder>[];
          return;
        }
      case 'documentation':
        {
          documentation = <RelatedArtifactBuilder>[];
          return;
        }
      case 'goalId':
        {
          goalId = <FhirIdBuilder>[];
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
      case 'subjectCanonical':
        {
          subjectX = FhirCanonicalBuilder.empty();
          return;
        }
      case 'trigger':
        {
          trigger = <TriggerDefinitionBuilder>[];
          return;
        }
      case 'condition':
        {
          condition = <PlanDefinitionConditionBuilder>[];
          return;
        }
      case 'input':
        {
          input = <DataRequirementBuilder>[];
          return;
        }
      case 'output':
        {
          output = <DataRequirementBuilder>[];
          return;
        }
      case 'relatedAction':
        {
          relatedAction = <PlanDefinitionRelatedActionBuilder>[];
          return;
        }
      case 'timing':
      case 'timingX':
      case 'timingDateTime':
        {
          timingX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'timingAge':
        {
          timingX = AgeBuilder.empty();
          return;
        }
      case 'timingPeriod':
        {
          timingX = PeriodBuilder.empty();
          return;
        }
      case 'timingDuration':
        {
          timingX = FhirDurationBuilder.empty();
          return;
        }
      case 'timingRange':
        {
          timingX = RangeBuilder.empty();
          return;
        }
      case 'timingTiming':
        {
          timingX = TimingBuilder.empty();
          return;
        }
      case 'participant':
        {
          participant = <PlanDefinitionParticipantBuilder>[];
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'groupingBehavior':
        {
          groupingBehavior = ActionGroupingBehaviorBuilder.empty();
          return;
        }
      case 'selectionBehavior':
        {
          selectionBehavior = ActionSelectionBehaviorBuilder.empty();
          return;
        }
      case 'requiredBehavior':
        {
          requiredBehavior = ActionRequiredBehaviorBuilder.empty();
          return;
        }
      case 'precheckBehavior':
        {
          precheckBehavior = ActionPrecheckBehaviorBuilder.empty();
          return;
        }
      case 'cardinalityBehavior':
        {
          cardinalityBehavior = ActionCardinalityBehaviorBuilder.empty();
          return;
        }
      case 'definition':
      case 'definitionX':
      case 'definitionCanonical':
        {
          definitionX = FhirCanonicalBuilder.empty();
          return;
        }
      case 'definitionUri':
        {
          definitionX = FhirUriBuilder.empty();
          return;
        }
      case 'transform':
        {
          transform = FhirCanonicalBuilder.empty();
          return;
        }
      case 'dynamicValue':
        {
          dynamicValue = <PlanDefinitionDynamicValueBuilder>[];
          return;
        }
      case 'action':
        {
          action = <PlanDefinitionActionBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
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
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (prefix) this.prefix = null;
    if (title) this.title = null;
    if (description) this.description = null;
    if (textEquivalent) this.textEquivalent = null;
    if (priority) this.priority = null;
    if (code) this.code = null;
    if (reason) this.reason = null;
    if (documentation) this.documentation = null;
    if (goalId) this.goalId = null;
    if (subject) subjectX = null;
    if (trigger) this.trigger = null;
    if (condition) this.condition = null;
    if (input) this.input = null;
    if (output) this.output = null;
    if (relatedAction) this.relatedAction = null;
    if (timing) timingX = null;
    if (participant) this.participant = null;
    if (type) this.type = null;
    if (groupingBehavior) this.groupingBehavior = null;
    if (selectionBehavior) this.selectionBehavior = null;
    if (requiredBehavior) this.requiredBehavior = null;
    if (precheckBehavior) this.precheckBehavior = null;
    if (cardinalityBehavior) this.cardinalityBehavior = null;
    if (definition) definitionX = null;
    if (transform) this.transform = null;
    if (dynamicValue) this.dynamicValue = null;
    if (action) this.action = null;
  }

  @override
  PlanDefinitionActionBuilder clone() => throw UnimplementedError();
  @override
  PlanDefinitionActionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? prefix,
    FhirStringBuilder? title,
    FhirStringBuilder? description,
    FhirStringBuilder? textEquivalent,
    RequestPriorityBuilder? priority,
    List<CodeableConceptBuilder>? code,
    List<CodeableConceptBuilder>? reason,
    List<RelatedArtifactBuilder>? documentation,
    List<FhirIdBuilder>? goalId,
    SubjectXPlanDefinitionActionBuilder? subjectX,
    List<TriggerDefinitionBuilder>? trigger,
    List<PlanDefinitionConditionBuilder>? condition,
    List<DataRequirementBuilder>? input,
    List<DataRequirementBuilder>? output,
    List<PlanDefinitionRelatedActionBuilder>? relatedAction,
    TimingXPlanDefinitionActionBuilder? timingX,
    List<PlanDefinitionParticipantBuilder>? participant,
    CodeableConceptBuilder? type,
    ActionGroupingBehaviorBuilder? groupingBehavior,
    ActionSelectionBehaviorBuilder? selectionBehavior,
    ActionRequiredBehaviorBuilder? requiredBehavior,
    ActionPrecheckBehaviorBuilder? precheckBehavior,
    ActionCardinalityBehaviorBuilder? cardinalityBehavior,
    DefinitionXPlanDefinitionActionBuilder? definitionX,
    FhirCanonicalBuilder? transform,
    List<PlanDefinitionDynamicValueBuilder>? dynamicValue,
    List<PlanDefinitionActionBuilder>? action,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = PlanDefinitionActionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      prefix: prefix ?? this.prefix,
      title: title ?? this.title,
      description: description ?? this.description,
      textEquivalent: textEquivalent ?? this.textEquivalent,
      priority: priority ?? this.priority,
      code: code ?? this.code,
      reason: reason ?? this.reason,
      documentation: documentation ?? this.documentation,
      goalId: goalId ?? this.goalId,
      subjectX: subjectX ?? this.subjectX,
      trigger: trigger ?? this.trigger,
      condition: condition ?? this.condition,
      input: input ?? this.input,
      output: output ?? this.output,
      relatedAction: relatedAction ?? this.relatedAction,
      timingX: timingX ?? this.timingX,
      participant: participant ?? this.participant,
      type: type ?? this.type,
      groupingBehavior: groupingBehavior ?? this.groupingBehavior,
      selectionBehavior: selectionBehavior ?? this.selectionBehavior,
      requiredBehavior: requiredBehavior ?? this.requiredBehavior,
      precheckBehavior: precheckBehavior ?? this.precheckBehavior,
      cardinalityBehavior: cardinalityBehavior ?? this.cardinalityBehavior,
      definitionX: definitionX ?? this.definitionX,
      transform: transform ?? this.transform,
      dynamicValue: dynamicValue ?? this.dynamicValue,
      action: action ?? this.action,
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
    if (o is! PlanDefinitionActionBuilder) {
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
      prefix,
      o.prefix,
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
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      textEquivalent,
      o.textEquivalent,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      priority,
      o.priority,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      reason,
      o.reason,
    )) {
      return false;
    }
    if (!listEquals<RelatedArtifactBuilder>(
      documentation,
      o.documentation,
    )) {
      return false;
    }
    if (!listEquals<FhirIdBuilder>(
      goalId,
      o.goalId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subjectX,
      o.subjectX,
    )) {
      return false;
    }
    if (!listEquals<TriggerDefinitionBuilder>(
      trigger,
      o.trigger,
    )) {
      return false;
    }
    if (!listEquals<PlanDefinitionConditionBuilder>(
      condition,
      o.condition,
    )) {
      return false;
    }
    if (!listEquals<DataRequirementBuilder>(
      input,
      o.input,
    )) {
      return false;
    }
    if (!listEquals<DataRequirementBuilder>(
      output,
      o.output,
    )) {
      return false;
    }
    if (!listEquals<PlanDefinitionRelatedActionBuilder>(
      relatedAction,
      o.relatedAction,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      timingX,
      o.timingX,
    )) {
      return false;
    }
    if (!listEquals<PlanDefinitionParticipantBuilder>(
      participant,
      o.participant,
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
      groupingBehavior,
      o.groupingBehavior,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      selectionBehavior,
      o.selectionBehavior,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      requiredBehavior,
      o.requiredBehavior,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      precheckBehavior,
      o.precheckBehavior,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      cardinalityBehavior,
      o.cardinalityBehavior,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      definitionX,
      o.definitionX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      transform,
      o.transform,
    )) {
      return false;
    }
    if (!listEquals<PlanDefinitionDynamicValueBuilder>(
      dynamicValue,
      o.dynamicValue,
    )) {
      return false;
    }
    if (!listEquals<PlanDefinitionActionBuilder>(
      action,
      o.action,
    )) {
      return false;
    }
    return true;
  }
}

/// [PlanDefinitionConditionBuilder]
/// An expression that describes applicability criteria or start/stop
/// conditions for the action.
class PlanDefinitionConditionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [PlanDefinitionConditionBuilder]

  PlanDefinitionConditionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.kind,
    this.expression,
    super.disallowExtensions,
  }) : super(
          objectPath: 'PlanDefinition.action.condition',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory PlanDefinitionConditionBuilder.empty() =>
      PlanDefinitionConditionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PlanDefinitionConditionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PlanDefinition.action.condition';
    return PlanDefinitionConditionBuilder(
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
      kind: JsonParser.parsePrimitive<ActionConditionKindBuilder>(
        json,
        'kind',
        ActionConditionKindBuilder.fromJson,
        '$objectPath.kind',
      ),
      expression: JsonParser.parseObject<FhirExpressionBuilder>(
        json,
        'expression',
        FhirExpressionBuilder.fromJson,
        '$objectPath.expression',
      ),
    );
  }

  /// Deserialize [PlanDefinitionConditionBuilder]
  /// from a [String] or [YamlMap] object
  factory PlanDefinitionConditionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PlanDefinitionConditionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PlanDefinitionConditionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PlanDefinitionConditionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PlanDefinitionConditionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PlanDefinitionConditionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PlanDefinitionConditionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PlanDefinitionCondition';

  /// [kind]
  /// The kind of condition.
  ActionConditionKindBuilder? kind;

  /// [expression]
  /// An expression that returns true or false, indicating whether the
  /// condition is satisfied.
  FhirExpressionBuilder? expression;

  /// Converts a [PlanDefinitionConditionBuilder]
  /// to [PlanDefinitionCondition]
  @override
  PlanDefinitionCondition build() => PlanDefinitionCondition.fromJson(toJson());

  /// Converts a [PlanDefinitionConditionBuilder]
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
      case 'kind':
        if (kind != null) {
          fields.add(kind!);
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
      case 'kind':
        {
          if (child is ActionConditionKindBuilder) {
            kind = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ActionConditionKindBuilder(stringValue);
                kind = converted;
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
      case 'expression':
        {
          if (child is FhirExpressionBuilder) {
            expression = child;
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
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'kind':
        return ['FhirCodeEnumBuilder'];
      case 'expression':
        return ['FhirExpressionBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [PlanDefinitionConditionBuilder]
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
      case 'kind':
        {
          kind = ActionConditionKindBuilder.empty();
          return;
        }
      case 'expression':
        {
          expression = FhirExpressionBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool kind = false,
    bool expression = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (kind) this.kind = null;
    if (expression) this.expression = null;
  }

  @override
  PlanDefinitionConditionBuilder clone() => throw UnimplementedError();
  @override
  PlanDefinitionConditionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ActionConditionKindBuilder? kind,
    FhirExpressionBuilder? expression,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = PlanDefinitionConditionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      kind: kind ?? this.kind,
      expression: expression ?? this.expression,
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
    if (o is! PlanDefinitionConditionBuilder) {
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
      kind,
      o.kind,
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

/// [PlanDefinitionRelatedActionBuilder]
/// A relationship to another action such as "before" or "30-60 minutes
/// after start of".
class PlanDefinitionRelatedActionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [PlanDefinitionRelatedActionBuilder]

  PlanDefinitionRelatedActionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.actionId,
    this.relationship,
    this.offsetX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'PlanDefinition.action.relatedAction',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory PlanDefinitionRelatedActionBuilder.empty() =>
      PlanDefinitionRelatedActionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PlanDefinitionRelatedActionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PlanDefinition.action.relatedAction';
    return PlanDefinitionRelatedActionBuilder(
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
      actionId: JsonParser.parsePrimitive<FhirIdBuilder>(
        json,
        'actionId',
        FhirIdBuilder.fromJson,
        '$objectPath.actionId',
      ),
      relationship: JsonParser.parsePrimitive<ActionRelationshipTypeBuilder>(
        json,
        'relationship',
        ActionRelationshipTypeBuilder.fromJson,
        '$objectPath.relationship',
      ),
      offsetX: JsonParser.parsePolymorphic<
          OffsetXPlanDefinitionRelatedActionBuilder>(
        json,
        {
          'offsetDuration': FhirDurationBuilder.fromJson,
          'offsetRange': RangeBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [PlanDefinitionRelatedActionBuilder]
  /// from a [String] or [YamlMap] object
  factory PlanDefinitionRelatedActionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PlanDefinitionRelatedActionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PlanDefinitionRelatedActionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PlanDefinitionRelatedActionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PlanDefinitionRelatedActionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PlanDefinitionRelatedActionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PlanDefinitionRelatedActionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PlanDefinitionRelatedAction';

  /// [actionId]
  /// The element id of the related action.
  FhirIdBuilder? actionId;

  /// [relationship]
  /// The relationship of this action to the related action.
  ActionRelationshipTypeBuilder? relationship;

  /// [offsetX]
  /// A duration or range of durations to apply to the relationship. For
  /// example, 30-60 minutes before.
  OffsetXPlanDefinitionRelatedActionBuilder? offsetX;

  /// Getter for [offsetDuration] as a FhirDurationBuilder
  FhirDurationBuilder? get offsetDuration =>
      offsetX?.isAs<FhirDurationBuilder>();

  /// Getter for [offsetRange] as a RangeBuilder
  RangeBuilder? get offsetRange => offsetX?.isAs<RangeBuilder>();

  /// Converts a [PlanDefinitionRelatedActionBuilder]
  /// to [PlanDefinitionRelatedAction]
  @override
  PlanDefinitionRelatedAction build() =>
      PlanDefinitionRelatedAction.fromJson(toJson());

  /// Converts a [PlanDefinitionRelatedActionBuilder]
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
      case 'actionId':
        if (actionId != null) {
          fields.add(actionId!);
        }
      case 'relationship':
        if (relationship != null) {
          fields.add(relationship!);
        }
      case 'offset':
        if (offsetX != null) {
          fields.add(offsetX!);
        }
      case 'offsetX':
        if (offsetX != null) {
          fields.add(offsetX!);
        }
      case 'offsetDuration':
        if (offsetX is FhirDurationBuilder) {
          fields.add(offsetX!);
        }
      case 'offsetRange':
        if (offsetX is RangeBuilder) {
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
      case 'actionId':
        {
          if (child is FhirIdBuilder) {
            actionId = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirIdBuilder.tryParse(stringValue);
              if (converted != null) {
                actionId = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'relationship':
        {
          if (child is ActionRelationshipTypeBuilder) {
            relationship = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ActionRelationshipTypeBuilder(stringValue);
                relationship = converted;
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
      case 'offsetX':
        {
          if (child is OffsetXPlanDefinitionRelatedActionBuilder) {
            offsetX = child;
            return;
          } else {
            if (child is FhirDurationBuilder) {
              offsetX = child;
              return;
            }
            if (child is RangeBuilder) {
              offsetX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'offsetDuration':
        {
          if (child is FhirDurationBuilder) {
            offsetX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'offsetRange':
        {
          if (child is RangeBuilder) {
            offsetX = child;
            return;
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'actionId':
        return ['FhirIdBuilder'];
      case 'relationship':
        return ['FhirCodeEnumBuilder'];
      case 'offset':
      case 'offsetX':
        return [
          'FhirDurationBuilder',
          'RangeBuilder',
        ];
      case 'offsetDuration':
        return ['FhirDurationBuilder'];
      case 'offsetRange':
        return ['RangeBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [PlanDefinitionRelatedActionBuilder]
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
      case 'actionId':
        {
          actionId = FhirIdBuilder.empty();
          return;
        }
      case 'relationship':
        {
          relationship = ActionRelationshipTypeBuilder.empty();
          return;
        }
      case 'offset':
      case 'offsetX':
      case 'offsetDuration':
        {
          offsetX = FhirDurationBuilder.empty();
          return;
        }
      case 'offsetRange':
        {
          offsetX = RangeBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool actionId = false,
    bool relationship = false,
    bool offset = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (actionId) this.actionId = null;
    if (relationship) this.relationship = null;
    if (offset) offsetX = null;
  }

  @override
  PlanDefinitionRelatedActionBuilder clone() => throw UnimplementedError();
  @override
  PlanDefinitionRelatedActionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirIdBuilder? actionId,
    ActionRelationshipTypeBuilder? relationship,
    OffsetXPlanDefinitionRelatedActionBuilder? offsetX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = PlanDefinitionRelatedActionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      actionId: actionId ?? this.actionId,
      relationship: relationship ?? this.relationship,
      offsetX: offsetX ?? this.offsetX,
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
    if (o is! PlanDefinitionRelatedActionBuilder) {
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
      actionId,
      o.actionId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      relationship,
      o.relationship,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      offsetX,
      o.offsetX,
    )) {
      return false;
    }
    return true;
  }
}

/// [PlanDefinitionParticipantBuilder]
/// Indicates who should participate in performing the action described.
class PlanDefinitionParticipantBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [PlanDefinitionParticipantBuilder]

  PlanDefinitionParticipantBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.role,
    super.disallowExtensions,
  }) : super(
          objectPath: 'PlanDefinition.action.participant',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory PlanDefinitionParticipantBuilder.empty() =>
      PlanDefinitionParticipantBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PlanDefinitionParticipantBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PlanDefinition.action.participant';
    return PlanDefinitionParticipantBuilder(
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
      type: JsonParser.parsePrimitive<ActionParticipantTypeBuilder>(
        json,
        'type',
        ActionParticipantTypeBuilder.fromJson,
        '$objectPath.type',
      ),
      role: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'role',
        CodeableConceptBuilder.fromJson,
        '$objectPath.role',
      ),
    );
  }

  /// Deserialize [PlanDefinitionParticipantBuilder]
  /// from a [String] or [YamlMap] object
  factory PlanDefinitionParticipantBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PlanDefinitionParticipantBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PlanDefinitionParticipantBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PlanDefinitionParticipantBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PlanDefinitionParticipantBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PlanDefinitionParticipantBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PlanDefinitionParticipantBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PlanDefinitionParticipant';

  /// [type]
  /// The type of participant in the action.
  ActionParticipantTypeBuilder? type;

  /// [role]
  /// The role the participant should play in performing the described
  /// action.
  CodeableConceptBuilder? role;

  /// Converts a [PlanDefinitionParticipantBuilder]
  /// to [PlanDefinitionParticipant]
  @override
  PlanDefinitionParticipant build() =>
      PlanDefinitionParticipant.fromJson(toJson());

  /// Converts a [PlanDefinitionParticipantBuilder]
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
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
      case 'type':
        {
          if (child is ActionParticipantTypeBuilder) {
            type = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ActionParticipantTypeBuilder(stringValue);
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
      case 'role':
        {
          if (child is CodeableConceptBuilder) {
            role = child;
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
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'type':
        return ['FhirCodeEnumBuilder'];
      case 'role':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [PlanDefinitionParticipantBuilder]
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
      case 'type':
        {
          type = ActionParticipantTypeBuilder.empty();
          return;
        }
      case 'role':
        {
          role = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool type = false,
    bool role = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (type) this.type = null;
    if (role) this.role = null;
  }

  @override
  PlanDefinitionParticipantBuilder clone() => throw UnimplementedError();
  @override
  PlanDefinitionParticipantBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ActionParticipantTypeBuilder? type,
    CodeableConceptBuilder? role,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = PlanDefinitionParticipantBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      role: role ?? this.role,
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
    if (o is! PlanDefinitionParticipantBuilder) {
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

/// [PlanDefinitionDynamicValueBuilder]
/// Customizations that should be applied to the statically defined
/// resource. For example, if the dosage of a medication must be computed
/// based on the patient's weight, a customization would be used to specify
/// an expression that calculated the weight, and the path on the resource
/// that would contain the result.
class PlanDefinitionDynamicValueBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [PlanDefinitionDynamicValueBuilder]

  PlanDefinitionDynamicValueBuilder({
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
  /// For Builder classes, no fields are required
  factory PlanDefinitionDynamicValueBuilder.empty() =>
      PlanDefinitionDynamicValueBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PlanDefinitionDynamicValueBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PlanDefinition.action.dynamicValue';
    return PlanDefinitionDynamicValueBuilder(
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
      path: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'path',
        FhirStringBuilder.fromJson,
        '$objectPath.path',
      ),
      expression: JsonParser.parseObject<FhirExpressionBuilder>(
        json,
        'expression',
        FhirExpressionBuilder.fromJson,
        '$objectPath.expression',
      ),
    );
  }

  /// Deserialize [PlanDefinitionDynamicValueBuilder]
  /// from a [String] or [YamlMap] object
  factory PlanDefinitionDynamicValueBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PlanDefinitionDynamicValueBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PlanDefinitionDynamicValueBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PlanDefinitionDynamicValueBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PlanDefinitionDynamicValueBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PlanDefinitionDynamicValueBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PlanDefinitionDynamicValueBuilder.fromJson(json);
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
  FhirStringBuilder? path;

  /// [expression]
  /// An expression specifying the value of the customized element.
  FhirExpressionBuilder? expression;

  /// Converts a [PlanDefinitionDynamicValueBuilder]
  /// to [PlanDefinitionDynamicValue]
  @override
  PlanDefinitionDynamicValue build() =>
      PlanDefinitionDynamicValue.fromJson(toJson());

  /// Converts a [PlanDefinitionDynamicValueBuilder]
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
      case 'path':
        {
          if (child is FhirStringBuilder) {
            path = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                path = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'expression':
        {
          if (child is FhirExpressionBuilder) {
            expression = child;
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
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'path':
        return ['FhirStringBuilder'];
      case 'expression':
        return ['FhirExpressionBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [PlanDefinitionDynamicValueBuilder]
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
      case 'path':
        {
          path = FhirStringBuilder.empty();
          return;
        }
      case 'expression':
        {
          expression = FhirExpressionBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool path = false,
    bool expression = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (path) this.path = null;
    if (expression) this.expression = null;
  }

  @override
  PlanDefinitionDynamicValueBuilder clone() => throw UnimplementedError();
  @override
  PlanDefinitionDynamicValueBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? path,
    FhirExpressionBuilder? expression,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = PlanDefinitionDynamicValueBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      path: path ?? this.path,
      expression: expression ?? this.expression,
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
    if (o is! PlanDefinitionDynamicValueBuilder) {
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
