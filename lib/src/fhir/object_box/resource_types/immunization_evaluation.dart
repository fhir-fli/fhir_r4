// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxImmunizationEvaluation {
  ObjectBoxImmunizationEvaluation({
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
    ObjectBoxReference? patient,
    this.date,
    ObjectBoxElement? dateElement,
    ObjectBoxReference? authority,
    ObjectBoxCodeableConcept? targetDisease,
    ObjectBoxReference? immunizationEvent,
    ObjectBoxCodeableConcept? doseStatus,
    List<ObjectBoxCodeableConcept>? doseStatusReason,
    this.description,
    ObjectBoxElement? descriptionElement,
    this.series,
    ObjectBoxElement? seriesElement,
    this.doseNumberPositiveInt,
    ObjectBoxElement? doseNumberPositiveIntElement,
    this.doseNumberString,
    ObjectBoxElement? doseNumberStringElement,
    this.seriesDosesPositiveInt,
    ObjectBoxElement? seriesDosesPositiveIntElement,
    this.seriesDosesString,
    ObjectBoxElement? seriesDosesStringElement,
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
    this.patient.target = patient;
    this.dateElement.target = dateElement;
    this.authority.target = authority;
    this.targetDisease.target = targetDisease;
    this.immunizationEvent.target = immunizationEvent;
    this.doseStatus.target = doseStatus;
    this.doseStatusReason.addAll(doseStatusReason ?? []);
    this.descriptionElement.target = descriptionElement;
    this.seriesElement.target = seriesElement;
    this.doseNumberPositiveIntElement.target = doseNumberPositiveIntElement;
    this.doseNumberStringElement.target = doseNumberStringElement;
    this.seriesDosesPositiveIntElement.target = seriesDosesPositiveIntElement;
    this.seriesDosesStringElement.target = seriesDosesStringElement;
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
  ToOne<ObjectBoxReference> patient = ToOne<ObjectBoxReference>();
  String? date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> authority = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> targetDisease =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> immunizationEvent = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> doseStatus =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> doseStatusReason =
      ToMany<ObjectBoxCodeableConcept>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  String? series;
  ToOne<ObjectBoxElement> seriesElement = ToOne<ObjectBoxElement>();
  int? doseNumberPositiveInt;
  ToOne<ObjectBoxElement> doseNumberPositiveIntElement =
      ToOne<ObjectBoxElement>();
  String? doseNumberString;
  ToOne<ObjectBoxElement> doseNumberStringElement = ToOne<ObjectBoxElement>();
  int? seriesDosesPositiveInt;
  ToOne<ObjectBoxElement> seriesDosesPositiveIntElement =
      ToOne<ObjectBoxElement>();
  String? seriesDosesString;
  ToOne<ObjectBoxElement> seriesDosesStringElement = ToOne<ObjectBoxElement>();
}
