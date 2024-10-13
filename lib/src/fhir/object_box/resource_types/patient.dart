// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxPatient {
  ObjectBoxPatient({
    this.id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxIdentifier>? identifier,
    this.active,
    ObjectBoxElement? activeElement,
    List<ObjectBoxHumanName>? name,
    List<ObjectBoxContactPoint>? telecom,
    this.gender,
    ObjectBoxElement? genderElement,
    this.birthDate,
    ObjectBoxElement? birthDateElement,
    this.deceasedBoolean,
    ObjectBoxElement? deceasedBooleanElement,
    this.deceasedDateTime,
    ObjectBoxElement? deceasedDateTimeElement,
    List<ObjectBoxAddress>? address,
    ObjectBoxCodeableConcept? maritalStatus,
    this.multipleBirthBoolean,
    ObjectBoxElement? multipleBirthBooleanElement,
    this.multipleBirthInteger,
    ObjectBoxElement? multipleBirthIntegerElement,
    List<ObjectBoxAttachment>? photo,
    List<ObjectBoxPatientContact>? contact,
    List<ObjectBoxPatientCommunication>? communication,
    List<ObjectBoxReference>? generalPractitioner,
    ObjectBoxReference? managingOrganization,
    List<ObjectBoxPatientLink>? link,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.activeElement.target = activeElement;
    this.name.addAll(name ?? []);
    this.telecom.addAll(telecom ?? []);
    this.genderElement.target = genderElement;
    this.birthDateElement.target = birthDateElement;
    this.deceasedBooleanElement.target = deceasedBooleanElement;
    this.deceasedDateTimeElement.target = deceasedDateTimeElement;
    this.address.addAll(address ?? []);
    this.maritalStatus.target = maritalStatus;
    this.multipleBirthBooleanElement.target = multipleBirthBooleanElement;
    this.multipleBirthIntegerElement.target = multipleBirthIntegerElement;
    this.photo.addAll(photo ?? []);
    this.contact.addAll(contact ?? []);
    this.communication.addAll(communication ?? []);
    this.generalPractitioner.addAll(generalPractitioner ?? []);
    this.managingOrganization.target = managingOrganization;
    this.link.addAll(link ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  bool? active;
  ToOne<ObjectBoxElement> activeElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxHumanName> name = ToMany<ObjectBoxHumanName>();
  ToMany<ObjectBoxContactPoint> telecom = ToMany<ObjectBoxContactPoint>();
  String? gender;
  ToOne<ObjectBoxElement> genderElement = ToOne<ObjectBoxElement>();
  String? birthDate;
  ToOne<ObjectBoxElement> birthDateElement = ToOne<ObjectBoxElement>();
  bool? deceasedBoolean;
  ToOne<ObjectBoxElement> deceasedBooleanElement = ToOne<ObjectBoxElement>();
  String? deceasedDateTime;
  ToOne<ObjectBoxElement> deceasedDateTimeElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAddress> address = ToMany<ObjectBoxAddress>();
  ToOne<ObjectBoxCodeableConcept> maritalStatus =
      ToOne<ObjectBoxCodeableConcept>();
  bool? multipleBirthBoolean;
  ToOne<ObjectBoxElement> multipleBirthBooleanElement =
      ToOne<ObjectBoxElement>();
  int? multipleBirthInteger;
  ToOne<ObjectBoxElement> multipleBirthIntegerElement =
      ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAttachment> photo = ToMany<ObjectBoxAttachment>();
  ToMany<ObjectBoxPatientContact> contact = ToMany<ObjectBoxPatientContact>();
  ToMany<ObjectBoxPatientCommunication> communication =
      ToMany<ObjectBoxPatientCommunication>();
  ToMany<ObjectBoxReference> generalPractitioner = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxReference> managingOrganization = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxPatientLink> link = ToMany<ObjectBoxPatientLink>();
}

@Entity()
class ObjectBoxPatientContact {
  ObjectBoxPatientContact({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxCodeableConcept>? relationship,
    ObjectBoxHumanName? name,
    List<ObjectBoxContactPoint>? telecom,
    ObjectBoxAddress? address,
    this.gender,
    ObjectBoxElement? genderElement,
    ObjectBoxReference? organization,
    ObjectBoxPeriod? period,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.relationship.addAll(relationship ?? []);
    this.name.target = name;
    this.telecom.addAll(telecom ?? []);
    this.address.target = address;
    this.genderElement.target = genderElement;
    this.organization.target = organization;
    this.period.target = period;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxCodeableConcept> relationship =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxHumanName> name = ToOne<ObjectBoxHumanName>();
  ToMany<ObjectBoxContactPoint> telecom = ToMany<ObjectBoxContactPoint>();
  ToOne<ObjectBoxAddress> address = ToOne<ObjectBoxAddress>();
  String? gender;
  ToOne<ObjectBoxElement> genderElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> organization = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
}

@Entity()
class ObjectBoxPatientCommunication {
  ObjectBoxPatientCommunication({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? language,
    this.preferred,
    ObjectBoxElement? preferredElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.language.target = language;
    this.preferredElement.target = preferredElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> language = ToOne<ObjectBoxCodeableConcept>();
  bool? preferred;
  ToOne<ObjectBoxElement> preferredElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxPatientLink {
  ObjectBoxPatientLink({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxReference? other,
    required this.type,
    ObjectBoxElement? typeElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.other.target = other;
    this.typeElement.target = typeElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> other = ToOne<ObjectBoxReference>();
  String type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
}
