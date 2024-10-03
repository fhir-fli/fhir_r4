import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class CareTeamEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'CareTeam';

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

  @ToMany()
  List<CodeableConceptEntity>? category;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  @ToOne()
  ReferenceEntity? subject;

  @ToOne()
  ReferenceEntity? encounter;

  @ToOne()
  PeriodEntity? period;

  @ToMany()
  List<CareTeamParticipantEntity>? participant;

  @ToMany()
  List<CodeableConceptEntity>? reasonCode;

  @ToMany()
  List<ReferenceEntity>? reasonReference;

  @ToMany()
  List<ReferenceEntity>? managingOrganization;

  @ToMany()
  List<ContactPointEntity>? telecom;

  @ToMany()
  List<AnnotationEntity>? note;
}

class CareTeamParticipantEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<CodeableConceptEntity>? role;

  @ToOne()
  ReferenceEntity? member;

  @ToOne()
  ReferenceEntity? onBehalfOf;

  @ToOne()
  PeriodEntity? period;
}
