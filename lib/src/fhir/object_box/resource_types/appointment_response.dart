// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxAppointmentResponse {
  ObjectBoxAppointmentResponse({
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
    required this.appointment,
    this.start,
    this.startElement,
    this.end,
    this.endElement,
    this.participantType,
    this.actor,
    required this.participantStatus,
    this.participantStatusElement,
    this.comment,
    this.commentElement,
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
  ToOne<ObjectBoxReference> appointment = ToOne<ObjectBoxReference>();
  String? start;
  ToOne<ObjectBoxElement>? startElement = ToOne<ObjectBoxElement>();
  String? end;
  ToOne<ObjectBoxElement>? endElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? participantType =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? actor = ToOne<ObjectBoxReference>();
  String participantStatus;
  ToOne<ObjectBoxElement>? participantStatusElement = ToOne<ObjectBoxElement>();
  String? comment;
  ToOne<ObjectBoxElement>? commentElement = ToOne<ObjectBoxElement>();
}
