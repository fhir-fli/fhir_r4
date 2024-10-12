// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxRelatedPerson {
  ObjectBoxRelatedPerson({
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
    required this.patient,
    this.relationship,
    this.name,
    this.telecom,
    this.gender,
    this.genderElement,
    this.birthDate,
    this.birthDateElement,
    this.address,
    this.photo,
    this.period,
    this.communication,
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
  ToOne<ObjectBoxReference> patient = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept>? relationship =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxHumanName>? name = ToMany<ObjectBoxHumanName>();
  ToMany<ObjectBoxContactPoint>? telecom = ToMany<ObjectBoxContactPoint>();
  String? gender;
  ToOne<ObjectBoxElement>? genderElement = ToOne<ObjectBoxElement>();
  String? birthDate;
  ToOne<ObjectBoxElement>? birthDateElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAddress>? address = ToMany<ObjectBoxAddress>();
  ToMany<ObjectBoxAttachment>? photo = ToMany<ObjectBoxAttachment>();
  ToOne<ObjectBoxPeriod>? period = ToOne<ObjectBoxPeriod>();
  ToMany<ObjectBoxRelatedPersonCommunication>? communication =
      ToMany<ObjectBoxRelatedPersonCommunication>();
}

@Entity()
class ObjectBoxRelatedPersonCommunication {
  ObjectBoxRelatedPersonCommunication({
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
