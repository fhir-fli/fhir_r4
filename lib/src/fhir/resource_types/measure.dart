import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'measure.g.dart';

/// [Measure] /// The Measure resource provides the definition of a quality measure.
@JsonSerializable()
class Measure extends DomainResource {
  Measure({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.url,
    this.urlElement,
    this.identifier,
    this.version,
    this.versionElement,
    this.name,
    this.nameElement,
    this.title,
    this.titleElement,
    this.subtitle,
    this.subtitleElement,
    required this.status,
    this.statusElement,
    this.experimental,
    this.experimentalElement,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.date,
    this.dateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.description,
    this.descriptionElement,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.purposeElement,
    this.usage,
    this.usageElement,
    this.copyright,
    this.copyrightElement,
    this.approvalDate,
    this.approvalDateElement,
    this.lastReviewDate,
    this.lastReviewDateElement,
    this.effectivePeriod,
    this.topic,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatedArtifact,
    this.library_,
    this.libraryElement,
    this.disclaimer,
    this.disclaimerElement,
    this.scoring,
    this.compositeScoring,
    this.type,
    this.riskAdjustment,
    this.riskAdjustmentElement,
    this.rateAggregation,
    this.rateAggregationElement,
    this.rationale,
    this.rationaleElement,
    this.clinicalRecommendationStatement,
    this.clinicalRecommendationStatementElement,
    this.improvementNotation,
    this.definition,
    this.definitionElement,
    this.guidance,
    this.guidanceElement,
    this.group,
    this.supplementalData,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.Measure);
  @override
  String get fhirType => 'Measure';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this measure when it is referenced
  /// in a specification, model, design or an instance; also called its canonical
  /// identifier. This SHOULD be globally unique and SHOULD be a literal address
  /// at which at which an authoritative instance of this measure is (or will be)
  /// published. This URL can be the target of a canonical reference. It SHALL
  /// remain the same when the measure is stored on different servers.
  @JsonKey(name: 'url')
  final FhirUri? url;
  @JsonKey(name: '_url')
  final Element? urlElement;

  /// [identifier] /// A formal identifier that is used to identify this measure when it is
  /// represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [version] /// The identifier that is used to identify this version of the measure when it
  /// is referenced in a specification, model, design or instance. This is an
  /// arbitrary value managed by the measure author and is not expected to be
  /// globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a
  /// managed version is not available. There is also no expectation that
  /// versions can be placed in a lexicographical sequence. To provide a version
  /// consistent with the Decision Support Service specification, use the format
  /// Major.Minor.Revision (e.g. 1.0.0). For more information on versioning
  /// knowledge assets, refer to the Decision Support Service specification. Note
  /// that a version is required for non-experimental active artifacts.
  @JsonKey(name: 'version')
  final FhirString? version;
  @JsonKey(name: '_version')
  final Element? versionElement;

  /// [name] /// A natural language name identifying the measure. This name should be usable
  /// as an identifier for the module by machine processing applications such as
  /// code generation.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [title] /// A short, descriptive, user-friendly title for the measure.
  @JsonKey(name: 'title')
  final FhirString? title;
  @JsonKey(name: '_title')
  final Element? titleElement;

  /// [subtitle] /// An explanatory or alternate title for the measure giving additional
  /// information about its content.
  @JsonKey(name: 'subtitle')
  final FhirString? subtitle;
  @JsonKey(name: '_subtitle')
  final Element? subtitleElement;

  /// [status] /// The status of this measure. Enables tracking the life-cycle of the content.
  @JsonKey(name: 'status')
  final PublicationStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [experimental] /// A Boolean value to indicate that this measure is authored for testing
  /// purposes (or education/evaluation/marketing) and is not intended to be used
  /// for genuine usage.
  @JsonKey(name: 'experimental')
  final FhirBoolean? experimental;
  @JsonKey(name: '_experimental')
  final Element? experimentalElement;

  /// [subjectCodeableConcept] /// The intended subjects for the measure. If this element is not provided, a
  /// Patient subject is assumed, but the subject of the measure can be anything.
  @JsonKey(name: 'subjectCodeableConcept')
  final CodeableConcept? subjectCodeableConcept;

  /// [subjectReference] /// The intended subjects for the measure. If this element is not provided, a
  /// Patient subject is assumed, but the subject of the measure can be anything.
  @JsonKey(name: 'subjectReference')
  final Reference? subjectReference;

  /// [date] /// The date (and optionally time) when the measure was published. The date
  /// must change when the business version changes and it must change if the
  /// status code changes. In addition, it should change when the substantive
  /// content of the measure changes.
  @JsonKey(name: 'date')
  final FhirDateTime? date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the measure.
  @JsonKey(name: 'publisher')
  final FhirString? publisher;
  @JsonKey(name: '_publisher')
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  @JsonKey(name: 'contact')
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the measure from a consumer's
  /// perspective.
  @JsonKey(name: 'description')
  final FhirMarkdown? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate measure instances.
  @JsonKey(name: 'useContext')
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the measure is intended to be used.
  @JsonKey(name: 'jurisdiction')
  final List<CodeableConcept>? jurisdiction;

  /// [purpose] /// Explanation of why this measure is needed and why it has been designed as
  /// it has.
  @JsonKey(name: 'purpose')
  final FhirMarkdown? purpose;
  @JsonKey(name: '_purpose')
  final Element? purposeElement;

  /// [usage] /// A detailed description, from a clinical perspective, of how the measure is
  /// used.
  @JsonKey(name: 'usage')
  final FhirString? usage;
  @JsonKey(name: '_usage')
  final Element? usageElement;

  /// [copyright] /// A copyright statement relating to the measure and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the measure.
  @JsonKey(name: 'copyright')
  final FhirMarkdown? copyright;
  @JsonKey(name: '_copyright')
  final Element? copyrightElement;

  /// [approvalDate] /// The date on which the resource content was approved by the publisher.
  /// Approval happens once when the content is officially approved for usage.
  @JsonKey(name: 'approvalDate')
  final FhirDate? approvalDate;
  @JsonKey(name: '_approvalDate')
  final Element? approvalDateElement;

  /// [lastReviewDate] /// The date on which the resource content was last reviewed. Review happens
  /// periodically after approval but does not change the original approval date.
  @JsonKey(name: 'lastReviewDate')
  final FhirDate? lastReviewDate;
  @JsonKey(name: '_lastReviewDate')
  final Element? lastReviewDateElement;

  /// [effectivePeriod] /// The period during which the measure content was or is planned to be in
  /// active use.
  @JsonKey(name: 'effectivePeriod')
  final Period? effectivePeriod;

  /// [topic] /// Descriptive topics related to the content of the measure. Topics provide a
  /// high-level categorization grouping types of measures that can be useful for
  /// filtering and searching.
  @JsonKey(name: 'topic')
  final List<CodeableConcept>? topic;

  /// [author] /// An individiual or organization primarily involved in the creation and
  /// maintenance of the content.
  @JsonKey(name: 'author')
  final List<ContactDetail>? author;

  /// [editor] /// An individual or organization primarily responsible for internal coherence
  /// of the content.
  @JsonKey(name: 'editor')
  final List<ContactDetail>? editor;

  /// [reviewer] /// An individual or organization primarily responsible for review of some
  /// aspect of the content.
  @JsonKey(name: 'reviewer')
  final List<ContactDetail>? reviewer;

  /// [endorser] /// An individual or organization responsible for officially endorsing the
  /// content for use in some setting.
  @JsonKey(name: 'endorser')
  final List<ContactDetail>? endorser;

  /// [relatedArtifact] /// Related artifacts such as additional documentation, justification, or
  /// bibliographic references.
  @JsonKey(name: 'relatedArtifact')
  final List<RelatedArtifact>? relatedArtifact;

  /// [library_] /// A reference to a Library resource containing the formal logic used by the
  /// measure.
  @JsonKey(name: 'library')
  final List<FhirCanonical>? library_;
  @JsonKey(name: '_library')
  final List<Element>? libraryElement;

  /// [disclaimer] /// Notices and disclaimers regarding the use of the measure or related to
  /// intellectual property (such as code systems) referenced by the measure.
  @JsonKey(name: 'disclaimer')
  final FhirMarkdown? disclaimer;
  @JsonKey(name: '_disclaimer')
  final Element? disclaimerElement;

  /// [scoring] /// Indicates how the calculation is performed for the measure, including
  /// proportion, ratio, continuous-variable, and cohort. The value set is
  /// extensible, allowing additional measure scoring types to be represented.
  @JsonKey(name: 'scoring')
  final CodeableConcept? scoring;

  /// [compositeScoring] /// If this is a composite measure, the scoring method used to combine the
  /// component measures to determine the composite score.
  @JsonKey(name: 'compositeScoring')
  final CodeableConcept? compositeScoring;

  /// [type] /// Indicates whether the measure is used to examine a process, an outcome over
  /// time, a patient-reported outcome, or a structure measure such as
  /// utilization.
  @JsonKey(name: 'type')
  final List<CodeableConcept>? type;

  /// [riskAdjustment] /// A description of the risk adjustment factors that may impact the resulting
  /// score for the measure and how they may be accounted for when computing and
  /// reporting measure results.
  @JsonKey(name: 'riskAdjustment')
  final FhirString? riskAdjustment;
  @JsonKey(name: '_riskAdjustment')
  final Element? riskAdjustmentElement;

  /// [rateAggregation] /// Describes how to combine the information calculated, based on logic in each
  /// of several populations, into one summarized result.
  @JsonKey(name: 'rateAggregation')
  final FhirString? rateAggregation;
  @JsonKey(name: '_rateAggregation')
  final Element? rateAggregationElement;

  /// [rationale] /// Provides a succinct statement of the need for the measure. Usually includes
  /// statements pertaining to importance criterion: impact, gap in care, and
  /// evidence.
  @JsonKey(name: 'rationale')
  final FhirMarkdown? rationale;
  @JsonKey(name: '_rationale')
  final Element? rationaleElement;

  /// [clinicalRecommendationStatement] /// Provides a summary of relevant clinical guidelines or other clinical
  /// recommendations supporting the measure.
  @JsonKey(name: 'clinicalRecommendationStatement')
  final FhirMarkdown? clinicalRecommendationStatement;
  @JsonKey(name: '_clinicalRecommendationStatement')
  final Element? clinicalRecommendationStatementElement;

  /// [improvementNotation] /// Information on whether an increase or decrease in score is the preferred
  /// result (e.g., a higher score indicates better quality OR a lower score
  /// indicates better quality OR quality is within a range).
  @JsonKey(name: 'improvementNotation')
  final CodeableConcept? improvementNotation;

  /// [definition] /// Provides a description of an individual term used within the measure.
  @JsonKey(name: 'definition')
  final List<FhirMarkdown>? definition;
  @JsonKey(name: '_definition')
  final List<Element>? definitionElement;

  /// [guidance] /// Additional guidance for the measure including how it can be used in a
  /// clinical context, and the intent of the measure.
  @JsonKey(name: 'guidance')
  final FhirMarkdown? guidance;
  @JsonKey(name: '_guidance')
  final Element? guidanceElement;

  /// [group] /// A group of population criteria for the measure.
  @JsonKey(name: 'group')
  final List<MeasureGroup>? group;

  /// [supplementalData] /// The supplemental data criteria for the measure report, specified as either
  /// the name of a valid CQL expression within a referenced library, or a valid
  /// FHIR Resource Path.
  @JsonKey(name: 'supplementalData')
  final List<MeasureSupplementalData>? supplementalData;
  factory Measure.fromJson(Map<String, dynamic> json) =>
      _$MeasureFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MeasureToJson(this);

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

  factory Measure.fromYaml(dynamic yaml) => yaml is String
      ? Measure.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Measure.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Measure cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Measure.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Measure.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MeasureGroup] /// A group of population criteria for the measure.
@JsonSerializable()
class MeasureGroup extends BackboneElement {
  MeasureGroup({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.description,
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
  @override
  String get fhirType => 'MeasureGroup';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// Indicates a meaning for the group. This can be as simple as a unique
  /// identifier, or it can establish meaning in a broader context by drawing
  /// from a terminology, allowing groups to be correlated across measures.
  @JsonKey(name: 'code')
  final CodeableConcept? code;

  /// [description] /// The human readable description of this population group.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [population] /// A population criteria for the measure.
  @JsonKey(name: 'population')
  final List<MeasurePopulation>? population;

  /// [stratifier] /// The stratifier criteria for the measure report, specified as either the
  /// name of a valid CQL expression defined within a referenced library or a
  /// valid FHIR Resource Path.
  @JsonKey(name: 'stratifier')
  final List<MeasureStratifier>? stratifier;
  factory MeasureGroup.fromJson(Map<String, dynamic> json) =>
      _$MeasureGroupFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MeasureGroupToJson(this);

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

  factory MeasureGroup.fromYaml(dynamic yaml) => yaml is String
      ? MeasureGroup.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MeasureGroup.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MeasureGroup cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MeasureGroup.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MeasureGroup.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MeasurePopulation] /// A population criteria for the measure.
@JsonSerializable()
class MeasurePopulation extends BackboneElement {
  MeasurePopulation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.description,
    this.descriptionElement,
    required this.criteria,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'MeasurePopulation';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// The type of population criteria.
  @JsonKey(name: 'code')
  final CodeableConcept? code;

  /// [description] /// The human readable description of this population criteria.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [criteria] /// An expression that specifies the criteria for the population, typically the
  /// name of an expression in a library.
  @JsonKey(name: 'criteria')
  final FhirExpression criteria;
  factory MeasurePopulation.fromJson(Map<String, dynamic> json) =>
      _$MeasurePopulationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MeasurePopulationToJson(this);

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

  factory MeasurePopulation.fromYaml(dynamic yaml) => yaml is String
      ? MeasurePopulation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MeasurePopulation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MeasurePopulation cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MeasurePopulation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MeasurePopulation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MeasureStratifier] /// The stratifier criteria for the measure report, specified as either the
/// name of a valid CQL expression defined within a referenced library or a
/// valid FHIR Resource Path.
@JsonSerializable()
class MeasureStratifier extends BackboneElement {
  MeasureStratifier({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.description,
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
  @override
  String get fhirType => 'MeasureStratifier';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// Indicates a meaning for the stratifier. This can be as simple as a unique
  /// identifier, or it can establish meaning in a broader context by drawing
  /// from a terminology, allowing stratifiers to be correlated across measures.
  @JsonKey(name: 'code')
  final CodeableConcept? code;

  /// [description] /// The human readable description of this stratifier criteria.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [criteria] /// An expression that specifies the criteria for the stratifier. This is
  /// typically the name of an expression defined within a referenced library,
  /// but it may also be a path to a stratifier element.
  @JsonKey(name: 'criteria')
  final FhirExpression? criteria;

  /// [component] /// A component of the stratifier criteria for the measure report, specified as
  /// either the name of a valid CQL expression defined within a referenced
  /// library or a valid FHIR Resource Path.
  @JsonKey(name: 'component')
  final List<MeasureComponent>? component;
  factory MeasureStratifier.fromJson(Map<String, dynamic> json) =>
      _$MeasureStratifierFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MeasureStratifierToJson(this);

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

  factory MeasureStratifier.fromYaml(dynamic yaml) => yaml is String
      ? MeasureStratifier.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MeasureStratifier.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MeasureStratifier cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MeasureStratifier.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MeasureStratifier.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MeasureComponent] /// A component of the stratifier criteria for the measure report, specified as
/// either the name of a valid CQL expression defined within a referenced
/// library or a valid FHIR Resource Path.
@JsonSerializable()
class MeasureComponent extends BackboneElement {
  MeasureComponent({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.description,
    this.descriptionElement,
    required this.criteria,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'MeasureComponent';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// Indicates a meaning for the stratifier component. This can be as simple as
  /// a unique identifier, or it can establish meaning in a broader context by
  /// drawing from a terminology, allowing stratifiers to be correlated across
  /// measures.
  @JsonKey(name: 'code')
  final CodeableConcept? code;

  /// [description] /// The human readable description of this stratifier criteria component.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [criteria] /// An expression that specifies the criteria for this component of the
  /// stratifier. This is typically the name of an expression defined within a
  /// referenced library, but it may also be a path to a stratifier element.
  @JsonKey(name: 'criteria')
  final FhirExpression criteria;
  factory MeasureComponent.fromJson(Map<String, dynamic> json) =>
      _$MeasureComponentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MeasureComponentToJson(this);

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

  factory MeasureComponent.fromYaml(dynamic yaml) => yaml is String
      ? MeasureComponent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MeasureComponent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MeasureComponent cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MeasureComponent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MeasureComponent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MeasureSupplementalData] /// The supplemental data criteria for the measure report, specified as either
/// the name of a valid CQL expression within a referenced library, or a valid
/// FHIR Resource Path.
@JsonSerializable()
class MeasureSupplementalData extends BackboneElement {
  MeasureSupplementalData({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.usage,
    this.description,
    this.descriptionElement,
    required this.criteria,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'MeasureSupplementalData';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// Indicates a meaning for the supplemental data. This can be as simple as a
  /// unique identifier, or it can establish meaning in a broader context by
  /// drawing from a terminology, allowing supplemental data to be correlated
  /// across measures.
  @JsonKey(name: 'code')
  final CodeableConcept? code;

  /// [usage] /// An indicator of the intended usage for the supplemental data element.
  /// Supplemental data indicates the data is additional information requested to
  /// augment the measure information. Risk adjustment factor indicates the data
  /// is additional information used to calculate risk adjustment factors when
  /// applying a risk model to the measure calculation.
  @JsonKey(name: 'usage')
  final List<CodeableConcept>? usage;

  /// [description] /// The human readable description of this supplemental data.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [criteria] /// The criteria for the supplemental data. This is typically the name of a
  /// valid expression defined within a referenced library, but it may also be a
  /// path to a specific data element. The criteria defines the data to be
  /// returned for this element.
  @JsonKey(name: 'criteria')
  final FhirExpression criteria;
  factory MeasureSupplementalData.fromJson(Map<String, dynamic> json) =>
      _$MeasureSupplementalDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MeasureSupplementalDataToJson(this);

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

  factory MeasureSupplementalData.fromYaml(dynamic yaml) => yaml is String
      ? MeasureSupplementalData.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MeasureSupplementalData.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MeasureSupplementalData cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MeasureSupplementalData.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MeasureSupplementalData.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
