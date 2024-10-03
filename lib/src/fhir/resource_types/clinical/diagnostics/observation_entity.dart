import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class ObservationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Observation';

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

  @ToMany()
  List<CodeableConceptEntity>? category;

  @ToOne()
  CodeableConceptEntity? code;

  @ToOne()
  ReferenceEntity? subject;

  @ToMany()
  List<ReferenceEntity>? focus;

  @ToOne()
  ReferenceEntity? encounter;

  String? effectiveDateTime;

  @ToOne()
  PrimitiveElementEntity? effectiveDateTimeElement;

  @ToOne()
  PeriodEntity? effectivePeriod;

  @ToOne()
  TimingEntity? effectiveTiming;

  String? effectiveInstant;

  @ToOne()
  PrimitiveElementEntity? effectiveInstantElement;

  String? issued;

  @ToOne()
  PrimitiveElementEntity? issuedElement;

  @ToMany()
  List<ReferenceEntity>? performer;

  @ToOne()
  QuantityEntity? valueQuantity;

  @ToOne()
  CodeableConceptEntity? valueCodeableConcept;

  String? valueString;

  @ToOne()
  PrimitiveElementEntity? valueStringElement;

  bool? valueBoolean;

  @ToOne()
  PrimitiveElementEntity? valueBooleanElement;

  int? valueInteger;

  @ToOne()
  PrimitiveElementEntity? valueIntegerElement;

  @ToOne()
  RangeEntity? valueRange;

  @ToOne()
  RatioEntity? valueRatio;

  @ToOne()
  SampledDataEntity? valueSampledData;

  String? valueTime;

  @ToOne()
  PrimitiveElementEntity? valueTimeElement;

  String? valueDateTime;

  @ToOne()
  PrimitiveElementEntity? valueDateTimeElement;

  @ToOne()
  PeriodEntity? valuePeriod;

  @ToOne()
  CodeableConceptEntity? dataAbsentReason;

  @ToMany()
  List<CodeableConceptEntity>? interpretation;

  @ToMany()
  List<AnnotationEntity>? note;

  @ToOne()
  CodeableConceptEntity? bodySite;

  @ToOne()
  CodeableConceptEntity? method;

  @ToOne()
  ReferenceEntity? specimen;

  @ToOne()
  ReferenceEntity? device;

  @ToMany()
  List<ObservationReferenceRangeEntity>? referenceRange;

  @ToMany()
  List<ReferenceEntity>? hasMember;

  @ToMany()
  List<ReferenceEntity>? derivedFrom;

  @ToMany()
  List<ObservationComponentEntity>? component;
}

class ObservationReferenceRangeEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  QuantityEntity? low;

  @ToOne()
  QuantityEntity? high;

  @ToOne()
  CodeableConceptEntity? type;

  @ToMany()
  List<CodeableConceptEntity>? appliesTo;

  @ToOne()
  RangeEntity? age;

  String? text;

  @ToOne()
  PrimitiveElementEntity? textElement;
}

class ObservationComponentEntity {
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
  QuantityEntity? valueQuantity;

  @ToOne()
  CodeableConceptEntity? valueCodeableConcept;

  String? valueString;

  @ToOne()
  PrimitiveElementEntity? valueStringElement;

  bool? valueBoolean;

  @ToOne()
  PrimitiveElementEntity? valueBooleanElement;

  int? valueInteger;

  @ToOne()
  PrimitiveElementEntity? valueIntegerElement;

  @ToOne()
  RangeEntity? valueRange;

  @ToOne()
  RatioEntity? valueRatio;

  @ToOne()
  SampledDataEntity? valueSampledData;

  String? valueTime;

  @ToOne()
  PrimitiveElementEntity? valueTimeElement;

  String? valueDateTime;

  @ToOne()
  PrimitiveElementEntity? valueDateTimeElement;

  @ToOne()
  PeriodEntity? valuePeriod;

  @ToOne()
  CodeableConceptEntity? dataAbsentReason;

  @ToMany()
  List<CodeableConceptEntity>? interpretation;

  @ToMany()
  List<ObservationReferenceRangeEntity>? referenceRange;
}
