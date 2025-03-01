import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Measure]
/// The Measure resource provides the definition of a quality measure.
class Measure extends CanonicalResource {
  /// Primary constructor for
  /// [Measure]

  const Measure({
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
    this.disclaimer,
    this.scoring,
    this.compositeScoring,
    this.type,
    this.riskAdjustment,
    this.rateAggregation,
    this.rationale,
    this.clinicalRecommendationStatement,
    this.improvementNotation,
    this.definition,
    this.guidance,
    this.group,
    this.supplementalData,
  }) : super(
          objectPath: 'Measure',
          resourceType: R4ResourceType.Measure,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Measure.empty() => Measure(
        status: PublicationStatus.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Measure.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Measure';
    return Measure(
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
      subjectX: JsonParser.parsePolymorphic<SubjectXMeasure>(
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
      disclaimer: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'disclaimer',
        FhirMarkdown.fromJson,
        '$objectPath.disclaimer',
      ),
      scoring: JsonParser.parseObject<CodeableConcept>(
        json,
        'scoring',
        CodeableConcept.fromJson,
        '$objectPath.scoring',
      ),
      compositeScoring: JsonParser.parseObject<CodeableConcept>(
        json,
        'compositeScoring',
        CodeableConcept.fromJson,
        '$objectPath.compositeScoring',
      ),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.type',
              },
            ),
          )
          .toList(),
      riskAdjustment: JsonParser.parsePrimitive<FhirString>(
        json,
        'riskAdjustment',
        FhirString.fromJson,
        '$objectPath.riskAdjustment',
      ),
      rateAggregation: JsonParser.parsePrimitive<FhirString>(
        json,
        'rateAggregation',
        FhirString.fromJson,
        '$objectPath.rateAggregation',
      ),
      rationale: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'rationale',
        FhirMarkdown.fromJson,
        '$objectPath.rationale',
      ),
      clinicalRecommendationStatement: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'clinicalRecommendationStatement',
        FhirMarkdown.fromJson,
        '$objectPath.clinicalRecommendationStatement',
      ),
      improvementNotation: JsonParser.parseObject<CodeableConcept>(
        json,
        'improvementNotation',
        CodeableConcept.fromJson,
        '$objectPath.improvementNotation',
      ),
      definition: JsonParser.parsePrimitiveList<FhirMarkdown>(
        json,
        'definition',
        FhirMarkdown.fromJson,
        '$objectPath.definition',
      ),
      guidance: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'guidance',
        FhirMarkdown.fromJson,
        '$objectPath.guidance',
      ),
      group: (json['group'] as List<dynamic>?)
          ?.map<MeasureGroup>(
            (v) => MeasureGroup.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.group',
              },
            ),
          )
          .toList(),
      supplementalData: (json['supplementalData'] as List<dynamic>?)
          ?.map<MeasureSupplementalData>(
            (v) => MeasureSupplementalData.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.supplementalData',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [Measure]
  /// from a [String] or [YamlMap] object
  factory Measure.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Measure.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Measure.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Measure '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Measure]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Measure.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Measure.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Measure';

  /// [identifier]
  /// A formal identifier that is used to identify this measure when it is
  /// represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  final List<Identifier>? identifier;

  /// [name]
  /// A natural language name identifying the measure. This name should be
  /// usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the measure.
  final FhirString? title;

  /// [subtitle]
  /// An explanatory or alternate title for the measure giving additional
  /// information about its content.
  final FhirString? subtitle;

  /// [subjectX]
  /// The intended subjects for the measure. If this element is not provided,
  /// a Patient subject is assumed, but the subject of the measure can be
  /// anything.
  final SubjectXMeasure? subjectX;

  /// Getter for [subjectCodeableConcept] as a CodeableConcept
  CodeableConcept? get subjectCodeableConcept =>
      subjectX?.isAs<CodeableConcept>();

  /// Getter for [subjectReference] as a Reference
  Reference? get subjectReference => subjectX?.isAs<Reference>();

  /// [purpose]
  /// Explanation of why this measure is needed and why it has been designed
  /// as it has.
  final FhirMarkdown? purpose;

  /// [usage]
  /// A detailed description, from a clinical perspective, of how the measure
  /// is used.
  final FhirString? usage;

  /// [copyright]
  /// A copyright statement relating to the measure and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the measure.
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
  /// The period during which the measure content was or is planned to be in
  /// active use.
  final Period? effectivePeriod;

  /// [topic]
  /// Descriptive topics related to the content of the measure. Topics
  /// provide a high-level categorization grouping types of measures that can
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
  /// A reference to a Library resource containing the formal logic used by
  /// the measure.
  final List<FhirCanonical>? library_;

  /// [disclaimer]
  /// Notices and disclaimers regarding the use of the measure or related to
  /// intellectual property (such as code systems) referenced by the measure.
  final FhirMarkdown? disclaimer;

  /// [scoring]
  /// Indicates how the calculation is performed for the measure, including
  /// proportion, ratio, continuous-variable, and cohort. The value set is
  /// extensible, allowing additional measure scoring types to be
  /// represented.
  final CodeableConcept? scoring;

  /// [compositeScoring]
  /// If this is a composite measure, the scoring method used to combine the
  /// component measures to determine the composite score.
  final CodeableConcept? compositeScoring;

  /// [type]
  /// Indicates whether the measure is used to examine a process, an outcome
  /// over time, a patient-reported outcome, or a structure measure such as
  /// utilization.
  final List<CodeableConcept>? type;

  /// [riskAdjustment]
  /// A description of the risk adjustment factors that may impact the
  /// resulting score for the measure and how they may be accounted for when
  /// computing and reporting measure results.
  final FhirString? riskAdjustment;

  /// [rateAggregation]
  /// Describes how to combine the information calculated, based on logic in
  /// each of several populations, into one summarized result.
  final FhirString? rateAggregation;

  /// [rationale]
  /// Provides a succinct statement of the need for the measure. Usually
  /// includes statements pertaining to importance criterion: impact, gap in
  /// care, and evidence.
  final FhirMarkdown? rationale;

  /// [clinicalRecommendationStatement]
  /// Provides a summary of relevant clinical guidelines or other clinical
  /// recommendations supporting the measure.
  final FhirMarkdown? clinicalRecommendationStatement;

  /// [improvementNotation]
  /// Information on whether an increase or decrease in score is the
  /// preferred result (e.g., a higher score indicates better quality OR a
  /// lower score indicates better quality OR quality is within a range).
  final CodeableConcept? improvementNotation;

  /// [definition]
  /// Provides a description of an individual term used within the measure.
  final List<FhirMarkdown>? definition;

  /// [guidance]
  /// Additional guidance for the measure including how it can be used in a
  /// clinical context, and the intent of the measure.
  final FhirMarkdown? guidance;

  /// [group]
  /// A group of population criteria for the measure.
  final List<MeasureGroup>? group;

  /// [supplementalData]
  /// The supplemental data criteria for the measure report, specified as
  /// either the name of a valid CQL expression within a referenced library,
  /// or a valid FHIR Resource Path.
  final List<MeasureSupplementalData>? supplementalData;
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
    addField('disclaimer', disclaimer);
    addField('scoring', scoring);
    addField('compositeScoring', compositeScoring);
    addField('type', type);
    addField('riskAdjustment', riskAdjustment);
    addField('rateAggregation', rateAggregation);
    addField('rationale', rationale);
    addField(
        'clinicalRecommendationStatement', clinicalRecommendationStatement,);
    addField('improvementNotation', improvementNotation);
    addField('definition', definition);
    addField('guidance', guidance);
    addField('group', group);
    addField('supplementalData', supplementalData);
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
      'disclaimer',
      'scoring',
      'compositeScoring',
      'type',
      'riskAdjustment',
      'rateAggregation',
      'rationale',
      'clinicalRecommendationStatement',
      'improvementNotation',
      'definition',
      'guidance',
      'group',
      'supplementalData',
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
      case 'disclaimer':
        if (disclaimer != null) {
          fields.add(disclaimer!);
        }
      case 'scoring':
        if (scoring != null) {
          fields.add(scoring!);
        }
      case 'compositeScoring':
        if (compositeScoring != null) {
          fields.add(compositeScoring!);
        }
      case 'type':
        if (type != null) {
          fields.addAll(type!);
        }
      case 'riskAdjustment':
        if (riskAdjustment != null) {
          fields.add(riskAdjustment!);
        }
      case 'rateAggregation':
        if (rateAggregation != null) {
          fields.add(rateAggregation!);
        }
      case 'rationale':
        if (rationale != null) {
          fields.add(rationale!);
        }
      case 'clinicalRecommendationStatement':
        if (clinicalRecommendationStatement != null) {
          fields.add(clinicalRecommendationStatement!);
        }
      case 'improvementNotation':
        if (improvementNotation != null) {
          fields.add(improvementNotation!);
        }
      case 'definition':
        if (definition != null) {
          fields.addAll(definition!);
        }
      case 'guidance':
        if (guidance != null) {
          fields.add(guidance!);
        }
      case 'group':
        if (group != null) {
          fields.addAll(group!);
        }
      case 'supplementalData':
        if (supplementalData != null) {
          fields.addAll(supplementalData!);
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
          if (child is SubjectXMeasure) {
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
      case 'disclaimer':
        {
          if (child is FhirMarkdown) {
            return copyWith(disclaimer: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'scoring':
        {
          if (child is CodeableConcept) {
            return copyWith(scoring: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'compositeScoring':
        {
          if (child is CodeableConcept) {
            return copyWith(compositeScoring: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'riskAdjustment':
        {
          if (child is FhirString) {
            return copyWith(riskAdjustment: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'rateAggregation':
        {
          if (child is FhirString) {
            return copyWith(rateAggregation: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'rationale':
        {
          if (child is FhirMarkdown) {
            return copyWith(rationale: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'clinicalRecommendationStatement':
        {
          if (child is FhirMarkdown) {
            return copyWith(clinicalRecommendationStatement: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'improvementNotation':
        {
          if (child is CodeableConcept) {
            return copyWith(improvementNotation: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'definition':
        {
          if (child is List<FhirMarkdown>) {
            return copyWith(definition: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'guidance':
        {
          if (child is FhirMarkdown) {
            return copyWith(guidance: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'group':
        {
          if (child is List<MeasureGroup>) {
            return copyWith(group: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'supplementalData':
        {
          if (child is List<MeasureSupplementalData>) {
            return copyWith(supplementalData: child);
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
      case 'disclaimer':
        return ['FhirMarkdown'];
      case 'scoring':
        return ['CodeableConcept'];
      case 'compositeScoring':
        return ['CodeableConcept'];
      case 'type':
        return ['CodeableConcept'];
      case 'riskAdjustment':
        return ['FhirString'];
      case 'rateAggregation':
        return ['FhirString'];
      case 'rationale':
        return ['FhirMarkdown'];
      case 'clinicalRecommendationStatement':
        return ['FhirMarkdown'];
      case 'improvementNotation':
        return ['CodeableConcept'];
      case 'definition':
        return ['FhirMarkdown'];
      case 'guidance':
        return ['FhirMarkdown'];
      case 'group':
        return ['MeasureGroup'];
      case 'supplementalData':
        return ['MeasureSupplementalData'];
      default:
        return <String>[];
    }
  }

  @override
  Measure clone() => throw UnimplementedError();
  @override
  Measure copyWith({
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
    SubjectXMeasure? subjectX,
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
    FhirMarkdown? disclaimer,
    CodeableConcept? scoring,
    CodeableConcept? compositeScoring,
    List<CodeableConcept>? type,
    FhirString? riskAdjustment,
    FhirString? rateAggregation,
    FhirMarkdown? rationale,
    FhirMarkdown? clinicalRecommendationStatement,
    CodeableConcept? improvementNotation,
    List<FhirMarkdown>? definition,
    FhirMarkdown? guidance,
    List<MeasureGroup>? group,
    List<MeasureSupplementalData>? supplementalData,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return Measure(
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
          ) as SubjectXMeasure? ??
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
      disclaimer: disclaimer?.copyWith(
            objectPath: '$newObjectPath.disclaimer',
          ) ??
          this.disclaimer,
      scoring: scoring?.copyWith(
            objectPath: '$newObjectPath.scoring',
          ) ??
          this.scoring,
      compositeScoring: compositeScoring?.copyWith(
            objectPath: '$newObjectPath.compositeScoring',
          ) ??
          this.compositeScoring,
      type: type
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.type',
                ),
              )
              .toList() ??
          this.type,
      riskAdjustment: riskAdjustment?.copyWith(
            objectPath: '$newObjectPath.riskAdjustment',
          ) ??
          this.riskAdjustment,
      rateAggregation: rateAggregation?.copyWith(
            objectPath: '$newObjectPath.rateAggregation',
          ) ??
          this.rateAggregation,
      rationale: rationale?.copyWith(
            objectPath: '$newObjectPath.rationale',
          ) ??
          this.rationale,
      clinicalRecommendationStatement:
          clinicalRecommendationStatement?.copyWith(
                objectPath: '$newObjectPath.clinicalRecommendationStatement',
              ) ??
              this.clinicalRecommendationStatement,
      improvementNotation: improvementNotation?.copyWith(
            objectPath: '$newObjectPath.improvementNotation',
          ) ??
          this.improvementNotation,
      definition: definition
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.definition',
                ),
              )
              .toList() ??
          this.definition,
      guidance: guidance?.copyWith(
            objectPath: '$newObjectPath.guidance',
          ) ??
          this.guidance,
      group: group
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.group',
                ),
              )
              .toList() ??
          this.group,
      supplementalData: supplementalData
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.supplementalData',
                ),
              )
              .toList() ??
          this.supplementalData,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Measure) {
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
    if (!equalsDeepWithNull(disclaimer, o.disclaimer)) {
      return false;
    }
    if (!equalsDeepWithNull(scoring, o.scoring)) {
      return false;
    }
    if (!equalsDeepWithNull(compositeScoring, o.compositeScoring)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(riskAdjustment, o.riskAdjustment)) {
      return false;
    }
    if (!equalsDeepWithNull(rateAggregation, o.rateAggregation)) {
      return false;
    }
    if (!equalsDeepWithNull(rationale, o.rationale)) {
      return false;
    }
    if (!equalsDeepWithNull(
        clinicalRecommendationStatement, o.clinicalRecommendationStatement,)) {
      return false;
    }
    if (!equalsDeepWithNull(improvementNotation, o.improvementNotation)) {
      return false;
    }
    if (!listEquals<FhirMarkdown>(
      definition,
      o.definition,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(guidance, o.guidance)) {
      return false;
    }
    if (!listEquals<MeasureGroup>(
      group,
      o.group,
    )) {
      return false;
    }
    if (!listEquals<MeasureSupplementalData>(
      supplementalData,
      o.supplementalData,
    )) {
      return false;
    }
    return true;
  }
}

/// [MeasureGroup]
/// A group of population criteria for the measure.
class MeasureGroup extends BackboneElement {
  /// Primary constructor for
  /// [MeasureGroup]

  const MeasureGroup({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.description,
    this.population,
    this.stratifier,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Measure.group',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MeasureGroup.empty() => const MeasureGroup();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureGroup.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Measure.group';
    return MeasureGroup(
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
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      population: (json['population'] as List<dynamic>?)
          ?.map<MeasurePopulation>(
            (v) => MeasurePopulation.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.population',
              },
            ),
          )
          .toList(),
      stratifier: (json['stratifier'] as List<dynamic>?)
          ?.map<MeasureStratifier>(
            (v) => MeasureStratifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.stratifier',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MeasureGroup]
  /// from a [String] or [YamlMap] object
  factory MeasureGroup.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MeasureGroup.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MeasureGroup.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MeasureGroup '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MeasureGroup]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasureGroup.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MeasureGroup.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MeasureGroup';

  /// [code]
  /// Indicates a meaning for the group. This can be as simple as a unique
  /// identifier, or it can establish meaning in a broader context by drawing
  /// from a terminology, allowing groups to be correlated across measures.
  final CodeableConcept? code;

  /// [description]
  /// The human readable description of this population group.
  final FhirString? description;

  /// [population]
  /// A population criteria for the measure.
  final List<MeasurePopulation>? population;

  /// [stratifier]
  /// The stratifier criteria for the measure report, specified as either the
  /// name of a valid CQL expression defined within a referenced library or a
  /// valid FHIR Resource Path.
  final List<MeasureStratifier>? stratifier;
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
    addField('code', code);
    addField('description', description);
    addField('population', population);
    addField('stratifier', stratifier);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'code',
      'description',
      'population',
      'stratifier',
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
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'population':
        if (population != null) {
          fields.addAll(population!);
        }
      case 'stratifier':
        if (stratifier != null) {
          fields.addAll(stratifier!);
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
      case 'code':
        {
          if (child is CodeableConcept) {
            return copyWith(code: child);
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
      case 'population':
        {
          if (child is List<MeasurePopulation>) {
            return copyWith(population: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'stratifier':
        {
          if (child is List<MeasureStratifier>) {
            return copyWith(stratifier: child);
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
      case 'code':
        return ['CodeableConcept'];
      case 'description':
        return ['FhirString'];
      case 'population':
        return ['MeasurePopulation'];
      case 'stratifier':
        return ['MeasureStratifier'];
      default:
        return <String>[];
    }
  }

  @override
  MeasureGroup clone() => throw UnimplementedError();
  @override
  MeasureGroup copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    FhirString? description,
    List<MeasurePopulation>? population,
    List<MeasureStratifier>? stratifier,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MeasureGroup(
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
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      population: population
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.population',
                ),
              )
              .toList() ??
          this.population,
      stratifier: stratifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.stratifier',
                ),
              )
              .toList() ??
          this.stratifier,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MeasureGroup) {
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
    if (!equalsDeepWithNull(code, o.code)) {
      return false;
    }
    if (!equalsDeepWithNull(description, o.description)) {
      return false;
    }
    if (!listEquals<MeasurePopulation>(
      population,
      o.population,
    )) {
      return false;
    }
    if (!listEquals<MeasureStratifier>(
      stratifier,
      o.stratifier,
    )) {
      return false;
    }
    return true;
  }
}

/// [MeasurePopulation]
/// A population criteria for the measure.
class MeasurePopulation extends BackboneElement {
  /// Primary constructor for
  /// [MeasurePopulation]

  const MeasurePopulation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.description,
    required this.criteria,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Measure.group.population',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MeasurePopulation.empty() => MeasurePopulation(
        criteria: FhirExpression.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasurePopulation.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Measure.group.population';
    return MeasurePopulation(
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
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      criteria: JsonParser.parseObject<FhirExpression>(
        json,
        'criteria',
        FhirExpression.fromJson,
        '$objectPath.criteria',
      )!,
    );
  }

  /// Deserialize [MeasurePopulation]
  /// from a [String] or [YamlMap] object
  factory MeasurePopulation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MeasurePopulation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MeasurePopulation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MeasurePopulation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MeasurePopulation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasurePopulation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MeasurePopulation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MeasurePopulation';

  /// [code]
  /// The type of population criteria.
  final CodeableConcept? code;

  /// [description]
  /// The human readable description of this population criteria.
  final FhirString? description;

  /// [criteria]
  /// An expression that specifies the criteria for the population, typically
  /// the name of an expression in a library.
  final FhirExpression criteria;
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
    addField('code', code);
    addField('description', description);
    addField('criteria', criteria);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'code',
      'description',
      'criteria',
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
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'criteria':
        fields.add(criteria);
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
      case 'code':
        {
          if (child is CodeableConcept) {
            return copyWith(code: child);
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
      case 'criteria':
        {
          if (child is FhirExpression) {
            return copyWith(criteria: child);
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
      case 'code':
        return ['CodeableConcept'];
      case 'description':
        return ['FhirString'];
      case 'criteria':
        return ['FhirExpression'];
      default:
        return <String>[];
    }
  }

  @override
  MeasurePopulation clone() => throw UnimplementedError();
  @override
  MeasurePopulation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    FhirString? description,
    FhirExpression? criteria,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MeasurePopulation(
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
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      criteria: criteria?.copyWith(
            objectPath: '$newObjectPath.criteria',
          ) ??
          this.criteria,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MeasurePopulation) {
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
    if (!equalsDeepWithNull(code, o.code)) {
      return false;
    }
    if (!equalsDeepWithNull(description, o.description)) {
      return false;
    }
    if (!equalsDeepWithNull(criteria, o.criteria)) {
      return false;
    }
    return true;
  }
}

/// [MeasureStratifier]
/// The stratifier criteria for the measure report, specified as either the
/// name of a valid CQL expression defined within a referenced library or a
/// valid FHIR Resource Path.
class MeasureStratifier extends BackboneElement {
  /// Primary constructor for
  /// [MeasureStratifier]

  const MeasureStratifier({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.description,
    this.criteria,
    this.component,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Measure.group.stratifier',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MeasureStratifier.empty() => const MeasureStratifier();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureStratifier.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Measure.group.stratifier';
    return MeasureStratifier(
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
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      criteria: JsonParser.parseObject<FhirExpression>(
        json,
        'criteria',
        FhirExpression.fromJson,
        '$objectPath.criteria',
      ),
      component: (json['component'] as List<dynamic>?)
          ?.map<MeasureComponent>(
            (v) => MeasureComponent.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.component',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MeasureStratifier]
  /// from a [String] or [YamlMap] object
  factory MeasureStratifier.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MeasureStratifier.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MeasureStratifier.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MeasureStratifier '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MeasureStratifier]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasureStratifier.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MeasureStratifier.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MeasureStratifier';

  /// [code]
  /// Indicates a meaning for the stratifier. This can be as simple as a
  /// unique identifier, or it can establish meaning in a broader context by
  /// drawing from a terminology, allowing stratifiers to be correlated
  /// across measures.
  final CodeableConcept? code;

  /// [description]
  /// The human readable description of this stratifier criteria.
  final FhirString? description;

  /// [criteria]
  /// An expression that specifies the criteria for the stratifier. This is
  /// typically the name of an expression defined within a referenced
  /// library, but it may also be a path to a stratifier element.
  final FhirExpression? criteria;

  /// [component]
  /// A component of the stratifier criteria for the measure report,
  /// specified as either the name of a valid CQL expression defined within a
  /// referenced library or a valid FHIR Resource Path.
  final List<MeasureComponent>? component;
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
    addField('code', code);
    addField('description', description);
    addField('criteria', criteria);
    addField('component', component);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'code',
      'description',
      'criteria',
      'component',
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
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'criteria':
        if (criteria != null) {
          fields.add(criteria!);
        }
      case 'component':
        if (component != null) {
          fields.addAll(component!);
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
      case 'code':
        {
          if (child is CodeableConcept) {
            return copyWith(code: child);
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
      case 'criteria':
        {
          if (child is FhirExpression) {
            return copyWith(criteria: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'component':
        {
          if (child is List<MeasureComponent>) {
            return copyWith(component: child);
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
      case 'code':
        return ['CodeableConcept'];
      case 'description':
        return ['FhirString'];
      case 'criteria':
        return ['FhirExpression'];
      case 'component':
        return ['MeasureComponent'];
      default:
        return <String>[];
    }
  }

  @override
  MeasureStratifier clone() => throw UnimplementedError();
  @override
  MeasureStratifier copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    FhirString? description,
    FhirExpression? criteria,
    List<MeasureComponent>? component,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MeasureStratifier(
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
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      criteria: criteria?.copyWith(
            objectPath: '$newObjectPath.criteria',
          ) ??
          this.criteria,
      component: component
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.component',
                ),
              )
              .toList() ??
          this.component,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MeasureStratifier) {
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
    if (!equalsDeepWithNull(code, o.code)) {
      return false;
    }
    if (!equalsDeepWithNull(description, o.description)) {
      return false;
    }
    if (!equalsDeepWithNull(criteria, o.criteria)) {
      return false;
    }
    if (!listEquals<MeasureComponent>(
      component,
      o.component,
    )) {
      return false;
    }
    return true;
  }
}

/// [MeasureComponent]
/// A component of the stratifier criteria for the measure report,
/// specified as either the name of a valid CQL expression defined within a
/// referenced library or a valid FHIR Resource Path.
class MeasureComponent extends BackboneElement {
  /// Primary constructor for
  /// [MeasureComponent]

  const MeasureComponent({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.description,
    required this.criteria,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Measure.group.stratifier.component',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MeasureComponent.empty() => MeasureComponent(
        criteria: FhirExpression.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureComponent.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Measure.group.stratifier.component';
    return MeasureComponent(
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
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      criteria: JsonParser.parseObject<FhirExpression>(
        json,
        'criteria',
        FhirExpression.fromJson,
        '$objectPath.criteria',
      )!,
    );
  }

  /// Deserialize [MeasureComponent]
  /// from a [String] or [YamlMap] object
  factory MeasureComponent.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MeasureComponent.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MeasureComponent.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MeasureComponent '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MeasureComponent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasureComponent.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MeasureComponent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MeasureComponent';

  /// [code]
  /// Indicates a meaning for the stratifier component. This can be as simple
  /// as a unique identifier, or it can establish meaning in a broader
  /// context by drawing from a terminology, allowing stratifiers to be
  /// correlated across measures.
  final CodeableConcept? code;

  /// [description]
  /// The human readable description of this stratifier criteria component.
  final FhirString? description;

  /// [criteria]
  /// An expression that specifies the criteria for this component of the
  /// stratifier. This is typically the name of an expression defined within
  /// a referenced library, but it may also be a path to a stratifier
  /// element.
  final FhirExpression criteria;
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
    addField('code', code);
    addField('description', description);
    addField('criteria', criteria);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'code',
      'description',
      'criteria',
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
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'criteria':
        fields.add(criteria);
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
      case 'code':
        {
          if (child is CodeableConcept) {
            return copyWith(code: child);
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
      case 'criteria':
        {
          if (child is FhirExpression) {
            return copyWith(criteria: child);
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
      case 'code':
        return ['CodeableConcept'];
      case 'description':
        return ['FhirString'];
      case 'criteria':
        return ['FhirExpression'];
      default:
        return <String>[];
    }
  }

  @override
  MeasureComponent clone() => throw UnimplementedError();
  @override
  MeasureComponent copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    FhirString? description,
    FhirExpression? criteria,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MeasureComponent(
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
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      criteria: criteria?.copyWith(
            objectPath: '$newObjectPath.criteria',
          ) ??
          this.criteria,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MeasureComponent) {
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
    if (!equalsDeepWithNull(code, o.code)) {
      return false;
    }
    if (!equalsDeepWithNull(description, o.description)) {
      return false;
    }
    if (!equalsDeepWithNull(criteria, o.criteria)) {
      return false;
    }
    return true;
  }
}

/// [MeasureSupplementalData]
/// The supplemental data criteria for the measure report, specified as
/// either the name of a valid CQL expression within a referenced library,
/// or a valid FHIR Resource Path.
class MeasureSupplementalData extends BackboneElement {
  /// Primary constructor for
  /// [MeasureSupplementalData]

  const MeasureSupplementalData({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.usage,
    this.description,
    required this.criteria,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Measure.supplementalData',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MeasureSupplementalData.empty() => MeasureSupplementalData(
        criteria: FhirExpression.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureSupplementalData.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Measure.supplementalData';
    return MeasureSupplementalData(
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
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      ),
      usage: (json['usage'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.usage',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      criteria: JsonParser.parseObject<FhirExpression>(
        json,
        'criteria',
        FhirExpression.fromJson,
        '$objectPath.criteria',
      )!,
    );
  }

  /// Deserialize [MeasureSupplementalData]
  /// from a [String] or [YamlMap] object
  factory MeasureSupplementalData.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MeasureSupplementalData.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MeasureSupplementalData.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MeasureSupplementalData '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MeasureSupplementalData]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasureSupplementalData.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MeasureSupplementalData.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MeasureSupplementalData';

  /// [code]
  /// Indicates a meaning for the supplemental data. This can be as simple as
  /// a unique identifier, or it can establish meaning in a broader context
  /// by drawing from a terminology, allowing supplemental data to be
  /// correlated across measures.
  final CodeableConcept? code;

  /// [usage]
  /// An indicator of the intended usage for the supplemental data element.
  /// Supplemental data indicates the data is additional information
  /// requested to augment the measure information. Risk adjustment factor
  /// indicates the data is additional information used to calculate risk
  /// adjustment factors when applying a risk model to the measure
  /// calculation.
  final List<CodeableConcept>? usage;

  /// [description]
  /// The human readable description of this supplemental data.
  final FhirString? description;

  /// [criteria]
  /// The criteria for the supplemental data. This is typically the name of a
  /// valid expression defined within a referenced library, but it may also
  /// be a path to a specific data element. The criteria defines the data to
  /// be returned for this element.
  final FhirExpression criteria;
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
    addField('code', code);
    addField('usage', usage);
    addField('description', description);
    addField('criteria', criteria);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'code',
      'usage',
      'description',
      'criteria',
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
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'usage':
        if (usage != null) {
          fields.addAll(usage!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'criteria':
        fields.add(criteria);
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
      case 'code':
        {
          if (child is CodeableConcept) {
            return copyWith(code: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'usage':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(usage: child);
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
      case 'criteria':
        {
          if (child is FhirExpression) {
            return copyWith(criteria: child);
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
      case 'code':
        return ['CodeableConcept'];
      case 'usage':
        return ['CodeableConcept'];
      case 'description':
        return ['FhirString'];
      case 'criteria':
        return ['FhirExpression'];
      default:
        return <String>[];
    }
  }

  @override
  MeasureSupplementalData clone() => throw UnimplementedError();
  @override
  MeasureSupplementalData copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    List<CodeableConcept>? usage,
    FhirString? description,
    FhirExpression? criteria,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MeasureSupplementalData(
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
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      usage: usage
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.usage',
                ),
              )
              .toList() ??
          this.usage,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      criteria: criteria?.copyWith(
            objectPath: '$newObjectPath.criteria',
          ) ??
          this.criteria,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MeasureSupplementalData) {
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
    if (!equalsDeepWithNull(code, o.code)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      usage,
      o.usage,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(description, o.description)) {
      return false;
    }
    if (!equalsDeepWithNull(criteria, o.criteria)) {
      return false;
    }
    return true;
  }
}
