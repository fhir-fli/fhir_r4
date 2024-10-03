import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class ImmunizationEvaluationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'ImmunizationEvaluation';

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
  ReferenceEntity? patient;

  String? date;

  @ToOne()
  PrimitiveElementEntity? dateElement;

  @ToOne()
  ReferenceEntity? authority;

  @ToOne()
  CodeableConceptEntity? targetDisease;

  @ToOne()
  ReferenceEntity? immunizationEvent;

  @ToOne()
  CodeableConceptEntity? doseStatus;

  @ToMany()
  List<CodeableConceptEntity>? doseStatusReason;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  String? series;

  @ToOne()
  PrimitiveElementEntity? seriesElement;

  int? doseNumberPositiveInt;

  @ToOne()
  PrimitiveElementEntity? doseNumberPositiveIntElement;

  String? doseNumberString;

  @ToOne()
  PrimitiveElementEntity? doseNumberStringElement;

  int? seriesDosesPositiveInt;

  @ToOne()
  PrimitiveElementEntity? seriesDosesPositiveIntElement;

  String? seriesDosesString;

  @ToOne()
  PrimitiveElementEntity? seriesDosesStringElement;
}
