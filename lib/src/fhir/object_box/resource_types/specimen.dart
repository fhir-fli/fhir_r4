// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxSpecimen {
  ObjectBoxSpecimen({
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
    ObjectBoxIdentifier? accessionIdentifier,
    this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxCodeableConcept? type,
    ObjectBoxReference? subject,
    this.receivedTime,
    ObjectBoxElement? receivedTimeElement,
    List<ObjectBoxReference>? parent,
    List<ObjectBoxReference>? request,
    ObjectBoxSpecimenCollection? collection,
    List<ObjectBoxSpecimenProcessing>? processing,
    List<ObjectBoxSpecimenContainer>? container,
    List<ObjectBoxCodeableConcept>? condition,
    List<ObjectBoxAnnotation>? note,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.accessionIdentifier.target = accessionIdentifier;
    this.statusElement.target = statusElement;
    this.type.target = type;
    this.subject.target = subject;
    this.receivedTimeElement.target = receivedTimeElement;
    this.parent.addAll(parent ?? []);
    this.request.addAll(request ?? []);
    this.collection.target = collection;
    this.processing.addAll(processing ?? []);
    this.container.addAll(container ?? []);
    this.condition.addAll(condition ?? []);
    this.note.addAll(note ?? []);
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
  ToOne<ObjectBoxIdentifier> accessionIdentifier = ToOne<ObjectBoxIdentifier>();
  String? status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  String? receivedTime;
  ToOne<ObjectBoxElement> receivedTimeElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference> parent = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> request = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxSpecimenCollection> collection =
      ToOne<ObjectBoxSpecimenCollection>();
  ToMany<ObjectBoxSpecimenProcessing> processing =
      ToMany<ObjectBoxSpecimenProcessing>();
  ToMany<ObjectBoxSpecimenContainer> container =
      ToMany<ObjectBoxSpecimenContainer>();
  ToMany<ObjectBoxCodeableConcept> condition =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
}

@Entity()
class ObjectBoxSpecimenCollection {
  ObjectBoxSpecimenCollection({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxReference? collector,
    this.collectedDateTime,
    ObjectBoxElement? collectedDateTimeElement,
    ObjectBoxPeriod? collectedPeriod,
    ObjectBoxFhirDuration? duration,
    ObjectBoxQuantity? quantity,
    ObjectBoxCodeableConcept? method,
    ObjectBoxCodeableConcept? bodySite,
    ObjectBoxCodeableConcept? fastingStatusCodeableConcept,
    ObjectBoxFhirDuration? fastingStatusDuration,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.collector.target = collector;
    this.collectedDateTimeElement.target = collectedDateTimeElement;
    this.collectedPeriod.target = collectedPeriod;
    this.duration.target = duration;
    this.quantity.target = quantity;
    this.method.target = method;
    this.bodySite.target = bodySite;
    this.fastingStatusCodeableConcept.target = fastingStatusCodeableConcept;
    this.fastingStatusDuration.target = fastingStatusDuration;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> collector = ToOne<ObjectBoxReference>();
  String? collectedDateTime;
  ToOne<ObjectBoxElement> collectedDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> collectedPeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxFhirDuration> duration = ToOne<ObjectBoxFhirDuration>();
  ToOne<ObjectBoxQuantity> quantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxCodeableConcept> method = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> bodySite = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> fastingStatusCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxFhirDuration> fastingStatusDuration =
      ToOne<ObjectBoxFhirDuration>();
}

@Entity()
class ObjectBoxSpecimenProcessing {
  ObjectBoxSpecimenProcessing({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.description,
    ObjectBoxElement? descriptionElement,
    ObjectBoxCodeableConcept? procedure,
    List<ObjectBoxReference>? additive,
    this.timeDateTime,
    ObjectBoxElement? timeDateTimeElement,
    ObjectBoxPeriod? timePeriod,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.descriptionElement.target = descriptionElement;
    this.procedure.target = procedure;
    this.additive.addAll(additive ?? []);
    this.timeDateTimeElement.target = timeDateTimeElement;
    this.timePeriod.target = timePeriod;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> procedure = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> additive = ToMany<ObjectBoxReference>();
  String? timeDateTime;
  ToOne<ObjectBoxElement> timeDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> timePeriod = ToOne<ObjectBoxPeriod>();
}

@Entity()
class ObjectBoxSpecimenContainer {
  ObjectBoxSpecimenContainer({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxIdentifier>? identifier,
    this.description,
    ObjectBoxElement? descriptionElement,
    ObjectBoxCodeableConcept? type,
    ObjectBoxQuantity? capacity,
    ObjectBoxQuantity? specimenQuantity,
    ObjectBoxCodeableConcept? additiveCodeableConcept,
    ObjectBoxReference? additiveReference,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.descriptionElement.target = descriptionElement;
    this.type.target = type;
    this.capacity.target = capacity;
    this.specimenQuantity.target = specimenQuantity;
    this.additiveCodeableConcept.target = additiveCodeableConcept;
    this.additiveReference.target = additiveReference;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity> capacity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxQuantity> specimenQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxCodeableConcept> additiveCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> additiveReference = ToOne<ObjectBoxReference>();
}
