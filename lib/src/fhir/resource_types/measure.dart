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

    /// Extensions for [implicitRules]
    super.implicitRulesElement,
    super.language,

    /// Extensions for [language]
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.url,

    /// Extensions for [url]
    this.urlElement,
    this.identifier,
    this.version,

    /// Extensions for [version]
    this.versionElement,
    this.name,

    /// Extensions for [name]
    this.nameElement,
    this.title,

    /// Extensions for [title]
    this.titleElement,
    this.subtitle,

    /// Extensions for [subtitle]
    this.subtitleElement,
    required this.status,

    /// Extensions for [status]
    this.statusElement,
    this.experimental,

    /// Extensions for [experimental]
    this.experimentalElement,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.date,

    /// Extensions for [date]
    this.dateElement,
    this.publisher,

    /// Extensions for [publisher]
    this.publisherElement,
    this.contact,
    this.description,

    /// Extensions for [description]
    this.descriptionElement,
    this.useContext,
    this.jurisdiction,
    this.purpose,

    /// Extensions for [purpose]
    this.purposeElement,
    this.usage,

    /// Extensions for [usage]
    this.usageElement,
    this.copyright,

    /// Extensions for [copyright]
    this.copyrightElement,
    this.approvalDate,

    /// Extensions for [approvalDate]
    this.approvalDateElement,
    this.lastReviewDate,

    /// Extensions for [lastReviewDate]
    this.lastReviewDateElement,
    this.effectivePeriod,
    this.topic,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatedArtifact,
    this.library_,

    /// Extensions for [library]
    this.libraryElement,
    this.disclaimer,

    /// Extensions for [disclaimer]
    this.disclaimerElement,
    this.scoring,
    this.compositeScoring,
    this.type,
    this.riskAdjustment,

    /// Extensions for [riskAdjustment]
    this.riskAdjustmentElement,
    this.rateAggregation,

    /// Extensions for [rateAggregation]
    this.rateAggregationElement,
    this.rationale,

    /// Extensions for [rationale]
    this.rationaleElement,
    this.clinicalRecommendationStatement,

    /// Extensions for [clinicalRecommendationStatement]
    this.clinicalRecommendationStatementElement,
    this.improvementNotation,
    this.definition,

    /// Extensions for [definition]
    this.definitionElement,
    this.guidance,

    /// Extensions for [guidance]
    this.guidanceElement,
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
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(
              json['_implicitRules'] as Map<String, dynamic>,
            )
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(
              json['_language'] as Map<String, dynamic>,
            )
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (dynamic v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      url: json['url'] != null ? FhirUri.fromJson(json['url']) : null,
      urlElement: json['_url'] != null
          ? Element.fromJson(
              json['_url'] as Map<String, dynamic>,
            )
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (dynamic v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      version:
          json['version'] != null ? FhirString.fromJson(json['version']) : null,
      versionElement: json['_version'] != null
          ? Element.fromJson(
              json['_version'] as Map<String, dynamic>,
            )
          : null,
      name: json['name'] != null ? FhirString.fromJson(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(
              json['_name'] as Map<String, dynamic>,
            )
          : null,
      title: json['title'] != null ? FhirString.fromJson(json['title']) : null,
      titleElement: json['_title'] != null
          ? Element.fromJson(
              json['_title'] as Map<String, dynamic>,
            )
          : null,
      subtitle: json['subtitle'] != null
          ? FhirString.fromJson(json['subtitle'])
          : null,
      subtitleElement: json['_subtitle'] != null
          ? Element.fromJson(
              json['_subtitle'] as Map<String, dynamic>,
            )
          : null,
      status: PublicationStatus.fromJson(json['status']),
      statusElement: json['_status'] != null
          ? Element.fromJson(
              json['_status'] as Map<String, dynamic>,
            )
          : null,
      experimental: json['experimental'] != null
          ? FhirBoolean.fromJson(json['experimental'])
          : null,
      experimentalElement: json['_experimental'] != null
          ? Element.fromJson(
              json['_experimental'] as Map<String, dynamic>,
            )
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
      date: json['date'] != null ? FhirDateTime.fromJson(json['date']) : null,
      dateElement: json['_date'] != null
          ? Element.fromJson(
              json['_date'] as Map<String, dynamic>,
            )
          : null,
      publisher: json['publisher'] != null
          ? FhirString.fromJson(json['publisher'])
          : null,
      publisherElement: json['_publisher'] != null
          ? Element.fromJson(
              json['_publisher'] as Map<String, dynamic>,
            )
          : null,
      contact: json['contact'] != null
          ? (json['contact'] as List<dynamic>)
              .map<ContactDetail>(
                (dynamic v) => ContactDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      description: json['description'] != null
          ? FhirMarkdown.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(
              json['_description'] as Map<String, dynamic>,
            )
          : null,
      useContext: json['useContext'] != null
          ? (json['useContext'] as List<dynamic>)
              .map<UsageContext>(
                (dynamic v) => UsageContext.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      jurisdiction: json['jurisdiction'] != null
          ? (json['jurisdiction'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      purpose: json['purpose'] != null
          ? FhirMarkdown.fromJson(json['purpose'])
          : null,
      purposeElement: json['_purpose'] != null
          ? Element.fromJson(
              json['_purpose'] as Map<String, dynamic>,
            )
          : null,
      usage: json['usage'] != null ? FhirString.fromJson(json['usage']) : null,
      usageElement: json['_usage'] != null
          ? Element.fromJson(
              json['_usage'] as Map<String, dynamic>,
            )
          : null,
      copyright: json['copyright'] != null
          ? FhirMarkdown.fromJson(json['copyright'])
          : null,
      copyrightElement: json['_copyright'] != null
          ? Element.fromJson(
              json['_copyright'] as Map<String, dynamic>,
            )
          : null,
      approvalDate: json['approvalDate'] != null
          ? FhirDate.fromJson(json['approvalDate'])
          : null,
      approvalDateElement: json['_approvalDate'] != null
          ? Element.fromJson(
              json['_approvalDate'] as Map<String, dynamic>,
            )
          : null,
      lastReviewDate: json['lastReviewDate'] != null
          ? FhirDate.fromJson(json['lastReviewDate'])
          : null,
      lastReviewDateElement: json['_lastReviewDate'] != null
          ? Element.fromJson(
              json['_lastReviewDate'] as Map<String, dynamic>,
            )
          : null,
      effectivePeriod: json['effectivePeriod'] != null
          ? Period.fromJson(
              json['effectivePeriod'] as Map<String, dynamic>,
            )
          : null,
      topic: json['topic'] != null
          ? (json['topic'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      author: json['author'] != null
          ? (json['author'] as List<dynamic>)
              .map<ContactDetail>(
                (dynamic v) => ContactDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      editor: json['editor'] != null
          ? (json['editor'] as List<dynamic>)
              .map<ContactDetail>(
                (dynamic v) => ContactDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      reviewer: json['reviewer'] != null
          ? (json['reviewer'] as List<dynamic>)
              .map<ContactDetail>(
                (dynamic v) => ContactDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      endorser: json['endorser'] != null
          ? (json['endorser'] as List<dynamic>)
              .map<ContactDetail>(
                (dynamic v) => ContactDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      relatedArtifact: json['relatedArtifact'] != null
          ? (json['relatedArtifact'] as List<dynamic>)
              .map<RelatedArtifact>(
                (dynamic v) => RelatedArtifact.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      library_: json['library'] != null
          ? (json['library'] as List<dynamic>)
              .map<FhirCanonical>(
                (dynamic v) => FhirCanonical.fromJson(v as dynamic),
              )
              .toList()
          : null,
      libraryElement: json['_library'] != null
          ? (json['_library'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      disclaimer: json['disclaimer'] != null
          ? FhirMarkdown.fromJson(json['disclaimer'])
          : null,
      disclaimerElement: json['_disclaimer'] != null
          ? Element.fromJson(
              json['_disclaimer'] as Map<String, dynamic>,
            )
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
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      riskAdjustment: json['riskAdjustment'] != null
          ? FhirString.fromJson(json['riskAdjustment'])
          : null,
      riskAdjustmentElement: json['_riskAdjustment'] != null
          ? Element.fromJson(
              json['_riskAdjustment'] as Map<String, dynamic>,
            )
          : null,
      rateAggregation: json['rateAggregation'] != null
          ? FhirString.fromJson(json['rateAggregation'])
          : null,
      rateAggregationElement: json['_rateAggregation'] != null
          ? Element.fromJson(
              json['_rateAggregation'] as Map<String, dynamic>,
            )
          : null,
      rationale: json['rationale'] != null
          ? FhirMarkdown.fromJson(json['rationale'])
          : null,
      rationaleElement: json['_rationale'] != null
          ? Element.fromJson(
              json['_rationale'] as Map<String, dynamic>,
            )
          : null,
      clinicalRecommendationStatement:
          json['clinicalRecommendationStatement'] != null
              ? FhirMarkdown.fromJson(json['clinicalRecommendationStatement'])
              : null,
      clinicalRecommendationStatementElement:
          json['_clinicalRecommendationStatement'] != null
              ? Element.fromJson(
                  json['_clinicalRecommendationStatement']
                      as Map<String, dynamic>,
                )
              : null,
      improvementNotation: json['improvementNotation'] != null
          ? CodeableConcept.fromJson(
              json['improvementNotation'] as Map<String, dynamic>,
            )
          : null,
      definition: json['definition'] != null
          ? (json['definition'] as List<dynamic>)
              .map<FhirMarkdown>(
                (dynamic v) => FhirMarkdown.fromJson(v as dynamic),
              )
              .toList()
          : null,
      definitionElement: json['_definition'] != null
          ? (json['_definition'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      guidance: json['guidance'] != null
          ? FhirMarkdown.fromJson(json['guidance'])
          : null,
      guidanceElement: json['_guidance'] != null
          ? Element.fromJson(
              json['_guidance'] as Map<String, dynamic>,
            )
          : null,
      group: json['group'] != null
          ? (json['group'] as List<dynamic>)
              .map<MeasureGroup>(
                (dynamic v) => MeasureGroup.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      supplementalData: json['supplementalData'] != null
          ? (json['supplementalData'] as List<dynamic>)
              .map<MeasureSupplementalData>(
                (dynamic v) => MeasureSupplementalData.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [Measure] from a [String] or [YamlMap] object
  factory Measure.fromYaml(dynamic yaml) => yaml is String
      ? Measure.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Measure.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Measure cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Measure] that takes in a [String]
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

  /// [url]
  /// An absolute URI that is used to identify this measure when it is
  /// referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance
  /// of this measure is (or will be) published. This URL can be the target
  /// of a canonical reference. It SHALL remain the same when the measure is
  /// stored on different servers.
  final FhirUri? url;

  /// Extensions for [url]
  final Element? urlElement;

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

  /// Extensions for [version]
  final Element? versionElement;

  /// [name]
  /// A natural language name identifying the measure. This name should be
  /// usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;

  /// Extensions for [name]
  final Element? nameElement;

  /// [title]
  /// A short, descriptive, user-friendly title for the measure.
  final FhirString? title;

  /// Extensions for [title]
  final Element? titleElement;

  /// [subtitle]
  /// An explanatory or alternate title for the measure giving additional
  /// information about its content.
  final FhirString? subtitle;

  /// Extensions for [subtitle]
  final Element? subtitleElement;

  /// [status]
  /// The status of this measure. Enables tracking the life-cycle of the
  /// content.
  final PublicationStatus status;

  /// Extensions for [status]
  final Element? statusElement;

  /// [experimental]
  /// A Boolean value to indicate that this measure is authored for testing
  /// purposes (or education/evaluation/marketing) and is not intended to be
  /// used for genuine usage.
  final FhirBoolean? experimental;

  /// Extensions for [experimental]
  final Element? experimentalElement;

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

  /// Extensions for [date]
  final Element? dateElement;

  /// [publisher]
  /// The name of the organization or individual that published the measure.
  final FhirString? publisher;

  /// Extensions for [publisher]
  final Element? publisherElement;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description]
  /// A free text natural language description of the measure from a
  /// consumer's perspective.
  final FhirMarkdown? description;

  /// Extensions for [description]
  final Element? descriptionElement;

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

  /// Extensions for [purpose]
  final Element? purposeElement;

  /// [usage]
  /// A detailed description, from a clinical perspective, of how the measure
  /// is used.
  final FhirString? usage;

  /// Extensions for [usage]
  final Element? usageElement;

  /// [copyright]
  /// A copyright statement relating to the measure and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the measure.
  final FhirMarkdown? copyright;

  /// Extensions for [copyright]
  final Element? copyrightElement;

  /// [approvalDate]
  /// The date on which the resource content was approved by the publisher.
  /// Approval happens once when the content is officially approved for
  /// usage.
  final FhirDate? approvalDate;

  /// Extensions for [approvalDate]
  final Element? approvalDateElement;

  /// [lastReviewDate]
  /// The date on which the resource content was last reviewed. Review
  /// happens periodically after approval but does not change the original
  /// approval date.
  final FhirDate? lastReviewDate;

  /// Extensions for [lastReviewDate]
  final Element? lastReviewDateElement;

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

  /// Extensions for [library]
  final List<Element>? libraryElement;

  /// [disclaimer]
  /// Notices and disclaimers regarding the use of the measure or related to
  /// intellectual property (such as code systems) referenced by the measure.
  final FhirMarkdown? disclaimer;

  /// Extensions for [disclaimer]
  final Element? disclaimerElement;

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

  /// Extensions for [riskAdjustment]
  final Element? riskAdjustmentElement;

  /// [rateAggregation]
  /// Describes how to combine the information calculated, based on logic in
  /// each of several populations, into one summarized result.
  final FhirString? rateAggregation;

  /// Extensions for [rateAggregation]
  final Element? rateAggregationElement;

  /// [rationale]
  /// Provides a succinct statement of the need for the measure. Usually
  /// includes statements pertaining to importance criterion: impact, gap in
  /// care, and evidence.
  final FhirMarkdown? rationale;

  /// Extensions for [rationale]
  final Element? rationaleElement;

  /// [clinicalRecommendationStatement]
  /// Provides a summary of relevant clinical guidelines or other clinical
  /// recommendations supporting the measure.
  final FhirMarkdown? clinicalRecommendationStatement;

  /// Extensions for [clinicalRecommendationStatement]
  final Element? clinicalRecommendationStatementElement;

  /// [improvementNotation]
  /// Information on whether an increase or decrease in score is the
  /// preferred result (e.g., a higher score indicates better quality OR a
  /// lower score indicates better quality OR quality is within a range).
  final CodeableConcept? improvementNotation;

  /// [definition]
  /// Provides a description of an individual term used within the measure.
  final List<FhirMarkdown>? definition;

  /// Extensions for [definition]
  final List<Element>? definitionElement;

  /// [guidance]
  /// Additional guidance for the measure including how it can be used in a
  /// clinical context, and the intent of the measure.
  final FhirMarkdown? guidance;

  /// Extensions for [guidance]
  final Element? guidanceElement;

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
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.toJson();
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (url?.value != null) {
      json['url'] = url!.toJson();
    }
    if (urlElement != null) {
      json['_url'] = urlElement!.toJson();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map((Identifier v) => v.toJson()).toList();
    }
    if (version?.value != null) {
      json['version'] = version!.toJson();
    }
    if (versionElement != null) {
      json['_version'] = versionElement!.toJson();
    }
    if (name?.value != null) {
      json['name'] = name!.toJson();
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (title?.value != null) {
      json['title'] = title!.toJson();
    }
    if (titleElement != null) {
      json['_title'] = titleElement!.toJson();
    }
    if (subtitle?.value != null) {
      json['subtitle'] = subtitle!.toJson();
    }
    if (subtitleElement != null) {
      json['_subtitle'] = subtitleElement!.toJson();
    }
    json['status'] = status.toJson();
    if (experimental?.value != null) {
      json['experimental'] = experimental!.toJson();
    }
    if (experimentalElement != null) {
      json['_experimental'] = experimentalElement!.toJson();
    }
    if (subjectCodeableConcept != null) {
      json['subjectCodeableConcept'] = subjectCodeableConcept!.toJson();
    }
    if (subjectReference != null) {
      json['subjectReference'] = subjectReference!.toJson();
    }
    if (date?.value != null) {
      json['date'] = date!.toJson();
    }
    if (dateElement != null) {
      json['_date'] = dateElement!.toJson();
    }
    if (publisher?.value != null) {
      json['publisher'] = publisher!.toJson();
    }
    if (publisherElement != null) {
      json['_publisher'] = publisherElement!.toJson();
    }
    if (contact != null && contact!.isNotEmpty) {
      json['contact'] = contact!.map((ContactDetail v) => v.toJson()).toList();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] =
          useContext!.map((UsageContext v) => v.toJson()).toList();
    }
    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      json['jurisdiction'] =
          jurisdiction!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (purpose?.value != null) {
      json['purpose'] = purpose!.toJson();
    }
    if (purposeElement != null) {
      json['_purpose'] = purposeElement!.toJson();
    }
    if (usage?.value != null) {
      json['usage'] = usage!.toJson();
    }
    if (usageElement != null) {
      json['_usage'] = usageElement!.toJson();
    }
    if (copyright?.value != null) {
      json['copyright'] = copyright!.toJson();
    }
    if (copyrightElement != null) {
      json['_copyright'] = copyrightElement!.toJson();
    }
    if (approvalDate?.value != null) {
      json['approvalDate'] = approvalDate!.toJson();
    }
    if (approvalDateElement != null) {
      json['_approvalDate'] = approvalDateElement!.toJson();
    }
    if (lastReviewDate?.value != null) {
      json['lastReviewDate'] = lastReviewDate!.toJson();
    }
    if (lastReviewDateElement != null) {
      json['_lastReviewDate'] = lastReviewDateElement!.toJson();
    }
    if (effectivePeriod != null) {
      json['effectivePeriod'] = effectivePeriod!.toJson();
    }
    if (topic != null && topic!.isNotEmpty) {
      json['topic'] = topic!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (author != null && author!.isNotEmpty) {
      json['author'] = author!.map((ContactDetail v) => v.toJson()).toList();
    }
    if (editor != null && editor!.isNotEmpty) {
      json['editor'] = editor!.map((ContactDetail v) => v.toJson()).toList();
    }
    if (reviewer != null && reviewer!.isNotEmpty) {
      json['reviewer'] =
          reviewer!.map((ContactDetail v) => v.toJson()).toList();
    }
    if (endorser != null && endorser!.isNotEmpty) {
      json['endorser'] =
          endorser!.map((ContactDetail v) => v.toJson()).toList();
    }
    if (relatedArtifact != null && relatedArtifact!.isNotEmpty) {
      json['relatedArtifact'] =
          relatedArtifact!.map((RelatedArtifact v) => v.toJson()).toList();
    }
    if (library_ != null && library_!.isNotEmpty) {
      json['library'] = library_!.map((FhirCanonical v) => v.toJson()).toList();
    }
    if (libraryElement != null && libraryElement!.isNotEmpty) {
      json['_library'] =
          libraryElement!.map((Element v) => v.toJson()).toList();
    }
    if (disclaimer?.value != null) {
      json['disclaimer'] = disclaimer!.toJson();
    }
    if (disclaimerElement != null) {
      json['_disclaimer'] = disclaimerElement!.toJson();
    }
    if (scoring != null) {
      json['scoring'] = scoring!.toJson();
    }
    if (compositeScoring != null) {
      json['compositeScoring'] = compositeScoring!.toJson();
    }
    if (type != null && type!.isNotEmpty) {
      json['type'] = type!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (riskAdjustment?.value != null) {
      json['riskAdjustment'] = riskAdjustment!.toJson();
    }
    if (riskAdjustmentElement != null) {
      json['_riskAdjustment'] = riskAdjustmentElement!.toJson();
    }
    if (rateAggregation?.value != null) {
      json['rateAggregation'] = rateAggregation!.toJson();
    }
    if (rateAggregationElement != null) {
      json['_rateAggregation'] = rateAggregationElement!.toJson();
    }
    if (rationale?.value != null) {
      json['rationale'] = rationale!.toJson();
    }
    if (rationaleElement != null) {
      json['_rationale'] = rationaleElement!.toJson();
    }
    if (clinicalRecommendationStatement?.value != null) {
      json['clinicalRecommendationStatement'] =
          clinicalRecommendationStatement!.toJson();
    }
    if (clinicalRecommendationStatementElement != null) {
      json['_clinicalRecommendationStatement'] =
          clinicalRecommendationStatementElement!.toJson();
    }
    if (improvementNotation != null) {
      json['improvementNotation'] = improvementNotation!.toJson();
    }
    if (definition != null && definition!.isNotEmpty) {
      json['definition'] =
          definition!.map((FhirMarkdown v) => v.toJson()).toList();
    }
    if (definitionElement != null && definitionElement!.isNotEmpty) {
      json['_definition'] =
          definitionElement!.map((Element v) => v.toJson()).toList();
    }
    if (guidance?.value != null) {
      json['guidance'] = guidance!.toJson();
    }
    if (guidanceElement != null) {
      json['_guidance'] = guidanceElement!.toJson();
    }
    if (group != null && group!.isNotEmpty) {
      json['group'] = group!.map((MeasureGroup v) => v.toJson()).toList();
    }
    if (supplementalData != null && supplementalData!.isNotEmpty) {
      json['supplementalData'] = supplementalData!
          .map((MeasureSupplementalData v) => v.toJson())
          .toList();
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
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? url,
    Element? urlElement,
    List<Identifier>? identifier,
    FhirString? version,
    Element? versionElement,
    FhirString? name,
    Element? nameElement,
    FhirString? title,
    Element? titleElement,
    FhirString? subtitle,
    Element? subtitleElement,
    PublicationStatus? status,
    Element? statusElement,
    FhirBoolean? experimental,
    Element? experimentalElement,
    CodeableConcept? subjectCodeableConcept,
    Reference? subjectReference,
    FhirDateTime? date,
    Element? dateElement,
    FhirString? publisher,
    Element? publisherElement,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    Element? descriptionElement,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    Element? purposeElement,
    FhirString? usage,
    Element? usageElement,
    FhirMarkdown? copyright,
    Element? copyrightElement,
    FhirDate? approvalDate,
    Element? approvalDateElement,
    FhirDate? lastReviewDate,
    Element? lastReviewDateElement,
    Period? effectivePeriod,
    List<CodeableConcept>? topic,
    List<ContactDetail>? author,
    List<ContactDetail>? editor,
    List<ContactDetail>? reviewer,
    List<ContactDetail>? endorser,
    List<RelatedArtifact>? relatedArtifact,
    List<FhirCanonical>? library_,
    List<Element>? libraryElement,
    FhirMarkdown? disclaimer,
    Element? disclaimerElement,
    CodeableConcept? scoring,
    CodeableConcept? compositeScoring,
    List<CodeableConcept>? type,
    FhirString? riskAdjustment,
    Element? riskAdjustmentElement,
    FhirString? rateAggregation,
    Element? rateAggregationElement,
    FhirMarkdown? rationale,
    Element? rationaleElement,
    FhirMarkdown? clinicalRecommendationStatement,
    Element? clinicalRecommendationStatementElement,
    CodeableConcept? improvementNotation,
    List<FhirMarkdown>? definition,
    List<Element>? definitionElement,
    FhirMarkdown? guidance,
    Element? guidanceElement,
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
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
      urlElement: urlElement ?? this.urlElement,
      identifier: identifier ?? this.identifier,
      version: version ?? this.version,
      versionElement: versionElement ?? this.versionElement,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      title: title ?? this.title,
      titleElement: titleElement ?? this.titleElement,
      subtitle: subtitle ?? this.subtitle,
      subtitleElement: subtitleElement ?? this.subtitleElement,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      experimental: experimental ?? this.experimental,
      experimentalElement: experimentalElement ?? this.experimentalElement,
      subjectCodeableConcept:
          subjectCodeableConcept ?? this.subjectCodeableConcept,
      subjectReference: subjectReference ?? this.subjectReference,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      publisher: publisher ?? this.publisher,
      publisherElement: publisherElement ?? this.publisherElement,
      contact: contact ?? this.contact,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      useContext: useContext ?? this.useContext,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      purpose: purpose ?? this.purpose,
      purposeElement: purposeElement ?? this.purposeElement,
      usage: usage ?? this.usage,
      usageElement: usageElement ?? this.usageElement,
      copyright: copyright ?? this.copyright,
      copyrightElement: copyrightElement ?? this.copyrightElement,
      approvalDate: approvalDate ?? this.approvalDate,
      approvalDateElement: approvalDateElement ?? this.approvalDateElement,
      lastReviewDate: lastReviewDate ?? this.lastReviewDate,
      lastReviewDateElement:
          lastReviewDateElement ?? this.lastReviewDateElement,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      topic: topic ?? this.topic,
      author: author ?? this.author,
      editor: editor ?? this.editor,
      reviewer: reviewer ?? this.reviewer,
      endorser: endorser ?? this.endorser,
      relatedArtifact: relatedArtifact ?? this.relatedArtifact,
      library_: library_ ?? this.library_,
      libraryElement: libraryElement ?? this.libraryElement,
      disclaimer: disclaimer ?? this.disclaimer,
      disclaimerElement: disclaimerElement ?? this.disclaimerElement,
      scoring: scoring ?? this.scoring,
      compositeScoring: compositeScoring ?? this.compositeScoring,
      type: type ?? this.type,
      riskAdjustment: riskAdjustment ?? this.riskAdjustment,
      riskAdjustmentElement:
          riskAdjustmentElement ?? this.riskAdjustmentElement,
      rateAggregation: rateAggregation ?? this.rateAggregation,
      rateAggregationElement:
          rateAggregationElement ?? this.rateAggregationElement,
      rationale: rationale ?? this.rationale,
      rationaleElement: rationaleElement ?? this.rationaleElement,
      clinicalRecommendationStatement: clinicalRecommendationStatement ??
          this.clinicalRecommendationStatement,
      clinicalRecommendationStatementElement:
          clinicalRecommendationStatementElement ??
              this.clinicalRecommendationStatementElement,
      improvementNotation: improvementNotation ?? this.improvementNotation,
      definition: definition ?? this.definition,
      definitionElement: definitionElement ?? this.definitionElement,
      guidance: guidance ?? this.guidance,
      guidanceElement: guidanceElement ?? this.guidanceElement,
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
    super.extension_,
    super.modifierExtension,
    this.code,
    this.description,

    /// Extensions for [description]
    this.descriptionElement,
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
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
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
          ? FhirString.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(
              json['_description'] as Map<String, dynamic>,
            )
          : null,
      population: json['population'] != null
          ? (json['population'] as List<dynamic>)
              .map<MeasurePopulation>(
                (dynamic v) => MeasurePopulation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      stratifier: json['stratifier'] != null
          ? (json['stratifier'] as List<dynamic>)
              .map<MeasureStratifier>(
                (dynamic v) => MeasureStratifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [MeasureGroup] from a [String] or [YamlMap] object
  factory MeasureGroup.fromYaml(dynamic yaml) => yaml is String
      ? MeasureGroup.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MeasureGroup.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('MeasureGroup cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MeasureGroup] that takes in a [String]
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

  /// [code]
  /// Indicates a meaning for the group. This can be as simple as a unique
  /// identifier, or it can establish meaning in a broader context by drawing
  /// from a terminology, allowing groups to be correlated across measures.
  final CodeableConcept? code;

  /// [description]
  /// The human readable description of this population group.
  final FhirString? description;

  /// Extensions for [description]
  final Element? descriptionElement;

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
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (code != null) {
      json['code'] = code!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (population != null && population!.isNotEmpty) {
      json['population'] =
          population!.map((MeasurePopulation v) => v.toJson()).toList();
    }
    if (stratifier != null && stratifier!.isNotEmpty) {
      json['stratifier'] =
          stratifier!.map((MeasureStratifier v) => v.toJson()).toList();
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
    Element? descriptionElement,
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
      descriptionElement: descriptionElement ?? this.descriptionElement,
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
    super.extension_,
    super.modifierExtension,
    this.code,
    this.description,

    /// Extensions for [description]
    this.descriptionElement,
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
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
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
          ? FhirString.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(
              json['_description'] as Map<String, dynamic>,
            )
          : null,
      criteria: FhirExpression.fromJson(
        json['criteria'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [MeasurePopulation] from a [String] or [YamlMap] object
  factory MeasurePopulation.fromYaml(dynamic yaml) => yaml is String
      ? MeasurePopulation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MeasurePopulation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MeasurePopulation cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MeasurePopulation] that takes in a [String]
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

  /// [code]
  /// The type of population criteria.
  final CodeableConcept? code;

  /// [description]
  /// The human readable description of this population criteria.
  final FhirString? description;

  /// Extensions for [description]
  final Element? descriptionElement;

  /// [criteria]
  /// An expression that specifies the criteria for the population, typically
  /// the name of an expression in a library.
  final FhirExpression criteria;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (code != null) {
      json['code'] = code!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    json['criteria'] = criteria.toJson();
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
    Element? descriptionElement,
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
      descriptionElement: descriptionElement ?? this.descriptionElement,
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
    super.extension_,
    super.modifierExtension,
    this.code,
    this.description,

    /// Extensions for [description]
    this.descriptionElement,
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
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
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
          ? FhirString.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(
              json['_description'] as Map<String, dynamic>,
            )
          : null,
      criteria: json['criteria'] != null
          ? FhirExpression.fromJson(
              json['criteria'] as Map<String, dynamic>,
            )
          : null,
      component: json['component'] != null
          ? (json['component'] as List<dynamic>)
              .map<MeasureComponent>(
                (dynamic v) => MeasureComponent.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [MeasureStratifier] from a [String] or [YamlMap] object
  factory MeasureStratifier.fromYaml(dynamic yaml) => yaml is String
      ? MeasureStratifier.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MeasureStratifier.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MeasureStratifier cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MeasureStratifier] that takes in a [String]
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

  /// [code]
  /// Indicates a meaning for the stratifier. This can be as simple as a
  /// unique identifier, or it can establish meaning in a broader context by
  /// drawing from a terminology, allowing stratifiers to be correlated
  /// across measures.
  final CodeableConcept? code;

  /// [description]
  /// The human readable description of this stratifier criteria.
  final FhirString? description;

  /// Extensions for [description]
  final Element? descriptionElement;

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
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (code != null) {
      json['code'] = code!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (criteria != null) {
      json['criteria'] = criteria!.toJson();
    }
    if (component != null && component!.isNotEmpty) {
      json['component'] =
          component!.map((MeasureComponent v) => v.toJson()).toList();
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
    Element? descriptionElement,
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
      descriptionElement: descriptionElement ?? this.descriptionElement,
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
    super.extension_,
    super.modifierExtension,
    this.code,
    this.description,

    /// Extensions for [description]
    this.descriptionElement,
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
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
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
          ? FhirString.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(
              json['_description'] as Map<String, dynamic>,
            )
          : null,
      criteria: FhirExpression.fromJson(
        json['criteria'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [MeasureComponent] from a [String] or [YamlMap] object
  factory MeasureComponent.fromYaml(dynamic yaml) => yaml is String
      ? MeasureComponent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MeasureComponent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MeasureComponent cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MeasureComponent] that takes in a [String]
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

  /// [code]
  /// Indicates a meaning for the stratifier component. This can be as simple
  /// as a unique identifier, or it can establish meaning in a broader
  /// context by drawing from a terminology, allowing stratifiers to be
  /// correlated across measures.
  final CodeableConcept? code;

  /// [description]
  /// The human readable description of this stratifier criteria component.
  final FhirString? description;

  /// Extensions for [description]
  final Element? descriptionElement;

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
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (code != null) {
      json['code'] = code!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    json['criteria'] = criteria.toJson();
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
    Element? descriptionElement,
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
      descriptionElement: descriptionElement ?? this.descriptionElement,
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
    super.extension_,
    super.modifierExtension,
    this.code,
    this.usage,
    this.description,

    /// Extensions for [description]
    this.descriptionElement,
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
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
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
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      description: json['description'] != null
          ? FhirString.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(
              json['_description'] as Map<String, dynamic>,
            )
          : null,
      criteria: FhirExpression.fromJson(
        json['criteria'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [MeasureSupplementalData] from a [String] or [YamlMap] object
  factory MeasureSupplementalData.fromYaml(dynamic yaml) => yaml is String
      ? MeasureSupplementalData.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MeasureSupplementalData.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MeasureSupplementalData cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MeasureSupplementalData] that takes in a [String]
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

  /// Extensions for [description]
  final Element? descriptionElement;

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
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (code != null) {
      json['code'] = code!.toJson();
    }
    if (usage != null && usage!.isNotEmpty) {
      json['usage'] = usage!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    json['criteria'] = criteria.toJson();
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
    Element? descriptionElement,
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
      descriptionElement: descriptionElement ?? this.descriptionElement,
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
