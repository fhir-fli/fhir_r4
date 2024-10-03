import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class RelatedPersonEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'RelatedPerson';

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
  ReferenceEntity? patient;

  @ToMany()
  List<CodeableConceptEntity>? relationship;

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

  @ToMany()
  List<AttachmentEntity>? photo;

  @ToOne()
  PeriodEntity? period;

  @ToMany()
  List<RelatedPersonCommunicationEntity>? communication;
}

class RelatedPersonCommunicationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? language;

  bool? preferred;

  @ToOne()
  PrimitiveElementEntity? preferredElement;
}
