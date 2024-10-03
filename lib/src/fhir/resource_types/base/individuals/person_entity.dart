import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class PersonEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Person';

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
  List<HumanNameEntity>? name;

  @ToMany()
  List<ContactPointEntity>? telecom;

  String? gender;

  @ToOne()
  PrimitiveElementEntity? genderElement;

  String? birthDate;

  @ToOne()
  PrimitiveElementEntity? birthDateElement;

  @ToMany()
  List<AddressEntity>? address;

  @ToOne()
  AttachmentEntity? photo;

  @ToOne()
  ReferenceEntity? managingOrganization;

  bool? active;

  @ToOne()
  PrimitiveElementEntity? activeElement;

  @ToMany()
  List<PersonLinkEntity>? link;
}

class PersonLinkEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  ReferenceEntity? target;

  String? assurance;

  @ToOne()
  PrimitiveElementEntity? assuranceElement;
}
