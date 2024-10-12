// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxPatient {
  ObjectBoxPatient({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.active,
    this.activeElement,
    this.name,
    this.telecom,
    this.gender,
    this.genderElement,
    this.birthDate,
    this.birthDateElement,
    this.deceasedBoolean,
    this.deceasedBooleanElement,
    this.deceasedDateTime,
    this.deceasedDateTimeElement,
    this.address,
    this.maritalStatus,
    this.multipleBirthBoolean,
    this.multipleBirthBooleanElement,
    this.multipleBirthInteger,
    this.multipleBirthIntegerElement,
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
  ToOne<ObjectBoxFhirMeta>? meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement>? implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative>? text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource>? contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  bool? active;
  ToOne<ObjectBoxElement>? activeElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxHumanName>? name = ToMany<ObjectBoxHumanName>();
  ToMany<ObjectBoxContactPoint>? telecom = ToMany<ObjectBoxContactPoint>();
  String? gender;
  ToOne<ObjectBoxElement>? genderElement = ToOne<ObjectBoxElement>();
  String? birthDate;
  ToOne<ObjectBoxElement>? birthDateElement = ToOne<ObjectBoxElement>();
  bool? deceasedBoolean;
  ToOne<ObjectBoxElement>? deceasedBooleanElement = ToOne<ObjectBoxElement>();
  String? deceasedDateTime;
  ToOne<ObjectBoxElement>? deceasedDateTimeElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAddress>? address = ToMany<ObjectBoxAddress>();
  ToOne<ObjectBoxCodeableConcept>? maritalStatus =
      ToOne<ObjectBoxCodeableConcept>();
  bool? multipleBirthBoolean;
  ToOne<ObjectBoxElement>? multipleBirthBooleanElement =
      ToOne<ObjectBoxElement>();
  int? multipleBirthInteger;
  ToOne<ObjectBoxElement>? multipleBirthIntegerElement =
      ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAttachment>? photo = ToMany<ObjectBoxAttachment>();
  ToMany<ObjectBoxPatientContact>? contact = ToMany<ObjectBoxPatientContact>();
  ToMany<ObjectBoxPatientCommunication>? communication =
      ToMany<ObjectBoxPatientCommunication>();
  ToMany<ObjectBoxReference>? generalPractitioner =
      ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? managingOrganization = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxPatientLink>? link = ToMany<ObjectBoxPatientLink>();
}

@Entity()
class ObjectBoxPatientContact {
  ObjectBoxPatientContact({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.relationship,
    this.name,
    this.telecom,
    this.address,
    this.gender,
    this.genderElement,
    this.organization,
    this.period,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxCodeableConcept>? relationship =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxHumanName>? name = ToOne<ObjectBoxHumanName>();
  ToMany<ObjectBoxContactPoint>? telecom = ToMany<ObjectBoxContactPoint>();
  ToOne<ObjectBoxAddress>? address = ToOne<ObjectBoxAddress>();
  String? gender;
  ToOne<ObjectBoxElement>? genderElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? organization = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxPeriod>? period = ToOne<ObjectBoxPeriod>();
}

@Entity()
class ObjectBoxPatientCommunication {
  ObjectBoxPatientCommunication({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.language,
    this.preferred,
    this.preferredElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> language = ToOne<ObjectBoxCodeableConcept>();
  bool? preferred;
  ToOne<ObjectBoxElement>? preferredElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxPatientLink {
  ObjectBoxPatientLink({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.other,
    required this.type,
    this.typeElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> other = ToOne<ObjectBoxReference>();
  String type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
}
