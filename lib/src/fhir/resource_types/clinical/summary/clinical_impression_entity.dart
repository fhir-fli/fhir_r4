import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class ClinicalImpressionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'ClinicalImpression';
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
  CodeableConceptEntity? statusReason;
  @ToOne()
  CodeableConceptEntity? code;
  String? description;
  @ToOne()
  PrimitiveElementEntity? descriptionElement;
  @ToOne()
  ReferenceEntity? subject;
  @ToOne()
  ReferenceEntity? encounter;
  String? effectiveDateTime;

  @ToOne()
  PrimitiveElementEntity? effectiveDateTimeElement;
  @ToOne()
  PeriodEntity? effectivePeriod;
  String? date;
  @ToOne()
  PrimitiveElementEntity? dateElement;
  @ToOne()
  ReferenceEntity? assessor;
  @ToOne()
  ReferenceEntity? previous;
  @ToMany()
  List<ReferenceEntity>? problem;
  @ToMany()
  List<ClinicalImpressionInvestigationEntity>? investigation;
  List<FhirUri>? protocol;
  @ToMany()
  List<PrimitiveElementEntity>? protocolElement;
  String? summary;
  @ToOne()
  PrimitiveElementEntity? summaryElement;
  @ToMany()
  List<ClinicalImpressionFindingEntity>? finding;
  @ToMany()
  List<CodeableConceptEntity>? prognosisCodeableConcept;
  @ToMany()
  List<ReferenceEntity>? prognosisReference;
  @ToMany()
  List<ReferenceEntity>? supportingInfo;
  @ToMany()
  List<AnnotationEntity>? note;
}

class ClinicalImpressionInvestigationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  @ToOne()
  CodeableConceptEntity? code;
  @ToMany()
  List<ReferenceEntity>? item;
}

class ClinicalImpressionFindingEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  @ToOne()
  CodeableConceptEntity? itemCodeableConcept;
  @ToOne()
  ReferenceEntity? itemReference;
  String? basis;
  @ToOne()
  PrimitiveElementEntity? basisElement;
}
