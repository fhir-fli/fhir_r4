// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxRegulatedAuthorization {
  ObjectBoxRegulatedAuthorization({
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
    List<ObjectBoxReference>? subject,
    ObjectBoxCodeableConcept? type,
    this.description,
    ObjectBoxElement? descriptionElement,
    List<ObjectBoxCodeableConcept>? region,
    ObjectBoxCodeableConcept? status,
    this.statusDate,
    ObjectBoxElement? statusDateElement,
    ObjectBoxPeriod? validityPeriod,
    ObjectBoxCodeableReference? indication,
    ObjectBoxCodeableConcept? intendedUse,
    List<ObjectBoxCodeableConcept>? basis,
    ObjectBoxReference? holder,
    ObjectBoxReference? regulator,
    ObjectBoxRegulatedAuthorizationCase? case_,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.subject.addAll(subject ?? []);
    this.type.target = type;
    this.descriptionElement.target = descriptionElement;
    this.region.addAll(region ?? []);
    this.status.target = status;
    this.statusDateElement.target = statusDateElement;
    this.validityPeriod.target = validityPeriod;
    this.indication.target = indication;
    this.intendedUse.target = intendedUse;
    this.basis.addAll(basis ?? []);
    this.holder.target = holder;
    this.regulator.target = regulator;
    this.case_.target = case_;
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
  ToMany<ObjectBoxReference> subject = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> region = ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> status = ToOne<ObjectBoxCodeableConcept>();
  String? statusDate;
  ToOne<ObjectBoxElement> statusDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> validityPeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxCodeableReference> indication =
      ToOne<ObjectBoxCodeableReference>();
  ToOne<ObjectBoxCodeableConcept> intendedUse =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> basis = ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> holder = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> regulator = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxRegulatedAuthorizationCase> case_ =
      ToOne<ObjectBoxRegulatedAuthorizationCase>();
}

@Entity()
class ObjectBoxRegulatedAuthorizationCase {
  ObjectBoxRegulatedAuthorizationCase({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxIdentifier? identifier,
    ObjectBoxCodeableConcept? type,
    ObjectBoxCodeableConcept? status,
    ObjectBoxPeriod? datePeriod,
    this.dateDateTime,
    ObjectBoxElement? dateDateTimeElement,
    List<ObjectBoxRegulatedAuthorizationCase>? application,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.target = identifier;
    this.type.target = type;
    this.status.target = status;
    this.datePeriod.target = datePeriod;
    this.dateDateTimeElement.target = dateDateTimeElement;
    this.application.addAll(application ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxIdentifier> identifier = ToOne<ObjectBoxIdentifier>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> status = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxPeriod> datePeriod = ToOne<ObjectBoxPeriod>();
  String? dateDateTime;
  ToOne<ObjectBoxElement> dateDateTimeElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxRegulatedAuthorizationCase> application =
      ToMany<ObjectBoxRegulatedAuthorizationCase>();
}
