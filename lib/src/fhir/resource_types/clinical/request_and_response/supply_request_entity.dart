import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class SupplyRequestEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'SupplyRequest';

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

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToOne()
  CodeableConceptEntity? category;

  String? priority;

  @ToOne()
  PrimitiveElementEntity? priorityElement;

  @ToOne()
  CodeableConceptEntity? itemCodeableConcept;

  @ToOne()
  ReferenceEntity? itemReference;

  @ToOne()
  QuantityEntity? quantity;

  @ToMany()
  List<SupplyRequestParameterEntity>? parameter;

  String? occurrenceDateTime;

  @ToOne()
  PrimitiveElementEntity? occurrenceDateTimeElement;

  @ToOne()
  PeriodEntity? occurrencePeriod;

  @ToOne()
  TimingEntity? occurrenceTiming;

  String? authoredOn;

  @ToOne()
  PrimitiveElementEntity? authoredOnElement;

  @ToOne()
  ReferenceEntity? requester;

  @ToMany()
  List<ReferenceEntity>? supplier;

  @ToMany()
  List<CodeableConceptEntity>? reasonCode;

  @ToMany()
  List<ReferenceEntity>? reasonReference;

  @ToOne()
  ReferenceEntity? deliverFrom;

  @ToOne()
  ReferenceEntity? deliverTo;
}

class SupplyRequestParameterEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? code;

  @ToOne()
  CodeableConceptEntity? valueCodeableConcept;

  @ToOne()
  QuantityEntity? valueQuantity;

  @ToOne()
  RangeEntity? valueRange;

  bool? valueBoolean;

  @ToOne()
  PrimitiveElementEntity? valueBooleanElement;
}
