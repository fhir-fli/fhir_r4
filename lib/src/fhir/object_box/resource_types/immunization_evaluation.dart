// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxImmunizationEvaluation {
  ObjectBoxImmunizationEvaluation({
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
    required this.patient,
    this.date,
    this.dateElement,
    this.authority,
    required this.targetDisease,
    required this.immunizationEvent,
    required this.doseStatus,
    this.doseStatusReason,
    this.description,
    this.descriptionElement,
    this.series,
    this.seriesElement,
    this.doseNumberPositiveInt,
    this.doseNumberPositiveIntElement,
    this.doseNumberString,
    this.doseNumberStringElement,
    this.seriesDosesPositiveInt,
    this.seriesDosesPositiveIntElement,
    this.seriesDosesString,
    this.seriesDosesStringElement,
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
  ToOne<ObjectBoxReference> patient = ToOne<ObjectBoxReference>();
  String? date;
  ToOne<ObjectBoxElement>? dateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? authority = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> targetDisease =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> immunizationEvent = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> doseStatus =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? doseStatusReason =
      ToMany<ObjectBoxCodeableConcept>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  String? series;
  ToOne<ObjectBoxElement>? seriesElement = ToOne<ObjectBoxElement>();
  int? doseNumberPositiveInt;
  ToOne<ObjectBoxElement>? doseNumberPositiveIntElement =
      ToOne<ObjectBoxElement>();
  String? doseNumberString;
  ToOne<ObjectBoxElement>? doseNumberStringElement = ToOne<ObjectBoxElement>();
  int? seriesDosesPositiveInt;
  ToOne<ObjectBoxElement>? seriesDosesPositiveIntElement =
      ToOne<ObjectBoxElement>();
  String? seriesDosesString;
  ToOne<ObjectBoxElement>? seriesDosesStringElement = ToOne<ObjectBoxElement>();
}
