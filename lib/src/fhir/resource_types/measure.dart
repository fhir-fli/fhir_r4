import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Measure] /// The Measure resource provides the definition of a quality measure.
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
  }) : super(resourceType: R4ResourceType.Measure);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this measure when it is referenced
  /// in a specification, model, design or an instance; also called its canonical
  /// identifier. This SHOULD be globally unique and SHOULD be a literal address
  /// at which at which an authoritative instance of this measure is (or will be)
  /// published. This URL can be the target of a canonical reference. It SHALL
  /// remain the same when the measure is stored on different servers.
  final FhirUri? url;
  final Element? urlElement;

  /// [identifier] /// A formal identifier that is used to identify this measure when it is
  /// represented in other formats, or referenced in a specification, model,
  /// design or an instance.
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
  final FhirString? version;
  final Element? versionElement;

  /// [name] /// A natural language name identifying the measure. This name should be usable
  /// as an identifier for the module by machine processing applications such as
  /// code generation.
  final FhirString? name;
  final Element? nameElement;

  /// [title] /// A short, descriptive, user-friendly title for the measure.
  final FhirString? title;
  final Element? titleElement;

  /// [subtitle] /// An explanatory or alternate title for the measure giving additional
  /// information about its content.
  final FhirString? subtitle;
  final Element? subtitleElement;

  /// [status] /// The status of this measure. Enables tracking the life-cycle of the content.
  final FhirCode status;
  final Element? statusElement;

  /// [experimental] /// A Boolean value to indicate that this measure is authored for testing
  /// purposes (or education/evaluation/marketing) and is not intended to be used
  /// for genuine usage.
  final FhirBoolean? experimental;
  final Element? experimentalElement;

  /// [subjectCodeableConcept] /// The intended subjects for the measure. If this element is not provided, a
  /// Patient subject is assumed, but the subject of the measure can be anything.
  final CodeableConcept? subjectCodeableConcept;

  /// [subjectReference] /// The intended subjects for the measure. If this element is not provided, a
  /// Patient subject is assumed, but the subject of the measure can be anything.
  final Reference? subjectReference;

  /// [date] /// The date (and optionally time) when the measure was published. The date
  /// must change when the business version changes and it must change if the
  /// status code changes. In addition, it should change when the substantive
  /// content of the measure changes.
  final FhirDateTime? date;
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the measure.
  final FhirString? publisher;
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the measure from a consumer's
  /// perspective.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate measure instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the measure is intended to be used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose] /// Explanation of why this measure is needed and why it has been designed as
  /// it has.
  final FhirMarkdown? purpose;
  final Element? purposeElement;

  /// [usage] /// A detailed description, from a clinical perspective, of how the measure is
  /// used.
  final FhirString? usage;
  final Element? usageElement;

  /// [copyright] /// A copyright statement relating to the measure and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the measure.
  final FhirMarkdown? copyright;
  final Element? copyrightElement;

  /// [approvalDate] /// The date on which the resource content was approved by the publisher.
  /// Approval happens once when the content is officially approved for usage.
  final FhirDate? approvalDate;
  final Element? approvalDateElement;

  /// [lastReviewDate] /// The date on which the resource content was last reviewed. Review happens
  /// periodically after approval but does not change the original approval date.
  final FhirDate? lastReviewDate;
  final Element? lastReviewDateElement;

  /// [effectivePeriod] /// The period during which the measure content was or is planned to be in
  /// active use.
  final Period? effectivePeriod;

  /// [topic] /// Descriptive topics related to the content of the measure. Topics provide a
  /// high-level categorization grouping types of measures that can be useful for
  /// filtering and searching.
  final List<CodeableConcept>? topic;

  /// [author] /// An individiual or organization primarily involved in the creation and
  /// maintenance of the content.
  final List<ContactDetail>? author;

  /// [editor] /// An individual or organization primarily responsible for internal coherence
  /// of the content.
  final List<ContactDetail>? editor;

  /// [reviewer] /// An individual or organization primarily responsible for review of some
  /// aspect of the content.
  final List<ContactDetail>? reviewer;

  /// [endorser] /// An individual or organization responsible for officially endorsing the
  /// content for use in some setting.
  final List<ContactDetail>? endorser;

  /// [relatedArtifact] /// Related artifacts such as additional documentation, justification, or
  /// bibliographic references.
  final List<RelatedArtifact>? relatedArtifact;

  /// [library_] /// A reference to a Library resource containing the formal logic used by the
  /// measure.
  final List<FhirCanonical>? library_;
  final List<Element>? libraryElement;

  /// [disclaimer] /// Notices and disclaimers regarding the use of the measure or related to
  /// intellectual property (such as code systems) referenced by the measure.
  final FhirMarkdown? disclaimer;
  final Element? disclaimerElement;

  /// [scoring] /// Indicates how the calculation is performed for the measure, including
  /// proportion, ratio, continuous-variable, and cohort. The value set is
  /// extensible, allowing additional measure scoring types to be represented.
  final CodeableConcept? scoring;

  /// [compositeScoring] /// If this is a composite measure, the scoring method used to combine the
  /// component measures to determine the composite score.
  final CodeableConcept? compositeScoring;

  /// [type] /// Indicates whether the measure is used to examine a process, an outcome over
  /// time, a patient-reported outcome, or a structure measure such as
  /// utilization.
  final List<CodeableConcept>? type;

  /// [riskAdjustment] /// A description of the risk adjustment factors that may impact the resulting
  /// score for the measure and how they may be accounted for when computing and
  /// reporting measure results.
  final FhirString? riskAdjustment;
  final Element? riskAdjustmentElement;

  /// [rateAggregation] /// Describes how to combine the information calculated, based on logic in each
  /// of several populations, into one summarized result.
  final FhirString? rateAggregation;
  final Element? rateAggregationElement;

  /// [rationale] /// Provides a succinct statement of the need for the measure. Usually includes
  /// statements pertaining to importance criterion: impact, gap in care, and
  /// evidence.
  final FhirMarkdown? rationale;
  final Element? rationaleElement;

  /// [clinicalRecommendationStatement] /// Provides a summary of relevant clinical guidelines or other clinical
  /// recommendations supporting the measure.
  final FhirMarkdown? clinicalRecommendationStatement;
  final Element? clinicalRecommendationStatementElement;

  /// [improvementNotation] /// Information on whether an increase or decrease in score is the preferred
  /// result (e.g., a higher score indicates better quality OR a lower score
  /// indicates better quality OR quality is within a range).
  final CodeableConcept? improvementNotation;

  /// [definition] /// Provides a description of an individual term used within the measure.
  final List<FhirMarkdown>? definition;
  final List<Element>? definitionElement;

  /// [guidance] /// Additional guidance for the measure including how it can be used in a
  /// clinical context, and the intent of the measure.
  final FhirMarkdown? guidance;
  final Element? guidanceElement;

  /// [group] /// A group of population criteria for the measure.
  final List<MeasureGroup>? group;

  /// [supplementalData] /// The supplemental data criteria for the measure report, specified as either
  /// the name of a valid CQL expression within a referenced library, or a valid
  /// FHIR Resource Path.
  final List<MeasureSupplementalData>? supplementalData;
  @override
  Measure clone() => throw UnimplementedError();
  Measure copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
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
    FhirCode? status,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [MeasureGroup] /// A group of population criteria for the measure.
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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// Indicates a meaning for the group. This can be as simple as a unique
  /// identifier, or it can establish meaning in a broader context by drawing
  /// from a terminology, allowing groups to be correlated across measures.
  final CodeableConcept? code;

  /// [description] /// The human readable description of this population group.
  final FhirString? description;
  final Element? descriptionElement;

  /// [population] /// A population criteria for the measure.
  final List<MeasurePopulation>? population;

  /// [stratifier] /// The stratifier criteria for the measure report, specified as either the
  /// name of a valid CQL expression defined within a referenced library or a
  /// valid FHIR Resource Path.
  final List<MeasureStratifier>? stratifier;
  @override
  MeasureGroup clone() => throw UnimplementedError();
  MeasureGroup copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    FhirString? description,
    Element? descriptionElement,
    List<MeasurePopulation>? population,
    List<MeasureStratifier>? stratifier,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [MeasurePopulation] /// A population criteria for the measure.
class MeasurePopulation extends BackboneElement {
  MeasurePopulation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.description,
    this.descriptionElement,
    required this.criteria,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// The type of population criteria.
  final CodeableConcept? code;

  /// [description] /// The human readable description of this population criteria.
  final FhirString? description;
  final Element? descriptionElement;

  /// [criteria] /// An expression that specifies the criteria for the population, typically the
  /// name of an expression in a library.
  final FhirExpression criteria;
  @override
  MeasurePopulation clone() => throw UnimplementedError();
  MeasurePopulation copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    FhirString? description,
    Element? descriptionElement,
    FhirExpression? criteria,
  }) {
    return MeasurePopulation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      criteria: criteria ?? this.criteria,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [MeasureStratifier] /// The stratifier criteria for the measure report, specified as either the
/// name of a valid CQL expression defined within a referenced library or a
/// valid FHIR Resource Path.
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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// Indicates a meaning for the stratifier. This can be as simple as a unique
  /// identifier, or it can establish meaning in a broader context by drawing
  /// from a terminology, allowing stratifiers to be correlated across measures.
  final CodeableConcept? code;

  /// [description] /// The human readable description of this stratifier criteria.
  final FhirString? description;
  final Element? descriptionElement;

  /// [criteria] /// An expression that specifies the criteria for the stratifier. This is
  /// typically the name of an expression defined within a referenced library,
  /// but it may also be a path to a stratifier element.
  final FhirExpression? criteria;

  /// [component] /// A component of the stratifier criteria for the measure report, specified as
  /// either the name of a valid CQL expression defined within a referenced
  /// library or a valid FHIR Resource Path.
  final List<MeasureComponent>? component;
  @override
  MeasureStratifier clone() => throw UnimplementedError();
  MeasureStratifier copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    FhirString? description,
    Element? descriptionElement,
    FhirExpression? criteria,
    List<MeasureComponent>? component,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [MeasureComponent] /// A component of the stratifier criteria for the measure report, specified as
/// either the name of a valid CQL expression defined within a referenced
/// library or a valid FHIR Resource Path.
class MeasureComponent extends BackboneElement {
  MeasureComponent({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.description,
    this.descriptionElement,
    required this.criteria,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// Indicates a meaning for the stratifier component. This can be as simple as
  /// a unique identifier, or it can establish meaning in a broader context by
  /// drawing from a terminology, allowing stratifiers to be correlated across
  /// measures.
  final CodeableConcept? code;

  /// [description] /// The human readable description of this stratifier criteria component.
  final FhirString? description;
  final Element? descriptionElement;

  /// [criteria] /// An expression that specifies the criteria for this component of the
  /// stratifier. This is typically the name of an expression defined within a
  /// referenced library, but it may also be a path to a stratifier element.
  final FhirExpression criteria;
  @override
  MeasureComponent clone() => throw UnimplementedError();
  MeasureComponent copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    FhirString? description,
    Element? descriptionElement,
    FhirExpression? criteria,
  }) {
    return MeasureComponent(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      criteria: criteria ?? this.criteria,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [MeasureSupplementalData] /// The supplemental data criteria for the measure report, specified as either
/// the name of a valid CQL expression within a referenced library, or a valid
/// FHIR Resource Path.
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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// Indicates a meaning for the supplemental data. This can be as simple as a
  /// unique identifier, or it can establish meaning in a broader context by
  /// drawing from a terminology, allowing supplemental data to be correlated
  /// across measures.
  final CodeableConcept? code;

  /// [usage] /// An indicator of the intended usage for the supplemental data element.
  /// Supplemental data indicates the data is additional information requested to
  /// augment the measure information. Risk adjustment factor indicates the data
  /// is additional information used to calculate risk adjustment factors when
  /// applying a risk model to the measure calculation.
  final List<CodeableConcept>? usage;

  /// [description] /// The human readable description of this supplemental data.
  final FhirString? description;
  final Element? descriptionElement;

  /// [criteria] /// The criteria for the supplemental data. This is typically the name of a
  /// valid expression defined within a referenced library, but it may also be a
  /// path to a specific data element. The criteria defines the data to be
  /// returned for this element.
  final FhirExpression criteria;
  @override
  MeasureSupplementalData clone() => throw UnimplementedError();
  MeasureSupplementalData copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    List<CodeableConcept>? usage,
    FhirString? description,
    Element? descriptionElement,
    FhirExpression? criteria,
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
    );
  }
}
