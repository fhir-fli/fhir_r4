import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Evidence] /// The Evidence Resource provides a machine-interpretable expression of an
/// evidence concept including the evidence variables (eg population,
/// exposures/interventions, comparators, outcomes, measured variables,
/// confounding variables), the statistics, and the certainty of this evidence.
class Evidence extends DomainResource {
  Evidence({
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
    this.title,
    this.titleElement,
    this.citeAsReference,
    this.citeAsMarkdown,
    this.citeAsMarkdownElement,
    required this.status,
    this.statusElement,
    this.date,
    this.dateElement,
    this.useContext,
    this.approvalDate,
    this.approvalDateElement,
    this.lastReviewDate,
    this.lastReviewDateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatedArtifact,
    this.description,
    this.descriptionElement,
    this.assertion,
    this.assertionElement,
    this.note,
    required this.variableDefinition,
    this.synthesisType,
    this.studyType,
    this.statistic,
    this.certainty,
  }) : super(resourceType: R4ResourceType.Evidence);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this evidence when it is
  /// referenced in a specification, model, design or an instance; also called
  /// its canonical identifier. This SHOULD be globally unique and SHOULD be a
  /// literal address at which at which an authoritative instance of this summary
  /// is (or will be) published. This URL can be the target of a canonical
  /// reference. It SHALL remain the same when the summary is stored on different
  /// servers.
  final FhirUri? url;
  final Element? urlElement;

  /// [identifier] /// A formal identifier that is used to identify this summary when it is
  /// represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  final List<Identifier>? identifier;

  /// [version] /// The identifier that is used to identify this version of the summary when it
  /// is referenced in a specification, model, design or instance. This is an
  /// arbitrary value managed by the summary author and is not expected to be
  /// globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a
  /// managed version is not available. There is also no expectation that
  /// versions can be placed in a lexicographical sequence.
  final FhirString? version;
  final Element? versionElement;

  /// [title] /// A short, descriptive, user-friendly title for the summary.
  final FhirString? title;
  final Element? titleElement;

  /// [citeAsReference] /// Citation Resource or display of suggested citation for this evidence.
  final Reference? citeAsReference;

  /// [citeAsMarkdown] /// Citation Resource or display of suggested citation for this evidence.
  final FhirMarkdown? citeAsMarkdown;
  final Element? citeAsMarkdownElement;

  /// [status] /// The status of this summary. Enables tracking the life-cycle of the content.
  final FhirCode status;
  final Element? statusElement;

  /// [date] /// The date (and optionally time) when the summary was published. The date
  /// must change when the business version changes and it must change if the
  /// status code changes. In addition, it should change when the substantive
  /// content of the summary changes.
  final FhirDateTime? date;
  final Element? dateElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate evidence instances.
  final List<UsageContext>? useContext;

  /// [approvalDate] /// The date on which the resource content was approved by the publisher.
  /// Approval happens once when the content is officially approved for usage.
  final FhirDate? approvalDate;
  final Element? approvalDateElement;

  /// [lastReviewDate] /// The date on which the resource content was last reviewed. Review happens
  /// periodically after approval but does not change the original approval date.
  final FhirDate? lastReviewDate;
  final Element? lastReviewDateElement;

  /// [publisher] /// The name of the organization or individual that published the evidence.
  final FhirString? publisher;
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [author] /// An individiual, organization, or device primarily involved in the creation
  /// and maintenance of the content.
  final List<ContactDetail>? author;

  /// [editor] /// An individiual, organization, or device primarily responsible for internal
  /// coherence of the content.
  final List<ContactDetail>? editor;

  /// [reviewer] /// An individiual, organization, or device primarily responsible for review of
  /// some aspect of the content.
  final List<ContactDetail>? reviewer;

  /// [endorser] /// An individiual, organization, or device responsible for officially
  /// endorsing the content for use in some setting.
  final List<ContactDetail>? endorser;

  /// [relatedArtifact] /// Link or citation to artifact associated with the summary.
  final List<RelatedArtifact>? relatedArtifact;

  /// [description] /// A free text natural language description of the evidence from a consumer's
  /// perspective.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [assertion] /// Declarative description of the Evidence.
  final FhirMarkdown? assertion;
  final Element? assertionElement;

  /// [note] /// Footnotes and/or explanatory notes.
  final List<Annotation>? note;

  /// [variableDefinition] /// Evidence variable such as population, exposure, or outcome.
  final List<EvidenceVariableDefinition> variableDefinition;

  /// [synthesisType] /// The method to combine studies.
  final CodeableConcept? synthesisType;

  /// [studyType] /// The type of study that produced this evidence.
  final CodeableConcept? studyType;

  /// [statistic] /// Values and parameters for a single statistic.
  final List<EvidenceStatistic>? statistic;

  /// [certainty] /// Assessment of certainty, confidence in the estimates, or quality of the
  /// evidence.
  final List<EvidenceCertainty>? certainty;
  @override
  Evidence clone() => throw UnimplementedError();
  Evidence copy({
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
    FhirString? title,
    Element? titleElement,
    Reference? citeAsReference,
    FhirMarkdown? citeAsMarkdown,
    Element? citeAsMarkdownElement,
    FhirCode? status,
    Element? statusElement,
    FhirDateTime? date,
    Element? dateElement,
    List<UsageContext>? useContext,
    FhirDate? approvalDate,
    Element? approvalDateElement,
    FhirDate? lastReviewDate,
    Element? lastReviewDateElement,
    FhirString? publisher,
    Element? publisherElement,
    List<ContactDetail>? contact,
    List<ContactDetail>? author,
    List<ContactDetail>? editor,
    List<ContactDetail>? reviewer,
    List<ContactDetail>? endorser,
    List<RelatedArtifact>? relatedArtifact,
    FhirMarkdown? description,
    Element? descriptionElement,
    FhirMarkdown? assertion,
    Element? assertionElement,
    List<Annotation>? note,
    List<EvidenceVariableDefinition>? variableDefinition,
    CodeableConcept? synthesisType,
    CodeableConcept? studyType,
    List<EvidenceStatistic>? statistic,
    List<EvidenceCertainty>? certainty,
  }) {
    return Evidence(
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
      title: title ?? this.title,
      titleElement: titleElement ?? this.titleElement,
      citeAsReference: citeAsReference ?? this.citeAsReference,
      citeAsMarkdown: citeAsMarkdown ?? this.citeAsMarkdown,
      citeAsMarkdownElement:
          citeAsMarkdownElement ?? this.citeAsMarkdownElement,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      useContext: useContext ?? this.useContext,
      approvalDate: approvalDate ?? this.approvalDate,
      approvalDateElement: approvalDateElement ?? this.approvalDateElement,
      lastReviewDate: lastReviewDate ?? this.lastReviewDate,
      lastReviewDateElement:
          lastReviewDateElement ?? this.lastReviewDateElement,
      publisher: publisher ?? this.publisher,
      publisherElement: publisherElement ?? this.publisherElement,
      contact: contact ?? this.contact,
      author: author ?? this.author,
      editor: editor ?? this.editor,
      reviewer: reviewer ?? this.reviewer,
      endorser: endorser ?? this.endorser,
      relatedArtifact: relatedArtifact ?? this.relatedArtifact,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      assertion: assertion ?? this.assertion,
      assertionElement: assertionElement ?? this.assertionElement,
      note: note ?? this.note,
      variableDefinition: variableDefinition ?? this.variableDefinition,
      synthesisType: synthesisType ?? this.synthesisType,
      studyType: studyType ?? this.studyType,
      statistic: statistic ?? this.statistic,
      certainty: certainty ?? this.certainty,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [EvidenceVariableDefinition] /// Evidence variable such as population, exposure, or outcome.
class EvidenceVariableDefinition extends BackboneElement {
  EvidenceVariableDefinition({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.descriptionElement,
    this.note,
    required this.variableRole,
    this.observed,
    this.intended,
    this.directnessMatch,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// A text description or summary of the variable.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [note] /// Footnotes and/or explanatory notes.
  final List<Annotation>? note;

  /// [variableRole] /// population | subpopulation | exposure | referenceExposure |
  /// measuredVariable | confounder.
  final CodeableConcept variableRole;

  /// [observed] /// Definition of the actual variable related to the statistic(s).
  final Reference? observed;

  /// [intended] /// Definition of the intended variable related to the Evidence.
  final Reference? intended;

  /// [directnessMatch] /// Indication of quality of match between intended variable to actual
  /// variable.
  final CodeableConcept? directnessMatch;
  @override
  EvidenceVariableDefinition clone() => throw UnimplementedError();
  EvidenceVariableDefinition copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirMarkdown? description,
    Element? descriptionElement,
    List<Annotation>? note,
    CodeableConcept? variableRole,
    Reference? observed,
    Reference? intended,
    CodeableConcept? directnessMatch,
  }) {
    return EvidenceVariableDefinition(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      note: note ?? this.note,
      variableRole: variableRole ?? this.variableRole,
      observed: observed ?? this.observed,
      intended: intended ?? this.intended,
      directnessMatch: directnessMatch ?? this.directnessMatch,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [EvidenceStatistic] /// Values and parameters for a single statistic.
class EvidenceStatistic extends BackboneElement {
  EvidenceStatistic({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.descriptionElement,
    this.note,
    this.statisticType,
    this.category,
    this.quantity,
    this.numberOfEvents,
    this.numberOfEventsElement,
    this.numberAffected,
    this.numberAffectedElement,
    this.sampleSize,
    this.attributeEstimate,
    this.modelCharacteristic,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// A description of the content value of the statistic.
  final FhirString? description;
  final Element? descriptionElement;

  /// [note] /// Footnotes and/or explanatory notes.
  final List<Annotation>? note;

  /// [statisticType] /// Type of statistic, eg relative risk.
  final CodeableConcept? statisticType;

  /// [category] /// When the measured variable is handled categorically, the category element
  /// is used to define which category the statistic is reporting.
  final CodeableConcept? category;

  /// [quantity] /// Statistic value.
  final Quantity? quantity;

  /// [numberOfEvents] /// The number of events associated with the statistic, where the unit of
  /// analysis is different from numberAffected, sampleSize.knownDataCount and
  /// sampleSize.numberOfParticipants.
  final FhirUnsignedInt? numberOfEvents;
  final Element? numberOfEventsElement;

  /// [numberAffected] /// The number of participants affected where the unit of analysis is the same
  /// as sampleSize.knownDataCount and sampleSize.numberOfParticipants.
  final FhirUnsignedInt? numberAffected;
  final Element? numberAffectedElement;

  /// [sampleSize] /// Number of samples in the statistic.
  final EvidenceSampleSize? sampleSize;

  /// [attributeEstimate] /// A statistical attribute of the statistic such as a measure of
  /// heterogeneity.
  final List<EvidenceAttributeEstimate>? attributeEstimate;

  /// [modelCharacteristic] /// A component of the method to generate the statistic.
  final List<EvidenceModelCharacteristic>? modelCharacteristic;
  @override
  EvidenceStatistic clone() => throw UnimplementedError();
  EvidenceStatistic copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    Element? descriptionElement,
    List<Annotation>? note,
    CodeableConcept? statisticType,
    CodeableConcept? category,
    Quantity? quantity,
    FhirUnsignedInt? numberOfEvents,
    Element? numberOfEventsElement,
    FhirUnsignedInt? numberAffected,
    Element? numberAffectedElement,
    EvidenceSampleSize? sampleSize,
    List<EvidenceAttributeEstimate>? attributeEstimate,
    List<EvidenceModelCharacteristic>? modelCharacteristic,
  }) {
    return EvidenceStatistic(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      note: note ?? this.note,
      statisticType: statisticType ?? this.statisticType,
      category: category ?? this.category,
      quantity: quantity ?? this.quantity,
      numberOfEvents: numberOfEvents ?? this.numberOfEvents,
      numberOfEventsElement:
          numberOfEventsElement ?? this.numberOfEventsElement,
      numberAffected: numberAffected ?? this.numberAffected,
      numberAffectedElement:
          numberAffectedElement ?? this.numberAffectedElement,
      sampleSize: sampleSize ?? this.sampleSize,
      attributeEstimate: attributeEstimate ?? this.attributeEstimate,
      modelCharacteristic: modelCharacteristic ?? this.modelCharacteristic,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [EvidenceSampleSize] /// Number of samples in the statistic.
class EvidenceSampleSize extends BackboneElement {
  EvidenceSampleSize({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.descriptionElement,
    this.note,
    this.numberOfStudies,
    this.numberOfStudiesElement,
    this.numberOfParticipants,
    this.numberOfParticipantsElement,
    this.knownDataCount,
    this.knownDataCountElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// Human-readable summary of population sample size.
  final FhirString? description;
  final Element? descriptionElement;

  /// [note] /// Footnote or explanatory note about the sample size.
  final List<Annotation>? note;

  /// [numberOfStudies] /// Number of participants in the population.
  final FhirUnsignedInt? numberOfStudies;
  final Element? numberOfStudiesElement;

  /// [numberOfParticipants] /// A human-readable string to clarify or explain concepts about the sample
  /// size.
  final FhirUnsignedInt? numberOfParticipants;
  final Element? numberOfParticipantsElement;

  /// [knownDataCount] /// Number of participants with known results for measured variables.
  final FhirUnsignedInt? knownDataCount;
  final Element? knownDataCountElement;
  @override
  EvidenceSampleSize clone() => throw UnimplementedError();
  EvidenceSampleSize copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    Element? descriptionElement,
    List<Annotation>? note,
    FhirUnsignedInt? numberOfStudies,
    Element? numberOfStudiesElement,
    FhirUnsignedInt? numberOfParticipants,
    Element? numberOfParticipantsElement,
    FhirUnsignedInt? knownDataCount,
    Element? knownDataCountElement,
  }) {
    return EvidenceSampleSize(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      note: note ?? this.note,
      numberOfStudies: numberOfStudies ?? this.numberOfStudies,
      numberOfStudiesElement:
          numberOfStudiesElement ?? this.numberOfStudiesElement,
      numberOfParticipants: numberOfParticipants ?? this.numberOfParticipants,
      numberOfParticipantsElement:
          numberOfParticipantsElement ?? this.numberOfParticipantsElement,
      knownDataCount: knownDataCount ?? this.knownDataCount,
      knownDataCountElement:
          knownDataCountElement ?? this.knownDataCountElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [EvidenceAttributeEstimate] /// A statistical attribute of the statistic such as a measure of
/// heterogeneity.
class EvidenceAttributeEstimate extends BackboneElement {
  EvidenceAttributeEstimate({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.descriptionElement,
    this.note,
    this.type,
    this.quantity,
    this.level,
    this.levelElement,
    this.range,
    this.attributeEstimate,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// Human-readable summary of the estimate.
  final FhirString? description;
  final Element? descriptionElement;

  /// [note] /// Footnote or explanatory note about the estimate.
  final List<Annotation>? note;

  /// [type] /// The type of attribute estimate, eg confidence interval or p value.
  final CodeableConcept? type;

  /// [quantity] /// The singular quantity of the attribute estimate, for attribute estimates
  /// represented as single values; also used to report unit of measure.
  final Quantity? quantity;

  /// [level] /// Use 95 for a 95% confidence interval.
  final FhirDecimal? level;
  final Element? levelElement;

  /// [range] /// Lower bound of confidence interval.
  final Range? range;

  /// [attributeEstimate] /// A nested attribute estimate; which is the attribute estimate of an
  /// attribute estimate.
  final List<EvidenceAttributeEstimate>? attributeEstimate;
  @override
  EvidenceAttributeEstimate clone() => throw UnimplementedError();
  EvidenceAttributeEstimate copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    Element? descriptionElement,
    List<Annotation>? note,
    CodeableConcept? type,
    Quantity? quantity,
    FhirDecimal? level,
    Element? levelElement,
    Range? range,
    List<EvidenceAttributeEstimate>? attributeEstimate,
  }) {
    return EvidenceAttributeEstimate(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      note: note ?? this.note,
      type: type ?? this.type,
      quantity: quantity ?? this.quantity,
      level: level ?? this.level,
      levelElement: levelElement ?? this.levelElement,
      range: range ?? this.range,
      attributeEstimate: attributeEstimate ?? this.attributeEstimate,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [EvidenceModelCharacteristic] /// A component of the method to generate the statistic.
class EvidenceModelCharacteristic extends BackboneElement {
  EvidenceModelCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.value,
    this.variable,
    this.attributeEstimate,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// Description of a component of the method to generate the statistic.
  final CodeableConcept code;

  /// [value] /// Further specification of the quantified value of the component of the
  /// method to generate the statistic.
  final Quantity? value;

  /// [variable] /// A variable adjusted for in the adjusted analysis.
  final List<EvidenceVariable>? variable;

  /// [attributeEstimate] /// An attribute of the statistic used as a model characteristic.
  final List<EvidenceAttributeEstimate>? attributeEstimate;
  @override
  EvidenceModelCharacteristic clone() => throw UnimplementedError();
  EvidenceModelCharacteristic copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    Quantity? value,
    List<EvidenceVariable>? variable,
    List<EvidenceAttributeEstimate>? attributeEstimate,
  }) {
    return EvidenceModelCharacteristic(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      value: value ?? this.value,
      variable: variable ?? this.variable,
      attributeEstimate: attributeEstimate ?? this.attributeEstimate,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [Evidencevariable] /// A variable adjusted for in the adjusted analysis.
class Evidencevariable extends BackboneElement {
  Evidencevariable({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.variableDefinition,
    this.handling,
    this.handlingElement,
    this.valueCategory,
    this.valueQuantity,
    this.valueRange,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [variableDefinition] /// Description of the variable.
  final Reference variableDefinition;

  /// [handling] /// How the variable is classified for use in adjusted analysis.
  final FhirCode? handling;
  final Element? handlingElement;

  /// [valueCategory] /// Description for grouping of ordinal or polychotomous variables.
  final List<CodeableConcept>? valueCategory;

  /// [valueQuantity] /// Discrete value for grouping of ordinal or polychotomous variables.
  final List<Quantity>? valueQuantity;

  /// [valueRange] /// Range of values for grouping of ordinal or polychotomous variables.
  final List<Range>? valueRange;
  @override
  Evidencevariable clone() => throw UnimplementedError();
  Evidencevariable copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? variableDefinition,
    FhirCode? handling,
    Element? handlingElement,
    List<CodeableConcept>? valueCategory,
    List<Quantity>? valueQuantity,
    List<Range>? valueRange,
  }) {
    return Evidencevariable(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      variableDefinition: variableDefinition ?? this.variableDefinition,
      handling: handling ?? this.handling,
      handlingElement: handlingElement ?? this.handlingElement,
      valueCategory: valueCategory ?? this.valueCategory,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueRange: valueRange ?? this.valueRange,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [EvidenceCertainty] /// Assessment of certainty, confidence in the estimates, or quality of the
/// evidence.
class EvidenceCertainty extends BackboneElement {
  EvidenceCertainty({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.descriptionElement,
    this.note,
    this.type,
    this.rating,
    this.rater,
    this.raterElement,
    this.subcomponent,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// Textual description of certainty.
  final FhirString? description;
  final Element? descriptionElement;

  /// [note] /// Footnotes and/or explanatory notes.
  final List<Annotation>? note;

  /// [type] /// Aspect of certainty being rated.
  final CodeableConcept? type;

  /// [rating] /// Assessment or judgement of the aspect.
  final CodeableConcept? rating;

  /// [rater] /// Individual or group who did the rating.
  final FhirString? rater;
  final Element? raterElement;

  /// [subcomponent] /// A domain or subdomain of certainty.
  final List<EvidenceCertainty>? subcomponent;
  @override
  EvidenceCertainty clone() => throw UnimplementedError();
  EvidenceCertainty copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    Element? descriptionElement,
    List<Annotation>? note,
    CodeableConcept? type,
    CodeableConcept? rating,
    FhirString? rater,
    Element? raterElement,
    List<EvidenceCertainty>? subcomponent,
  }) {
    return EvidenceCertainty(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      note: note ?? this.note,
      type: type ?? this.type,
      rating: rating ?? this.rating,
      rater: rater ?? this.rater,
      raterElement: raterElement ?? this.raterElement,
      subcomponent: subcomponent ?? this.subcomponent,
    );
  }
}
