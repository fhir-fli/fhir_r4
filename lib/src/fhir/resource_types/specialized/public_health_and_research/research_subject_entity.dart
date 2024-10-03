import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class ResearchSubjectEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'ResearchSubject';

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
  PeriodEntity? period;

  @ToOne()
  ReferenceEntity? study;

  @ToOne()
  ReferenceEntity? individual;

  String? assignedArm;

  @ToOne()
  PrimitiveElementEntity? assignedArmElement;

  String? actualArm;

  @ToOne()
  PrimitiveElementEntity? actualArmElement;

  @ToOne()
  ReferenceEntity? consent;
}
