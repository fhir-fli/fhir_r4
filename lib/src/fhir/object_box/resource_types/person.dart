// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxPerson {
  ObjectBoxPerson({
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
    List<ObjectBoxHumanName>? name,
    List<ObjectBoxContactPoint>? telecom,
    this.gender,
    ObjectBoxElement? genderElement,
    this.birthDate,
    ObjectBoxElement? birthDateElement,
    List<ObjectBoxAddress>? address,
    ObjectBoxAttachment? photo,
    ObjectBoxReference? managingOrganization,
    this.active,
    ObjectBoxElement? activeElement,
    List<ObjectBoxPersonLink>? link,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.name.addAll(name ?? []);
    this.telecom.addAll(telecom ?? []);
    this.genderElement.target = genderElement;
    this.birthDateElement.target = birthDateElement;
    this.address.addAll(address ?? []);
    this.photo.target = photo;
    this.managingOrganization.target = managingOrganization;
    this.activeElement.target = activeElement;
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
  ToMany<ObjectBoxHumanName> name = ToMany<ObjectBoxHumanName>();
  ToMany<ObjectBoxContactPoint> telecom = ToMany<ObjectBoxContactPoint>();
  String? gender;
  ToOne<ObjectBoxElement> genderElement = ToOne<ObjectBoxElement>();
  String? birthDate;
  ToOne<ObjectBoxElement> birthDateElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAddress> address = ToMany<ObjectBoxAddress>();
  ToOne<ObjectBoxAttachment> photo = ToOne<ObjectBoxAttachment>();
  ToOne<ObjectBoxReference> managingOrganization = ToOne<ObjectBoxReference>();
  bool? active;
  ToOne<ObjectBoxElement> activeElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxPersonLink> link = ToMany<ObjectBoxPersonLink>();
}

@Entity()
class ObjectBoxPersonLink {
  ObjectBoxPersonLink({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxReference? target,
    this.assurance,
    ObjectBoxElement? assuranceElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.target.target = target;
    this.assuranceElement.target = assuranceElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> target = ToOne<ObjectBoxReference>();
  String? assurance;
  ToOne<ObjectBoxElement> assuranceElement = ToOne<ObjectBoxElement>();
}
