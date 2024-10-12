// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxRegulatedAuthorization {
  ObjectBoxRegulatedAuthorization({
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
    this.subject,
    this.type,
    this.description,
    this.descriptionElement,
    this.region,
    this.status,
    this.statusDate,
    this.statusDateElement,
    this.validityPeriod,
    this.indication,
    this.intendedUse,
    this.basis,
    this.holder,
    this.regulator,
    this.case_,
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
  ToMany<ObjectBoxReference>? subject = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? region = ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? status = ToOne<ObjectBoxCodeableConcept>();
  String? statusDate;
  ToOne<ObjectBoxElement>? statusDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? validityPeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxCodeableReference>? indication =
      ToOne<ObjectBoxCodeableReference>();
  ToOne<ObjectBoxCodeableConcept>? intendedUse =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? basis = ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? holder = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? regulator = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxRegulatedAuthorizationCase>? case_ =
      ToOne<ObjectBoxRegulatedAuthorizationCase>();
}

@Entity()
class ObjectBoxRegulatedAuthorizationCase {
  ObjectBoxRegulatedAuthorizationCase({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.type,
    this.status,
    this.datePeriod,
    this.dateDateTime,
    this.dateDateTimeElement,
    this.application,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxIdentifier>? identifier = ToOne<ObjectBoxIdentifier>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? status = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxPeriod>? datePeriod = ToOne<ObjectBoxPeriod>();
  String? dateDateTime;
  ToOne<ObjectBoxElement>? dateDateTimeElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxRegulatedAuthorizationCase>? application =
      ToMany<ObjectBoxRegulatedAuthorizationCase>();
}
