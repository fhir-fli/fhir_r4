// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxCommunicationRequest {
  ObjectBoxCommunicationRequest({
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
    this.basedOn,
    this.replaces,
    this.groupIdentifier,
    required this.status,
    this.statusElement,
    this.statusReason,
    this.category,
    this.priority,
    this.priorityElement,
    this.doNotPerform,
    this.doNotPerformElement,
    this.medium,
    this.subject,
    this.about,
    this.encounter,
    this.payload,
    this.occurrenceDateTime,
    this.occurrenceDateTimeElement,
    this.occurrencePeriod,
    this.authoredOn,
    this.authoredOnElement,
    this.requester,
    this.recipient,
    this.sender,
    this.reasonCode,
    this.reasonReference,
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
  ToMany<ObjectBoxReference>? basedOn = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? replaces = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxIdentifier>? groupIdentifier = ToOne<ObjectBoxIdentifier>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? statusReason =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? category =
      ToMany<ObjectBoxCodeableConcept>();
  String? priority;
  ToOne<ObjectBoxElement>? priorityElement = ToOne<ObjectBoxElement>();
  bool? doNotPerform;
  ToOne<ObjectBoxElement>? doNotPerformElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? medium = ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? subject = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? about = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? encounter = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCommunicationRequestPayload>? payload =
      ToMany<ObjectBoxCommunicationRequestPayload>();
  String? occurrenceDateTime;
  ToOne<ObjectBoxElement>? occurrenceDateTimeElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? occurrencePeriod = ToOne<ObjectBoxPeriod>();
  String? authoredOn;
  ToOne<ObjectBoxElement>? authoredOnElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? requester = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? recipient = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? sender = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept>? reasonCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? reasonReference = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
}

@Entity()
class ObjectBoxCommunicationRequestPayload {
  ObjectBoxCommunicationRequestPayload({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.contentString,
    this.contentStringElement,
    this.contentAttachment,
    this.contentReference,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? contentString;
  ToOne<ObjectBoxElement>? contentStringElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAttachment>? contentAttachment = ToOne<ObjectBoxAttachment>();
  ToOne<ObjectBoxReference>? contentReference = ToOne<ObjectBoxReference>();
}
