import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'plan_definition.g.dart';

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
    SubjectXPlanDefinition? subjectX,
    CodeableConcept? subjectCodeableConcept,
    Reference? subjectReference,
    FhirCanonical? subjectCanonical,
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
  })  : subjectX = subjectX ??
            subjectCodeableConcept ??
            subjectReference ??
            subjectCanonical,
        super(
          resourceType: R4ResourceType.PlanDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PlanDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return PlanDefinition(
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
      subtitle: JsonParser.parsePrimitive<FhirString>(
        json,
        'subtitle',
        FhirString.fromJson,
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      status: JsonParser.parsePrimitive<PublicationStatus>(
        json,
        'status',
        PublicationStatus.fromJson,
      ),
      experimental: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'experimental',
        FhirBoolean.fromJson,
      ),
      subjectX: JsonParser.parsePolymorphic<SubjectXPlanDefinition>(
        json,
        {
          'subjectCodeableConcept': CodeableConcept.fromJson,
          'subjectReference': Reference.fromJson,
          'subjectCanonical': FhirCanonical.fromJson,
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
      goal: (json['goal'] as List<dynamic>?)
          ?.map<PlanDefinitionGoal>(
            (v) => PlanDefinitionGoal.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      action: (json['action'] as List<dynamic>?)
          ?.map<PlanDefinitionAction>(
            (v) => PlanDefinitionAction.fromJson(
              {...v as Map<String, dynamic>},
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
      'subtitle',
      subtitle,
    );
    addField(
      'type',
      type,
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
      'goal',
      goal,
    );
    addField(
      'action',
      action,
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
  PlanDefinition clone() => copyWith();

  /// Copy function for [PlanDefinition]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $PlanDefinitionCopyWith<PlanDefinition> get copyWith =>
      _$PlanDefinitionCopyWithImpl<PlanDefinition>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! PlanDefinition) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      url,
      o.url,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      version,
      o.version,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      title,
      o.title,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      subtitle,
      o.subtitle,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      experimental,
      o.experimental,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      subjectX,
      o.subjectX,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      date,
      o.date,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      publisher,
      o.publisher,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ContactDetail>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<UsageContext>(
      useContext,
      o.useContext,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      jurisdiction,
      o.jurisdiction,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      purpose,
      o.purpose,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      usage,
      o.usage,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      copyright,
      o.copyright,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      approvalDate,
      o.approvalDate,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      lastReviewDate,
      o.lastReviewDate,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      effectivePeriod,
      o.effectivePeriod,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      topic,
      o.topic,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ContactDetail>(
      author,
      o.author,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ContactDetail>(
      editor,
      o.editor,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ContactDetail>(
      reviewer,
      o.reviewer,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ContactDetail>(
      endorser,
      o.endorser,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<RelatedArtifact>(
      relatedArtifact,
      o.relatedArtifact,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirCanonical>(
      library_,
      o.library_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<PlanDefinitionGoal>(
      goal,
      o.goal,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<PlanDefinitionAction>(
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PlanDefinitionGoal.fromJson(
    Map<String, dynamic> json,
  ) {
    return PlanDefinitionGoal(
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
      category: JsonParser.parseObject<CodeableConcept>(
        json,
        'category',
        CodeableConcept.fromJson,
      ),
      description: JsonParser.parseObject<CodeableConcept>(
        json,
        'description',
        CodeableConcept.fromJson,
      )!,
      priority: JsonParser.parseObject<CodeableConcept>(
        json,
        'priority',
        CodeableConcept.fromJson,
      ),
      start: JsonParser.parseObject<CodeableConcept>(
        json,
        'start',
        CodeableConcept.fromJson,
      ),
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      documentation: (json['documentation'] as List<dynamic>?)
          ?.map<RelatedArtifact>(
            (v) => RelatedArtifact.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      target: (json['target'] as List<dynamic>?)
          ?.map<PlanDefinitionTarget>(
            (v) => PlanDefinitionTarget.fromJson(
              {...v as Map<String, dynamic>},
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
    addField(
      'category',
      category,
    );
    addField(
      'description',
      description,
    );
    addField(
      'priority',
      priority,
    );
    addField(
      'start',
      start,
    );
    addField(
      'addresses',
      addresses,
    );
    addField(
      'documentation',
      documentation,
    );
    addField(
      'target',
      target,
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
  PlanDefinitionGoal clone() => copyWith();

  /// Copy function for [PlanDefinitionGoal]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $PlanDefinitionGoalCopyWith<PlanDefinitionGoal> get copyWith =>
      _$PlanDefinitionGoalCopyWithImpl<PlanDefinitionGoal>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! PlanDefinitionGoal) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      category,
      o.category,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      priority,
      o.priority,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      start,
      o.start,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      addresses,
      o.addresses,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<RelatedArtifact>(
      documentation,
      o.documentation,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<PlanDefinitionTarget>(
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
    DetailXPlanDefinitionTarget? detailX,
    Quantity? detailQuantity,
    Range? detailRange,
    CodeableConcept? detailCodeableConcept,
    this.due,
    super.disallowExtensions,
  })  : detailX =
            detailX ?? detailQuantity ?? detailRange ?? detailCodeableConcept,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PlanDefinitionTarget.fromJson(
    Map<String, dynamic> json,
  ) {
    return PlanDefinitionTarget(
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
      measure: JsonParser.parseObject<CodeableConcept>(
        json,
        'measure',
        CodeableConcept.fromJson,
      ),
      detailX: JsonParser.parsePolymorphic<DetailXPlanDefinitionTarget>(
        json,
        {
          'detailQuantity': Quantity.fromJson,
          'detailRange': Range.fromJson,
          'detailCodeableConcept': CodeableConcept.fromJson,
        },
      ),
      due: JsonParser.parseObject<FhirDuration>(
        json,
        'due',
        FhirDuration.fromJson,
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
    addField(
      'measure',
      measure,
    );
    if (detailX != null) {
      final fhirType = detailX!.fhirType;
      addField(
        'detail${fhirType.capitalize()}',
        detailX,
      );
    }

    addField(
      'due',
      due,
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
  PlanDefinitionTarget clone() => copyWith();

  /// Copy function for [PlanDefinitionTarget]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $PlanDefinitionTargetCopyWith<PlanDefinitionTarget> get copyWith =>
      _$PlanDefinitionTargetCopyWithImpl<PlanDefinitionTarget>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! PlanDefinitionTarget) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      measure,
      o.measure,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      detailX,
      o.detailX,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      due,
      o.due,
    )) {
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
    SubjectXPlanDefinitionAction? subjectX,
    CodeableConcept? subjectCodeableConcept,
    Reference? subjectReference,
    FhirCanonical? subjectCanonical,
    this.trigger,
    this.condition,
    this.input,
    this.output,
    this.relatedAction,
    TimingXPlanDefinitionAction? timingX,
    FhirDateTime? timingDateTime,
    Age? timingAge,
    Period? timingPeriod,
    FhirDuration? timingDuration,
    Range? timingRange,
    Timing? timingTiming,
    this.participant,
    this.type,
    this.groupingBehavior,
    this.selectionBehavior,
    this.requiredBehavior,
    this.precheckBehavior,
    this.cardinalityBehavior,
    DefinitionXPlanDefinitionAction? definitionX,
    FhirCanonical? definitionCanonical,
    FhirUri? definitionUri,
    this.transform,
    this.dynamicValue,
    this.action,
    super.disallowExtensions,
  })  : subjectX = subjectX ??
            subjectCodeableConcept ??
            subjectReference ??
            subjectCanonical,
        timingX = timingX ??
            timingDateTime ??
            timingAge ??
            timingPeriod ??
            timingDuration ??
            timingRange ??
            timingTiming,
        definitionX = definitionX ?? definitionCanonical ?? definitionUri,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PlanDefinitionAction.fromJson(
    Map<String, dynamic> json,
  ) {
    return PlanDefinitionAction(
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
      prefix: JsonParser.parsePrimitive<FhirString>(
        json,
        'prefix',
        FhirString.fromJson,
      ),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
      ),
      textEquivalent: JsonParser.parsePrimitive<FhirString>(
        json,
        'textEquivalent',
        FhirString.fromJson,
      ),
      priority: JsonParser.parsePrimitive<RequestPriority>(
        json,
        'priority',
        RequestPriority.fromJson,
      ),
      code: (json['code'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      reason: (json['reason'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      documentation: (json['documentation'] as List<dynamic>?)
          ?.map<RelatedArtifact>(
            (v) => RelatedArtifact.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      goalId: JsonParser.parsePrimitiveList<FhirId>(
        json,
        'goalId',
        FhirId.fromJson,
      ),
      subjectX: JsonParser.parsePolymorphic<SubjectXPlanDefinitionAction>(
        json,
        {
          'subjectCodeableConcept': CodeableConcept.fromJson,
          'subjectReference': Reference.fromJson,
          'subjectCanonical': FhirCanonical.fromJson,
        },
      ),
      trigger: (json['trigger'] as List<dynamic>?)
          ?.map<TriggerDefinition>(
            (v) => TriggerDefinition.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      condition: (json['condition'] as List<dynamic>?)
          ?.map<PlanDefinitionCondition>(
            (v) => PlanDefinitionCondition.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      input: (json['input'] as List<dynamic>?)
          ?.map<DataRequirement>(
            (v) => DataRequirement.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      output: (json['output'] as List<dynamic>?)
          ?.map<DataRequirement>(
            (v) => DataRequirement.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      relatedAction: (json['relatedAction'] as List<dynamic>?)
          ?.map<PlanDefinitionRelatedAction>(
            (v) => PlanDefinitionRelatedAction.fromJson(
              {...v as Map<String, dynamic>},
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
      ),
      participant: (json['participant'] as List<dynamic>?)
          ?.map<PlanDefinitionParticipant>(
            (v) => PlanDefinitionParticipant.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      groupingBehavior: JsonParser.parsePrimitive<ActionGroupingBehavior>(
        json,
        'groupingBehavior',
        ActionGroupingBehavior.fromJson,
      ),
      selectionBehavior: JsonParser.parsePrimitive<ActionSelectionBehavior>(
        json,
        'selectionBehavior',
        ActionSelectionBehavior.fromJson,
      ),
      requiredBehavior: JsonParser.parsePrimitive<ActionRequiredBehavior>(
        json,
        'requiredBehavior',
        ActionRequiredBehavior.fromJson,
      ),
      precheckBehavior: JsonParser.parsePrimitive<ActionPrecheckBehavior>(
        json,
        'precheckBehavior',
        ActionPrecheckBehavior.fromJson,
      ),
      cardinalityBehavior: JsonParser.parsePrimitive<ActionCardinalityBehavior>(
        json,
        'cardinalityBehavior',
        ActionCardinalityBehavior.fromJson,
      ),
      definitionX: JsonParser.parsePolymorphic<DefinitionXPlanDefinitionAction>(
        json,
        {
          'definitionCanonical': FhirCanonical.fromJson,
          'definitionUri': FhirUri.fromJson,
        },
      ),
      transform: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'transform',
        FhirCanonical.fromJson,
      ),
      dynamicValue: (json['dynamicValue'] as List<dynamic>?)
          ?.map<PlanDefinitionDynamicValue>(
            (v) => PlanDefinitionDynamicValue.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      action: (json['action'] as List<dynamic>?)
          ?.map<PlanDefinitionAction>(
            (v) => PlanDefinitionAction.fromJson(
              {...v as Map<String, dynamic>},
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
    addField(
      'prefix',
      prefix,
    );
    addField(
      'title',
      title,
    );
    addField(
      'description',
      description,
    );
    addField(
      'textEquivalent',
      textEquivalent,
    );
    addField(
      'priority',
      priority,
    );
    addField(
      'code',
      code,
    );
    addField(
      'reason',
      reason,
    );
    addField(
      'documentation',
      documentation,
    );
    addField(
      'goalId',
      goalId,
    );
    if (subjectX != null) {
      final fhirType = subjectX!.fhirType;
      addField(
        'subject${fhirType.capitalize()}',
        subjectX,
      );
    }

    addField(
      'trigger',
      trigger,
    );
    addField(
      'condition',
      condition,
    );
    addField(
      'input',
      input,
    );
    addField(
      'output',
      output,
    );
    addField(
      'relatedAction',
      relatedAction,
    );
    if (timingX != null) {
      final fhirType = timingX!.fhirType;
      addField(
        'timing${fhirType.capitalize()}',
        timingX,
      );
    }

    addField(
      'participant',
      participant,
    );
    addField(
      'type',
      type,
    );
    addField(
      'groupingBehavior',
      groupingBehavior,
    );
    addField(
      'selectionBehavior',
      selectionBehavior,
    );
    addField(
      'requiredBehavior',
      requiredBehavior,
    );
    addField(
      'precheckBehavior',
      precheckBehavior,
    );
    addField(
      'cardinalityBehavior',
      cardinalityBehavior,
    );
    if (definitionX != null) {
      final fhirType = definitionX!.fhirType;
      addField(
        'definition${fhirType.capitalize()}',
        definitionX,
      );
    }

    addField(
      'transform',
      transform,
    );
    addField(
      'dynamicValue',
      dynamicValue,
    );
    addField(
      'action',
      action,
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
  PlanDefinitionAction clone() => copyWith();

  /// Copy function for [PlanDefinitionAction]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $PlanDefinitionActionCopyWith<PlanDefinitionAction> get copyWith =>
      _$PlanDefinitionActionCopyWithImpl<PlanDefinitionAction>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! PlanDefinitionAction) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      prefix,
      o.prefix,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      title,
      o.title,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      textEquivalent,
      o.textEquivalent,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      priority,
      o.priority,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      code,
      o.code,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      reason,
      o.reason,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<RelatedArtifact>(
      documentation,
      o.documentation,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirId>(
      goalId,
      o.goalId,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      subjectX,
      o.subjectX,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<TriggerDefinition>(
      trigger,
      o.trigger,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<PlanDefinitionCondition>(
      condition,
      o.condition,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<DataRequirement>(
      input,
      o.input,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<DataRequirement>(
      output,
      o.output,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<PlanDefinitionRelatedAction>(
      relatedAction,
      o.relatedAction,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      timingX,
      o.timingX,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<PlanDefinitionParticipant>(
      participant,
      o.participant,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      groupingBehavior,
      o.groupingBehavior,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      selectionBehavior,
      o.selectionBehavior,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      requiredBehavior,
      o.requiredBehavior,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      precheckBehavior,
      o.precheckBehavior,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      cardinalityBehavior,
      o.cardinalityBehavior,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      definitionX,
      o.definitionX,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      transform,
      o.transform,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<PlanDefinitionDynamicValue>(
      dynamicValue,
      o.dynamicValue,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<PlanDefinitionAction>(
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PlanDefinitionCondition.fromJson(
    Map<String, dynamic> json,
  ) {
    return PlanDefinitionCondition(
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
      kind: JsonParser.parsePrimitive<ActionConditionKind>(
        json,
        'kind',
        ActionConditionKind.fromJson,
      )!,
      expression: JsonParser.parseObject<FhirExpression>(
        json,
        'expression',
        FhirExpression.fromJson,
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
    addField(
      'kind',
      kind,
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
  PlanDefinitionCondition clone() => copyWith();

  /// Copy function for [PlanDefinitionCondition]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $PlanDefinitionConditionCopyWith<PlanDefinitionCondition> get copyWith =>
      _$PlanDefinitionConditionCopyWithImpl<PlanDefinitionCondition>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! PlanDefinitionCondition) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      kind,
      o.kind,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      expression,
      o.expression,
    )) {
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
    OffsetXPlanDefinitionRelatedAction? offsetX,
    FhirDuration? offsetDuration,
    Range? offsetRange,
    super.disallowExtensions,
  })  : offsetX = offsetX ?? offsetDuration ?? offsetRange,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PlanDefinitionRelatedAction.fromJson(
    Map<String, dynamic> json,
  ) {
    return PlanDefinitionRelatedAction(
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
      actionId: JsonParser.parsePrimitive<FhirId>(
        json,
        'actionId',
        FhirId.fromJson,
      )!,
      relationship: JsonParser.parsePrimitive<ActionRelationshipType>(
        json,
        'relationship',
        ActionRelationshipType.fromJson,
      )!,
      offsetX: JsonParser.parsePolymorphic<OffsetXPlanDefinitionRelatedAction>(
        json,
        {
          'offsetDuration': FhirDuration.fromJson,
          'offsetRange': Range.fromJson,
        },
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
    addField(
      'actionId',
      actionId,
    );
    addField(
      'relationship',
      relationship,
    );
    if (offsetX != null) {
      final fhirType = offsetX!.fhirType;
      addField(
        'offset${fhirType.capitalize()}',
        offsetX,
      );
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
  PlanDefinitionRelatedAction clone() => copyWith();

  /// Copy function for [PlanDefinitionRelatedAction]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $PlanDefinitionRelatedActionCopyWith<PlanDefinitionRelatedAction>
      get copyWith => _$PlanDefinitionRelatedActionCopyWithImpl<
              PlanDefinitionRelatedAction>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! PlanDefinitionRelatedAction) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      actionId,
      o.actionId,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      relationship,
      o.relationship,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      offsetX,
      o.offsetX,
    )) {
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PlanDefinitionParticipant.fromJson(
    Map<String, dynamic> json,
  ) {
    return PlanDefinitionParticipant(
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
      type: JsonParser.parsePrimitive<ActionParticipantType>(
        json,
        'type',
        ActionParticipantType.fromJson,
      )!,
      role: JsonParser.parseObject<CodeableConcept>(
        json,
        'role',
        CodeableConcept.fromJson,
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
  PlanDefinitionParticipant clone() => copyWith();

  /// Copy function for [PlanDefinitionParticipant]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $PlanDefinitionParticipantCopyWith<PlanDefinitionParticipant> get copyWith =>
      _$PlanDefinitionParticipantCopyWithImpl<PlanDefinitionParticipant>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! PlanDefinitionParticipant) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      role,
      o.role,
    )) {
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PlanDefinitionDynamicValue.fromJson(
    Map<String, dynamic> json,
  ) {
    return PlanDefinitionDynamicValue(
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
      path: JsonParser.parsePrimitive<FhirString>(
        json,
        'path',
        FhirString.fromJson,
      ),
      expression: JsonParser.parseObject<FhirExpression>(
        json,
        'expression',
        FhirExpression.fromJson,
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
  PlanDefinitionDynamicValue clone() => copyWith();

  /// Copy function for [PlanDefinitionDynamicValue]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $PlanDefinitionDynamicValueCopyWith<PlanDefinitionDynamicValue>
      get copyWith =>
          _$PlanDefinitionDynamicValueCopyWithImpl<PlanDefinitionDynamicValue>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! PlanDefinitionDynamicValue) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      path,
      o.path,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      expression,
      o.expression,
    )) {
      return false;
    }
    return true;
  }
}
