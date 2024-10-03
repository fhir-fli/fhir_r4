import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class ScheduleEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Schedule';

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

  bool? active;

  @ToOne()
  PrimitiveElementEntity? activeElement;

  @ToMany()
  List<CodeableConceptEntity>? serviceCategory;

  @ToMany()
  List<CodeableConceptEntity>? serviceType;

  @ToMany()
  List<CodeableConceptEntity>? specialty;

  @ToMany()
  List<ReferenceEntity>? actor;

  @ToOne()
  PeriodEntity? planningHorizon;

  String? comment;

  @ToOne()
  PrimitiveElementEntity? commentElement;
}
