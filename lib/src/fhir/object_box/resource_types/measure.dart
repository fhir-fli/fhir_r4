import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Measure extends Resource {
  Measure({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
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
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  ToOne<Element>? implicitRulesElement = ToOne<Element>();
  String? language;
  ToOne<Element>? languageElement = ToOne<Element>();
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? url;
  ToOne<Element>? urlElement = ToOne<Element>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? version;
  ToOne<Element>? versionElement = ToOne<Element>();
  String? name;
  ToOne<Element>? nameElement = ToOne<Element>();
  String? title;
  ToOne<Element>? titleElement = ToOne<Element>();
  String? subtitle;
  ToOne<Element>? subtitleElement = ToOne<Element>();
  String status;
  ToOne<Element>? statusElement = ToOne<Element>();
  bool? experimental;
  ToOne<Element>? experimentalElement = ToOne<Element>();
  ToOne<CodeableConcept>? subjectCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Reference>? subjectReference = ToOne<Reference>();
  String? date;
  ToOne<Element>? dateElement = ToOne<Element>();
  String? publisher;
  ToOne<Element>? publisherElement = ToOne<Element>();
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  ToMany<UsageContext>? useContext = ToMany<UsageContext>();
  ToMany<CodeableConcept>? jurisdiction = ToMany<CodeableConcept>();
  String? purpose;
  ToOne<Element>? purposeElement = ToOne<Element>();
  String? usage;
  ToOne<Element>? usageElement = ToOne<Element>();
  String? copyright;
  ToOne<Element>? copyrightElement = ToOne<Element>();
  String? approvalDate;
  ToOne<Element>? approvalDateElement = ToOne<Element>();
  String? lastReviewDate;
  ToOne<Element>? lastReviewDateElement = ToOne<Element>();
  ToOne<Period>? effectivePeriod = ToOne<Period>();
  ToMany<CodeableConcept>? topic = ToMany<CodeableConcept>();
  ToMany<ContactDetail>? author = ToMany<ContactDetail>();
  ToMany<ContactDetail>? editor = ToMany<ContactDetail>();
  ToMany<ContactDetail>? reviewer = ToMany<ContactDetail>();
  ToMany<ContactDetail>? endorser = ToMany<ContactDetail>();
  ToMany<RelatedArtifact>? relatedArtifact = ToMany<RelatedArtifact>();
  List<String>? library_;
  ToMany<Element>? libraryElement = ToMany<Element>();
  String? disclaimer;
  ToOne<Element>? disclaimerElement = ToOne<Element>();
  ToOne<CodeableConcept>? scoring = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? compositeScoring = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? type = ToMany<CodeableConcept>();
  String? riskAdjustment;
  ToOne<Element>? riskAdjustmentElement = ToOne<Element>();
  String? rateAggregation;
  ToOne<Element>? rateAggregationElement = ToOne<Element>();
  String? rationale;
  ToOne<Element>? rationaleElement = ToOne<Element>();
  String? clinicalRecommendationStatement;
  ToOne<Element>? clinicalRecommendationStatementElement = ToOne<Element>();
  ToOne<CodeableConcept>? improvementNotation = ToOne<CodeableConcept>();
  List<String>? definition;
  ToMany<Element>? definitionElement = ToMany<Element>();
  String? guidance;
  ToOne<Element>? guidanceElement = ToOne<Element>();
  ToMany<MeasureGroup>? group = ToMany<MeasureGroup>();
  ToMany<MeasureSupplementalData>? supplementalData =
      ToMany<MeasureSupplementalData>();
}

@Entity()
class MeasureGroup {
  MeasureGroup({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.description,
    this.descriptionElement,
    this.population,
    this.stratifier,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  ToMany<MeasurePopulation>? population = ToMany<MeasurePopulation>();
  ToMany<MeasureStratifier>? stratifier = ToMany<MeasureStratifier>();
}

@Entity()
class MeasurePopulation {
  MeasurePopulation({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.description,
    this.descriptionElement,
    required this.criteria,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  ToOne<FhirExpression> criteria = ToOne<FhirExpression>();
}

@Entity()
class MeasureStratifier {
  MeasureStratifier({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.description,
    this.descriptionElement,
    this.criteria,
    this.component,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  ToOne<FhirExpression>? criteria = ToOne<FhirExpression>();
  ToMany<MeasureComponent>? component = ToMany<MeasureComponent>();
}

@Entity()
class MeasureComponent {
  MeasureComponent({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.description,
    this.descriptionElement,
    required this.criteria,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  ToOne<FhirExpression> criteria = ToOne<FhirExpression>();
}

@Entity()
class MeasureSupplementalData {
  MeasureSupplementalData({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.usage,
    this.description,
    this.descriptionElement,
    required this.criteria,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? usage = ToMany<CodeableConcept>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  ToOne<FhirExpression> criteria = ToOne<FhirExpression>();
}
