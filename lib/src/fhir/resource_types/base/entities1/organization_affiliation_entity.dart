import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class OrganizationAffiliationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'OrganizationAffiliation';

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

  @ToOne()
  PeriodEntity? period;

  @ToOne()
  ReferenceEntity? organization;

  @ToOne()
  ReferenceEntity? participatingOrganization;

  @ToMany()
  List<ReferenceEntity>? network;

  @ToMany()
  List<CodeableConceptEntity>? code;

  @ToMany()
  List<CodeableConceptEntity>? specialty;

  @ToMany()
  List<ReferenceEntity>? location;

  @ToMany()
  List<ReferenceEntity>? healthcareService;

  @ToMany()
  List<ContactPointEntity>? telecom;

  @ToMany()
  List<ReferenceEntity>? endpoint;
}
