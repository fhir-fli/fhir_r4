// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxCommunication {
  ObjectBoxCommunication({
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
    this.instantiatesCanonical,
    List<ObjectBoxElement>? instantiatesCanonicalElement,
    this.instantiatesUri,
    List<ObjectBoxElement>? instantiatesUriElement,
    List<ObjectBoxReference>? basedOn,
    List<ObjectBoxReference>? partOf,
    List<ObjectBoxReference>? inResponseTo,
    required this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxCodeableConcept? statusReason,
    List<ObjectBoxCodeableConcept>? category,
    this.priority,
    ObjectBoxElement? priorityElement,
    List<ObjectBoxCodeableConcept>? medium,
    ObjectBoxReference? subject,
    ObjectBoxCodeableConcept? topic,
    List<ObjectBoxReference>? about,
    ObjectBoxReference? encounter,
    this.sent,
    ObjectBoxElement? sentElement,
    this.received,
    ObjectBoxElement? receivedElement,
    List<ObjectBoxReference>? recipient,
    ObjectBoxReference? sender,
    List<ObjectBoxCodeableConcept>? reasonCode,
    List<ObjectBoxReference>? reasonReference,
    List<ObjectBoxCommunicationPayload>? payload,
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
    this
        .instantiatesCanonicalElement
        .addAll(instantiatesCanonicalElement ?? []);
    this.instantiatesUriElement.addAll(instantiatesUriElement ?? []);
    this.basedOn.addAll(basedOn ?? []);
    this.partOf.addAll(partOf ?? []);
    this.inResponseTo.addAll(inResponseTo ?? []);
    this.statusElement.target = statusElement;
    this.statusReason.target = statusReason;
    this.category.addAll(category ?? []);
    this.priorityElement.target = priorityElement;
    this.medium.addAll(medium ?? []);
    this.subject.target = subject;
    this.topic.target = topic;
    this.about.addAll(about ?? []);
    this.encounter.target = encounter;
    this.sentElement.target = sentElement;
    this.receivedElement.target = receivedElement;
    this.recipient.addAll(recipient ?? []);
    this.sender.target = sender;
    this.reasonCode.addAll(reasonCode ?? []);
    this.reasonReference.addAll(reasonReference ?? []);
    this.payload.addAll(payload ?? []);
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
  List<String>? instantiatesCanonical;
  ToMany<ObjectBoxElement> instantiatesCanonicalElement =
      ToMany<ObjectBoxElement>();
  List<String>? instantiatesUri;
  ToMany<ObjectBoxElement> instantiatesUriElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxReference> basedOn = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> partOf = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> inResponseTo = ToMany<ObjectBoxReference>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> statusReason =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> category =
      ToMany<ObjectBoxCodeableConcept>();
  String? priority;
  ToOne<ObjectBoxElement> priorityElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> medium = ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> topic = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> about = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxReference> encounter = ToOne<ObjectBoxReference>();
  String? sent;
  ToOne<ObjectBoxElement> sentElement = ToOne<ObjectBoxElement>();
  String? received;
  ToOne<ObjectBoxElement> receivedElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference> recipient = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxReference> sender = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> reasonCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> reasonReference = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCommunicationPayload> payload =
      ToMany<ObjectBoxCommunicationPayload>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
}

@Entity()
class ObjectBoxCommunicationPayload {
  ObjectBoxCommunicationPayload({
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
