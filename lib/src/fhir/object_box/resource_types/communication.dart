import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class Communication extends Resource {
  Communication({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.basedOn,
    this.partOf,
    this.inResponseTo,
    required this.status,
    this.statusReason,
    this.category,
    this.priority,
    this.medium,
    this.subject,
    this.topic,
    this.about,
    this.encounter,
    this.sent,
    this.received,
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
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  List<String>? instantiatesCanonical;
  List<String>? instantiatesUri;
  ToMany<Reference>? basedOn = ToMany<Reference>();
  ToMany<Reference>? partOf = ToMany<Reference>();
  ToMany<Reference>? inResponseTo = ToMany<Reference>();
  String status;
  ToOne<CodeableConcept>? statusReason = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? category = ToMany<CodeableConcept>();
  String? priority;
  ToMany<CodeableConcept>? medium = ToMany<CodeableConcept>();
  ToOne<Reference>? subject = ToOne<Reference>();
  ToOne<CodeableConcept>? topic = ToOne<CodeableConcept>();
  ToMany<Reference>? about = ToMany<Reference>();
  ToOne<Reference>? encounter = ToOne<Reference>();
  String? sent;
  String? received;
  ToMany<Reference>? recipient = ToMany<Reference>();
  ToOne<Reference>? sender = ToOne<Reference>();
  ToMany<CodeableConcept>? reasonCode = ToMany<CodeableConcept>();
  ToMany<Reference>? reasonReference = ToMany<Reference>();
  ToMany<CommunicationPayload>? payload = ToMany<CommunicationPayload>();
  ToMany<Annotation>? note = ToMany<Annotation>();
}

@Entity()
class CommunicationPayload {
  CommunicationPayload({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.contentString,
    this.contentAttachment,
    this.contentReference,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? contentString;
  ToOne<Attachment>? contentAttachment = ToOne<Attachment>();
  ToOne<Reference>? contentReference = ToOne<Reference>();
}
