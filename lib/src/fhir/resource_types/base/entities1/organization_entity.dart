import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class OrganizationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Organization';

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
  List<CodeableConceptEntity>? type;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  List<String>? alias;

  @ToMany()
  List<PrimitiveElementEntity>? aliasElement;

  @ToMany()
  List<ContactPointEntity>? telecom;

  @ToMany()
  List<AddressEntity>? address;

  @ToOne()
  ReferenceEntity? partOf;

  @ToMany()
  List<OrganizationContactEntity>? contact;

  @ToMany()
  List<ReferenceEntity>? endpoint;
}

class OrganizationContactEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? purpose;

  @ToOne()
  HumanNameEntity? name;

  @ToMany()
  List<ContactPointEntity>? telecom;

  @ToOne()
  AddressEntity? address;
}
