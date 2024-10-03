import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class DeviceRequestEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'DeviceRequest';

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
  List<ReferenceEntity>? priorRequest;

  @ToOne()
  IdentifierEntity? groupIdentifier;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  String? intent;

  @ToOne()
  PrimitiveElementEntity? intentElement;

  String? priority;

  @ToOne()
  PrimitiveElementEntity? priorityElement;

  @ToOne()
  ReferenceEntity? codeReference;

  @ToOne()
  CodeableConceptEntity? codeCodeableConcept;

  @ToMany()
  List<DeviceRequestParameterEntity>? parameter;

  @ToOne()
  ReferenceEntity? subject;

  @ToOne()
  ReferenceEntity? encounter;

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

  @ToOne()
  CodeableConceptEntity? performerType;

  @ToOne()
  ReferenceEntity? performer;

  @ToMany()
  List<CodeableConceptEntity>? reasonCode;

  @ToMany()
  List<ReferenceEntity>? reasonReference;

  @ToMany()
  List<ReferenceEntity>? insurance;

  @ToMany()
  List<ReferenceEntity>? supportingInfo;

  @ToMany()
  List<AnnotationEntity>? note;

  @ToMany()
  List<ReferenceEntity>? relevantHistory;
}

class DeviceRequestParameterEntity {
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
