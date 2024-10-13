// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxFhirEndpoint {
  ObjectBoxFhirEndpoint({
    String? id,
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
    required this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxCoding? connectionType,
    this.name,
    ObjectBoxElement? nameElement,
    ObjectBoxReference? managingOrganization,
    List<ObjectBoxContactPoint>? contact,
    ObjectBoxPeriod? period,
    List<ObjectBoxCodeableConcept>? payloadType,
    this.payloadMimeType,
    List<ObjectBoxElement>? payloadMimeTypeElement,
    required this.address,
    ObjectBoxElement? addressElement,
    this.header,
    List<ObjectBoxElement>? headerElement,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.statusElement.target = statusElement;
    this.connectionType.target = connectionType;
    this.nameElement.target = nameElement;
    this.managingOrganization.target = managingOrganization;
    this.contact.addAll(contact ?? []);
    this.period.target = period;
    this.payloadType.addAll(payloadType ?? []);
    this.payloadMimeTypeElement.addAll(payloadMimeTypeElement ?? []);
    this.addressElement.target = addressElement;
    this.headerElement.addAll(headerElement ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
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
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCoding> connectionType = ToOne<ObjectBoxCoding>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> managingOrganization = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxContactPoint> contact = ToMany<ObjectBoxContactPoint>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
  ToMany<ObjectBoxCodeableConcept> payloadType =
      ToMany<ObjectBoxCodeableConcept>();
  List<String>? payloadMimeType;
  ToMany<ObjectBoxElement> payloadMimeTypeElement = ToMany<ObjectBoxElement>();
  String address;
  ToOne<ObjectBoxElement> addressElement = ToOne<ObjectBoxElement>();
  List<String>? header;
  ToMany<ObjectBoxElement> headerElement = ToMany<ObjectBoxElement>();
}
