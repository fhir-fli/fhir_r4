// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxOrganization {
  ObjectBoxOrganization({
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
    List<ObjectBoxCodeableConcept>? type,
    this.name,
    ObjectBoxElement? nameElement,
    this.alias,
    List<ObjectBoxElement>? aliasElement,
    List<ObjectBoxContactPoint>? telecom,
    List<ObjectBoxAddress>? address,
    ObjectBoxReference? partOf,
    List<ObjectBoxOrganizationContact>? contact,
    List<ObjectBoxReference>? endpoint,
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
    this.type.addAll(type ?? []);
    this.nameElement.target = nameElement;
    this.aliasElement.addAll(aliasElement ?? []);
    this.telecom.addAll(telecom ?? []);
    this.address.addAll(address ?? []);
    this.partOf.target = partOf;
    this.contact.addAll(contact ?? []);
    this.endpoint.addAll(endpoint ?? []);
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
  ToMany<ObjectBoxCodeableConcept> type = ToMany<ObjectBoxCodeableConcept>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  List<String>? alias;
  ToMany<ObjectBoxElement> aliasElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxContactPoint> telecom = ToMany<ObjectBoxContactPoint>();
  ToMany<ObjectBoxAddress> address = ToMany<ObjectBoxAddress>();
  ToOne<ObjectBoxReference> partOf = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxOrganizationContact> contact =
      ToMany<ObjectBoxOrganizationContact>();
  ToMany<ObjectBoxReference> endpoint = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxOrganizationContact {
  ObjectBoxOrganizationContact({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? purpose,
    ObjectBoxHumanName? name,
    List<ObjectBoxContactPoint>? telecom,
    ObjectBoxAddress? address,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.purpose.target = purpose;
    this.name.target = name;
    this.telecom.addAll(telecom ?? []);
    this.address.target = address;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> purpose = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxHumanName> name = ToOne<ObjectBoxHumanName>();
  ToMany<ObjectBoxContactPoint> telecom = ToMany<ObjectBoxContactPoint>();
  ToOne<ObjectBoxAddress> address = ToOne<ObjectBoxAddress>();
}
