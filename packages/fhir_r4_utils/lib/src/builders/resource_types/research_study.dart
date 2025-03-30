import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        R4ResourceType,
        ResearchStudy,
        ResearchStudyArm,
        ResearchStudyObjective,
        StringExtensionForFHIR,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [ResearchStudyBuilder]
/// A process where a researcher or organization plans and then executes a
/// series of steps intended to increase the field of healthcare-related
/// knowledge. This includes studies of safety, efficacy, comparative
/// effectiveness and other information about medications, devices,
/// therapies and other interventional and investigative techniques. A
/// ResearchStudy involves the gathering of information about human or
/// animal subjects.
class ResearchStudyBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [ResearchStudyBuilder]

  ResearchStudyBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.title,
    this.protocol,
    this.partOf,
    this.status,
    this.primaryPurposeType,
    this.phase,
    this.category,
    this.focus,
    this.condition,
    this.contact,
    this.relatedArtifact,
    this.keyword,
    this.location,
    this.description,
    this.enrollment,
    this.period,
    this.sponsor,
    this.principalInvestigator,
    this.site,
    this.reasonStopped,
    this.note,
    this.arm,
    this.objective,
  }) : super(
          objectPath: 'ResearchStudy',
          resourceType: R4ResourceType.ResearchStudy,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ResearchStudyBuilder.empty() => ResearchStudyBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchStudyBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ResearchStudy';
    return ResearchStudyBuilder(
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
      title: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'title',
        FhirStringBuilder.fromJson,
        '$objectPath.title',
      ),
      protocol: (json['protocol'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.protocol',
              },
            ),
          )
          .toList(),
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.partOf',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<ResearchStudyStatusBuilder>(
        json,
        'status',
        ResearchStudyStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      primaryPurposeType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'primaryPurposeType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.primaryPurposeType',
      ),
      phase: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'phase',
        CodeableConceptBuilder.fromJson,
        '$objectPath.phase',
      ),
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.category',
              },
            ),
          )
          .toList(),
      focus: (json['focus'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.focus',
              },
            ),
          )
          .toList(),
      condition: (json['condition'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.condition',
              },
            ),
          )
          .toList(),
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
      keyword: (json['keyword'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.keyword',
              },
            ),
          )
          .toList(),
      location: (json['location'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.location',
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
      enrollment: (json['enrollment'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.enrollment',
              },
            ),
          )
          .toList(),
      period: JsonParser.parseObject<PeriodBuilder>(
        json,
        'period',
        PeriodBuilder.fromJson,
        '$objectPath.period',
      ),
      sponsor: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'sponsor',
        ReferenceBuilder.fromJson,
        '$objectPath.sponsor',
      ),
      principalInvestigator: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'principalInvestigator',
        ReferenceBuilder.fromJson,
        '$objectPath.principalInvestigator',
      ),
      site: (json['site'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.site',
              },
            ),
          )
          .toList(),
      reasonStopped: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'reasonStopped',
        CodeableConceptBuilder.fromJson,
        '$objectPath.reasonStopped',
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<AnnotationBuilder>(
            (v) => AnnotationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      arm: (json['arm'] as List<dynamic>?)
          ?.map<ResearchStudyArmBuilder>(
            (v) => ResearchStudyArmBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.arm',
              },
            ),
          )
          .toList(),
      objective: (json['objective'] as List<dynamic>?)
          ?.map<ResearchStudyObjectiveBuilder>(
            (v) => ResearchStudyObjectiveBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.objective',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ResearchStudyBuilder]
  /// from a [String] or [YamlMap] object
  factory ResearchStudyBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchStudyBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchStudyBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchStudyBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchStudyBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchStudyBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ResearchStudyBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ResearchStudy';

  /// [identifier]
  /// Identifiers assigned to this research study by the sponsor or other
  /// systems.
  List<IdentifierBuilder>? identifier;

  /// [title]
  /// A short, descriptive user-friendly label for the study.
  FhirStringBuilder? title;

  /// [protocol]
  /// The set of steps expected to be performed as part of the execution of
  /// the study.
  List<ReferenceBuilder>? protocol;

  /// [partOf]
  /// A larger research study of which this particular study is a component
  /// or step.
  List<ReferenceBuilder>? partOf;

  /// [status]
  /// The current state of the study.
  ResearchStudyStatusBuilder? status;

  /// [primaryPurposeType]
  /// The type of study based upon the intent of the study's activities. A
  /// classification of the intent of the study.
  CodeableConceptBuilder? primaryPurposeType;

  /// [phase]
  /// The stage in the progression of a therapy from initial experimental use
  /// in humans in clinical trials to post-market evaluation.
  CodeableConceptBuilder? phase;

  /// [category]
  /// Codes categorizing the type of study such as investigational vs.
  /// observational, type of blinding, type of randomization, safety vs.
  /// efficacy, etc.
  List<CodeableConceptBuilder>? category;

  /// [focus]
  /// The medication(s), food(s), therapy(ies), device(s) or other concerns
  /// or interventions that the study is seeking to gain more information
  /// about.
  List<CodeableConceptBuilder>? focus;

  /// [condition]
  /// The condition that is the focus of the study. For example, In a study
  /// to examine risk factors for Lupus, might have as an inclusion criterion
  /// "healthy volunteer", but the target condition code would be a Lupus
  /// SNOMED code.
  List<CodeableConceptBuilder>? condition;

  /// [contact]
  /// Contact details to assist a user in learning more about or engaging
  /// with the study.
  List<ContactDetailBuilder>? contact;

  /// [relatedArtifact]
  /// Citations, references and other related documents.
  List<RelatedArtifactBuilder>? relatedArtifact;

  /// [keyword]
  /// Key terms to aid in searching for or filtering the study.
  List<CodeableConceptBuilder>? keyword;

  /// [location]
  /// Indicates a country, state or other region where the study is taking
  /// place.
  List<CodeableConceptBuilder>? location;

  /// [description]
  /// A full description of how the study is being conducted.
  FhirMarkdownBuilder? description;

  /// [enrollment]
  /// Reference to a Group that defines the criteria for and quantity of
  /// subjects participating in the study. E.g. " 200 female Europeans
  /// between the ages of 20 and 45 with early onset diabetes".
  List<ReferenceBuilder>? enrollment;

  /// [period]
  /// Identifies the start date and the expected (or actual, depending on
  /// status) end date for the study.
  PeriodBuilder? period;

  /// [sponsor]
  /// An organization that initiates the investigation and is legally
  /// responsible for the study.
  ReferenceBuilder? sponsor;

  /// [principalInvestigator]
  /// A researcher in a study who oversees multiple aspects of the study,
  /// such as concept development, protocol writing, protocol submission for
  /// IRB approval, participant recruitment, informed consent, data
  /// collection, analysis, interpretation and presentation.
  ReferenceBuilder? principalInvestigator;

  /// [site]
  /// A facility in which study activities are conducted.
  List<ReferenceBuilder>? site;

  /// [reasonStopped]
  /// A description and/or code explaining the premature termination of the
  /// study.
  CodeableConceptBuilder? reasonStopped;

  /// [note]
  /// Comments made about the study by the performer, subject or other
  /// participants.
  List<AnnotationBuilder>? note;

  /// [arm]
  /// Describes an expected sequence of events for one of the participants of
  /// a study. E.g. Exposure to drug A, wash-out, exposure to drug B,
  /// wash-out, follow-up.
  List<ResearchStudyArmBuilder>? arm;

  /// [objective]
  /// A goal that the study is aiming to achieve in terms of a scientific
  /// question to be answered by the analysis of data collected during the
  /// study.
  List<ResearchStudyObjectiveBuilder>? objective;

  /// converts a [ResearchStudyBuilder]
  /// to [ResearchStudy]
  @override
  ResearchStudy build() => ResearchStudy.fromJson(toJson());

  /// converts a [ResearchStudyBuilder]
  /// to [Map<String, dynamic>]
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
    addField('identifier', identifier);
    addField('title', title);
    addField('protocol', protocol);
    addField('partOf', partOf);
    addField('status', status);
    addField('primaryPurposeType', primaryPurposeType);
    addField('phase', phase);
    addField('category', category);
    addField('focus', focus);
    addField('condition', condition);
    addField('contact', contact);
    addField('relatedArtifact', relatedArtifact);
    addField('keyword', keyword);
    addField('location', location);
    addField('description', description);
    addField('enrollment', enrollment);
    addField('period', period);
    addField('sponsor', sponsor);
    addField('principalInvestigator', principalInvestigator);
    addField('site', site);
    addField('reasonStopped', reasonStopped);
    addField('note', note);
    addField('arm', arm);
    addField('objective', objective);
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
      'identifier',
      'title',
      'protocol',
      'partOf',
      'status',
      'primaryPurposeType',
      'phase',
      'category',
      'focus',
      'condition',
      'contact',
      'relatedArtifact',
      'keyword',
      'location',
      'description',
      'enrollment',
      'period',
      'sponsor',
      'principalInvestigator',
      'site',
      'reasonStopped',
      'note',
      'arm',
      'objective',
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
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'protocol':
        if (protocol != null) {
          fields.addAll(protocol!);
        }
      case 'partOf':
        if (partOf != null) {
          fields.addAll(partOf!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'primaryPurposeType':
        if (primaryPurposeType != null) {
          fields.add(primaryPurposeType!);
        }
      case 'phase':
        if (phase != null) {
          fields.add(phase!);
        }
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'focus':
        if (focus != null) {
          fields.addAll(focus!);
        }
      case 'condition':
        if (condition != null) {
          fields.addAll(condition!);
        }
      case 'contact':
        if (contact != null) {
          fields.addAll(contact!);
        }
      case 'relatedArtifact':
        if (relatedArtifact != null) {
          fields.addAll(relatedArtifact!);
        }
      case 'keyword':
        if (keyword != null) {
          fields.addAll(keyword!);
        }
      case 'location':
        if (location != null) {
          fields.addAll(location!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'enrollment':
        if (enrollment != null) {
          fields.addAll(enrollment!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'sponsor':
        if (sponsor != null) {
          fields.add(sponsor!);
        }
      case 'principalInvestigator':
        if (principalInvestigator != null) {
          fields.add(principalInvestigator!);
        }
      case 'site':
        if (site != null) {
          fields.addAll(site!);
        }
      case 'reasonStopped':
        if (reasonStopped != null) {
          fields.add(reasonStopped!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'arm':
        if (arm != null) {
          fields.addAll(arm!);
        }
      case 'objective':
        if (objective != null) {
          fields.addAll(objective!);
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [...(contained ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [...(identifier ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'title':
        {
          if (child is FhirStringBuilder) {
            title = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'protocol':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            protocol = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            protocol = [...(protocol ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'partOf':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            partOf = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            partOf = [...(partOf ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is ResearchStudyStatusBuilder) {
            status = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'primaryPurposeType':
        {
          if (child is CodeableConceptBuilder) {
            primaryPurposeType = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'phase':
        {
          if (child is CodeableConceptBuilder) {
            phase = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'category':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            category = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            category = [...(category ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'focus':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            focus = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            focus = [...(focus ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'condition':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            condition = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            condition = [...(condition ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contact':
        {
          if (child is List<ContactDetailBuilder>) {
            // Replace or create new list
            contact = child;
            return;
          } else if (child is ContactDetailBuilder) {
            // Add single element to existing list or create new list
            contact = [...(contact ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'relatedArtifact':
        {
          if (child is List<RelatedArtifactBuilder>) {
            // Replace or create new list
            relatedArtifact = child;
            return;
          } else if (child is RelatedArtifactBuilder) {
            // Add single element to existing list or create new list
            relatedArtifact = [...(relatedArtifact ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'keyword':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            keyword = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            keyword = [...(keyword ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'location':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            location = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            location = [...(location ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirMarkdownBuilder) {
            description = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'enrollment':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            enrollment = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            enrollment = [...(enrollment ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'period':
        {
          if (child is PeriodBuilder) {
            period = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sponsor':
        {
          if (child is ReferenceBuilder) {
            sponsor = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'principalInvestigator':
        {
          if (child is ReferenceBuilder) {
            principalInvestigator = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'site':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            site = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            site = [...(site ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reasonStopped':
        {
          if (child is CodeableConceptBuilder) {
            reasonStopped = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'note':
        {
          if (child is List<AnnotationBuilder>) {
            // Replace or create new list
            note = child;
            return;
          } else if (child is AnnotationBuilder) {
            // Add single element to existing list or create new list
            note = [...(note ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'arm':
        {
          if (child is List<ResearchStudyArmBuilder>) {
            // Replace or create new list
            arm = child;
            return;
          } else if (child is ResearchStudyArmBuilder) {
            // Add single element to existing list or create new list
            arm = [...(arm ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'objective':
        {
          if (child is List<ResearchStudyObjectiveBuilder>) {
            // Replace or create new list
            objective = child;
            return;
          } else if (child is ResearchStudyObjectiveBuilder) {
            // Add single element to existing list or create new list
            objective = [...(objective ?? []), child];
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
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'title':
        return ['FhirStringBuilder'];
      case 'protocol':
        return ['ReferenceBuilder'];
      case 'partOf':
        return ['ReferenceBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'primaryPurposeType':
        return ['CodeableConceptBuilder'];
      case 'phase':
        return ['CodeableConceptBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'focus':
        return ['CodeableConceptBuilder'];
      case 'condition':
        return ['CodeableConceptBuilder'];
      case 'contact':
        return ['ContactDetailBuilder'];
      case 'relatedArtifact':
        return ['RelatedArtifactBuilder'];
      case 'keyword':
        return ['CodeableConceptBuilder'];
      case 'location':
        return ['CodeableConceptBuilder'];
      case 'description':
        return ['FhirMarkdownBuilder'];
      case 'enrollment':
        return ['ReferenceBuilder'];
      case 'period':
        return ['PeriodBuilder'];
      case 'sponsor':
        return ['ReferenceBuilder'];
      case 'principalInvestigator':
        return ['ReferenceBuilder'];
      case 'site':
        return ['ReferenceBuilder'];
      case 'reasonStopped':
        return ['CodeableConceptBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'arm':
        return ['ResearchStudyArmBuilder'];
      case 'objective':
        return ['ResearchStudyObjectiveBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ResearchStudyBuilder]
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
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'title':
        {
          title = FhirStringBuilder.empty();
          return;
        }
      case 'protocol':
        {
          protocol = <ReferenceBuilder>[];
          return;
        }
      case 'partOf':
        {
          partOf = <ReferenceBuilder>[];
          return;
        }
      case 'status':
        {
          status = ResearchStudyStatusBuilder.empty();
          return;
        }
      case 'primaryPurposeType':
        {
          primaryPurposeType = CodeableConceptBuilder.empty();
          return;
        }
      case 'phase':
        {
          phase = CodeableConceptBuilder.empty();
          return;
        }
      case 'category':
        {
          category = <CodeableConceptBuilder>[];
          return;
        }
      case 'focus':
        {
          focus = <CodeableConceptBuilder>[];
          return;
        }
      case 'condition':
        {
          condition = <CodeableConceptBuilder>[];
          return;
        }
      case 'contact':
        {
          contact = <ContactDetailBuilder>[];
          return;
        }
      case 'relatedArtifact':
        {
          relatedArtifact = <RelatedArtifactBuilder>[];
          return;
        }
      case 'keyword':
        {
          keyword = <CodeableConceptBuilder>[];
          return;
        }
      case 'location':
        {
          location = <CodeableConceptBuilder>[];
          return;
        }
      case 'description':
        {
          description = FhirMarkdownBuilder.empty();
          return;
        }
      case 'enrollment':
        {
          enrollment = <ReferenceBuilder>[];
          return;
        }
      case 'period':
        {
          period = PeriodBuilder.empty();
          return;
        }
      case 'sponsor':
        {
          sponsor = ReferenceBuilder.empty();
          return;
        }
      case 'principalInvestigator':
        {
          principalInvestigator = ReferenceBuilder.empty();
          return;
        }
      case 'site':
        {
          site = <ReferenceBuilder>[];
          return;
        }
      case 'reasonStopped':
        {
          reasonStopped = CodeableConceptBuilder.empty();
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      case 'arm':
        {
          arm = <ResearchStudyArmBuilder>[];
          return;
        }
      case 'objective':
        {
          objective = <ResearchStudyObjectiveBuilder>[];
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
    bool identifier = false,
    bool title = false,
    bool protocol = false,
    bool partOf = false,
    bool status = false,
    bool primaryPurposeType = false,
    bool phase = false,
    bool category = false,
    bool focus = false,
    bool condition = false,
    bool contact = false,
    bool relatedArtifact = false,
    bool keyword = false,
    bool location = false,
    bool description = false,
    bool enrollment = false,
    bool period = false,
    bool sponsor = false,
    bool principalInvestigator = false,
    bool site = false,
    bool reasonStopped = false,
    bool note = false,
    bool arm = false,
    bool objective = false,
  }) {
    if (id) this.id = null;
    if (meta) this.meta = null;
    if (implicitRules) this.implicitRules = null;
    if (language) this.language = null;
    if (text) this.text = null;
    if (contained) this.contained = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (identifier) this.identifier = null;
    if (title) this.title = null;
    if (protocol) this.protocol = null;
    if (partOf) this.partOf = null;
    if (status) this.status = null;
    if (primaryPurposeType) this.primaryPurposeType = null;
    if (phase) this.phase = null;
    if (category) this.category = null;
    if (focus) this.focus = null;
    if (condition) this.condition = null;
    if (contact) this.contact = null;
    if (relatedArtifact) this.relatedArtifact = null;
    if (keyword) this.keyword = null;
    if (location) this.location = null;
    if (description) this.description = null;
    if (enrollment) this.enrollment = null;
    if (period) this.period = null;
    if (sponsor) this.sponsor = null;
    if (principalInvestigator) this.principalInvestigator = null;
    if (site) this.site = null;
    if (reasonStopped) this.reasonStopped = null;
    if (note) this.note = null;
    if (arm) this.arm = null;
    if (objective) this.objective = null;
  }

  @override
  ResearchStudyBuilder clone() => throw UnimplementedError();
  @override
  ResearchStudyBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    FhirStringBuilder? title,
    List<ReferenceBuilder>? protocol,
    List<ReferenceBuilder>? partOf,
    ResearchStudyStatusBuilder? status,
    CodeableConceptBuilder? primaryPurposeType,
    CodeableConceptBuilder? phase,
    List<CodeableConceptBuilder>? category,
    List<CodeableConceptBuilder>? focus,
    List<CodeableConceptBuilder>? condition,
    List<ContactDetailBuilder>? contact,
    List<RelatedArtifactBuilder>? relatedArtifact,
    List<CodeableConceptBuilder>? keyword,
    List<CodeableConceptBuilder>? location,
    FhirMarkdownBuilder? description,
    List<ReferenceBuilder>? enrollment,
    PeriodBuilder? period,
    ReferenceBuilder? sponsor,
    ReferenceBuilder? principalInvestigator,
    List<ReferenceBuilder>? site,
    CodeableConceptBuilder? reasonStopped,
    List<AnnotationBuilder>? note,
    List<ResearchStudyArmBuilder>? arm,
    List<ResearchStudyObjectiveBuilder>? objective,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = ResearchStudyBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      title: title ?? this.title,
      protocol: protocol ?? this.protocol,
      partOf: partOf ?? this.partOf,
      status: status ?? this.status,
      primaryPurposeType: primaryPurposeType ?? this.primaryPurposeType,
      phase: phase ?? this.phase,
      category: category ?? this.category,
      focus: focus ?? this.focus,
      condition: condition ?? this.condition,
      contact: contact ?? this.contact,
      relatedArtifact: relatedArtifact ?? this.relatedArtifact,
      keyword: keyword ?? this.keyword,
      location: location ?? this.location,
      description: description ?? this.description,
      enrollment: enrollment ?? this.enrollment,
      period: period ?? this.period,
      sponsor: sponsor ?? this.sponsor,
      principalInvestigator:
          principalInvestigator ?? this.principalInvestigator,
      site: site ?? this.site,
      reasonStopped: reasonStopped ?? this.reasonStopped,
      note: note ?? this.note,
      arm: arm ?? this.arm,
      objective: objective ?? this.objective,
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
    if (o is! ResearchStudyBuilder) {
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
    if (!listEquals<IdentifierBuilder>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      title,
      o.title,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      protocol,
      o.protocol,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      partOf,
      o.partOf,
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
      primaryPurposeType,
      o.primaryPurposeType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      phase,
      o.phase,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      category,
      o.category,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      focus,
      o.focus,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      condition,
      o.condition,
    )) {
      return false;
    }
    if (!listEquals<ContactDetailBuilder>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!listEquals<RelatedArtifactBuilder>(
      relatedArtifact,
      o.relatedArtifact,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      keyword,
      o.keyword,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      location,
      o.location,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      enrollment,
      o.enrollment,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      period,
      o.period,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sponsor,
      o.sponsor,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      principalInvestigator,
      o.principalInvestigator,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      site,
      o.site,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reasonStopped,
      o.reasonStopped,
    )) {
      return false;
    }
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<ResearchStudyArmBuilder>(
      arm,
      o.arm,
    )) {
      return false;
    }
    if (!listEquals<ResearchStudyObjectiveBuilder>(
      objective,
      o.objective,
    )) {
      return false;
    }
    return true;
  }
}

/// [ResearchStudyArmBuilder]
/// Describes an expected sequence of events for one of the participants of
/// a study. E.g. Exposure to drug A, wash-out, exposure to drug B,
/// wash-out, follow-up.
class ResearchStudyArmBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ResearchStudyArmBuilder]

  ResearchStudyArmBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.type,
    this.description,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ResearchStudy.arm',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ResearchStudyArmBuilder.empty() => ResearchStudyArmBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchStudyArmBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ResearchStudy.arm';
    return ResearchStudyArmBuilder(
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
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
    );
  }

  /// Deserialize [ResearchStudyArmBuilder]
  /// from a [String] or [YamlMap] object
  factory ResearchStudyArmBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchStudyArmBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchStudyArmBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchStudyArmBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchStudyArmBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchStudyArmBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ResearchStudyArmBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ResearchStudyArm';

  /// [name]
  /// Unique, human-readable label for this arm of the study.
  FhirStringBuilder? name;

  /// [type]
  /// Categorization of study arm, e.g. experimental, active comparator,
  /// placebo comparater.
  CodeableConceptBuilder? type;

  /// [description]
  /// A succinct description of the path through the study that would be
  /// followed by a subject adhering to this arm.
  FhirStringBuilder? description;

  /// converts a [ResearchStudyArmBuilder]
  /// to [ResearchStudyArm]
  @override
  ResearchStudyArm build() => ResearchStudyArm.fromJson(toJson());

  /// converts a [ResearchStudyArmBuilder]
  /// to [Map<String, dynamic>]
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
    addField('name', name);
    addField('type', type);
    addField('description', description);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'name',
      'type',
      'description',
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
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirStringBuilder) {
            description = child;
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
      case 'name':
        return ['FhirStringBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'description':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ResearchStudyArmBuilder]
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
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'description':
        {
          description = FhirStringBuilder.empty();
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
    bool name = false,
    bool type = false,
    bool description = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (name) this.name = null;
    if (type) this.type = null;
    if (description) this.description = null;
  }

  @override
  ResearchStudyArmBuilder clone() => throw UnimplementedError();
  @override
  ResearchStudyArmBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? name,
    CodeableConceptBuilder? type,
    FhirStringBuilder? description,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ResearchStudyArmBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      type: type ?? this.type,
      description: description ?? this.description,
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
    if (o is! ResearchStudyArmBuilder) {
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
      name,
      o.name,
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
      description,
      o.description,
    )) {
      return false;
    }
    return true;
  }
}

/// [ResearchStudyObjectiveBuilder]
/// A goal that the study is aiming to achieve in terms of a scientific
/// question to be answered by the analysis of data collected during the
/// study.
class ResearchStudyObjectiveBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ResearchStudyObjectiveBuilder]

  ResearchStudyObjectiveBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.type,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ResearchStudy.objective',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ResearchStudyObjectiveBuilder.empty() =>
      ResearchStudyObjectiveBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchStudyObjectiveBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ResearchStudy.objective';
    return ResearchStudyObjectiveBuilder(
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
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
    );
  }

  /// Deserialize [ResearchStudyObjectiveBuilder]
  /// from a [String] or [YamlMap] object
  factory ResearchStudyObjectiveBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchStudyObjectiveBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchStudyObjectiveBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchStudyObjectiveBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchStudyObjectiveBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchStudyObjectiveBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ResearchStudyObjectiveBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ResearchStudyObjective';

  /// [name]
  /// Unique, human-readable label for this objective of the study.
  FhirStringBuilder? name;

  /// [type]
  /// The kind of study objective.
  CodeableConceptBuilder? type;

  /// converts a [ResearchStudyObjectiveBuilder]
  /// to [ResearchStudyObjective]
  @override
  ResearchStudyObjective build() => ResearchStudyObjective.fromJson(toJson());

  /// converts a [ResearchStudyObjectiveBuilder]
  /// to [Map<String, dynamic>]
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
    addField('name', name);
    addField('type', type);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'name',
      'type',
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
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
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
      case 'name':
        return ['FhirStringBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ResearchStudyObjectiveBuilder]
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
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
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
    bool name = false,
    bool type = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (name) this.name = null;
    if (type) this.type = null;
  }

  @override
  ResearchStudyObjectiveBuilder clone() => throw UnimplementedError();
  @override
  ResearchStudyObjectiveBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? name,
    CodeableConceptBuilder? type,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ResearchStudyObjectiveBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      type: type ?? this.type,
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
    if (o is! ResearchStudyObjectiveBuilder) {
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
      name,
      o.name,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    return true;
  }
}
