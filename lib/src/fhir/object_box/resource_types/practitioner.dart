// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxPractitioner {
  ObjectBoxPractitioner({
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
    List<ObjectBoxAddress>? address,
    this.gender,
    ObjectBoxElement? genderElement,
    this.birthDate,
    ObjectBoxElement? birthDateElement,
    List<ObjectBoxAttachment>? photo,
    List<ObjectBoxPractitionerQualification>? qualification,
    List<ObjectBoxCodeableConcept>? communication,
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
    this.address.addAll(address ?? []);
    this.genderElement.target = genderElement;
    this.birthDateElement.target = birthDateElement;
    this.photo.addAll(photo ?? []);
    this.qualification.addAll(qualification ?? []);
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
  ToMany<ObjectBoxHumanName> name = ToMany<ObjectBoxHumanName>();
  ToMany<ObjectBoxContactPoint> telecom = ToMany<ObjectBoxContactPoint>();
  ToMany<ObjectBoxAddress> address = ToMany<ObjectBoxAddress>();
  String? gender;
  ToOne<ObjectBoxElement> genderElement = ToOne<ObjectBoxElement>();
  String? birthDate;
  ToOne<ObjectBoxElement> birthDateElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAttachment> photo = ToMany<ObjectBoxAttachment>();
  ToMany<ObjectBoxPractitionerQualification> qualification =
      ToMany<ObjectBoxPractitionerQualification>();
  ToMany<ObjectBoxCodeableConcept> communication =
      ToMany<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxPractitionerQualification {
  ObjectBoxPractitionerQualification({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxIdentifier>? identifier,
    ObjectBoxCodeableConcept? code,
    ObjectBoxPeriod? period,
    ObjectBoxReference? issuer,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.code.target = code;
    this.period.target = period;
    this.issuer.target = issuer;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxReference> issuer = ToOne<ObjectBoxReference>();
}
