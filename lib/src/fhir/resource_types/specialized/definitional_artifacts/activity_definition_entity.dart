import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class ActivityDefinitionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'ActivityDefinition';

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
  String? subjectCanonical;

  @ToOne()
  PrimitiveElementEntity? subjectCanonicalElement;

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

  String? kind;

  @ToOne()
  PrimitiveElementEntity? kindElement;

  String? profile;

  @ToOne()
  CodeableConceptEntity? code;

  String? intent;

  @ToOne()
  PrimitiveElementEntity? intentElement;

  String? priority;

  @ToOne()
  PrimitiveElementEntity? priorityElement;

  bool? doNotPerform;

  @ToOne()
  PrimitiveElementEntity? doNotPerformElement;

  @ToOne()
  TimingEntity? timingTiming;

  String? timingDateTime;

  @ToOne()
  PrimitiveElementEntity? timingDateTimeElement;

  @ToOne()
  AgeEntity? timingAge;

  @ToOne()
  PeriodEntity? timingPeriod;

  @ToOne()
  RangeEntity? timingRange;

  @ToOne()
  FhirDurationEntity? timingDuration;

  @ToOne()
  ReferenceEntity? location;

  @ToMany()
  List<ActivityDefinitionParticipantEntity>? participant;

  @ToOne()
  ReferenceEntity? productReference;

  @ToOne()
  CodeableConceptEntity? productCodeableConcept;

  @ToOne()
  QuantityEntity? quantity;

  @ToMany()
  List<DosageEntity>? dosage;

  @ToMany()
  List<CodeableConceptEntity>? bodySite;

  @ToMany()
  List<ReferenceEntity>? specimenRequirement;

  @ToMany()
  List<ReferenceEntity>? observationRequirement;

  @ToMany()
  List<ReferenceEntity>? observationResultRequirement;

  String? transform;

  @ToMany()
  List<ActivityDefinitionDynamicValueEntity>? dynamicValue;
}

class ActivityDefinitionParticipantEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;

  @ToOne()
  CodeableConceptEntity? role;
}

class ActivityDefinitionDynamicValueEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? path;

  @ToOne()
  PrimitiveElementEntity? pathElement;

  @ToOne()
  FhirExpressionEntity? expression;
}
