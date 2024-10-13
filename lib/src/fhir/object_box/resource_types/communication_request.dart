// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxCommunicationRequest {
  ObjectBoxCommunicationRequest({
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
    List<ObjectBoxReference>? basedOn,
    List<ObjectBoxReference>? replaces,
    ObjectBoxIdentifier? groupIdentifier,
    required this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxCodeableConcept? statusReason,
    List<ObjectBoxCodeableConcept>? category,
    this.priority,
    ObjectBoxElement? priorityElement,
    this.doNotPerform,
    ObjectBoxElement? doNotPerformElement,
    List<ObjectBoxCodeableConcept>? medium,
    ObjectBoxReference? subject,
    List<ObjectBoxReference>? about,
    ObjectBoxReference? encounter,
    List<ObjectBoxCommunicationRequestPayload>? payload,
    this.occurrenceDateTime,
    ObjectBoxElement? occurrenceDateTimeElement,
    ObjectBoxPeriod? occurrencePeriod,
    this.authoredOn,
    ObjectBoxElement? authoredOnElement,
    ObjectBoxReference? requester,
    List<ObjectBoxReference>? recipient,
    ObjectBoxReference? sender,
    List<ObjectBoxCodeableConcept>? reasonCode,
    List<ObjectBoxReference>? reasonReference,
    List<ObjectBoxAnnotation>? note,
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
    this.basedOn.addAll(basedOn ?? []);
    this.replaces.addAll(replaces ?? []);
    this.groupIdentifier.target = groupIdentifier;
    this.statusElement.target = statusElement;
    this.statusReason.target = statusReason;
    this.category.addAll(category ?? []);
    this.priorityElement.target = priorityElement;
    this.doNotPerformElement.target = doNotPerformElement;
    this.medium.addAll(medium ?? []);
    this.subject.target = subject;
    this.about.addAll(about ?? []);
    this.encounter.target = encounter;
    this.payload.addAll(payload ?? []);
    this.occurrenceDateTimeElement.target = occurrenceDateTimeElement;
    this.occurrencePeriod.target = occurrencePeriod;
    this.authoredOnElement.target = authoredOnElement;
    this.requester.target = requester;
    this.recipient.addAll(recipient ?? []);
    this.sender.target = sender;
    this.reasonCode.addAll(reasonCode ?? []);
    this.reasonReference.addAll(reasonReference ?? []);
    this.note.addAll(note ?? []);
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
  ToMany<ObjectBoxReference> basedOn = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> replaces = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxIdentifier> groupIdentifier = ToOne<ObjectBoxIdentifier>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> statusReason =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> category =
      ToMany<ObjectBoxCodeableConcept>();
  String? priority;
  ToOne<ObjectBoxElement> priorityElement = ToOne<ObjectBoxElement>();
  bool? doNotPerform;
  ToOne<ObjectBoxElement> doNotPerformElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> medium = ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference> about = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxReference> encounter = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCommunicationRequestPayload> payload =
      ToMany<ObjectBoxCommunicationRequestPayload>();
  String? occurrenceDateTime;
  ToOne<ObjectBoxElement> occurrenceDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> occurrencePeriod = ToOne<ObjectBoxPeriod>();
  String? authoredOn;
  ToOne<ObjectBoxElement> authoredOnElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> requester = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference> recipient = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxReference> sender = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> reasonCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> reasonReference = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
}

@Entity()
class ObjectBoxCommunicationRequestPayload {
  ObjectBoxCommunicationRequestPayload({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.contentString,
    ObjectBoxElement? contentStringElement,
    ObjectBoxAttachment? contentAttachment,
    ObjectBoxReference? contentReference,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.contentStringElement.target = contentStringElement;
    this.contentAttachment.target = contentAttachment;
    this.contentReference.target = contentReference;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? contentString;
  ToOne<ObjectBoxElement> contentStringElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAttachment> contentAttachment = ToOne<ObjectBoxAttachment>();
  ToOne<ObjectBoxReference> contentReference = ToOne<ObjectBoxReference>();
}
