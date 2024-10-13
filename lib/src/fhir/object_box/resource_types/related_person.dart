// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxRelatedPerson {
  ObjectBoxRelatedPerson({
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
    ObjectBoxReference? patient,
    List<ObjectBoxCodeableConcept>? relationship,
    List<ObjectBoxHumanName>? name,
    List<ObjectBoxContactPoint>? telecom,
    this.gender,
    ObjectBoxElement? genderElement,
    this.birthDate,
    ObjectBoxElement? birthDateElement,
    List<ObjectBoxAddress>? address,
    List<ObjectBoxAttachment>? photo,
    ObjectBoxPeriod? period,
    List<ObjectBoxRelatedPersonCommunication>? communication,
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
    this.patient.target = patient;
    this.relationship.addAll(relationship ?? []);
    this.name.addAll(name ?? []);
    this.telecom.addAll(telecom ?? []);
    this.genderElement.target = genderElement;
    this.birthDateElement.target = birthDateElement;
    this.address.addAll(address ?? []);
    this.photo.addAll(photo ?? []);
    this.period.target = period;
    this.communication.addAll(communication ?? []);
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
  ToOne<ObjectBoxReference> patient = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> relationship =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxHumanName> name = ToMany<ObjectBoxHumanName>();
  ToMany<ObjectBoxContactPoint> telecom = ToMany<ObjectBoxContactPoint>();
  String? gender;
  ToOne<ObjectBoxElement> genderElement = ToOne<ObjectBoxElement>();
  String? birthDate;
  ToOne<ObjectBoxElement> birthDateElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAddress> address = ToMany<ObjectBoxAddress>();
  ToMany<ObjectBoxAttachment> photo = ToMany<ObjectBoxAttachment>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
  ToMany<ObjectBoxRelatedPersonCommunication> communication =
      ToMany<ObjectBoxRelatedPersonCommunication>();
}

@Entity()
class ObjectBoxRelatedPersonCommunication {
  ObjectBoxRelatedPersonCommunication({
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
