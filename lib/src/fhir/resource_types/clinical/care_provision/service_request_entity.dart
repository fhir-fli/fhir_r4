import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class ServiceRequestEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'ServiceRequest';

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

  @ToOne()
  IdentifierEntity? requisition;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  String? intent;

  @ToOne()
  PrimitiveElementEntity? intentElement;

  @ToMany()
  List<CodeableConceptEntity>? category;

  String? priority;

  @ToOne()
  PrimitiveElementEntity? priorityElement;

  bool? doNotPerform;

  @ToOne()
  PrimitiveElementEntity? doNotPerformElement;

  @ToOne()
  CodeableConceptEntity? code;

  @ToMany()
  List<CodeableConceptEntity>? orderDetail;

  @ToOne()
  QuantityEntity? quantityQuantity;

  @ToOne()
  RatioEntity? quantityRatio;

  @ToOne()
  RangeEntity? quantityRange;

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

  bool? asNeededBoolean;

  @ToOne()
  PrimitiveElementEntity? asNeededBooleanElement;

  @ToOne()
  CodeableConceptEntity? asNeededCodeableConcept;

  String? authoredOn;

  @ToOne()
  PrimitiveElementEntity? authoredOnElement;

  @ToOne()
  ReferenceEntity? requester;

  @ToOne()
  CodeableConceptEntity? performerType;

  @ToMany()
  List<ReferenceEntity>? performer;

  @ToMany()
  List<CodeableConceptEntity>? locationCode;

  @ToMany()
  List<ReferenceEntity>? locationReference;

  @ToMany()
  List<CodeableConceptEntity>? reasonCode;

  @ToMany()
  List<ReferenceEntity>? reasonReference;

  @ToMany()
  List<ReferenceEntity>? insurance;

  @ToMany()
  List<ReferenceEntity>? supportingInfo;

  @ToMany()
  List<ReferenceEntity>? specimen;

  @ToMany()
  List<CodeableConceptEntity>? bodySite;

  @ToMany()
  List<AnnotationEntity>? note;

  String? patientInstruction;

  @ToOne()
  PrimitiveElementEntity? patientInstructionElement;

  @ToMany()
  List<ReferenceEntity>? relevantHistory;
}
