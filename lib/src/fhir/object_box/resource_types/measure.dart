// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxMeasure {
  ObjectBoxMeasure({
    String? id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.url,
    ObjectBoxElement? urlElement,
    List<ObjectBoxIdentifier>? identifier,
    this.version,
    ObjectBoxElement? versionElement,
    this.name,
    ObjectBoxElement? nameElement,
    this.title,
    ObjectBoxElement? titleElement,
    this.subtitle,
    ObjectBoxElement? subtitleElement,
    required this.status,
    ObjectBoxElement? statusElement,
    this.experimental,
    ObjectBoxElement? experimentalElement,
    ObjectBoxCodeableConcept? subjectCodeableConcept,
    ObjectBoxReference? subjectReference,
    this.date,
    ObjectBoxElement? dateElement,
    this.publisher,
    ObjectBoxElement? publisherElement,
    List<ObjectBoxContactDetail>? contact,
    this.description,
    ObjectBoxElement? descriptionElement,
    List<ObjectBoxUsageContext>? useContext,
    List<ObjectBoxCodeableConcept>? jurisdiction,
    this.purpose,
    ObjectBoxElement? purposeElement,
    this.usage,
    ObjectBoxElement? usageElement,
    this.copyright,
    ObjectBoxElement? copyrightElement,
    this.approvalDate,
    ObjectBoxElement? approvalDateElement,
    this.lastReviewDate,
    ObjectBoxElement? lastReviewDateElement,
    ObjectBoxPeriod? effectivePeriod,
    List<ObjectBoxCodeableConcept>? topic,
    List<ObjectBoxContactDetail>? author,
    List<ObjectBoxContactDetail>? editor,
    List<ObjectBoxContactDetail>? reviewer,
    List<ObjectBoxContactDetail>? endorser,
    List<ObjectBoxRelatedArtifact>? relatedArtifact,
    this.library_,
    List<ObjectBoxElement>? libraryElement,
    this.disclaimer,
    ObjectBoxElement? disclaimerElement,
    ObjectBoxCodeableConcept? scoring,
    ObjectBoxCodeableConcept? compositeScoring,
    List<ObjectBoxCodeableConcept>? type,
    this.riskAdjustment,
    ObjectBoxElement? riskAdjustmentElement,
    this.rateAggregation,
    ObjectBoxElement? rateAggregationElement,
    this.rationale,
    ObjectBoxElement? rationaleElement,
    this.clinicalRecommendationStatement,
    ObjectBoxElement? clinicalRecommendationStatementElement,
    ObjectBoxCodeableConcept? improvementNotation,
    this.definition,
    List<ObjectBoxElement>? definitionElement,
    this.guidance,
    ObjectBoxElement? guidanceElement,
    List<ObjectBoxMeasureGroup>? group,
    List<ObjectBoxMeasureSupplementalData>? supplementalData,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.urlElement.target = urlElement;
    this.identifier.addAll(identifier ?? []);
    this.versionElement.target = versionElement;
    this.nameElement.target = nameElement;
    this.titleElement.target = titleElement;
    this.subtitleElement.target = subtitleElement;
    this.statusElement.target = statusElement;
    this.experimentalElement.target = experimentalElement;
    this.subjectCodeableConcept.target = subjectCodeableConcept;
    this.subjectReference.target = subjectReference;
    this.dateElement.target = dateElement;
    this.publisherElement.target = publisherElement;
    this.contact.addAll(contact ?? []);
    this.descriptionElement.target = descriptionElement;
    this.useContext.addAll(useContext ?? []);
    this.jurisdiction.addAll(jurisdiction ?? []);
    this.purposeElement.target = purposeElement;
    this.usageElement.target = usageElement;
    this.copyrightElement.target = copyrightElement;
    this.approvalDateElement.target = approvalDateElement;
    this.lastReviewDateElement.target = lastReviewDateElement;
    this.effectivePeriod.target = effectivePeriod;
    this.topic.addAll(topic ?? []);
    this.author.addAll(author ?? []);
    this.editor.addAll(editor ?? []);
    this.reviewer.addAll(reviewer ?? []);
    this.endorser.addAll(endorser ?? []);
    this.relatedArtifact.addAll(relatedArtifact ?? []);
    this.libraryElement.addAll(libraryElement ?? []);
    this.disclaimerElement.target = disclaimerElement;
    this.scoring.target = scoring;
    this.compositeScoring.target = compositeScoring;
    this.type.addAll(type ?? []);
    this.riskAdjustmentElement.target = riskAdjustmentElement;
    this.rateAggregationElement.target = rateAggregationElement;
    this.rationaleElement.target = rationaleElement;
    this.clinicalRecommendationStatementElement.target =
        clinicalRecommendationStatementElement;
    this.improvementNotation.target = improvementNotation;
    this.definitionElement.addAll(definitionElement ?? []);
    this.guidanceElement.target = guidanceElement;
    this.group.addAll(group ?? []);
    this.supplementalData.addAll(supplementalData ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? url;
  ToOne<ObjectBoxElement> urlElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  String? version;
  ToOne<ObjectBoxElement> versionElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement> titleElement = ToOne<ObjectBoxElement>();
  String? subtitle;
  ToOne<ObjectBoxElement> subtitleElement = ToOne<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  bool? experimental;
  ToOne<ObjectBoxElement> experimentalElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> subjectCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> subjectReference = ToOne<ObjectBoxReference>();
  String? date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement> publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail> contact = ToMany<ObjectBoxContactDetail>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxUsageContext> useContext = ToMany<ObjectBoxUsageContext>();
  ToMany<ObjectBoxCodeableConcept> jurisdiction =
      ToMany<ObjectBoxCodeableConcept>();
  String? purpose;
  ToOne<ObjectBoxElement> purposeElement = ToOne<ObjectBoxElement>();
  String? usage;
  ToOne<ObjectBoxElement> usageElement = ToOne<ObjectBoxElement>();
  String? copyright;
  ToOne<ObjectBoxElement> copyrightElement = ToOne<ObjectBoxElement>();
  String? approvalDate;
  ToOne<ObjectBoxElement> approvalDateElement = ToOne<ObjectBoxElement>();
  String? lastReviewDate;
  ToOne<ObjectBoxElement> lastReviewDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> effectivePeriod = ToOne<ObjectBoxPeriod>();
  ToMany<ObjectBoxCodeableConcept> topic = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxContactDetail> author = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail> editor = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail> reviewer = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail> endorser = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxRelatedArtifact> relatedArtifact =
      ToMany<ObjectBoxRelatedArtifact>();
  List<String>? library_;
  ToMany<ObjectBoxElement> libraryElement = ToMany<ObjectBoxElement>();
  String? disclaimer;
  ToOne<ObjectBoxElement> disclaimerElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> scoring = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> compositeScoring =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> type = ToMany<ObjectBoxCodeableConcept>();
  String? riskAdjustment;
  ToOne<ObjectBoxElement> riskAdjustmentElement = ToOne<ObjectBoxElement>();
  String? rateAggregation;
  ToOne<ObjectBoxElement> rateAggregationElement = ToOne<ObjectBoxElement>();
  String? rationale;
  ToOne<ObjectBoxElement> rationaleElement = ToOne<ObjectBoxElement>();
  String? clinicalRecommendationStatement;
  ToOne<ObjectBoxElement> clinicalRecommendationStatementElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> improvementNotation =
      ToOne<ObjectBoxCodeableConcept>();
  List<String>? definition;
  ToMany<ObjectBoxElement> definitionElement = ToMany<ObjectBoxElement>();
  String? guidance;
  ToOne<ObjectBoxElement> guidanceElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxMeasureGroup> group = ToMany<ObjectBoxMeasureGroup>();
  ToMany<ObjectBoxMeasureSupplementalData> supplementalData =
      ToMany<ObjectBoxMeasureSupplementalData>();
}

@Entity()
class ObjectBoxMeasureGroup {
  ObjectBoxMeasureGroup({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? code,
    this.description,
    ObjectBoxElement? descriptionElement,
    List<ObjectBoxMeasurePopulation>? population,
    List<ObjectBoxMeasureStratifier>? stratifier,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.code.target = code;
    this.descriptionElement.target = descriptionElement;
    this.population.addAll(population ?? []);
    this.stratifier.addAll(stratifier ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxMeasurePopulation> population =
      ToMany<ObjectBoxMeasurePopulation>();
  ToMany<ObjectBoxMeasureStratifier> stratifier =
      ToMany<ObjectBoxMeasureStratifier>();
}

@Entity()
class ObjectBoxMeasurePopulation {
  ObjectBoxMeasurePopulation({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? code,
    this.description,
    ObjectBoxElement? descriptionElement,
    ObjectBoxFhirExpression? criteria,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.code.target = code;
    this.descriptionElement.target = descriptionElement;
    this.criteria.target = criteria;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxFhirExpression> criteria = ToOne<ObjectBoxFhirExpression>();
}

@Entity()
class ObjectBoxMeasureStratifier {
  ObjectBoxMeasureStratifier({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? code,
    this.description,
    ObjectBoxElement? descriptionElement,
    ObjectBoxFhirExpression? criteria,
    List<ObjectBoxMeasureComponent>? component,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.code.target = code;
    this.descriptionElement.target = descriptionElement;
    this.criteria.target = criteria;
    this.component.addAll(component ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxFhirExpression> criteria = ToOne<ObjectBoxFhirExpression>();
  ToMany<ObjectBoxMeasureComponent> component =
      ToMany<ObjectBoxMeasureComponent>();
}

@Entity()
class ObjectBoxMeasureComponent {
  ObjectBoxMeasureComponent({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? code,
    this.description,
    ObjectBoxElement? descriptionElement,
    ObjectBoxFhirExpression? criteria,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.code.target = code;
    this.descriptionElement.target = descriptionElement;
    this.criteria.target = criteria;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxFhirExpression> criteria = ToOne<ObjectBoxFhirExpression>();
}

@Entity()
class ObjectBoxMeasureSupplementalData {
  ObjectBoxMeasureSupplementalData({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? code,
    List<ObjectBoxCodeableConcept>? usage,
    this.description,
    ObjectBoxElement? descriptionElement,
    ObjectBoxFhirExpression? criteria,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.code.target = code;
    this.usage.addAll(usage ?? []);
    this.descriptionElement.target = descriptionElement;
    this.criteria.target = criteria;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> usage = ToMany<ObjectBoxCodeableConcept>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxFhirExpression> criteria = ToOne<ObjectBoxFhirExpression>();
}
