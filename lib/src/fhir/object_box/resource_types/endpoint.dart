// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxFhirEndpoint {
  ObjectBoxFhirEndpoint({
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
    required this.status,
    this.statusElement,
    required this.connectionType,
    this.name,
    this.nameElement,
    this.managingOrganization,
    this.contact,
    this.period,
    required this.payloadType,
    this.payloadMimeType,
    this.payloadMimeTypeElement,
    required this.address,
    this.addressElement,
    this.header,
    this.headerElement,
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
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCoding> connectionType = ToOne<ObjectBoxCoding>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? managingOrganization = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxContactPoint>? contact = ToMany<ObjectBoxContactPoint>();
  ToOne<ObjectBoxPeriod>? period = ToOne<ObjectBoxPeriod>();
  ToMany<ObjectBoxCodeableConcept> payloadType =
      ToMany<ObjectBoxCodeableConcept>();
  List<String>? payloadMimeType;
  ToMany<ObjectBoxElement>? payloadMimeTypeElement = ToMany<ObjectBoxElement>();
  String address;
  ToOne<ObjectBoxElement>? addressElement = ToOne<ObjectBoxElement>();
  List<String>? header;
  ToMany<ObjectBoxElement>? headerElement = ToMany<ObjectBoxElement>();
}
