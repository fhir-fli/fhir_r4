import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class ResearchStudyEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'ResearchStudy';

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

  String? title;

  @ToOne()
  PrimitiveElementEntity? titleElement;

  @ToMany()
  List<ReferenceEntity>? protocol;

  @ToMany()
  List<ReferenceEntity>? partOf;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToOne()
  CodeableConceptEntity? primaryPurposeType;

  @ToOne()
  CodeableConceptEntity? phase;

  @ToMany()
  List<CodeableConceptEntity>? category;

  @ToMany()
  List<CodeableConceptEntity>? focus;

  @ToMany()
  List<CodeableConceptEntity>? condition;

  @ToMany()
  List<ContactDetailEntity>? contact;

  @ToMany()
  List<RelatedArtifactEntity>? relatedArtifact;

  @ToMany()
  List<CodeableConceptEntity>? keyword;

  @ToMany()
  List<CodeableConceptEntity>? location;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToMany()
  List<ReferenceEntity>? enrollment;

  @ToOne()
  PeriodEntity? period;

  @ToOne()
  ReferenceEntity? sponsor;

  @ToOne()
  ReferenceEntity? principalInvestigator;

  @ToMany()
  List<ReferenceEntity>? site;

  @ToOne()
  CodeableConceptEntity? reasonStopped;

  @ToMany()
  List<AnnotationEntity>? note;

  @ToMany()
  List<ResearchStudyArmEntity>? arm;

  @ToMany()
  List<ResearchStudyObjectiveEntity>? objective;
}

class ResearchStudyArmEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  @ToOne()
  CodeableConceptEntity? type;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;
}

class ResearchStudyObjectiveEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  @ToOne()
  CodeableConceptEntity? type;
}
