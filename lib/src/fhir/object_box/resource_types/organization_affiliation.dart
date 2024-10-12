// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxOrganizationAffiliation {
  ObjectBoxOrganizationAffiliation({
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
    this.period,
    this.organization,
    this.participatingOrganization,
    this.network,
    this.code,
    this.specialty,
    this.location,
    this.healthcareService,
    this.telecom,
    this.endpoint,
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
  ToOne<ObjectBoxPeriod>? period = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxReference>? organization = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? participatingOrganization =
      ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? network = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept>? code = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? specialty =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? location = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? healthcareService = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxContactPoint>? telecom = ToMany<ObjectBoxContactPoint>();
  ToMany<ObjectBoxReference>? endpoint = ToMany<ObjectBoxReference>();
}
