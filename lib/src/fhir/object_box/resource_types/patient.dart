import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class Patient extends Resource {
  Patient({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.active,
    this.name,
    this.telecom,
    this.gender,
    this.birthDate,
    this.deceasedBoolean,
    this.deceasedDateTime,
    this.address,
    this.maritalStatus,
    this.multipleBirthBoolean,
    this.multipleBirthInteger,
    this.photo,
    this.contact,
    this.communication,
    this.generalPractitioner,
    this.managingOrganization,
    this.link,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  bool? active;
  ToMany<HumanName>? name = ToMany<HumanName>();
  ToMany<ContactPoint>? telecom = ToMany<ContactPoint>();
  String? gender;
  String? birthDate;
  bool? deceasedBoolean;
  String? deceasedDateTime;
  ToMany<Address>? address = ToMany<Address>();
  ToOne<CodeableConcept>? maritalStatus = ToOne<CodeableConcept>();
  bool? multipleBirthBoolean;
  int? multipleBirthInteger;
  ToMany<Attachment>? photo = ToMany<Attachment>();
  ToMany<PatientContact>? contact = ToMany<PatientContact>();
  ToMany<PatientCommunication>? communication = ToMany<PatientCommunication>();
  ToMany<Reference>? generalPractitioner = ToMany<Reference>();
  ToOne<Reference>? managingOrganization = ToOne<Reference>();
  ToMany<PatientLink>? link = ToMany<PatientLink>();
}

@Entity()
class PatientContact {
  PatientContact({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.relationship,
    this.name,
    this.telecom,
    this.address,
    this.gender,
    this.organization,
    this.period,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<CodeableConcept>? relationship = ToMany<CodeableConcept>();
  ToOne<HumanName>? name = ToOne<HumanName>();
  ToMany<ContactPoint>? telecom = ToMany<ContactPoint>();
  ToOne<Address>? address = ToOne<Address>();
  String? gender;
  ToOne<Reference>? organization = ToOne<Reference>();
  ToOne<Period>? period = ToOne<Period>();
}

@Entity()
class PatientCommunication {
  PatientCommunication({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.language,
    this.preferred,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> language = ToOne<CodeableConcept>();
  bool? preferred;
}

@Entity()
class PatientLink {
  PatientLink({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.other,
    required this.type,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Reference> other = ToOne<Reference>();
  String type;
}
