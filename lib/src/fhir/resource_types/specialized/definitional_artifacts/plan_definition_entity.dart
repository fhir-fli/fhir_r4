import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class PlanDefinitionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'PlanDefinition';

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

  @ToOne()
  CodeableConceptEntity? type;

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

  @ToMany()
  List<PlanDefinitionGoalEntity>? goal;

  @ToMany()
  List<PlanDefinitionActionEntity>? action;
}

class PlanDefinitionGoalEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? category;

  @ToOne()
  CodeableConceptEntity? description;

  @ToOne()
  CodeableConceptEntity? priority;

  @ToOne()
  CodeableConceptEntity? start;

  @ToMany()
  List<CodeableConceptEntity>? addresses;

  @ToMany()
  List<RelatedArtifactEntity>? documentation;

  @ToMany()
  List<PlanDefinitionTargetEntity>? target;
}

class PlanDefinitionTargetEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? measure;

  @ToOne()
  QuantityEntity? detailQuantity;

  @ToOne()
  RangeEntity? detailRange;

  @ToOne()
  CodeableConceptEntity? detailCodeableConcept;

  @ToOne()
  FhirDurationEntity? due;
}

class PlanDefinitionActionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? prefix;

  @ToOne()
  PrimitiveElementEntity? prefixElement;

  String? title;

  @ToOne()
  PrimitiveElementEntity? titleElement;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  String? textEquivalent;

  @ToOne()
  PrimitiveElementEntity? textEquivalentElement;

  String? priority;

  @ToOne()
  PrimitiveElementEntity? priorityElement;

  @ToMany()
  List<CodeableConceptEntity>? code;

  @ToMany()
  List<CodeableConceptEntity>? reason;

  @ToMany()
  List<RelatedArtifactEntity>? documentation;

  List<FhirId>? goalId;

  @ToMany()
  List<PrimitiveElementEntity>? goalIdElement;

  @ToOne()
  CodeableConceptEntity? subjectCodeableConcept;

  @ToOne()
  ReferenceEntity? subjectReference;
  String? subjectCanonical;

  @ToMany()
  List<PrimitiveElementEntity>? subjectCanonicalElement;

  @ToMany()
  List<TriggerDefinitionEntity>? trigger;

  @ToMany()
  List<PlanDefinitionConditionEntity>? condition;

  @ToMany()
  List<DataRequirementEntity>? input;

  @ToMany()
  List<DataRequirementEntity>? output;

  @ToMany()
  List<PlanDefinitionRelatedActionEntity>? relatedAction;

  String? timingDateTime;

  @ToOne()
  PrimitiveElementEntity? timingDateTimeElement;

  @ToOne()
  AgeEntity? timingAge;

  @ToOne()
  PeriodEntity? timingPeriod;

  @ToOne()
  FhirDurationEntity? timingDuration;

  @ToOne()
  RangeEntity? timingRange;

  @ToOne()
  TimingEntity? timingTiming;

  @ToMany()
  List<PlanDefinitionParticipantEntity>? participant;

  @ToOne()
  CodeableConceptEntity? type;

  String? groupingBehavior;

  @ToOne()
  PrimitiveElementEntity? groupingBehaviorElement;

  String? selectionBehavior;

  @ToOne()
  PrimitiveElementEntity? selectionBehaviorElement;

  String? requiredBehavior;

  @ToOne()
  PrimitiveElementEntity? requiredBehaviorElement;

  String? precheckBehavior;

  @ToOne()
  PrimitiveElementEntity? precheckBehaviorElement;

  String? cardinalityBehavior;

  @ToOne()
  PrimitiveElementEntity? cardinalityBehaviorElement;

  String? definitionCanonical;

  @ToOne()
  PrimitiveElementEntity? definitionCanonicalElement;

  String? definitionUri;

  @ToOne()
  PrimitiveElementEntity? definitionUriElement;

  String? transform;

  @ToMany()
  List<PlanDefinitionDynamicValueEntity>? dynamicValue;

  @ToMany()
  List<PlanDefinitionActionEntity>? action;
}

class PlanDefinitionConditionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? kind;

  @ToOne()
  PrimitiveElementEntity? kindElement;

  @ToOne()
  FhirExpressionEntity? expression;
}

class PlanDefinitionRelatedActionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? actionId;

  @ToOne()
  PrimitiveElementEntity? actionIdElement;

  String? relationship;

  @ToOne()
  PrimitiveElementEntity? relationshipElement;

  @ToOne()
  FhirDurationEntity? offsetDuration;

  @ToOne()
  RangeEntity? offsetRange;
}

class PlanDefinitionParticipantEntity {
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

class PlanDefinitionDynamicValueEntity {
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
