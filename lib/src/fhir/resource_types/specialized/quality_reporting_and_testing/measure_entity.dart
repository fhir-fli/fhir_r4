import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class MeasureEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Measure';

  String? id;

  @ToOne()
  FhirMetaEntity? meta;

  String? implicitRules;

  @ToOne()
  PrimitiveElementEntity? implicitRulesElement;

  String? language;

  @ToOne()
  PrimitiveElementEntity? languageElement;

  @ToOne()
  NarrativeEntity? text;

  @ToMany()
  List<ResourceEntity>? contained;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? url;

  @ToOne()
  PrimitiveElementEntity? urlElement;

  @ToMany()
  List<IdentifierEntity>? identifier;

  String? version;

  @ToOne()
  PrimitiveElementEntity? versionElement;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  String? title;

  @ToOne()
  PrimitiveElementEntity? titleElement;

  String? subtitle;

  @ToOne()
  PrimitiveElementEntity? subtitleElement;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  bool? experimental;

  @ToOne()
  PrimitiveElementEntity? experimentalElement;

  @ToOne()
  CodeableConceptEntity? subjectCodeableConcept;

  @ToOne()
  ReferenceEntity? subjectReference;

  String? date;

  @ToOne()
  PrimitiveElementEntity? dateElement;

  String? publisher;

  @ToOne()
  PrimitiveElementEntity? publisherElement;

  @ToMany()
  List<ContactDetailEntity>? contact;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToMany()
  List<UsageContextEntity>? useContext;

  @ToMany()
  List<CodeableConceptEntity>? jurisdiction;

  String? purpose;

  @ToOne()
  PrimitiveElementEntity? purposeElement;

  String? usage;

  @ToOne()
  PrimitiveElementEntity? usageElement;

  String? copyright;

  @ToOne()
  PrimitiveElementEntity? copyrightElement;

  String? approvalDate;

  @ToOne()
  PrimitiveElementEntity? approvalDateElement;

  String? lastReviewDate;

  @ToOne()
  PrimitiveElementEntity? lastReviewDateElement;

  @ToOne()
  PeriodEntity? effectivePeriod;

  @ToMany()
  List<CodeableConceptEntity>? topic;

  @ToMany()
  List<ContactDetailEntity>? author;

  @ToMany()
  List<ContactDetailEntity>? editor;

  @ToMany()
  List<ContactDetailEntity>? reviewer;

  @ToMany()
  List<ContactDetailEntity>? endorser;

  @ToMany()
  List<RelatedArtifactEntity>? relatedArtifact;

  List<String>? library_;

  String? disclaimer;

  @ToOne()
  PrimitiveElementEntity? disclaimerElement;

  @ToOne()
  CodeableConceptEntity? scoring;

  @ToOne()
  CodeableConceptEntity? compositeScoring;

  @ToMany()
  List<CodeableConceptEntity>? type;

  String? riskAdjustment;

  @ToOne()
  PrimitiveElementEntity? riskAdjustmentElement;

  String? rateAggregation;

  @ToOne()
  PrimitiveElementEntity? rateAggregationElement;

  String? rationale;

  @ToOne()
  PrimitiveElementEntity? rationaleElement;

  String? clinicalRecommendationStatement;

  @ToOne()
  PrimitiveElementEntity? clinicalRecommendationStatementElement;

  @ToOne()
  CodeableConceptEntity? improvementNotation;

  List<FhirMarkdown>? definition;

  @ToMany()
  List<PrimitiveElementEntity>? definitionElement;

  String? guidance;

  @ToOne()
  PrimitiveElementEntity? guidanceElement;

  @ToMany()
  List<MeasureGroupEntity>? group;

  @ToMany()
  List<MeasureSupplementalDataEntity>? supplementalData;
}

class MeasureGroupEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? code;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToMany()
  List<MeasurePopulationEntity>? population;

  @ToMany()
  List<MeasureStratifierEntity>? stratifier;
}

class MeasurePopulationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? code;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToOne()
  FhirExpressionEntity? criteria;
}

class MeasureStratifierEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? code;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToOne()
  FhirExpressionEntity? criteria;

  @ToMany()
  List<MeasureComponentEntity>? component;
}

class MeasureComponentEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? code;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToOne()
  FhirExpressionEntity? criteria;
}

class MeasureSupplementalDataEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? code;

  @ToMany()
  List<CodeableConceptEntity>? usage;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToOne()
  FhirExpressionEntity? criteria;
}
