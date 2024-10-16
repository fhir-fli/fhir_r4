import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Measure]
/// The Measure resource provides the definition of a quality measure.
class Measure extends DomainResource {
  /// Primary constructor for [Measure]

  Measure({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.url,
    this.identifier,
    this.version,
    this.name,
    this.title,
    this.subtitle,
    required this.status,
    this.experimental,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.date,
    this.publisher,
    this.contact,
    this.description,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.Measure,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Measure.fromJson(Map<String, dynamic> json) {
    return Measure(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      url: json['url'] != null
          ? FhirUri.fromJson({
              'value': json['url'],
              '_value': json['_url'],
            })
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      version: json['version'] != null
          ? FhirString.fromJson({
              'value': json['version'],
              '_value': json['_version'],
            })
          : null,
      name: json['name'] != null
          ? FhirString.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      title: json['title'] != null
          ? FhirString.fromJson({
              'value': json['title'],
              '_value': json['_title'],
            })
          : null,
      subtitle: json['subtitle'] != null
          ? FhirString.fromJson({
              'value': json['subtitle'],
              '_value': json['_subtitle'],
            })
          : null,
      status: PublicationStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      experimental: json['experimental'] != null
          ? FhirBoolean.fromJson({
              'value': json['experimental'],
              '_value': json['_experimental'],
            })
          : null,
      subjectCodeableConcept: json['subjectCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['subjectCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      subjectReference: json['subjectReference'] != null
          ? Reference.fromJson(
              json['subjectReference'] as Map<String, dynamic>,
            )
          : null,
      date: json['date'] != null
          ? FhirDateTime.fromJson({
              'value': json['date'],
              '_value': json['_date'],
            })
          : null,
      publisher: json['publisher'] != null
          ? FhirString.fromJson({
              'value': json['publisher'],
              '_value': json['_publisher'],
            })
          : null,
      contact: json['contact'] != null
          ? (json['contact'] as List<dynamic>)
              .map<ContactDetail>(
                (v) => ContactDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      description: json['description'] != null
          ? FhirMarkdown.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      useContext: json['useContext'] != null
          ? (json['useContext'] as List<dynamic>)
              .map<UsageContext>(
                (v) => UsageContext.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      jurisdiction: json['jurisdiction'] != null
          ? (json['jurisdiction'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      purpose: json['purpose'] != null
          ? FhirMarkdown.fromJson({
              'value': json['purpose'],
              '_value': json['_purpose'],
            })
          : null,
      usage: json['usage'] != null
          ? FhirString.fromJson({
              'value': json['usage'],
              '_value': json['_usage'],
            })
          : null,
      copyright: json['copyright'] != null
          ? FhirMarkdown.fromJson({
              'value': json['copyright'],
              '_value': json['_copyright'],
            })
          : null,
      approvalDate: json['approvalDate'] != null
          ? FhirDate.fromJson({
              'value': json['approvalDate'],
              '_value': json['_approvalDate'],
            })
          : null,
      lastReviewDate: json['lastReviewDate'] != null
          ? FhirDate.fromJson({
              'value': json['lastReviewDate'],
              '_value': json['_lastReviewDate'],
            })
          : null,
      effectivePeriod: json['effectivePeriod'] != null
          ? Period.fromJson(
              json['effectivePeriod'] as Map<String, dynamic>,
            )
          : null,
      topic: json['topic'] != null
          ? (json['topic'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      author: json['author'] != null
          ? (json['author'] as List<dynamic>)
              .map<ContactDetail>(
                (v) => ContactDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      editor: json['editor'] != null
          ? (json['editor'] as List<dynamic>)
              .map<ContactDetail>(
                (v) => ContactDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      reviewer: json['reviewer'] != null
          ? (json['reviewer'] as List<dynamic>)
              .map<ContactDetail>(
                (v) => ContactDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      endorser: json['endorser'] != null
          ? (json['endorser'] as List<dynamic>)
              .map<ContactDetail>(
                (v) => ContactDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      relatedArtifact: json['relatedArtifact'] != null
          ? (json['relatedArtifact'] as List<dynamic>)
              .map<RelatedArtifact>(
                (v) => RelatedArtifact.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      library_: parsePrimitiveList<FhirCanonical>(
          json['library'] as List<dynamic>?, json['_library'] as List<dynamic>?,
          fromJson: FhirCanonical.fromJson),
      disclaimer: json['disclaimer'] != null
          ? FhirMarkdown.fromJson({
              'value': json['disclaimer'],
              '_value': json['_disclaimer'],
            })
          : null,
      scoring: json['scoring'] != null
          ? CodeableConcept.fromJson(
              json['scoring'] as Map<String, dynamic>,
            )
          : null,
      compositeScoring: json['compositeScoring'] != null
          ? CodeableConcept.fromJson(
              json['compositeScoring'] as Map<String, dynamic>,
            )
          : null,
      type: json['type'] != null
          ? (json['type'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      riskAdjustment: json['riskAdjustment'] != null
          ? FhirString.fromJson({
              'value': json['riskAdjustment'],
              '_value': json['_riskAdjustment'],
            })
          : null,
      rateAggregation: json['rateAggregation'] != null
          ? FhirString.fromJson({
              'value': json['rateAggregation'],
              '_value': json['_rateAggregation'],
            })
          : null,
      rationale: json['rationale'] != null
          ? FhirMarkdown.fromJson({
              'value': json['rationale'],
              '_value': json['_rationale'],
            })
          : null,
      clinicalRecommendationStatement:
          json['clinicalRecommendationStatement'] != null
              ? FhirMarkdown.fromJson({
                  'value': json['clinicalRecommendationStatement'],
                  '_value': json['_clinicalRecommendationStatement'],
                })
              : null,
      improvementNotation: json['improvementNotation'] != null
          ? CodeableConcept.fromJson(
              json['improvementNotation'] as Map<String, dynamic>,
            )
          : null,
      definition: parsePrimitiveList<FhirMarkdown>(
          json['definition'] as List<dynamic>?,
          json['_definition'] as List<dynamic>?,
          fromJson: FhirMarkdown.fromJson),
      guidance: json['guidance'] != null
          ? FhirMarkdown.fromJson({
              'value': json['guidance'],
              '_value': json['_guidance'],
            })
          : null,
      group: json['group'] != null
          ? (json['group'] as List<dynamic>)
              .map<MeasureGroup>(
                (v) => MeasureGroup.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      supplementalData: json['supplementalData'] != null
          ? (json['supplementalData'] as List<dynamic>)
              .map<MeasureSupplementalData>(
                (v) => MeasureSupplementalData.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [Measure] from a [String]
  /// or [YamlMap] object
  factory Measure.fromYaml(dynamic yaml) => yaml is String
      ? Measure.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Measure.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Measure cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Measure]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Measure.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Measure.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Measure';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [url]
  /// An absolute URI that is used to identify this measure when it is
  /// referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance
  /// of this measure is (or will be) published. This URL can be the target
  /// of a canonical reference. It SHALL remain the same when the measure is
  /// stored on different servers.
  final FhirUri? url;

  /// [identifier]
  /// A formal identifier that is used to identify this measure when it is
  /// represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  final List<Identifier>? identifier;

  /// [version]
  /// The identifier that is used to identify this version of the measure
  /// when it is referenced in a specification, model, design or instance.
  /// This is an arbitrary value managed by the measure author and is not
  /// expected to be globally unique. For example, it might be a timestamp
  /// (e.g. yyyymmdd) if a managed version is not available. There is also no
  /// expectation that versions can be placed in a lexicographical sequence.
  /// To provide a version consistent with the Decision Support Service
  /// specification, use the format Major.Minor.Revision (e.g. 1.0.0). For
  /// more information on versioning knowledge assets, refer to the Decision
  /// Support Service specification. Note that a version is required for
  /// non-experimental active artifacts.
  final FhirString? version;

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

  /// [status]
  /// The status of this measure. Enables tracking the life-cycle of the
  /// content.
  final PublicationStatus status;

  /// [experimental]
  /// A Boolean value to indicate that this measure is authored for testing
  /// purposes (or education/evaluation/marketing) and is not intended to be
  /// used for genuine usage.
  final FhirBoolean? experimental;

  /// [subjectCodeableConcept]
  /// The intended subjects for the measure. If this element is not provided,
  /// a Patient subject is assumed, but the subject of the measure can be
  /// anything.
  final CodeableConcept? subjectCodeableConcept;

  /// [subjectReference]
  /// The intended subjects for the measure. If this element is not provided,
  /// a Patient subject is assumed, but the subject of the measure can be
  /// anything.
  final Reference? subjectReference;

  /// [date]
  /// The date (and optionally time) when the measure was published. The date
  /// must change when the business version changes and it must change if the
  /// status code changes. In addition, it should change when the substantive
  /// content of the measure changes.
  final FhirDateTime? date;

  /// [publisher]
  /// The name of the organization or individual that published the measure.
  final FhirString? publisher;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description]
  /// A free text natural language description of the measure from a
  /// consumer's perspective.
  final FhirMarkdown? description;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate measure instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction]
  /// A legal or geographic region in which the measure is intended to be
  /// used.
  final List<CodeableConcept>? jurisdiction;

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
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (meta != null) {
      final fieldJson1 = meta!.toJson();
      json['meta'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_meta'] = fieldJson1['_value'];
      }
    }

    if (implicitRules != null) {
      final fieldJson2 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_implicitRules'] = fieldJson2['_value'];
      }
    }

    if (language != null) {
      final fieldJson3 = language!.toJson();
      json['language'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_language'] = fieldJson3['_value'];
      }
    }

    if (text != null) {
      final fieldJson4 = text!.toJson();
      json['text'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_text'] = fieldJson4['_value'];
      }
    }

    if (contained != null && contained!.isNotEmpty) {
      final fieldJson5 = contained!.map((e) => e.toJson()).toList();
      json['contained'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_contained'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson6 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson7 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (url != null) {
      final fieldJson8 = url!.toJson();
      json['url'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_url'] = fieldJson8['_value'];
      }
    }

    if (identifier != null && identifier!.isNotEmpty) {
      final fieldJson9 = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = fieldJson9.map((e) => e['value']).toList();
      if (fieldJson9.any((e) => e['_value'] != null)) {
        json['_identifier'] = fieldJson9.map((e) => e['_value']).toList();
      }
    }

    if (version != null) {
      final fieldJson10 = version!.toJson();
      json['version'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_version'] = fieldJson10['_value'];
      }
    }

    if (name != null) {
      final fieldJson11 = name!.toJson();
      json['name'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_name'] = fieldJson11['_value'];
      }
    }

    if (title != null) {
      final fieldJson12 = title!.toJson();
      json['title'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_title'] = fieldJson12['_value'];
      }
    }

    if (subtitle != null) {
      final fieldJson13 = subtitle!.toJson();
      json['subtitle'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_subtitle'] = fieldJson13['_value'];
      }
    }

    final fieldJson14 = status.toJson();
    json['status'] = fieldJson14['value'];
    if (fieldJson14['_value'] != null) {
      json['_status'] = fieldJson14['_value'];
    }

    if (experimental != null) {
      final fieldJson15 = experimental!.toJson();
      json['experimental'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_experimental'] = fieldJson15['_value'];
      }
    }

    if (subjectCodeableConcept != null) {
      final fieldJson16 = subjectCodeableConcept!.toJson();
      json['subjectCodeableConcept'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_subjectCodeableConcept'] = fieldJson16['_value'];
      }
    }

    if (subjectReference != null) {
      final fieldJson17 = subjectReference!.toJson();
      json['subjectReference'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_subjectReference'] = fieldJson17['_value'];
      }
    }

    if (date != null) {
      final fieldJson18 = date!.toJson();
      json['date'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_date'] = fieldJson18['_value'];
      }
    }

    if (publisher != null) {
      final fieldJson19 = publisher!.toJson();
      json['publisher'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_publisher'] = fieldJson19['_value'];
      }
    }

    if (contact != null && contact!.isNotEmpty) {
      final fieldJson20 = contact!.map((e) => e.toJson()).toList();
      json['contact'] = fieldJson20.map((e) => e['value']).toList();
      if (fieldJson20.any((e) => e['_value'] != null)) {
        json['_contact'] = fieldJson20.map((e) => e['_value']).toList();
      }
    }

    if (description != null) {
      final fieldJson21 = description!.toJson();
      json['description'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_description'] = fieldJson21['_value'];
      }
    }

    if (useContext != null && useContext!.isNotEmpty) {
      final fieldJson22 = useContext!.map((e) => e.toJson()).toList();
      json['useContext'] = fieldJson22.map((e) => e['value']).toList();
      if (fieldJson22.any((e) => e['_value'] != null)) {
        json['_useContext'] = fieldJson22.map((e) => e['_value']).toList();
      }
    }

    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      final fieldJson23 = jurisdiction!.map((e) => e.toJson()).toList();
      json['jurisdiction'] = fieldJson23.map((e) => e['value']).toList();
      if (fieldJson23.any((e) => e['_value'] != null)) {
        json['_jurisdiction'] = fieldJson23.map((e) => e['_value']).toList();
      }
    }

    if (purpose != null) {
      final fieldJson24 = purpose!.toJson();
      json['purpose'] = fieldJson24['value'];
      if (fieldJson24['_value'] != null) {
        json['_purpose'] = fieldJson24['_value'];
      }
    }

    if (usage != null) {
      final fieldJson25 = usage!.toJson();
      json['usage'] = fieldJson25['value'];
      if (fieldJson25['_value'] != null) {
        json['_usage'] = fieldJson25['_value'];
      }
    }

    if (copyright != null) {
      final fieldJson26 = copyright!.toJson();
      json['copyright'] = fieldJson26['value'];
      if (fieldJson26['_value'] != null) {
        json['_copyright'] = fieldJson26['_value'];
      }
    }

    if (approvalDate != null) {
      final fieldJson27 = approvalDate!.toJson();
      json['approvalDate'] = fieldJson27['value'];
      if (fieldJson27['_value'] != null) {
        json['_approvalDate'] = fieldJson27['_value'];
      }
    }

    if (lastReviewDate != null) {
      final fieldJson28 = lastReviewDate!.toJson();
      json['lastReviewDate'] = fieldJson28['value'];
      if (fieldJson28['_value'] != null) {
        json['_lastReviewDate'] = fieldJson28['_value'];
      }
    }

    if (effectivePeriod != null) {
      final fieldJson29 = effectivePeriod!.toJson();
      json['effectivePeriod'] = fieldJson29['value'];
      if (fieldJson29['_value'] != null) {
        json['_effectivePeriod'] = fieldJson29['_value'];
      }
    }

    if (topic != null && topic!.isNotEmpty) {
      final fieldJson30 = topic!.map((e) => e.toJson()).toList();
      json['topic'] = fieldJson30.map((e) => e['value']).toList();
      if (fieldJson30.any((e) => e['_value'] != null)) {
        json['_topic'] = fieldJson30.map((e) => e['_value']).toList();
      }
    }

    if (author != null && author!.isNotEmpty) {
      final fieldJson31 = author!.map((e) => e.toJson()).toList();
      json['author'] = fieldJson31.map((e) => e['value']).toList();
      if (fieldJson31.any((e) => e['_value'] != null)) {
        json['_author'] = fieldJson31.map((e) => e['_value']).toList();
      }
    }

    if (editor != null && editor!.isNotEmpty) {
      final fieldJson32 = editor!.map((e) => e.toJson()).toList();
      json['editor'] = fieldJson32.map((e) => e['value']).toList();
      if (fieldJson32.any((e) => e['_value'] != null)) {
        json['_editor'] = fieldJson32.map((e) => e['_value']).toList();
      }
    }

    if (reviewer != null && reviewer!.isNotEmpty) {
      final fieldJson33 = reviewer!.map((e) => e.toJson()).toList();
      json['reviewer'] = fieldJson33.map((e) => e['value']).toList();
      if (fieldJson33.any((e) => e['_value'] != null)) {
        json['_reviewer'] = fieldJson33.map((e) => e['_value']).toList();
      }
    }

    if (endorser != null && endorser!.isNotEmpty) {
      final fieldJson34 = endorser!.map((e) => e.toJson()).toList();
      json['endorser'] = fieldJson34.map((e) => e['value']).toList();
      if (fieldJson34.any((e) => e['_value'] != null)) {
        json['_endorser'] = fieldJson34.map((e) => e['_value']).toList();
      }
    }

    if (relatedArtifact != null && relatedArtifact!.isNotEmpty) {
      final fieldJson35 = relatedArtifact!.map((e) => e.toJson()).toList();
      json['relatedArtifact'] = fieldJson35.map((e) => e['value']).toList();
      if (fieldJson35.any((e) => e['_value'] != null)) {
        json['_relatedArtifact'] = fieldJson35.map((e) => e['_value']).toList();
      }
    }

    if (library_ != null && library_!.isNotEmpty) {
      final fieldJson36 = library_!.map((e) => e.toJson()).toList();
      json['library'] = fieldJson36.map((e) => e['value']).toList();
      if (fieldJson36.any((e) => e['_value'] != null)) {
        json['_library'] = fieldJson36.map((e) => e['_value']).toList();
      }
    }

    if (disclaimer != null) {
      final fieldJson37 = disclaimer!.toJson();
      json['disclaimer'] = fieldJson37['value'];
      if (fieldJson37['_value'] != null) {
        json['_disclaimer'] = fieldJson37['_value'];
      }
    }

    if (scoring != null) {
      final fieldJson38 = scoring!.toJson();
      json['scoring'] = fieldJson38['value'];
      if (fieldJson38['_value'] != null) {
        json['_scoring'] = fieldJson38['_value'];
      }
    }

    if (compositeScoring != null) {
      final fieldJson39 = compositeScoring!.toJson();
      json['compositeScoring'] = fieldJson39['value'];
      if (fieldJson39['_value'] != null) {
        json['_compositeScoring'] = fieldJson39['_value'];
      }
    }

    if (type != null && type!.isNotEmpty) {
      final fieldJson40 = type!.map((e) => e.toJson()).toList();
      json['type'] = fieldJson40.map((e) => e['value']).toList();
      if (fieldJson40.any((e) => e['_value'] != null)) {
        json['_type'] = fieldJson40.map((e) => e['_value']).toList();
      }
    }

    if (riskAdjustment != null) {
      final fieldJson41 = riskAdjustment!.toJson();
      json['riskAdjustment'] = fieldJson41['value'];
      if (fieldJson41['_value'] != null) {
        json['_riskAdjustment'] = fieldJson41['_value'];
      }
    }

    if (rateAggregation != null) {
      final fieldJson42 = rateAggregation!.toJson();
      json['rateAggregation'] = fieldJson42['value'];
      if (fieldJson42['_value'] != null) {
        json['_rateAggregation'] = fieldJson42['_value'];
      }
    }

    if (rationale != null) {
      final fieldJson43 = rationale!.toJson();
      json['rationale'] = fieldJson43['value'];
      if (fieldJson43['_value'] != null) {
        json['_rationale'] = fieldJson43['_value'];
      }
    }

    if (clinicalRecommendationStatement != null) {
      final fieldJson44 = clinicalRecommendationStatement!.toJson();
      json['clinicalRecommendationStatement'] = fieldJson44['value'];
      if (fieldJson44['_value'] != null) {
        json['_clinicalRecommendationStatement'] = fieldJson44['_value'];
      }
    }

    if (improvementNotation != null) {
      final fieldJson45 = improvementNotation!.toJson();
      json['improvementNotation'] = fieldJson45['value'];
      if (fieldJson45['_value'] != null) {
        json['_improvementNotation'] = fieldJson45['_value'];
      }
    }

    if (definition != null && definition!.isNotEmpty) {
      final fieldJson46 = definition!.map((e) => e.toJson()).toList();
      json['definition'] = fieldJson46.map((e) => e['value']).toList();
      if (fieldJson46.any((e) => e['_value'] != null)) {
        json['_definition'] = fieldJson46.map((e) => e['_value']).toList();
      }
    }

    if (guidance != null) {
      final fieldJson47 = guidance!.toJson();
      json['guidance'] = fieldJson47['value'];
      if (fieldJson47['_value'] != null) {
        json['_guidance'] = fieldJson47['_value'];
      }
    }

    if (group != null && group!.isNotEmpty) {
      final fieldJson48 = group!.map((e) => e.toJson()).toList();
      json['group'] = fieldJson48.map((e) => e['value']).toList();
      if (fieldJson48.any((e) => e['_value'] != null)) {
        json['_group'] = fieldJson48.map((e) => e['_value']).toList();
      }
    }

    if (supplementalData != null && supplementalData!.isNotEmpty) {
      final fieldJson49 = supplementalData!.map((e) => e.toJson()).toList();
      json['supplementalData'] = fieldJson49.map((e) => e['value']).toList();
      if (fieldJson49.any((e) => e['_value'] != null)) {
        json['_supplementalData'] =
            fieldJson49.map((e) => e['_value']).toList();
      }
    }

    return json;
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
    CodeableConcept? subjectCodeableConcept,
    Reference? subjectReference,
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Measure(
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
      status: status ?? this.status,
      experimental: experimental ?? this.experimental,
      subjectCodeableConcept:
          subjectCodeableConcept ?? this.subjectCodeableConcept,
      subjectReference: subjectReference ?? this.subjectReference,
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
      disclaimer: disclaimer ?? this.disclaimer,
      scoring: scoring ?? this.scoring,
      compositeScoring: compositeScoring ?? this.compositeScoring,
      type: type ?? this.type,
      riskAdjustment: riskAdjustment ?? this.riskAdjustment,
      rateAggregation: rateAggregation ?? this.rateAggregation,
      rationale: rationale ?? this.rationale,
      clinicalRecommendationStatement: clinicalRecommendationStatement ??
          this.clinicalRecommendationStatement,
      improvementNotation: improvementNotation ?? this.improvementNotation,
      definition: definition ?? this.definition,
      guidance: guidance ?? this.guidance,
      group: group ?? this.group,
      supplementalData: supplementalData ?? this.supplementalData,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MeasureGroup]
/// A group of population criteria for the measure.
class MeasureGroup extends BackboneElement {
  /// Primary constructor for [MeasureGroup]

  MeasureGroup({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.code,
    this.description,
    this.population,
    this.stratifier,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureGroup.fromJson(Map<String, dynamic> json) {
    return MeasureGroup(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      description: json['description'] != null
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      population: json['population'] != null
          ? (json['population'] as List<dynamic>)
              .map<MeasurePopulation>(
                (v) => MeasurePopulation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      stratifier: json['stratifier'] != null
          ? (json['stratifier'] as List<dynamic>)
              .map<MeasureStratifier>(
                (v) => MeasureStratifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [MeasureGroup] from a [String]
  /// or [YamlMap] object
  factory MeasureGroup.fromYaml(dynamic yaml) => yaml is String
      ? MeasureGroup.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MeasureGroup.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('MeasureGroup cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MeasureGroup]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasureGroup.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MeasureGroup.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MeasureGroup';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (code != null) {
      final fieldJson3 = code!.toJson();
      json['code'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_code'] = fieldJson3['_value'];
      }
    }

    if (description != null) {
      final fieldJson4 = description!.toJson();
      json['description'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_description'] = fieldJson4['_value'];
      }
    }

    if (population != null && population!.isNotEmpty) {
      final fieldJson5 = population!.map((e) => e.toJson()).toList();
      json['population'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_population'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (stratifier != null && stratifier!.isNotEmpty) {
      final fieldJson6 = stratifier!.map((e) => e.toJson()).toList();
      json['stratifier'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_stratifier'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MeasureGroup(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      description: description ?? this.description,
      population: population ?? this.population,
      stratifier: stratifier ?? this.stratifier,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MeasurePopulation]
/// A population criteria for the measure.
class MeasurePopulation extends BackboneElement {
  /// Primary constructor for [MeasurePopulation]

  MeasurePopulation({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.code,
    this.description,
    required this.criteria,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasurePopulation.fromJson(Map<String, dynamic> json) {
    return MeasurePopulation(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      description: json['description'] != null
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      criteria: FhirExpression.fromJson(
        json['criteria'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [MeasurePopulation] from a [String]
  /// or [YamlMap] object
  factory MeasurePopulation.fromYaml(dynamic yaml) => yaml is String
      ? MeasurePopulation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MeasurePopulation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('MeasurePopulation cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MeasurePopulation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasurePopulation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MeasurePopulation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MeasurePopulation';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (code != null) {
      final fieldJson3 = code!.toJson();
      json['code'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_code'] = fieldJson3['_value'];
      }
    }

    if (description != null) {
      final fieldJson4 = description!.toJson();
      json['description'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_description'] = fieldJson4['_value'];
      }
    }

    final fieldJson5 = criteria.toJson();
    json['criteria'] = fieldJson5['value'];
    if (fieldJson5['_value'] != null) {
      json['_criteria'] = fieldJson5['_value'];
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MeasurePopulation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      description: description ?? this.description,
      criteria: criteria ?? this.criteria,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MeasureStratifier]
/// The stratifier criteria for the measure report, specified as either the
/// name of a valid CQL expression defined within a referenced library or a
/// valid FHIR Resource Path.
class MeasureStratifier extends BackboneElement {
  /// Primary constructor for [MeasureStratifier]

  MeasureStratifier({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.code,
    this.description,
    this.criteria,
    this.component,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureStratifier.fromJson(Map<String, dynamic> json) {
    return MeasureStratifier(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      description: json['description'] != null
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      criteria: json['criteria'] != null
          ? FhirExpression.fromJson(
              json['criteria'] as Map<String, dynamic>,
            )
          : null,
      component: json['component'] != null
          ? (json['component'] as List<dynamic>)
              .map<MeasureComponent>(
                (v) => MeasureComponent.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [MeasureStratifier] from a [String]
  /// or [YamlMap] object
  factory MeasureStratifier.fromYaml(dynamic yaml) => yaml is String
      ? MeasureStratifier.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MeasureStratifier.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('MeasureStratifier cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MeasureStratifier]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasureStratifier.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MeasureStratifier.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MeasureStratifier';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (code != null) {
      final fieldJson3 = code!.toJson();
      json['code'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_code'] = fieldJson3['_value'];
      }
    }

    if (description != null) {
      final fieldJson4 = description!.toJson();
      json['description'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_description'] = fieldJson4['_value'];
      }
    }

    if (criteria != null) {
      final fieldJson5 = criteria!.toJson();
      json['criteria'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_criteria'] = fieldJson5['_value'];
      }
    }

    if (component != null && component!.isNotEmpty) {
      final fieldJson6 = component!.map((e) => e.toJson()).toList();
      json['component'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_component'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MeasureStratifier(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      description: description ?? this.description,
      criteria: criteria ?? this.criteria,
      component: component ?? this.component,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MeasureComponent]
/// A component of the stratifier criteria for the measure report,
/// specified as either the name of a valid CQL expression defined within a
/// referenced library or a valid FHIR Resource Path.
class MeasureComponent extends BackboneElement {
  /// Primary constructor for [MeasureComponent]

  MeasureComponent({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.code,
    this.description,
    required this.criteria,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureComponent.fromJson(Map<String, dynamic> json) {
    return MeasureComponent(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      description: json['description'] != null
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      criteria: FhirExpression.fromJson(
        json['criteria'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [MeasureComponent] from a [String]
  /// or [YamlMap] object
  factory MeasureComponent.fromYaml(dynamic yaml) => yaml is String
      ? MeasureComponent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MeasureComponent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('MeasureComponent cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MeasureComponent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasureComponent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MeasureComponent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MeasureComponent';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (code != null) {
      final fieldJson3 = code!.toJson();
      json['code'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_code'] = fieldJson3['_value'];
      }
    }

    if (description != null) {
      final fieldJson4 = description!.toJson();
      json['description'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_description'] = fieldJson4['_value'];
      }
    }

    final fieldJson5 = criteria.toJson();
    json['criteria'] = fieldJson5['value'];
    if (fieldJson5['_value'] != null) {
      json['_criteria'] = fieldJson5['_value'];
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MeasureComponent(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      description: description ?? this.description,
      criteria: criteria ?? this.criteria,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MeasureSupplementalData]
/// The supplemental data criteria for the measure report, specified as
/// either the name of a valid CQL expression within a referenced library,
/// or a valid FHIR Resource Path.
class MeasureSupplementalData extends BackboneElement {
  /// Primary constructor for [MeasureSupplementalData]

  MeasureSupplementalData({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.code,
    this.usage,
    this.description,
    required this.criteria,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureSupplementalData.fromJson(Map<String, dynamic> json) {
    return MeasureSupplementalData(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      usage: json['usage'] != null
          ? (json['usage'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      description: json['description'] != null
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      criteria: FhirExpression.fromJson(
        json['criteria'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [MeasureSupplementalData] from a [String]
  /// or [YamlMap] object
  factory MeasureSupplementalData.fromYaml(dynamic yaml) => yaml is String
      ? MeasureSupplementalData.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MeasureSupplementalData.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MeasureSupplementalData cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MeasureSupplementalData]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasureSupplementalData.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MeasureSupplementalData.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MeasureSupplementalData';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (code != null) {
      final fieldJson3 = code!.toJson();
      json['code'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_code'] = fieldJson3['_value'];
      }
    }

    if (usage != null && usage!.isNotEmpty) {
      final fieldJson4 = usage!.map((e) => e.toJson()).toList();
      json['usage'] = fieldJson4.map((e) => e['value']).toList();
      if (fieldJson4.any((e) => e['_value'] != null)) {
        json['_usage'] = fieldJson4.map((e) => e['_value']).toList();
      }
    }

    if (description != null) {
      final fieldJson5 = description!.toJson();
      json['description'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_description'] = fieldJson5['_value'];
      }
    }

    final fieldJson6 = criteria.toJson();
    json['criteria'] = fieldJson6['value'];
    if (fieldJson6['_value'] != null) {
      json['_criteria'] = fieldJson6['_value'];
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MeasureSupplementalData(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      usage: usage ?? this.usage,
      description: description ?? this.description,
      criteria: criteria ?? this.criteria,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
