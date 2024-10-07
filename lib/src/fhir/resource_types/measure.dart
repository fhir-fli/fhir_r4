import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
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
  final FhirUri? url;
  final Element? urlElement;
  final List<Identifier>? identifier;
  final FhirString? version;
  final Element? versionElement;
  final FhirString? name;
  final Element? nameElement;
  final FhirString? title;
  final Element? titleElement;
  final FhirString? subtitle;
  final Element? subtitleElement;
  final FhirCode status;
  final Element? statusElement;
  final FhirBoolean? experimental;
  final Element? experimentalElement;
  final CodeableConcept? subjectCodeableConcept;
  final Reference? subjectReference;
  final FhirDateTime? date;
  final Element? dateElement;
  final FhirString? publisher;
  final Element? publisherElement;
  final List<ContactDetail>? contact;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final List<UsageContext>? useContext;
  final List<CodeableConcept>? jurisdiction;
  final FhirMarkdown? purpose;
  final Element? purposeElement;
  final FhirString? usage;
  final Element? usageElement;
  final FhirMarkdown? copyright;
  final Element? copyrightElement;
  final FhirDate? approvalDate;
  final Element? approvalDateElement;
  final FhirDate? lastReviewDate;
  final Element? lastReviewDateElement;
  final Period? effectivePeriod;
  final List<CodeableConcept>? topic;
  final List<ContactDetail>? author;
  final List<ContactDetail>? editor;
  final List<ContactDetail>? reviewer;
  final List<ContactDetail>? endorser;
  final List<RelatedArtifact>? relatedArtifact;
  final List<FhirCanonical>? library_;
  final List<Element>? libraryElement;
  final FhirMarkdown? disclaimer;
  final Element? disclaimerElement;
  final CodeableConcept? scoring;
  final CodeableConcept? compositeScoring;
  final List<CodeableConcept>? type;
  final FhirString? riskAdjustment;
  final Element? riskAdjustmentElement;
  final FhirString? rateAggregation;
  final Element? rateAggregationElement;
  final FhirMarkdown? rationale;
  final Element? rationaleElement;
  final FhirMarkdown? clinicalRecommendationStatement;
  final Element? clinicalRecommendationStatementElement;
  final CodeableConcept? improvementNotation;
  final List<FhirMarkdown>? definition;
  final List<Element>? definitionElement;
  final FhirMarkdown? guidance;
  final Element? guidanceElement;
  final List<MeasureGroup>? group;
  final List<MeasureSupplementalData>? supplementalData;
  @override
  Measure clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final CodeableConcept? code;
  final FhirString? description;
  final Element? descriptionElement;
  final List<MeasurePopulation>? population;
  final List<MeasureStratifier>? stratifier;
  @override
  MeasureGroup clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final CodeableConcept? code;
  final FhirString? description;
  final Element? descriptionElement;
  final FhirExpression criteria;
  @override
  MeasurePopulation clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final CodeableConcept? code;
  final FhirString? description;
  final Element? descriptionElement;
  final FhirExpression? criteria;
  final List<MeasureComponent>? component;
  @override
  MeasureStratifier clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final CodeableConcept? code;
  final FhirString? description;
  final Element? descriptionElement;
  final FhirExpression criteria;
  @override
  MeasureComponent clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final CodeableConcept? code;
  final List<CodeableConcept>? usage;
  final FhirString? description;
  final Element? descriptionElement;
  final FhirExpression criteria;
  @override
  MeasureSupplementalData clone() => throw UnimplementedError();
}
