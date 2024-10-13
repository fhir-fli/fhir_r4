// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxAppointment {
  ObjectBoxAppointment({
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
    ObjectBoxCodeableConcept? cancelationReason,
    List<ObjectBoxCodeableConcept>? serviceCategory,
    List<ObjectBoxCodeableConcept>? serviceType,
    List<ObjectBoxCodeableConcept>? specialty,
    ObjectBoxCodeableConcept? appointmentType,
    List<ObjectBoxCodeableConcept>? reasonCode,
    List<ObjectBoxReference>? reasonReference,
    this.priority,
    ObjectBoxElement? priorityElement,
    this.description,
    ObjectBoxElement? descriptionElement,
    List<ObjectBoxReference>? supportingInformation,
    this.start,
    ObjectBoxElement? startElement,
    this.end,
    ObjectBoxElement? endElement,
    this.minutesDuration,
    ObjectBoxElement? minutesDurationElement,
    List<ObjectBoxReference>? slot,
    this.created,
    ObjectBoxElement? createdElement,
    this.comment,
    ObjectBoxElement? commentElement,
    this.patientInstruction,
    ObjectBoxElement? patientInstructionElement,
    List<ObjectBoxReference>? basedOn,
    List<ObjectBoxAppointmentParticipant>? participant,
    List<ObjectBoxPeriod>? requestedPeriod,
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
    this.cancelationReason.target = cancelationReason;
    this.serviceCategory.addAll(serviceCategory ?? []);
    this.serviceType.addAll(serviceType ?? []);
    this.specialty.addAll(specialty ?? []);
    this.appointmentType.target = appointmentType;
    this.reasonCode.addAll(reasonCode ?? []);
    this.reasonReference.addAll(reasonReference ?? []);
    this.priorityElement.target = priorityElement;
    this.descriptionElement.target = descriptionElement;
    this.supportingInformation.addAll(supportingInformation ?? []);
    this.startElement.target = startElement;
    this.endElement.target = endElement;
    this.minutesDurationElement.target = minutesDurationElement;
    this.slot.addAll(slot ?? []);
    this.createdElement.target = createdElement;
    this.commentElement.target = commentElement;
    this.patientInstructionElement.target = patientInstructionElement;
    this.basedOn.addAll(basedOn ?? []);
    this.participant.addAll(participant ?? []);
    this.requestedPeriod.addAll(requestedPeriod ?? []);
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
  ToOne<ObjectBoxCodeableConcept> cancelationReason =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> serviceCategory =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> serviceType =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> specialty =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> appointmentType =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> reasonCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> reasonReference = ToMany<ObjectBoxReference>();
  int? priority;
  ToOne<ObjectBoxElement> priorityElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference> supportingInformation =
      ToMany<ObjectBoxReference>();
  String? start;
  ToOne<ObjectBoxElement> startElement = ToOne<ObjectBoxElement>();
  String? end;
  ToOne<ObjectBoxElement> endElement = ToOne<ObjectBoxElement>();
  int? minutesDuration;
  ToOne<ObjectBoxElement> minutesDurationElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference> slot = ToMany<ObjectBoxReference>();
  String? created;
  ToOne<ObjectBoxElement> createdElement = ToOne<ObjectBoxElement>();
  String? comment;
  ToOne<ObjectBoxElement> commentElement = ToOne<ObjectBoxElement>();
  String? patientInstruction;
  ToOne<ObjectBoxElement> patientInstructionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference> basedOn = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxAppointmentParticipant> participant =
      ToMany<ObjectBoxAppointmentParticipant>();
  ToMany<ObjectBoxPeriod> requestedPeriod = ToMany<ObjectBoxPeriod>();
}

@Entity()
class ObjectBoxAppointmentParticipant {
  ObjectBoxAppointmentParticipant({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxCodeableConcept>? type,
    ObjectBoxReference? actor,
    this.required_,
    ObjectBoxElement? requiredElement,
    required this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxPeriod? period,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.addAll(type ?? []);
    this.actor.target = actor;
    this.requiredElement.target = requiredElement;
    this.statusElement.target = statusElement;
    this.period.target = period;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxCodeableConcept> type = ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> actor = ToOne<ObjectBoxReference>();
  String? required_;
  ToOne<ObjectBoxElement> requiredElement = ToOne<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
}
