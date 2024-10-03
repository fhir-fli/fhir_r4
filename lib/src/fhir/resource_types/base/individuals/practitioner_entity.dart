import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class PractitionerEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Practitioner';

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
  List<HumanNameEntity>? name;

  @ToMany()
  List<ContactPointEntity>? telecom;

  @ToMany()
  List<AddressEntity>? address;

  String? gender;

  @ToOne()
  PrimitiveElementEntity? genderElement;

  String? birthDate;

  @ToOne()
  PrimitiveElementEntity? birthDateElement;

  @ToMany()
  List<AttachmentEntity>? photo;

  @ToMany()
  List<PractitionerQualificationEntity>? qualification;

  @ToMany()
  List<CodeableConceptEntity>? communication;
}

class PractitionerQualificationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<IdentifierEntity>? identifier;

  @ToOne()
  CodeableConceptEntity? code;

  @ToOne()
  PeriodEntity? period;

  @ToOne()
  ReferenceEntity? issuer;
}
