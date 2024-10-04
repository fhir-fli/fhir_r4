import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Communication {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final List<FhirCanonical> instantiatesCanonical;
  final List<FhirUri> instantiatesUri;
  final List<PrimitiveElement> instantiatesUriElement;
  final List<Reference> basedOn;
  final List<Reference> partOf;
  final List<Reference> inResponseTo;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final CodeableConcept statusReason;
  final List<CodeableConcept> category;
  final FhirCode priority;
  final PrimitiveElement priorityElement;
  final List<CodeableConcept> medium;
  final Reference subject;
  final CodeableConcept topic;
  final List<Reference> about;
  final Reference encounter;
  final FhirDateTime sent;
  final PrimitiveElement sentElement;
  final FhirDateTime received;
  final PrimitiveElement receivedElement;
  final List<Reference> recipient;
  final Reference sender;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<CommunicationPayload> payload;
  final List<Annotation> note;
  const Communication({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.instantiatesCanonical,
    required this.instantiatesUri,
    required this.instantiatesUriElement,
    required this.basedOn,
    required this.partOf,
    required this.inResponseTo,
    required this.status,
    required this.statusElement,
    required this.statusReason,
    required this.category,
    required this.priority,
    required this.priorityElement,
    required this.medium,
    required this.subject,
    required this.topic,
    required this.about,
    required this.encounter,
    required this.sent,
    required this.sentElement,
    required this.received,
    required this.receivedElement,
    required this.recipient,
    required this.sender,
    required this.reasonCode,
    required this.reasonReference,
    required this.payload,
    required this.note,
  });
}

@Data()
@JsonCodable()
class CommunicationPayload {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String contentString;
  final PrimitiveElement contentStringElement;
  final Attachment contentAttachment;
  final Reference contentReference;
  const CommunicationPayload({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.contentString,
    required this.contentStringElement,
    required this.contentAttachment,
    required this.contentReference,
  });
}

@Data()
@JsonCodable()
class CommunicationRequest {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final List<Reference> basedOn;
  final List<Reference> replaces;
  final Identifier groupIdentifier;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final CodeableConcept statusReason;
  final List<CodeableConcept> category;
  final FhirCode priority;
  final PrimitiveElement priorityElement;
  final FhirBoolean doNotPerform;
  final PrimitiveElement doNotPerformElement;
  final List<CodeableConcept> medium;
  final Reference subject;
  final List<Reference> about;
  final Reference encounter;
  final List<CommunicationRequestPayload> payload;
  final String occurrenceDateTime;
  final PrimitiveElement occurrenceDateTimeElement;
  final Period occurrencePeriod;
  final FhirDateTime authoredOn;
  final PrimitiveElement authoredOnElement;
  final Reference requester;
  final List<Reference> recipient;
  final Reference sender;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<Annotation> note;
  const CommunicationRequest({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.basedOn,
    required this.replaces,
    required this.groupIdentifier,
    required this.status,
    required this.statusElement,
    required this.statusReason,
    required this.category,
    required this.priority,
    required this.priorityElement,
    required this.doNotPerform,
    required this.doNotPerformElement,
    required this.medium,
    required this.subject,
    required this.about,
    required this.encounter,
    required this.payload,
    required this.occurrenceDateTime,
    required this.occurrenceDateTimeElement,
    required this.occurrencePeriod,
    required this.authoredOn,
    required this.authoredOnElement,
    required this.requester,
    required this.recipient,
    required this.sender,
    required this.reasonCode,
    required this.reasonReference,
    required this.note,
  });
}

@Data()
@JsonCodable()
class CommunicationRequestPayload {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String contentString;
  final PrimitiveElement contentStringElement;
  final Attachment contentAttachment;
  final Reference contentReference;
  const CommunicationRequestPayload({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.contentString,
    required this.contentStringElement,
    required this.contentAttachment,
    required this.contentReference,
  });
}


