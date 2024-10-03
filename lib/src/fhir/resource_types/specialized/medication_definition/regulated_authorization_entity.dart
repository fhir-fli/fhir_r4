import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class RegulatedAuthorizationEntity {
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

  @ToMany()
  List<ReferenceEntity>? subject;

  @ToOne()
  CodeableConceptEntity? type;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToMany()
  List<CodeableConceptEntity>? region;

  @ToOne()
  CodeableConceptEntity? status;

  String? statusDate;

  @ToOne()
  PrimitiveElementEntity? statusDateElement;

  @ToOne()
  PeriodEntity? validityPeriod;

  @ToOne()
  CodeableReferenceEntity? indication;

  @ToOne()
  CodeableConceptEntity? intendedUse;

  @ToMany()
  List<CodeableConceptEntity>? basis;

  @ToOne()
  ReferenceEntity? holder;

  @ToOne()
  ReferenceEntity? regulator;

  @ToOne()
  RegulatedAuthorizationCaseEntity? case_;
}

class RegulatedAuthorizationCaseEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  IdentifierEntity? identifier;

  @ToOne()
  CodeableConceptEntity? type;

  @ToOne()
  CodeableConceptEntity? status;

  @ToOne()
  PeriodEntity? datePeriod;

  String? dateDateTime;

  @ToOne()
  PrimitiveElementEntity? dateDateTimeElement;

  @ToMany()
  List<RegulatedAuthorizationCaseEntity>? application;
}
