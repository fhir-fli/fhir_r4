import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class CarePlanEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'CarePlan';

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

  List<String>? instantiatesCanonical;

  List<FhirUri>? instantiatesUri;

  @ToMany()
  List<PrimitiveElementEntity>? instantiatesUriElement;

  @ToMany()
  List<ReferenceEntity>? basedOn;

  @ToMany()
  List<ReferenceEntity>? replaces;

  @ToMany()
  List<ReferenceEntity>? partOf;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  String? intent;

  @ToOne()
  PrimitiveElementEntity? intentElement;

  @ToMany()
  List<CodeableConceptEntity>? category;

  String? title;

  @ToOne()
  PrimitiveElementEntity? titleElement;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToOne()
  ReferenceEntity? subject;

  @ToOne()
  ReferenceEntity? encounter;

  @ToOne()
  PeriodEntity? period;

  String? created;

  @ToOne()
  PrimitiveElementEntity? createdElement;

  @ToOne()
  ReferenceEntity? author;

  @ToMany()
  List<ReferenceEntity>? contributor;

  @ToMany()
  List<ReferenceEntity>? careTeam;

  @ToMany()
  List<ReferenceEntity>? addresses;

  @ToMany()
  List<ReferenceEntity>? supportingInfo;

  @ToMany()
  List<ReferenceEntity>? goal;

  @ToMany()
  List<CarePlanActivityEntity>? activity;

  @ToMany()
  List<AnnotationEntity>? note;
}

class CarePlanActivityEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<CodeableConceptEntity>? outcomeCodeableConcept;

  @ToMany()
  List<ReferenceEntity>? outcomeReference;

  @ToMany()
  List<AnnotationEntity>? progress;

  @ToOne()
  ReferenceEntity? reference;

  @ToOne()
  CarePlanDetailEntity? detail;
}

class CarePlanDetailEntity {
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

  List<String>? instantiatesCanonical;

  List<FhirUri>? instantiatesUri;

  @ToMany()
  List<PrimitiveElementEntity>? instantiatesUriElement;

  @ToOne()
  CodeableConceptEntity? code;

  @ToMany()
  List<CodeableConceptEntity>? reasonCode;

  @ToMany()
  List<ReferenceEntity>? reasonReference;

  @ToMany()
  List<ReferenceEntity>? goal;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToOne()
  CodeableConceptEntity? statusReason;

  bool? doNotPerform;

  @ToOne()
  PrimitiveElementEntity? doNotPerformElement;

  @ToOne()
  TimingEntity? scheduledTiming;

  @ToOne()
  PeriodEntity? scheduledPeriod;

  String? scheduledString;

  @ToOne()
  PrimitiveElementEntity? scheduledStringElement;

  @ToOne()
  ReferenceEntity? location;

  @ToMany()
  List<ReferenceEntity>? performer;

  @ToOne()
  CodeableConceptEntity? productCodeableConcept;

  @ToOne()
  ReferenceEntity? productReference;

  @ToOne()
  QuantityEntity? dailyAmount;

  @ToOne()
  QuantityEntity? quantity;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;
}
