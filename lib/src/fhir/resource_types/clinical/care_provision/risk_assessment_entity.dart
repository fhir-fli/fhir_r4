import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class RiskAssessmentEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'RiskAssessment';

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

  @ToOne()
  ReferenceEntity? basedOn;

  @ToOne()
  ReferenceEntity? parent;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToOne()
  CodeableConceptEntity? method;

  @ToOne()
  CodeableConceptEntity? code;

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
  ReferenceEntity? condition;

  @ToOne()
  ReferenceEntity? performer;

  @ToMany()
  List<CodeableConceptEntity>? reasonCode;

  @ToMany()
  List<ReferenceEntity>? reasonReference;

  @ToMany()
  List<ReferenceEntity>? basis;

  @ToMany()
  List<RiskAssessmentPredictionEntity>? prediction;

  String? mitigation;

  @ToOne()
  PrimitiveElementEntity? mitigationElement;

  @ToMany()
  List<AnnotationEntity>? note;
}

class RiskAssessmentPredictionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? outcome;

  double? probabilityDecimal;

  @ToOne()
  PrimitiveElementEntity? probabilityDecimalElement;

  @ToOne()
  RangeEntity? probabilityRange;

  @ToOne()
  CodeableConceptEntity? qualitativeRisk;

  double? relativeRisk;

  @ToOne()
  PrimitiveElementEntity? relativeRiskElement;

  @ToOne()
  PeriodEntity? whenPeriod;

  @ToOne()
  RangeEntity? whenRange;

  String? rationale;

  @ToOne()
  PrimitiveElementEntity? rationaleElement;
}
