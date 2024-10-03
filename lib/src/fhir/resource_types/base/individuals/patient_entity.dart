import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class PatientEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Patient';

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

  String? gender;

  @ToOne()
  PrimitiveElementEntity? genderElement;

  String? birthDate;

  @ToOne()
  PrimitiveElementEntity? birthDateElement;

  bool? deceasedBoolean;

  @ToOne()
  PrimitiveElementEntity? deceasedBooleanElement;

  String? deceasedDateTime;

  @ToOne()
  PrimitiveElementEntity? deceasedDateTimeElement;

  @ToMany()
  List<AddressEntity>? address;

  @ToOne()
  CodeableConceptEntity? maritalStatus;

  bool? multipleBirthBoolean;

  @ToOne()
  PrimitiveElementEntity? multipleBirthBooleanElement;

  int? multipleBirthInteger;

  @ToOne()
  PrimitiveElementEntity? multipleBirthIntegerElement;

  @ToMany()
  List<AttachmentEntity>? photo;

  @ToMany()
  List<PatientContactEntity>? contact;

  @ToMany()
  List<PatientCommunicationEntity>? communication;

  @ToMany()
  List<ReferenceEntity>? generalPractitioner;

  @ToOne()
  ReferenceEntity? managingOrganization;

  @ToMany()
  List<PatientLinkEntity>? link;
}

class PatientContactEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<CodeableConceptEntity>? relationship;

  @ToOne()
  HumanNameEntity? name;

  @ToMany()
  List<ContactPointEntity>? telecom;

  @ToOne()
  AddressEntity? address;

  String? gender;

  @ToOne()
  PrimitiveElementEntity? genderElement;

  @ToOne()
  ReferenceEntity? organization;

  @ToOne()
  PeriodEntity? period;
}

class PatientCommunicationEntity {
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

class PatientLinkEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  ReferenceEntity? other;

  String? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;
}
