import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class CommunicationRequest extends DomainResource {
  final List<Identifier>? identifier;
  final List<Reference>? basedOn;
  final List<Reference>? replaces;
  final Identifier? groupIdentifier;
  final FhirCode status;
  final Element? statusElement;
  final CodeableConcept? statusReason;
  final List<CodeableConcept>? category;
  final FhirCode? priority;
  final Element? priorityElement;
  final FhirBoolean? doNotPerform;
  final Element? doNotPerformElement;
  final List<CodeableConcept>? medium;
  final Reference? subject;
  final List<Reference>? about;
  final Reference? encounter;
  final List<CommunicationRequestPayload>? payload;
  final FhirDateTime? occurrenceDateTime;
  final Element? occurrenceDateTimeElement;
  final Period? occurrencePeriod;
  final FhirDateTime? authoredOn;
  final Element? authoredOnElement;
  final Reference? requester;
  final List<Reference>? recipient;
  final Reference? sender;
  final List<CodeableConcept>? reasonCode;
  final List<Reference>? reasonReference;
  final List<Annotation>? note;

  CommunicationRequest({
    super.id,
    super.meta,
    super.implicitRules,
super.implicitRulesElement,
    super.language,
super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
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
  }) : super(resourceType: R4ResourceType.CommunicationRequest);

@override
CommunicationRequest clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CommunicationRequestPayload extends BackboneElement {
  final FhirString contentString;
  final Element? contentStringElement;
  final Attachment contentAttachment;
  final Reference contentReference;

  CommunicationRequestPayload({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.contentString,
this.contentStringElement,
    required this.contentAttachment,
    required this.contentReference,
  });

@override
CommunicationRequestPayload clone() => throw UnimplementedError();
}

