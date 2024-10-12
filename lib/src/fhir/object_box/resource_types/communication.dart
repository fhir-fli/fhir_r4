// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxCommunication {
  ObjectBoxCommunication({
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
    this.instantiatesCanonical,
    this.instantiatesCanonicalElement,
    this.instantiatesUri,
    this.instantiatesUriElement,
    this.basedOn,
    this.partOf,
    this.inResponseTo,
    required this.status,
    this.statusElement,
    this.statusReason,
    this.category,
    this.priority,
    this.priorityElement,
    this.medium,
    this.subject,
    this.topic,
    this.about,
    this.encounter,
    this.sent,
    this.sentElement,
    this.received,
    this.receivedElement,
    this.recipient,
    this.sender,
    this.reasonCode,
    this.reasonReference,
    this.payload,
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
  List<String>? instantiatesCanonical;
  ToMany<ObjectBoxElement>? instantiatesCanonicalElement =
      ToMany<ObjectBoxElement>();
  List<String>? instantiatesUri;
  ToMany<ObjectBoxElement>? instantiatesUriElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxReference>? basedOn = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? partOf = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? inResponseTo = ToMany<ObjectBoxReference>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? statusReason =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? category =
      ToMany<ObjectBoxCodeableConcept>();
  String? priority;
  ToOne<ObjectBoxElement>? priorityElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? medium = ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? topic = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? about = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? encounter = ToOne<ObjectBoxReference>();
  String? sent;
  ToOne<ObjectBoxElement>? sentElement = ToOne<ObjectBoxElement>();
  String? received;
  ToOne<ObjectBoxElement>? receivedElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference>? recipient = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? sender = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept>? reasonCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? reasonReference = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCommunicationPayload>? payload =
      ToMany<ObjectBoxCommunicationPayload>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
}

@Entity()
class ObjectBoxCommunicationPayload {
  ObjectBoxCommunicationPayload({
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
