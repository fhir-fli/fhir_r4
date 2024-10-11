import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class Measure extends Resource {
  Measure({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
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
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? url;
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? version;
  String? name;
  String? title;
  String? subtitle;
  String status;
  bool? experimental;
  ToOne<CodeableConcept>? subjectCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Reference>? subjectReference = ToOne<Reference>();
  String? date;
  String? publisher;
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  String? description;
  ToMany<UsageContext>? useContext = ToMany<UsageContext>();
  ToMany<CodeableConcept>? jurisdiction = ToMany<CodeableConcept>();
  String? purpose;
  String? usage;
  String? copyright;
  String? approvalDate;
  String? lastReviewDate;
  ToOne<Period>? effectivePeriod = ToOne<Period>();
  ToMany<CodeableConcept>? topic = ToMany<CodeableConcept>();
  ToMany<ContactDetail>? author = ToMany<ContactDetail>();
  ToMany<ContactDetail>? editor = ToMany<ContactDetail>();
  ToMany<ContactDetail>? reviewer = ToMany<ContactDetail>();
  ToMany<ContactDetail>? endorser = ToMany<ContactDetail>();
  ToMany<RelatedArtifact>? relatedArtifact = ToMany<RelatedArtifact>();
  List<String>? library_;
  String? disclaimer;
  ToOne<CodeableConcept>? scoring = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? compositeScoring = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? type = ToMany<CodeableConcept>();
  String? riskAdjustment;
  String? rateAggregation;
  String? rationale;
  String? clinicalRecommendationStatement;
  ToOne<CodeableConcept>? improvementNotation = ToOne<CodeableConcept>();
  List<String>? definition;
  String? guidance;
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
    required this.criteria,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  String? description;
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
    required this.criteria,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  String? description;
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
  ToOne<FhirExpression> criteria = ToOne<FhirExpression>();
}
