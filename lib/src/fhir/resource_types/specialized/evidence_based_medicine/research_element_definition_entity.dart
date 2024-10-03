import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class ResearchElementDefinitionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'ResearchElementDefinition';
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
  String? shortTitle;
  @ToOne()
  PrimitiveElementEntity? shortTitleElement;
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
  List<String>? comment;
  @ToMany()
  List<PrimitiveElementEntity>? commentElement;
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
  String? type;
  @ToOne()
  PrimitiveElementEntity? typeElement;
  String? variableType;
  @ToOne()
  PrimitiveElementEntity? variableTypeElement;
  @ToMany()
  List<ResearchElementDefinitionCharacteristicEntity>? characteristic;
}

class ResearchElementDefinitionCharacteristicEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  @ToOne()
  CodeableConceptEntity? definitionCodeableConcept;
  String? definitionCanonical;

  @ToOne()
  PrimitiveElementEntity? definitionCanonicalElement;
  @ToOne()
  FhirExpressionEntity? definitionExpression;
  @ToOne()
  DataRequirementEntity? definitionDataRequirement;
  @ToMany()
  List<UsageContextEntity>? usageContext;
  bool? exclude;
  @ToOne()
  PrimitiveElementEntity? excludeElement;
  @ToOne()
  CodeableConceptEntity? unitOfMeasure;
  String? studyEffectiveDescription;

  @ToOne()
  PrimitiveElementEntity? studyEffectiveDescriptionElement;
  String? studyEffectiveDateTime;

  @ToOne()
  PrimitiveElementEntity? studyEffectiveDateTimeElement;
  @ToOne()
  PeriodEntity? studyEffectivePeriod;
  @ToOne()
  FhirDurationEntity? studyEffectiveDuration;
  @ToOne()
  TimingEntity? studyEffectiveTiming;
  @ToOne()
  FhirDurationEntity? studyEffectiveTimeFromStart;
  String? studyEffectiveGroupMeasure;

  @ToOne()
  PrimitiveElementEntity? studyEffectiveGroupMeasureElement;
  String? participantEffectiveDescription;

  @ToOne()
  PrimitiveElementEntity? participantEffectiveDescriptionElement;
  String? participantEffectiveDateTime;

  @ToOne()
  PrimitiveElementEntity? participantEffectiveDateTimeElement;
  @ToOne()
  PeriodEntity? participantEffectivePeriod;
  @ToOne()
  FhirDurationEntity? participantEffectiveDuration;
  @ToOne()
  TimingEntity? participantEffectiveTiming;
  @ToOne()
  FhirDurationEntity? participantEffectiveTimeFromStart;
  String? participantEffectiveGroupMeasure;

  @ToOne()
  PrimitiveElementEntity? participantEffectiveGroupMeasureElement;
}
