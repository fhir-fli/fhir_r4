import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class CommunicationRequest extends Resource {
  CommunicationRequest({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.basedOn,
    this.replaces,
    this.groupIdentifier,
    required this.status,
    this.statusReason,
    this.category,
    this.priority,
    this.doNotPerform,
    this.medium,
    this.subject,
    this.about,
    this.encounter,
    this.payload,
    this.occurrenceDateTime,
    this.occurrencePeriod,
    this.authoredOn,
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
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  ToMany<Reference>? basedOn = ToMany<Reference>();
  ToMany<Reference>? replaces = ToMany<Reference>();
  ToOne<Identifier>? groupIdentifier = ToOne<Identifier>();
  String status;
  ToOne<CodeableConcept>? statusReason = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? category = ToMany<CodeableConcept>();
  String? priority;
  bool? doNotPerform;
  ToMany<CodeableConcept>? medium = ToMany<CodeableConcept>();
  ToOne<Reference>? subject = ToOne<Reference>();
  ToMany<Reference>? about = ToMany<Reference>();
  ToOne<Reference>? encounter = ToOne<Reference>();
  ToMany<CommunicationRequestPayload>? payload =
      ToMany<CommunicationRequestPayload>();
  String? occurrenceDateTime;
  ToOne<Period>? occurrencePeriod = ToOne<Period>();
  String? authoredOn;
  ToOne<Reference>? requester = ToOne<Reference>();
  ToMany<Reference>? recipient = ToMany<Reference>();
  ToOne<Reference>? sender = ToOne<Reference>();
  ToMany<CodeableConcept>? reasonCode = ToMany<CodeableConcept>();
  ToMany<Reference>? reasonReference = ToMany<Reference>();
  ToMany<Annotation>? note = ToMany<Annotation>();
}

@Entity()
class CommunicationRequestPayload {
  CommunicationRequestPayload({
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
