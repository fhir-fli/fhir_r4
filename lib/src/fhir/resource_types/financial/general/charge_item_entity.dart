import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class ChargeItemEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'ChargeItem';

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

  List<FhirUri>? definitionUri;

  @ToMany()
  List<PrimitiveElementEntity>? definitionUriElement;

  List<String>? definitionCanonical;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToMany()
  List<ReferenceEntity>? partOf;

  @ToOne()
  CodeableConceptEntity? code;

  @ToOne()
  ReferenceEntity? subject;

  @ToOne()
  ReferenceEntity? context;

  String? occurrenceDateTime;

  @ToOne()
  PrimitiveElementEntity? occurrenceDateTimeElement;

  @ToOne()
  PeriodEntity? occurrencePeriod;

  @ToOne()
  TimingEntity? occurrenceTiming;

  @ToMany()
  List<ChargeItemPerformerEntity>? performer;

  @ToOne()
  ReferenceEntity? performingOrganization;

  @ToOne()
  ReferenceEntity? requestingOrganization;

  @ToOne()
  ReferenceEntity? costCenter;

  @ToOne()
  QuantityEntity? quantity;

  @ToMany()
  List<CodeableConceptEntity>? bodysite;

  double? factorOverride;

  @ToOne()
  PrimitiveElementEntity? factorOverrideElement;

  @ToOne()
  MoneyEntity? priceOverride;

  String? overrideReason;

  @ToOne()
  PrimitiveElementEntity? overrideReasonElement;

  @ToOne()
  ReferenceEntity? enterer;

  String? enteredDate;

  @ToOne()
  PrimitiveElementEntity? enteredDateElement;

  @ToMany()
  List<CodeableConceptEntity>? reason;

  @ToMany()
  List<ReferenceEntity>? service;

  @ToOne()
  ReferenceEntity? productReference;

  @ToOne()
  CodeableConceptEntity? productCodeableConcept;

  @ToMany()
  List<ReferenceEntity>? account;

  @ToMany()
  List<AnnotationEntity>? note;

  @ToMany()
  List<ReferenceEntity>? supportingInformation;
}

class ChargeItemPerformerEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? function;

  @ToOne()
  ReferenceEntity? actor;
}
