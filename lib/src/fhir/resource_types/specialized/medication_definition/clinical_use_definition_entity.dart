import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class ClinicalUseDefinitionEntity {
  @Id(assignable: true)
  int dbId = 0;
  @ToOne()
  R4ResourceTypeEntity? resourceType;

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

  String? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;

  @ToMany()
  List<CodeableConceptEntity>? category;

  @ToMany()
  List<ReferenceEntity>? subject;

  @ToOne()
  CodeableConceptEntity? status;

  @ToOne()
  ClinicalUseDefinitionContraindicationEntity? contraindication;

  @ToOne()
  ClinicalUseDefinitionIndicationEntity? indication;

  @ToOne()
  ClinicalUseDefinitionInteractionEntity? interaction;

  @ToMany()
  List<ReferenceEntity>? population;

  @ToOne()
  ClinicalUseDefinitionUndesirableEffectEntity? undesirableEffect;

  @ToOne()
  ClinicalUseDefinitionWarningEntity? warning;
}

class ClinicalUseDefinitionContraindicationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableReferenceEntity? diseaseSymptomProcedure;

  @ToOne()
  CodeableReferenceEntity? diseaseStatus;

  @ToMany()
  List<CodeableReferenceEntity>? comorbidity;

  @ToMany()
  List<ReferenceEntity>? indication;

  @ToMany()
  List<ClinicalUseDefinitionOtherTherapyEntity>? otherTherapy;
}

class ClinicalUseDefinitionOtherTherapyEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? relationshipType;

  @ToOne()
  CodeableReferenceEntity? therapy;
}

class ClinicalUseDefinitionIndicationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableReferenceEntity? diseaseSymptomProcedure;

  @ToOne()
  CodeableReferenceEntity? diseaseStatus;

  @ToMany()
  List<CodeableReferenceEntity>? comorbidity;

  @ToOne()
  CodeableReferenceEntity? intendedEffect;

  @ToOne()
  RangeEntity? durationRange;

  String? durationString;

  @ToOne()
  PrimitiveElementEntity? durationStringElement;

  @ToMany()
  List<ReferenceEntity>? undesirableEffect;

  @ToMany()
  List<ClinicalUseDefinitionOtherTherapyEntity>? otherTherapy;
}

class ClinicalUseDefinitionInteractionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<ClinicalUseDefinitionInteractantEntity>? interactant;

  @ToOne()
  CodeableConceptEntity? type;

  @ToOne()
  CodeableReferenceEntity? effect;

  @ToOne()
  CodeableConceptEntity? incidence;

  @ToMany()
  List<CodeableConceptEntity>? management;
}

class ClinicalUseDefinitionInteractantEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  ReferenceEntity? itemReference;

  @ToOne()
  CodeableConceptEntity? itemCodeableConcept;
}

class ClinicalUseDefinitionUndesirableEffectEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableReferenceEntity? symptomConditionEffect;

  @ToOne()
  CodeableConceptEntity? classification;

  @ToOne()
  CodeableConceptEntity? frequencyOfOccurrence;
}

class ClinicalUseDefinitionWarningEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToOne()
  CodeableConceptEntity? code;
}
