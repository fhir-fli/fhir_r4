import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class SupplyDeliveryEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'SupplyDelivery';

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

  @ToMany()
  List<ReferenceEntity>? basedOn;

  @ToMany()
  List<ReferenceEntity>? partOf;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToOne()
  ReferenceEntity? patient;

  @ToOne()
  CodeableConceptEntity? type;

  @ToOne()
  SupplyDeliverySuppliedItemEntity? suppliedItem;

  String? occurrenceDateTime;

  @ToOne()
  PrimitiveElementEntity? occurrenceDateTimeElement;

  @ToOne()
  PeriodEntity? occurrencePeriod;

  @ToOne()
  TimingEntity? occurrenceTiming;

  @ToOne()
  ReferenceEntity? supplier;

  @ToOne()
  ReferenceEntity? destination;

  @ToMany()
  List<ReferenceEntity>? receiver;
}

class SupplyDeliverySuppliedItemEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  QuantityEntity? quantity;

  @ToOne()
  CodeableConceptEntity? itemCodeableConcept;

  @ToOne()
  ReferenceEntity? itemReference;
}
