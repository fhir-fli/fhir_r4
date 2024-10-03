import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class GoalEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Goal';

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

  @ToMany()
  List<IdentifierEntity>? identifier;

  String? lifecycleStatus;

  @ToOne()
  PrimitiveElementEntity? lifecycleStatusElement;

  @ToOne()
  CodeableConceptEntity? achievementStatus;

  @ToMany()
  List<CodeableConceptEntity>? category;

  @ToOne()
  CodeableConceptEntity? priority;

  @ToOne()
  CodeableConceptEntity? description;

  @ToOne()
  ReferenceEntity? subject;

  String? startDate;

  @ToOne()
  PrimitiveElementEntity? startDateElement;

  @ToOne()
  CodeableConceptEntity? startCodeableConcept;

  @ToMany()
  List<GoalTargetEntity>? target;

  String? statusDate;

  @ToOne()
  PrimitiveElementEntity? statusDateElement;

  String? statusReason;

  @ToOne()
  PrimitiveElementEntity? statusReasonElement;

  @ToOne()
  ReferenceEntity? expressedBy;

  @ToMany()
  List<ReferenceEntity>? addresses;

  @ToMany()
  List<AnnotationEntity>? note;

  @ToMany()
  List<CodeableConceptEntity>? outcomeCode;

  @ToMany()
  List<ReferenceEntity>? outcomeReference;
}

class GoalTargetEntity {
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

  String? detailString;

  @ToOne()
  PrimitiveElementEntity? detailStringElement;

  bool? detailBoolean;

  @ToOne()
  PrimitiveElementEntity? detailBooleanElement;

  int? detailInteger;

  @ToOne()
  PrimitiveElementEntity? detailIntegerElement;

  @ToOne()
  RatioEntity? detailRatio;

  String? dueDate;

  @ToOne()
  PrimitiveElementEntity? dueDateElement;

  @ToOne()
  FhirDurationEntity? dueDuration;
}
