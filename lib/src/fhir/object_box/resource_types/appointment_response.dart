// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxAppointmentResponse {
  ObjectBoxAppointmentResponse({
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
    ObjectBoxReference? appointment,
    this.start,
    ObjectBoxElement? startElement,
    this.end,
    ObjectBoxElement? endElement,
    List<ObjectBoxCodeableConcept>? participantType,
    ObjectBoxReference? actor,
    required this.participantStatus,
    ObjectBoxElement? participantStatusElement,
    this.comment,
    ObjectBoxElement? commentElement,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.appointment.target = appointment;
    this.startElement.target = startElement;
    this.endElement.target = endElement;
    this.participantType.addAll(participantType ?? []);
    this.actor.target = actor;
    this.participantStatusElement.target = participantStatusElement;
    this.commentElement.target = commentElement;
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
  ToOne<ObjectBoxReference> appointment = ToOne<ObjectBoxReference>();
  String? start;
  ToOne<ObjectBoxElement> startElement = ToOne<ObjectBoxElement>();
  String? end;
  ToOne<ObjectBoxElement> endElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> participantType =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> actor = ToOne<ObjectBoxReference>();
  String participantStatus;
  ToOne<ObjectBoxElement> participantStatusElement = ToOne<ObjectBoxElement>();
  String? comment;
  ToOne<ObjectBoxElement> commentElement = ToOne<ObjectBoxElement>();
}
