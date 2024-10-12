// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxSpecimen {
  ObjectBoxSpecimen({
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
    this.accessionIdentifier,
    this.status,
    this.statusElement,
    this.type,
    this.subject,
    this.receivedTime,
    this.receivedTimeElement,
    this.parent,
    this.request,
    this.collection,
    this.processing,
    this.container,
    this.condition,
    this.note,
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
  ToOne<ObjectBoxIdentifier>? accessionIdentifier =
      ToOne<ObjectBoxIdentifier>();
  String? status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? subject = ToOne<ObjectBoxReference>();
  String? receivedTime;
  ToOne<ObjectBoxElement>? receivedTimeElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference>? parent = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? request = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxSpecimenCollection>? collection =
      ToOne<ObjectBoxSpecimenCollection>();
  ToMany<ObjectBoxSpecimenProcessing>? processing =
      ToMany<ObjectBoxSpecimenProcessing>();
  ToMany<ObjectBoxSpecimenContainer>? container =
      ToMany<ObjectBoxSpecimenContainer>();
  ToMany<ObjectBoxCodeableConcept>? condition =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
}

@Entity()
class ObjectBoxSpecimenCollection {
  ObjectBoxSpecimenCollection({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.collector,
    this.collectedDateTime,
    this.collectedDateTimeElement,
    this.collectedPeriod,
    this.duration,
    this.quantity,
    this.method,
    this.bodySite,
    this.fastingStatusCodeableConcept,
    this.fastingStatusDuration,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference>? collector = ToOne<ObjectBoxReference>();
  String? collectedDateTime;
  ToOne<ObjectBoxElement>? collectedDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? collectedPeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxFhirDuration>? duration = ToOne<ObjectBoxFhirDuration>();
  ToOne<ObjectBoxQuantity>? quantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxCodeableConcept>? method = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? bodySite = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? fastingStatusCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxFhirDuration>? fastingStatusDuration =
      ToOne<ObjectBoxFhirDuration>();
}

@Entity()
class ObjectBoxSpecimenProcessing {
  ObjectBoxSpecimenProcessing({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.description,
    this.descriptionElement,
    this.procedure,
    this.additive,
    this.timeDateTime,
    this.timeDateTimeElement,
    this.timePeriod,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? procedure =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? additive = ToMany<ObjectBoxReference>();
  String? timeDateTime;
  ToOne<ObjectBoxElement>? timeDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? timePeriod = ToOne<ObjectBoxPeriod>();
}

@Entity()
class ObjectBoxSpecimenContainer {
  ObjectBoxSpecimenContainer({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.description,
    this.descriptionElement,
    this.type,
    this.capacity,
    this.specimenQuantity,
    this.additiveCodeableConcept,
    this.additiveReference,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity>? capacity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxQuantity>? specimenQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxCodeableConcept>? additiveCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? additiveReference = ToOne<ObjectBoxReference>();
}
